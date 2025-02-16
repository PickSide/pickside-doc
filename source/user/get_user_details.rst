Get User Details
================

.. note::
    Retrieves the details of a specific user. This endpoint is different than the response in the :ref:`get-me` as it targets partial information of a user.

Request
-------

``GET /api/v2/users/{userId}/details``

**Params**
  - ``userId`` - The targetted user

.. tip::
  There are cases where some fields might not show because a user can choose not to display them.
    - ``email`` - Returned if ``showEmail: true``
    - ``phone`` - Returned if ``showPhone: true``


**Response Body**

.. code-block:: json

    {
      "result": {
        "id": "123",
        "allowLocationTracking": false,
        "avatar": "link-to-avatar.com",
        "bio": "A short bio about the user.",
        "city": "New York",
        "displayName": "John Doe",
        "fullName": "Johnathan Doe",
        "localeRegion": "en-US",
        "matchOrganizedCount": 5,
        "matchPlayedCount": 10,
        "preferredLocale": "en-US",
        "preferredSport": "Soccer",
        "reliability": 80,
        "sexe": "male",
        "email": "john.doe@example.com",
        "phone": "+1234567890"
      },
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
      - User details retrieved
    * - ``401``
      - Unauthorized
    * - ``404``
      - User not found
    * - ``500``
      - Internal server error
