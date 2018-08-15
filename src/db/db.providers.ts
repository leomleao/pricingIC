import { createConnection } from 'typeorm';
import { User } from '../users/user.entity';
import { Material } from '../materials/material.entity';

export const dbProvider =
{
  provide: 'DbConnectionToken',
  useFactory: async () => await createConnection({
    type: "mysql",
    host: process.env.DATABASE_HOST,
    port: 3306,
    username: process.env.DATABASE_USERNAME,
    password: process.env.DATABASE_PASSWORD,
    database: process.env.DATABASE_DATABASE,
    entities: [
      User,
      Material,
    ],
    synchronize: true,
  }),
};
