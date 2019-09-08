import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-produto-location',
  templateUrl: './produto-location.page.html',
  styleUrls: ['./produto-location.page.scss'],
})
export class ProdutoLocationPage implements OnInit {

  private logo: string ='./assets/shipped.png';
  constructor() { }

  ngOnInit() {
  }

}
