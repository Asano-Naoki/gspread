Þ    7      Ô                m     j   û  c   f  O   Ê  _        z          ¦     »  )   Õ     ÿ          8  %   G  "   m       '   -  ;   U       )   ¬  =   Ö  6        K     `       È     ;   ]	  Ñ   	  A   k
  Z   ­
  "     /  +  ^   [     º     Ð     Ý  "   ü  S        s          ¯  c   Æ  =   *     h     ~  ®         C  Ï   d  %   4  E   Z  \      ?  ý  E   =  +     ¢  ¯  u   R  u   È  j   >  Y   ©  q     '   u  !     !   ¿  	   á  9   ë  6   %  -   \       .      .   Ï  í   þ  N   ì  Q   ;  <     0   Ê  W   û  K   S       H   µ     þ  ø     P     ò   d  N   W     ¦     7  ç  G  t   /   !   ¤   !   Æ   *   è   0   !     D!  $   ä!  #   	"     -"  p   K"  {   ¼"  !   8#  '   Z#    #  -   $    Ë$  0   Ð%  d   &  ]   f&     Ä&  W   e(  ?   ½(   :meth:`~gspread.models.Worksheet.batch_get` can fetch values from multiple ranges of cells with one API call. :meth:`~gspread.models.Worksheet.batch_update` lets you update multiple ranges of cells with one API call. :meth:`~gspread.models.Worksheet.get_all_values` fetches values from all of the cells of the sheet. :meth:`~gspread.models.Worksheet.get` fetches all values from a range of cells. :meth:`~gspread.models.Worksheet.update` lets you update a range of cells with a list of lists. Creating a Spreadsheet Creating a Worksheet Deleting a Worksheet Examples of gspread Usage Find a cell matching a regular expression Find a cell matching a string: Finding All Matched Cells Finding a Cell Get all values from the first column: Get all values from the first row: Get the Unformatted value from a cell. Example: cells formatted as currency will display with the selected currency but they actual value is regular number. Get the formatted (as displayed) value: Get the formula from a cell instead of the resulting value: Get the unformatted value: Getting All Values From a Row or a Column Getting All Values From a Worksheet as a List of Dictionaries Getting All Values From a Worksheet as a List of Lists Getting Cell formula Getting Unformatted Cell Value Getting a Cell Value HTTP calls have performance costs. So if you find your app fetching values one by one in a loop or iterating over rows or columns you can improve the performance of the app by fetching data in one go. Here are the methods that may help you to reduce API calls: If you have multiple Google Sheets with the same title, only the latest sheet will be opened by this method without throwing an error. It's recommended to open the sheet using its unique ID instead (see below) If you haven't yet authorized your app, read :doc:`oauth2` first. If you want to be specific, use a key (which can be extracted from the spreadsheet's url): If you want to get a cell formula: If you're using a :ref:`service account <service-account>`, this new spreadsheet will be visible only to this account. To be able to access newly created spreadsheet from Google Sheets with your own Google account you *must* share it with your email. See how to share a spreadsheet in the section below. If your email is *otto@example.com* you can share the newly created spreadsheet with yourself: Opening a Spreadsheet Or by title: Or row and column coordinates: Or the most common case: *Sheet1*: Or, if you feel really lazy to extract that key, paste the entire spreadsheet's url Resulsts in: ``[['=1/1024']]`` Results in: ``[['$12.00']]`` Results in: ``[[12]]`` See :meth:`~gspread.models.Spreadsheet.share` documentation for a full list of accepted parameters. Select worksheet by index. Worksheet indexes start from zero: Selecting a Worksheet Sharing a Spreadsheet So far we've been fetching a limited amount of data from a sheet. This works great until you need to get values from hundreds of cells or iterating over many rows or columns. To get a list of all worksheets: Under the hood, gspread uses `Google Sheets API v4 <https://developers.google.com/sheets/api>`_. Most of the time when you call a gspread method to fetch or update a sheet gspread produces one HTTP API call. Updating a Worksheet's name and color Use :meth:`~gspread.Client.create` to create a new blank spreadsheet: Using `A1 notation <https://developers.google.com/sheets/api/guides/concepts#a1_notation>`_: What's more, Sheets API v4 introduced `Usage Limits <https://developers.google.com/sheets/api/limits>`_ (as of this writing, 300 requests per 60 seconds per project, and 60 requests per 60 seconds per user). When your application hits that limit, you get an :exc:`~gspread.exceptions.APIError` `429 RESOURCE_EXHAUSTED`. You can open a spreadsheet by its title as it appears in Google Docs: `find` returns `None` if value is not Found Project-Id-Version: gspread 6.1.2
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2024-06-02 14:47+0900
PO-Revision-Date: 2024-06-02 05:58+0000
Last-Translator: Naoki Asano, 2024
Language: ja
Language-Team: Japanese (https://app.transifex.com/asano-naoki/teams/193369/ja/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 :meth:`~gspread.models.Worksheet.batch_get` 1åã®APIå¼ã³åºãã§è¤æ°ã®ã»ã«ç¯å²ã®å¤ãåå¾ãã¾ãã :meth:`~gspread.models.Worksheet.batch_update` 1åã®APIå¼ã³åºãã§è¤æ°ã®ã»ã«ç¯å²ã®æ´æ°ããã¾ãã :meth:`~gspread.models.Worksheet.get_all_values` ã·ã¼ãã®ãã¹ã¦ã®ã»ã«ã®å¤ãåå¾ãã¾ãã :meth:`~gspread.models.Worksheet.get` ã»ã«ç¯å²ã®ãã¹ã¦ã®å¤ãåå¾ãã¾ãã :meth:`~gspread.models.Worksheet.update` ãªã¹ãã®ãªã¹ããæå®ãã¦ã»ã«ç¯å²ã®æ´æ°ããã¾ãã ã¹ãã¬ããã·ã¼ããä½æãã ã¯ã¼ã¯ã·ã¼ããä½æãã ã¯ã¼ã¯ã·ã¼ããåé¤ãã ä½¿ç¨ä¾ æ­£è¦è¡¨ç¾ã«ãããããã»ã«ãæ¤ç´¢ãã¾ãã æå­åã«ãããããã»ã«ãæ¤ç´¢ãã¾ãã ãããããã»ã«ããã¹ã¦æ¤ç´¢ãã ã»ã«ãæ¤ç´¢ãã 1åç®ã®ãã¹ã¦ã®å¤ãåå¾ãã¾ãã 1è¡ç®ã®ãã¹ã¦ã®å¤ãåå¾ãã¾ãã ã»ã«ã®å¤ããã©ã¼ãããããã¦ããªãç¶æã§åå¾ãã¾ãããã¨ãã°ãéè²¨ã¨ãã¦ãã©ã¼ãããããã¦ããã»ã«ã§ã¯ãéè²¨ãè¡¨ç¤ºããã¾ãããã»ã«ã®å®éã®å¤ã¯ãã ã®æ°å¤ã§ãã ãã©ã¼ããããããï¼è¡¨ç¤ºããã¦ããï¼å¤ãåå¾ãã¾ãã ã»ã«ã®å¤ã§ã¯ãªããã®ã»ã«ã«è¨­å®ãããé¢æ°ãåå¾ãã¾ãã ãã©ã¼ãããããã¦ããªãå¤ãåå¾ãã¾ãã è¡ã¾ãã¯åã®ãã¹ã¦ã®å¤ãåå¾ãã ãã£ã¯ã·ã§ããªã®ãªã¹ãã§ã¯ã¼ã¯ã·ã¼ãã®ãã¹ã¦ã®å¤ãåå¾ãã ãªã¹ãã®ãªã¹ãã§ã¯ã¼ã¯ã·ã¼ãã®ãã¹ã¦ã®å¤ãåå¾ãã é¢æ°ãåå¾ãã ã»ã«ã®å¤ããã©ã¼ãããããã¦ããªãç¶æã§åå¾ãã ã»ã«ã®å¤ãåå¾ãã HTTP APIã®å¼ã³åºãã¯ããã©ã¼ãã³ã¹ä¸ã®ã³ã¹ããé«ãã§ããè¡ãåãã«ã¼ãã§ç¹°ãè¿ãã¦å¤ãä¸ã¤ãã¤åå¾ãã¦ããå ´åã¯ãä¸æ°ã«å¤ãåå¾ãããã¨ã§ããã©ã¼ãã³ã¹ãæ¹åã§ãã¾ãã HTTP APIå¼ã³åºããæ¸ããã®ã«å½¹ç«ã¤ã¡ã½ãããç´¹ä»ãã¾ãã åããã¡ã¤ã«åã®ã¹ãã¬ããã·ã¼ããè¤æ°ããã¨ãææ°ã®ã·ã¼ããéãã¾ããã¨ã©ã¼ã¯çºçãã¾ãããä¸æã®IDãä½¿ã£ã¦ã·ã¼ããéããã¨ããããããã¾ãï¼ä»¥ä¸ã§èª¬æãã¾ãï¼ã èªè¨¼ãã¾ã ã§ãããã :doc:`oauth2` ãåã«ãèª­ã¿ãã ããã éãã¹ãã¬ããã·ã¼ããä¸æã«ç¹å®ããããã«ã¯ãã¹ãã¬ããã·ã¼ãã­ã¼ï¼URLã®ä¸é¨ï¼ãä½¿ã£ã¦ãã ããã é¢æ°ãåå¾ :ref:`ãµã¼ãã¹ã¢ã«ã¦ã³ã <service-account>` ã§èªè¨¼ããã¦ãããªããæ°ããä½æããã¹ãã¬ããã·ã¼ãã¯ãã®ãµã¼ãã¹ã¢ã«ã¦ã³ãããããè¦ããã¨ãã§ãã¾ãããèªåã®Googleã¢ã«ã¦ã³ãã®Google Sheetsããæ°ããä½æããã¹ãã¬ããã·ã¼ãã«ã¢ã¯ã»ã¹ã§ããããã«ããã«ã¯ãèªåã®ã¡ã¼ã«ã¢ãã¬ã¹ã¨å±æãããã¨ã *å¿é * ã§ããæ¬¡ã®ã»ã¯ã·ã§ã³ã§å±ææ¹æ³ãèª¬æãã¾ãã èªåã®ã¡ã¼ã«ã¢ãã¬ã¹ã *otto@example.com* ã ã¨ããããæ¬¡ã®ããã«ããã°å±æã§ãã¾ãã ã¹ãã¬ããã·ã¼ããéã ã·ã¼ãåãæå®ãã¾ãã è¡çªå·ã¨åçªå·ãæå®ãã¦åå¾ *Sheet1* ã§åé ­ã®ã·ã¼ããéãã¾ãã URLããã¹ãã¬ããã·ã¼ãã­ã¼ãæãåºãã®ãé¢åã§ããã°ãURLå¨ä½ãä½¿ã£ã¦ã¹ãã¬ããã·ã¼ããéããã¨ãã§ãã¾ãã ``[['=1/1024']]`` ã«ãªãã¾ãã ``[['$12.00']]`` ã«ãªãã¾ãã ``[[12]]`` ã«ãªãã¾ãã å¼æ°ã®ä¸è¦§ã«ã¤ãã¾ãã¦ã¯ã :meth:`~gspread.models.Spreadsheet.share` ãåç§ãã¦ãã ããã ã¤ã³ããã¯ã¹ãæå®ãã¦ã¯ã¼ã¯ã·ã¼ããé¸æãã¾ããã¤ã³ããã¯ã¹ã¯ã¼ã­ããå§ã¾ãã¾ãã ã¯ã¼ã¯ã·ã¼ããé¸æãã ã¹ãã¬ããã·ã¼ããå±æãã ããã¾ã§ç´¹ä»ãã¦ããä¾ã§ã¯ãã·ã¼ãããå°ãã®ãã¼ã¿ãåå¾ããã ãã§ãããæ°ç¾åã®ã»ã«ã®å¤ãåå¾ããããæ°å¤ãã®è¡ã¾ãã¯åãç¹°ãè¿ãã¦å¦çãããããå ´åã«ã¯ãä¸å·åãçããå¯è½æ§ãããã¾ãã ã¯ã¼ã¯ã·ã¼ãä¸è¦§ãåå¾ãã¾ãã gspreadã¯èå¾ã§ `Google Sheets API v4 <https://developers.google.com/sheets/api>`_ ãå©ç¨ãã¦ãã¾ããã·ã¼ãããå¤ãåå¾ãããå¤ãæ´æ°ãããããã¡ã½ãããå¼ã³åºãã¨ãå¤ãã®å ´åã§HTTP APIãå¼ã³åºãã¾ãã ã¯ã¼ã¯ã·ã¼ãã®ååã¨è²ãå¤æ´ãã :meth:`~gspread.Client.create` ã§æ°ããç©ºç½ã®ã¹ãã¬ããã·ã¼ããä½æã§ãã¾ãã `A1 è¡¨è¨ <https://developers.google.com/sheets/api/guides/concepts#a1_notation>`_ ã§åå¾ ããã«ãSheets API v4 ã§ã¯ `Usage Limits <https://developers.google.com/sheets/api/limits>`_ ãå°å¥ããã¾ããï¼ãã®ãã­ã¥ã¡ã³ãã®ä½ææã«ã¯ã1ãã­ã¸ã§ã¯ã1åããã300ãªã¯ã¨ã¹ãã1ã¦ã¼ã¶ã¼1åããã60ãªã¯ã¨ã¹ããä¸éã«ãªã£ã¦ãã¾ãï¼ããã®ä¸éã«éããã¨ã :exc:`~gspread.exceptions.APIError` `429 RESOURCE_EXHAUSTED` ãçºçãã¾ãã ãã¡ã¤ã«åãæå®ãã¦ã¹ãã¬ããã·ã¼ããéããã¨ãã§ãã¾ãã ãããããªããã°ã`find` ã¯ `None` ãè¿ãã¾ãã 