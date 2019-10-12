import { Injectable } from '@angular/core';
import { Produto } from './produto.model';
import { HttpClient } from '@angular/common/http';
import { Subject } from 'rxjs';
import { map } from 'rxjs/operators';

@Injectable({
  providedIn: 'root'
})
export class ProdutoService {
   _ProdutosCarregados  = new Subject <Produto[]>();


  constructor(private http: HttpClient) { }



  getProdutos(){

      var postData = {
          utilizador: 'Domingos',
          mensagem: 'Olá caro Servidor'
      };

    //  console.log(postData);

      this.http
      .post<any>('http://localhost/php/controller/pesquisar/pesquisar_produto.php/', postData)
     // .pipe(map(res =>{ return res}))
      .subscribe((produtosTransformados) => {
        // console.log(produtosTransformados);
      this._ProdutosCarregados.next(produtosTransformados);

      });

  }

}
