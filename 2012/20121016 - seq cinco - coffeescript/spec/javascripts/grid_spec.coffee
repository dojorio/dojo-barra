describe "Grid", ->
  describe "geral", ->
    it "deve resultar em 0 quando for vazio", ->
      grid = new Grid([[]])
      expect(grid.total()).toBe 0

  describe "linha", ->
    it "deve resultar em 1 quando todos os numeros da linha forem 1", ->
      grid = new Grid([[1,1,1,1,1]])
      expect(grid.total()).toBe 1
  
    it "deve resultar em 2 quando o total de uma linha for 2", ->
      grid = new Grid([[2,1,1,1,1]])
      expect(grid.total()).toBe 2  

    it "deve resultar em 4 quando o total de uma linha for 2,2,1,1,1", ->
      grid = new Grid([[2,2,1,1,1]])
      expect(grid.total()).toBe 4

    it "deve resultar em 720 quando uma linha for 6,5,4,3,2", ->
      grid = new Grid([[6,5,4,3,2]])
      expect(grid.total()).toBe 6*5*4*3*2

  describe "duas linhas", ->
    it "deve resultar 2 quando 1 linha for 1,1,1,1,1 e a outra for 2,1,1,1,1", ->
      grid = new Grid([[1,1,1,1,1], [2,1,1,1,1]])
      expect(grid.total()).toBe 2

    it "deve resultar 2 quando 1 linha for 2,1,1,1,1 e a outra for 1,1,1,1,1", ->
      grid = new Grid([[2,1,1,1,1], [1,1,1,1,1]])
      expect(grid.total()).toBe 2

    it "deve resultar 2 quando 1 linha for 2,1,1,1,1 e a outra for 2,1,1,1,1", ->
      grid = new Grid([[2,1,1,1,1], [1,2,1,1,1]])
      expect(grid.total()).toBe 2

  describe "coluna", ->
    it "deve resultar 1 quando tiver duas colunas com 1", ->
      grid = new Grid([[1], [1]])
      expect(grid.total()).toBe 1

    it "deve resultar 4 quando tiver duas colunas com 2", ->
      grid = new Grid([[2], [2]])
      expect(grid.total()).toBe 4
  
    it "deve resultar 8 quando tiver tres colunas com 2", ->
      grid = new Grid([[2], [2] ,[2]])
      expect(grid.total()).toBe 8

    it "deve resultar 9 quando tiver duas linhas e duas colunas com 2,3", ->
      grid = new Grid([[2,3], [2,3]])
      expect(grid.total()).toBe 9

  describe "diagonal", ->
    it "deve resultar 1 quando tiver tres elementos na diagonal com 1", ->
      grid = new Grid([[1,1,1], [1,1,1], [1,1,1]])
      expect(grid.total()).toBe 1

    it "deve resultar 8 quando tiver tres elementos na diagonal com 2", ->
      grid = new Grid([[2,1,1], [1,2,1], [1,1,2]])
      expect(grid.total()).toBe 8
