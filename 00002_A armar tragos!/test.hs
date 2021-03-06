describe "Armar los ingredientes" $ do
	it "de vodka menta de forma directa con 2 hielos" $ do
	  (directo 2 . ingredientes) vodkaMenta `shouldBe` [ UnIngrediente "hielo" 0.0 0.0 0.0 20.0, UnIngrediente "vodka" 10.0 55.0 0.0 50.0, UnIngrediente "fernet" 10.0 10.0 50.0 20.0 ]

	it "de fernet con coca de forma directa con 5 hielos" $ do
	  (directo 5 . ingredientes) fernerConCoca `shouldBe` [ UnIngrediente "hielo" 0.0 0.0 0.0 50.0, UnIngrediente "hielo" 0.0 0.0 0.0 30.0, UnIngrediente "fernet" 10.0 10.0 50.0 50.0, UnIngrediente "cocaCola" 100.0 0.0 80.0 50.0 ]


	it "de puro vodka con licuadora" $ do
	  (licuadora . ingredientes) puroVodka `shouldBe` [ UnIngrediente "hielo" 22.5 15.0 0.0 50.0, UnIngrediente "hielo" 42.5 16.25 0.0 30.0, UnIngrediente "vodka" 42.5 16.25 0.0 100.0 ]


	it "de destornillador en coctelera sin flambear por 20 segundos" $ do
	  (coctelera False 20 . ingredientes) destornillador `shouldBe` [ UnIngrediente "hielo" 37.5 15.0 7.5 50.0, UnIngrediente "hielo" 57.5 16.25 7.5 30.0, UnIngrediente "jugoDeNaranja" 60.0 16.25 7.5 50.0, UnIngrediente "vodka" 60.0 16.25 7.5 50.0 ]

	it "de vodka menta en coctelera sin flambear por 15 segundos" $ do
	  (coctelera False 15 . ingredientes) vodkaMenta `shouldBe` [ UnIngrediente "hielo" 0.0 0.0 0.0 20.0, UnIngrediente "vodka" 10.0 55.0 0.0 50.0, UnIngrediente "fernet" 10.0 10.0 50.0 20.0 ]

	it "de puro vodka en coctelera flambeado por 10 segundos" $ do
	  (coctelera True 10 . ingredientes) puroVodka `shouldBe` [ UnIngrediente "hielo" 2.0 0.0 5.0 29.0, UnIngrediente "vodka" 10.0 55.0 0.0 100.0 ]
	  
	it "de vodka menta en coctelera flambeado por 20 segundos" $ do
	  (coctelera True 20 . ingredientes) vodkaMenta `shouldBe` [ UnIngrediente "vodka" 12.0 27.5 5.0 48.0, UnIngrediente "fernet" 10.0 10.0 50.0 20.0 ]


