// SPDX-License-Identifier: MIT
// Hanneka Puri
pragma solidity ^0.8.20;


contract Order {
    enum Status {
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Cancelled
    }

    Status public status;

    function ship() public {
        require(status == Status.Pending);
        status = Status.Shipped;
    }

    function acceptDelivery() public {
        require(status == Status.Shipped);
        status = Status.Accepted;
    }

    function rejectDelivery() public {
        require(status == Status.Shipped);
        status = Status.Rejected;
    }

    function cancel() public {
        require(status == Status.Pending);
        status = Status.Cancelled;
    }
}