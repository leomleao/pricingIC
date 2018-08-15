import { Module } from '@nestjs/common';

import { AuthModule } from './auth/auth.module';
import { UsersModule } from './users/users.module';
import { MaterialsModule } from './materials/materials.module';

@Module({
    modules: [AuthModule, UsersModule, MaterialsModule],
})

export class AppModule {}