SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xFFFF7B6B), Color(0xFFFF5A5A)]),
                    borderRadius: BorderRadius.circular(12),
                    border: Border(
                        bottom: BorderSide(color: Color(0xFF5A67D8), width: 5)),
                  ),
                  child: Column(
                    children: [
                      Text('Yaseen Billing System',
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      SizedBox(height: 8),
                      Text(
                          'Manual date control - You control when to advance the date',
                          style: TextStyle(color: Colors.white70)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.all(16),
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.08),
                        blurRadius: 10,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Step 1 - Active/Completed wala (Example: Step 1 active hai)
                      Column(
                        children: [
                          Container(
                            width: 44,
                            height: 44,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                colors: [Color(0xFFFF7B6B), Color(0xFFFF5A5A)],
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xFFFF7B6B).withOpacity(0.4),
                                  blurRadius: 8,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Center(
                              child: Text(
                                '1',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Set Entries',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFFFF7B6B),
                            ),
                          ),
                        ],
                      ),

                      // Step 2 - Normal/Inactive
                      Column(
                        children: [
                          Container(
                            width: 44,
                            height: 44,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                colors: [Color(0xFFE2E8F0), Color(0xFFCBD5E0)],
                              ),
                            ),
                            child: Center(
                              child: Text(
                                '2',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF718096),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Set Date',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF718096),
                            ),
                          ),
                        ],
                      ),

                      // Step 3 - Normal/Inactive
                      Column(
                        children: [
                          Container(
                            width: 44,
                            height: 44,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                colors: [Color(0xFFE2E8F0), Color(0xFFCBD5E0)],
                              ),
                            ),
                            child: Center(
                              child: Text(
                                '3',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF718096),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Add Entries',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF718096),
                            ),
                          ),
                        ],
                      ),

                      // Step 4 - Normal/Inactive
                      Column(
                        children: [
                          Container(
                            width: 44,
                            height: 44,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                colors: [Color(0xFFE2E8F0), Color(0xFFCBD5E0)],
                              ),
                            ),
                            child: Center(
                              child: Text(
                                '4',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF718096),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Export',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF718096),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 21,
                ),
                Container(
                  margin: EdgeInsets.all(16),
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.08),
                        blurRadius: 10,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // Total Entries
                      Column(
                        children: [
                          Text(
                            '0',
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF5A67D8),
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            'Total Entries',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF718096),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),

                      // Current Entries
                      Column(
                        children: [
                          Text(
                            '0',
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF5A67D8),
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            'Current Entries',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF718096),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),

                      // Remaining
                      Column(
                        children: [
                          Text(
                            '0',
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF5A67D8),
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            'Remaining',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF718096),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 22,
                ),
                SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.all(16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // LEFT COLUMN - Control Panel
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(right: 16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.08),
                                  blurRadius: 10,
                                  offset: Offset(0, 4),
                                ),
                              ],
                              border: Border(
                                top: BorderSide(
                                  color: Color(0xFFFF7B6B),
                                  width: 4,
                                ),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Header
                                Container(
                                  padding: EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: Color(0xFFF0F0F0),
                                        width: 1,
                                      ),
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.task,
                                        size: 22,
                                        color: Color(0xFF5A67D8),
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        'Control Panel',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF5A67D8),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                // Buttons
                                Container(
                                  padding: EdgeInsets.all(20),
                                  child: Column(
                                    children: [
                                      // Step 1 Button
                                      InkWell(
                                        onTap: () =>
                                            print('Step 1: Setup Entries'),
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 14, horizontal: 16),
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [
                                                Color(0xFFFF7B6B),
                                                Color(0xFFFF5A5A)
                                              ],
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0xFFFF7B6B)
                                                    .withOpacity(0.3),
                                                blurRadius: 8,
                                                offset: Offset(0, 3),
                                              ),
                                            ],
                                          ),
                                          child: Center(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(Icons.settings,
                                                    size: 18,
                                                    color: Colors.white),
                                                SizedBox(width: 10),
                                                Text(
                                                  'Step 1: Setup Entries',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 12),

                                      // Step 2 Button
                                      InkWell(
                                        onTap: () => print('Step 2: Set Date'),
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 14, horizontal: 16),
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [
                                                Color(0xFFE2E8F0),
                                                Color(0xFFCBD5E0)
                                              ],
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          child: Center(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(Icons.calendar_today,
                                                    size: 18,
                                                    color: Color(0xFF718096)),
                                                SizedBox(width: 10),
                                                Text(
                                                  'Step 2: Set Date',
                                                  style: TextStyle(
                                                    color: Color(0xFF718096),
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 12),

                                      // Step 3 Button
                                      InkWell(
                                        onTap: () => print('Step 3: Add Entry'),
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 14, horizontal: 16),
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [
                                                Color(0xFFE2E8F0),
                                                Color(0xFFCBD5E0)
                                              ],
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          child: Center(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(Icons.add_circle,
                                                    size: 18,
                                                    color: Color(0xFF718096)),
                                                SizedBox(width: 10),
                                                Text(
                                                  'Step 3: Add Entry',
                                                  style: TextStyle(
                                                    color: Color(0xFF718096),
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 12),

                                      // Step 4 Button
                                      InkWell(
                                        onTap: () =>
                                            print('Step 4: Export Excel'),
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 14, horizontal: 16),
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [
                                                Color(0xFF48BB78),
                                                Color(0xFF38A169)
                                              ],
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0xFF48BB78)
                                                    .withOpacity(0.3),
                                                blurRadius: 8,
                                                offset: Offset(0, 3),
                                              ),
                                            ],
                                          ),
                                          child: Center(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(Icons.file_download,
                                                    size: 18,
                                                    color: Colors.white),
                                                SizedBox(width: 10),
                                                Text(
                                                  'Step 4: Export Excel',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        // RIGHT COLUMN - Entries Summary
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.08),
                                  blurRadius: 10,
                                  offset: Offset(0, 4),
                                ),
                              ],
                              border: Border(
                                top: BorderSide(
                                  color: Color(0xFFFF7B6B),
                                  width: 4,
                                ),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Header
                                Container(
                                  padding: EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: Color(0xFFF0F0F0),
                                        width: 1,
                                      ),
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.list_alt,
                                        size: 22,
                                        color: Color(0xFF5A67D8),
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        'Entries Summary',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF5A67D8),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                // Empty State
                                Container(
                                  padding: EdgeInsets.all(40),
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.assignment,
                                        size: 64,
                                        color: Color(0xFFCBD5E0),
                                      ),
                                      SizedBox(height: 16),
                                      Text(
                                        'No entries yet',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF2D3748),
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        'Add your first entry to see the summary here',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF718096),
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                //yah column body wala hai
              ],
            ),
          ),
        ),
      ),
