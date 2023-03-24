// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0 <0.9.0;

contract Day4 {
    struct Book {
        string title;
        string author;
        uint256 book_id;
    }

    Book book;

    function setBook(
        string memory _title,
        string memory _author,
        uint _id
    ) public {
        //this

        // book.title = _title;
        // book.author = _author;
        // book.book_id = _id;

        //or this
        book = Book(_title, _author, _id);
    }

    function getBook() public view returns (Book memory) {
        return book;
    }
}
