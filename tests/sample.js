'use strict';

const deepEqualInAnyOrder = require('deep-equal-in-any-order');
const chai = require('chai');
chai.use(deepEqualInAnyOrder);
const { expect } = chai;

const MOCK_DATA = {
  "data": {
    "id": 1,
    "resource": "STUFF"
  }
};

describe('sample', () => {
  it('should verify something obvious', async () => {
    const id = 1;
    const resource = "STUFF";
    const data = {
      "data": { id, resource }
    };
    expect(MOCK_DATA).to.deep.equalInAnyOrder(data);
  });
});
