import {ApolloServer, gql} from 'apollo-server';
import {VILE_ASSOCIATES} from "./vileAssociates";

const typeDefs = gql`
    type Query {
        vileAssociate(id: ID!): VileAssociate
        vileAssociates: [VileAssociate]
    }

    type VileAssociate {
        id: ID!
        personalInfo: String
        history: String
    }
`;

const resolvers = {
    Query: {
        vileAssociates(_root: any, _args: any, context: { vileAssociates: any; }) {
            return context.vileAssociates;
        },
        vileAssociate(_root: any, args: { id: any; }, context: { vileAssociates: any[]; }) {
            return context.vileAssociates.find(va => va.id === args.id);
        },
    },
};

const server = new ApolloServer({
    typeDefs,
    resolvers,
    context: {
        vileAssociates: VILE_ASSOCIATES,
    },
});

(async function () {
    const url = await server.listen({port: 5999})
    console.log(`🚀 Server ready at ${url}`)
})()