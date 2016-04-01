describe "Condimentar" $ do
	it "30 cc de hielo con azucar genera UnIngrediente 'hielo' 40.0 2.5 0.0 30.0" $ do
	  condimentar hielo30 azucar `shouldBe` UnIngrediente "hielo" 40.0 2.5 0.0 30.0

	it "30 cc de hielo con colorante genera UnIngrediente 'hielo' 7.5 0.0 50.0 30.0" $ do
	  condimentar hielo30 colorante `shouldBe` UnIngrediente "hielo" 7.5 0.0 50.0 30.0

	it "20 cc de fernet con azucar genera UnIngrediente 'fernet' 45.0 7.5 25.0 20.0" $ do
	  condimentar fernet20 azucar `shouldBe` UnIngrediente "fernet" 45.0 7.5 25.0 20.0

	it "20 cc de fernet con colorante genera UnIngrediente 'fernet' 12.5 5.0 75.0 20.0" $ do
	  condimentar fernet20 colorante `shouldBe` UnIngrediente "fernet" 12.5 5.0 75.0 20.0

	  
describe "Mezclar" $ do
	it "50 cc de vodka con speed y hielo genera UnIngrediente 'vodka' 20.0 28.0 5.0 50.0" $ do
	  mezclar vodka50 [hielo30, speed80] `shouldBe` UnIngrediente "vodka" 20.0 28.0 5.0 50.0

	it "50 cc de fernet con coca y hielo genera UnIngrediente 'fernet' 55.0 5.0 65.0 50.0" $ do
	  mezclar fernet50 [hielo30, coca50] `shouldBe` UnIngrediente "fernet" 55.0 5.0 65.0 50.0

	  
describe "Batir los ingredientes" $ do
	it "de puroVodka genera [ UnIngrediente 'hielo' 5.0 27.5 0.0 30.0, UnIngrediente 'vodka' 5.0 27.5 0.0 100.0 ]" $ do
	  batirIngredientes puroVodka `shouldBe` [ UnIngrediente "hielo" 5.0 27.5 0.0 30.0, UnIngrediente "vodka" 5.0 27.5 0.0 100.0 ]

	it "de destornillador con coca genera [ UnIngrediente 'hielo' 35.0 27.5 15.0 30.0, UnIngrediente 'jugoDeNaranja' 40.0 27.5 15.0 50.0, UnIngrediente 'vodka' 40.0 27.5 15.0 50.0 ]" $ do
	  batirIngredientes destornillador `shouldBe` [ UnIngrediente "hielo" 35.0 27.5 15.0 30.0, UnIngrediente "jugoDeNaranja" 40.0 27.5 15.0 50.0, UnIngrediente "vodka" 40.0 27.5 15.0 50.0 ]

