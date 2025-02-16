Get Friends
===========

Request
-------

``GET /api/v2/friends/users/{userId}``

**Params**
  - ``userId`` - The targetted user

**Response Body**

.. code-block:: json
  
  {
    "result": [
        {
            "user1Id": "1",
            "user2Id": "2",
            "status": "accepted"
        },
        "..."
    ],
    "success": true
  }

Response table
**************

.. list-table::
    :widths: 30 70
    :header-rows: 1

    * - Status 
      - Reason
    * - ``200``
      - Friends retrieved
    * - ``401``
      - Unauthorized
    * - ``404``
      - User not found
    * - ``500``
      - Internal server error
