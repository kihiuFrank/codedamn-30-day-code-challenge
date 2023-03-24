// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0 <0.9.0;

contract Day5 {
    struct Book {
        string title;
        string author;
        uint256 book_id;
    }

    Book[] book;
    uint counter = 1;

    function setBook(
        string memory _title,
        string memory _author,
        uint _id
    ) public {
        book[counter] = (Book(_title, _author, _id));
        counter++;
    }

    function getBook(
        uint id
    ) public view returns (string memory, string memory, uint) {
        return (book[id].title, book[id].author, book[id].book_id);
    }
}
