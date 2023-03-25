class ProductModel {
  int? id;
  String? courseName;
  String? courseDesc;
  String? courseImg;
  String? courseLogo;
  String? courseDuration;
  double? coursePrice;
  bool? isFav;
  List<List<String>>? courseContent;

  ProductModel({
    required this.id,
    required this.courseName,
    required this.courseDesc,
    required this.courseImg,
    required this.courseDuration,
    required this.coursePrice,
    required this.isFav,
    required this.courseContent,
    required this.courseLogo,
  });
}

List<ProductModel> productList = [
  ProductModel(
    id: 1,
    courseName: "Product Design Course",
    courseDesc: "Get a head start in product designing with UI and UX",
    courseImg:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6qAoieJXwWUy_6f8SQ8Dtc0YZhkzVe-hDbA&usqp=CAU",
    courseDuration: "06h 12m",
    courseLogo:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0nPN0biK6vFfEMUh2gjiLayOXJe2sQiQ5Uw&usqp=CAU",
    coursePrice: 500,
    isFav: false,
    courseContent: [
      ["Ideation and Validations", "04:30"],
      ["Design Sprint", "03:20"],
      ["Usability Testing User", "05:16"]
    ],
  ),
  ProductModel(
    id: 2,
    courseName: "Sketch Tutorial",
    courseDesc: "Start learning UX design with sketch",
    courseImg:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnjI0lELBxI1qYw7Az0OZmkox-aMpjqX3geQ&usqp=CAU",
    courseDuration: "17h 12m",
    coursePrice: 400,
    courseLogo:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0nPN0biK6vFfEMUh2gjiLayOXJe2sQiQ5Uw&usqp=CAU",
    isFav: false,
    courseContent: [
      ["Ideation and Validations", "04:30"],
      ["Design Sprint", "03:20"],
      ["Usability Testing User", "05:16"]
    ],
  ),
  ProductModel(
    id: 3,
    courseName: "Figma Design Course",
    courseDesc: "Build Awesome design system for small team in figma",
    courseImg:
        "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAPcAAADMCAMAAACY78UPAAABOFBMVEUDARyiWf//cmLyTh4Kz4MavP4AAADyTBr5YUWmW/8K1IYAABn/dmUDABQAABv6UR5tIx1zMzXqTzdpOqipTf8A1ncHhlnlZlsbxP8bwf8DABAK2IgavP/2bmDTXlXIQB6iNB3IWVEAAAkVk8ppKpymVP9tkf8Wm9UThbgIqnBTGxxwLCpYJy4VBxyYMR3YRh6gSESzUEtjIBxoLjQrDhweCRx6Jx2BOTuwOR27PB2rTEeEKx3pSx5TGACSLADAPAfnW0rne3XOVUihOStDJXN1QsNdN64ALk8JTnNWL40KQWEOY40XDDOPTuIFGTIrGE4Aao5rZdJsgO4WmtV0QLsMBieUUeoYrOkYBTOEO8+UQugQcZ4AICMAp2AAv20Ai1IFQzYJv3sEGCMFV0EGc1AGXUQEMy4EHSgEZ/N9AAAEJElEQVR4nO3bDVcTRxTG8Q2SgWR2Nlpq2J3FVhdtEgq+1XdthVYLEoG+gGm1FQMC3/8bdJcEdJO5cw4pbc7cfX6fIP9z786GiXoeAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAwOgCmRcE4/5E/42Fi3nfXspbDJTklr5081Zt0LQ/aPb2kmJV/qhWuzBoanpiiO/f8eS4P+y5WXg2XG3uTsuvLHIJv2uqprrT8u/UuD/xuSCyye40nMPE75mrLd0TE/cYHG5fT529+yv3N/0iseXWbv+S85tOjtvW7f7A75Pjtnb79x1/wh+M2P3Q8UV/NGL3Hce76cfb2u38A47uYnU/HrH7muPdN0c81247fq4tjNi96Pj72yOz7Xvu+Jp73tWRvp8/cXzNPcvAbfNmcLVKflOlu53/lnrs8ZnvW1x/ifXdOuP92iyDLT9mnjjR7V/j8+PB0wuGcmO3P/GQ0y8HS1ef1WpTA6b9wWj/ypMlDkfaJ0Hy/Q/Pv8hbnj2xvLy8srLy4093E07DTquFePHyTSmv8rNQGSFWm50wiqKwM78mxLg/6zlS4lWpUikNds9kjYFYb4RRuSdNbwseL7FU8npjKPqkW4rmafWxsLOZjPsDnw+xVTJlH3cr3clVZzMvr7LY9WTLFN3rlmooO7PKYOJyxzjsXreYN2WXywx+AxcvLd3t0JgdzTu/6XqLys66jdXZ4baux/3B/yV63KXK9V/MW85g4FKT2Wl3g5p3OdJuP+HJK0v3TDRHdrfdPtLFNt1d+pVa87S76faiWx7v0o3fLN2OP+Bigx73jW8s3b8XtLvheHdR93ymmOda8sL6HiO7wzW3v7AFgh53+r2FDnd73NYXeGVmzfxniftr7nnqte3vko45ey7adP6yiT7Z0u5188DDd66PO3vCjZdrvW7RNIWnL28Gt8lqx3y9lnUHwnC0RWX3tzyjd96Q94pyeOJRx3P7HXZKJdvDt+f9e+RAtKPPRx6FzYTFtDNSbG1Qvxt4YrM510+PoqixLty+ccjT4o/rf779Mm+7d2or4bXnO1EYdhrvNgWTHe+T+q/63+8v5+2eLLRMRB+bFe/RH1pxtTqZV60zqxwk1W48GF2Abim7hmr23XJv0pjNvVuZp829W9djczbv7mCPmDbzbl0vaDdVzbtb7lNPN+9uRa85627dQje6C979kW+37VyL9zndrOTJA/o9NnnE4LaYEtDz7vK6UsqjH/CY8eOdLvohueicx00PPD7gPO6U7Jqyqy3e48423ZTdZT7tlDocumCrtrj81zgbudfNHW7VeFcXIDt9ieuD7ukNejVufeD+bJ9Sen+3G2e69UPH/63x2Uit1dHRXqJVkap7giKcZgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAPB/+Qd934IACS+26QAAAABJRU5ErkJggg==",
    courseDuration: "21h 07m",
    courseLogo:
        "https://cdn.sanity.io/images/599r6htc/localized/46a76c802176eb17b04e12108de7e7e0f3736dc6-1024x1024.png?w=670&h=670&q=75&fit=max&auto=format",
    coursePrice: 450,
    isFav: false,
    courseContent: [
      ["Ideation and Validations", "04:30"],
      ["Design Sprint", "03:20"],
      ["Usability Testing User", "05:16"]
    ],
  ),
  ProductModel(
    id: 4,
    courseName: "Product Design Course",
    courseDesc: "Get a head start in product designing with UI and UX",
    courseImg:
        "https://myuxacademy.com/wp-content/uploads/2020/08/PRODUCT-DESIGN-COURSE.png",
    courseDuration: "06h 12m",
    courseLogo:
        "https://cdn.sanity.io/images/599r6htc/localized/46a76c802176eb17b04e12108de7e7e0f3736dc6-1024x1024.png?w=670&h=670&q=75&fit=max&auto=format",
    coursePrice: 500,
    isFav: false,
    courseContent: [
      ["Ideation and Validations", "04:30"],
      ["Design Sprint", "03:20"],
      ["Usability Testing User", "05:16"]
    ],
  ),
];

ProductModel? obj;
