import { Connection } from 'typeorm';
import { Material } from './material.entity';

export const materialProviders = [{
    provide: 'MaterialRepositoryToken',
    useFactory: (connection: Connection) => connection.getRepository(Material),
    inject: ['DbConnectionToken'],
}];
