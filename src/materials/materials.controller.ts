import { Body, Controller, Get, Post, HttpCode, UseFilters, UseGuards, Query} from '@nestjs/common';
import { MaterialsService } from './materials.service';
import { CreateMaterialDto } from './material.dto';
import { HttpExceptionFilter } from '../common/http-exception.filter';
import { AuthGuard } from '@nestjs/passport';

@Controller('materials')
@UseFilters(new HttpExceptionFilter())
@UseGuards(AuthGuard('jwt'))
export class MaterialsController {
  constructor(private readonly materialsService: MaterialsService) { }

  @Post()
  @HttpCode(201)  
  /**
   * @param The createMaterialDto is a class-validator implementation, it valuates the sent body!
   * @return Returns the created material.
   */
  async create(@Body() createMaterialDto: CreateMaterialDto) {
    const material = await this.materialsService.create(createMaterialDto);
    return material;
  }

  @Get()
  @HttpCode(200)
  async findAll(@Query() query) {
     if (query && query.hasOwnProperty('uf')) {
     return await this.materialsService.findMany({uf: query.uf});
     } else {
     return await this.materialsService.findAll();
     }
  }

}