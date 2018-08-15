import { Inject, Injectable, BadRequestException} from '@nestjs/common';
import { Repository } from 'typeorm';
import { Material } from './material.entity';

import { CreateMaterialDto } from './material.dto';

@Injectable()
export class MaterialsService {
  constructor( @Inject('MaterialRepositoryToken') private readonly materialRepository: Repository<Material>) { }

  /**
   * @param conds is an object with desired conditions, e.g { id: '123 '}
   * @return Returns the found material or error response.
   */
  async findOne(conds) {
    try {
      return await this.materialRepository.findOne({ where: conds});
    } catch (err) {
      return err;
    }
  }

  async findAll(): Promise<Material[]> {
      return await this.materialRepository.find();
  }

  async save(material: Material): Promise<Material> {
      return await this.materialRepository.save(material);
  }

  /**
   * @param material is the entity Material using typeorm definitions
   * @return Returns the created material.
   */
  async create(material: CreateMaterialDto) {
      return await this.materialRepository.save(material);
  }
}