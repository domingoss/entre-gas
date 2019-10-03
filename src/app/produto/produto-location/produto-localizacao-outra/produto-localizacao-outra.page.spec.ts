import { CUSTOM_ELEMENTS_SCHEMA } from '@angular/core';
import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ProdutoLocalizacaoOutraPage } from './produto-localizacao-outra.page';

describe('ProdutoLocalizacaoOutraPage', () => {
  let component: ProdutoLocalizacaoOutraPage;
  let fixture: ComponentFixture<ProdutoLocalizacaoOutraPage>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ProdutoLocalizacaoOutraPage ],
      schemas: [CUSTOM_ELEMENTS_SCHEMA],
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ProdutoLocalizacaoOutraPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
