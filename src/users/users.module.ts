import { Module } from '@nestjs/common';
import { UsersController } from './users.controller';
import { UsersService } from './users.service';
import { userProviders } from './user.providers';
import { DBModule } from '../db/db.module';

@Module({
  modules: [DBModule],
  controllers: [UsersController],
  providers: [
      ...userProviders,
      UsersService,
  ],
  exports: [UsersService],
})
export class UsersModule {}
