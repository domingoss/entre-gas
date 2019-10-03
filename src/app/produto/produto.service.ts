import { Injectable } from '@angular/core';
import { Produto } from './produto.model';
@Injectable({
  providedIn: 'root'
})
export class ProdutoService {
  private _produtos: Produto[] =[
     new Produto (
       'p1',
       'Propano Butano',
       '15KG',
       '20 MIN',
       800,
       './assets/gas-bottle-warning.png'),
       new Produto (
         'p2',
         'Hidrogenio',
         '15KG',
         '20 MIN',
         1000,
         './assets/gas-bottle-warning.png'
       )
   ];
  constructor() { }

  get produtos(){
    return [...this._produtos];
  }

}
