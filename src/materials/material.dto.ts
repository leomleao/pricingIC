import { IsString, IsInt } from 'class-validator';

export class CreateMaterialDto {
	readonly id: number;
	readonly codigo: number; 
	@IsString() readonly pricingmaterial: string; 
	@IsString() readonly descricao: string; 
	@IsString() readonly detalhes: string; 
	@IsInt() readonly multiplo: number; 
	@IsString() readonly UF: string; 
	readonly IPI: number; 
	readonly NCM: number; 
	@IsString() readonly concat: string; 
	@IsString() readonly precoRevenda: string; 
	@IsString() readonly precoRevendaPremium: string; 
	@IsString() readonly precoAtacado: string; 
	@IsString() readonly precoConstrutora: string; 
}
