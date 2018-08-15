import { Module } from '@nestjs/common';
import { MaterialsController } from './materials.controller';
import { MaterialsService } from './materials.service';
import { materialProviders } from './material.providers';
import { DBModule } from '../db/db.module';

@Module({
  modules: [DBModule],
  controllers: [MaterialsController],
  providers: [
      ...materialProviders,
      MaterialsService,
  ],
  exports: [MaterialsService],
})
export class MaterialsModule {}
