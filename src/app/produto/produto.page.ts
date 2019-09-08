import { Component, OnInit } from '@angular/core';
import {Produto} from './produto.model';

@Component({
  selector: 'app-produto',
  templateUrl: './produto.page.html',
  styleUrls: ['./produto.page.scss'],
})
export class ProdutoPage implements OnInit {
private produto: Produto ={

   peso: '15kg',
   tempo:'20 Min',
   preco: '800.00 Mt',
   logo: './assets/gas-bottle-warning.png'
 };

  constructor() { }

  ngOnInit() {
  }




}
