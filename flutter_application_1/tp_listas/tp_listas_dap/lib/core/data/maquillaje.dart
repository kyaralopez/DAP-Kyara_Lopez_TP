class Maquillaje {
  String marca;
  String producto;
  String precio;
  String descripcion;
  String urlimage;
  String nombre;

  Maquillaje({
    required this.marca,
    required this.producto,
    required this.precio,
    required this.descripcion,
    required this.urlimage,
    required this.nombre,
  });
}

final ListaMaquillaje = [
 Maquillaje (
    nombre: 'Soft Pinch Liquid Blush',
    marca: 'Rare Beauty',
    producto: 'Blush liquido',
    descripcion:
        'Un rubor líquido liviano y de larga duración que se difumina y se aplica maravillosamente para lograr un rubor suave y saludable. Disponible en acabados mate y brillante.',
    precio: '23',
    urlimage:
        'https://m.media-amazon.com/images/I/41Qh0vh6-0L.jpg',
  ),
  Maquillaje(
      nombre: 'Hydratating Camo Concealer',
    marca: 'Elf',
    producto: 'Corrector',
    descripcion:
        'El corrector Hydrating Camo Concealer de Elf Cosmetics es un corrector líquido de larga duración que proporciona una cobertura total a prueba de arrugas mientras hidrata tu piel.',
    precio: '7',
    urlimage: 'https://acdn.mitiendanube.com/stores/114/747/products/84826_open_a_r1-31915bfbf2c276780916389879665293-640-0.jpg'
       
  ),
  Maquillaje(
    nombre: 'Kylash',
    marca: 'Kylie Cosmetics',
    producto: 'Mascara de pestañas',
    descripcion:
        'Consigue unas pestañas más definidas, levantadas y tupidas con la máscara de pestañas Kylash Volume de KYLIE COSMETICS. Con una fórmula limpia y vegana que no compromete el rendimiento, esta máscara de pestañas proporciona volumen, longitud y mantiene el rizo.',
    precio: '24',
    urlimage: 'https://kyliecosmetics.com/cdn/shop/products/KJC_KVMASC_23_KV_Kylie_PDP_Black_01_WS_V2_e03c6d05-609c-486b-872d-7812a902d5f9.jpg?v=1680637908&width=2500x'
  ),
  Maquillaje(
       nombre: 'Matte Revolution Hydrating Lipstick',
    marca: 'Charlotte Tilbury',
    producto: 'Labial',
    descripcion:
        'Un lápiz labial mate que presenta una fórmula duradera, modulable e hidratante',
    precio: '25',
    urlimage: 'https://cosmeticsparagon.com/cdn/shop/files/charlotte-tilbury-matte-revolution-pillow-talk-1.jpg?v=1716083304'
  ),
  Maquillaje(
      nombre: 'Easy Bake Powder',
    marca: 'Huda Beauty',
    producto: 'Polvo volatil fijador',
    descripcion:
        'Un polvo fijador sedoso y ligeramente pigmentado que se hornea y fija, difumina la apariencia de las líneas finas y fija el maquillaje durante 10 horas con un acabado aerografiado.',
    precio: '38',
    urlimage: 'https://acdn.mitiendanube.com/stores/944/405/products/405b123d-ea32-4838-9968-9d3c1e549e051-8423cbe0e383b8150716775801114075-240-0.jpeg'
  ),
  Maquillaje(
    nombre: 'Epic Ink Waterproof Liquid Eyeliner',
    marca: 'Nyx',
    producto: 'Delineador liquido',
    descripcion:
        'Delineador líquido con duración de 24 horas, resistente a la descamación, acabado mate, resistente al agua.',
    precio: '10',
    urlimage: 'https://m.media-amazon.com/images/I/61MlC7rEJPL._SL1500_.jpg'
  ),
  Maquillaje(
    nombre: 'Adict Lip Glow Oil',
    marca: 'Dior',
    producto: 'Aceite para labios',
    descripcion:
        'Un aceite labial nutritivo y brillante que protege y realza los labios, resaltando su color natural.',
    precio: '40',
    urlimage: 'https://dior.vtexassets.com/arquivos/ids/1603567-500-auto?v=638150094076930000&width=500&height=auto&aspect=true'
  ),
  Maquillaje(
     nombre: 'Matte Cream Bronzer Stick',
    marca: 'Milk',
    producto: 'Bronzer en barra',
    descripcion:
        'Un bronceador en crema en barra galardonado que se acumula y se difumina sin esfuerzo para crear una calidez bronceada con un acabado de aspecto natural en segundos.',
    precio: '24',
    urlimage: 'https://m.media-amazon.com/images/I/61maR9ZD-ZL._SL1500_.jpg'
  ),
  Maquillaje(
    nombre: 'Brow freeze',
    marca: 'Anastasia Beverly Hills',
    producto: 'Gel para cejas',
    descripcion:
        'Un innovador híbrido de gel y cera transparente para cejas que cuenta con un aplicador de peine de triple acción que da forma a las cejas con una fijación máxima en cualquier lugar.',
    precio: '26',
    urlimage: 'https://acdn.mitiendanube.com/stores/836/266/products/anastasia-beverly-hills-beauty-essentials-2021-brow-freeze-open1-161e8d983fe0f3b64c16194707875161-1024-1024.jpg'
  ),
   Maquillaje(
    nombre: 'Fit me foundation',
    marca: 'Maybelline',
    producto: 'Base',
    descripcion:
        'La base de maquillaje Maybelline Fit Me Dewy  hidrata y suaviza la textura de la piel. Naturalmente radiante e hidratante. Ideal para pieles normales a secas.',
    precio: '7,69',
    urlimage: 'https://m.media-amazon.com/images/I/711t9wxyobL._SL1500_.jpg'
  ),
];