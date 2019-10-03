import { Component, OnInit } from '@angular/core';
import { ProdutoService } from './produto.service';
import { Produto } from './produto.model';




@Component({
  selector: 'app-produto',
  templateUrl: './produto.page.html',
  styleUrls: ['./produto.page.scss'],
})
export class ProdutoPage implements OnInit {
  produtos: Produto[];
//aqui e o construtor principal
  constructor(private produtoService: ProdutoService) { }

  ngOnInit() {
    this.produtos= this.produtoService.produtos;
    console.log(this.produtos);
  }




}
