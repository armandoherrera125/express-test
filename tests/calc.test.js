const { handleReturnNumber } = require("../calc/exercise");

describe('Just showing on docker', () => {

    test('Should return 5', () => {
        const shouldBe = handleReturnNumber();
        expect(shouldBe).toBe(5);
    })
});