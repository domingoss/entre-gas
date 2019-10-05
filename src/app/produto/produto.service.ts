import { Injectable } from '@angular/core';
import { Produto } from './produto.model';
import { HttpClient } from '@angular/common/http';


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
       ),
            new Produto (
         'p3',
         'Hidrogenio',
         '15KG',
         '20 MIN',
         5000,
         './assets/gas-bottle-warning.png'
       )
   ];
  constructor(private http: HttpClient) { }

  get produtos(){
    return [...this._produtos];
  }

  getProdutos(){

      this.http.post('http://localhost:8080/entre-gas/php/controller/pesquisar/teste.php/', {
          utilizador: 'Domingos',
          mensagem: 'Olá caro Servidor'
      }).subscribe((response) => {
          console.log(response);
      });

  }

}
