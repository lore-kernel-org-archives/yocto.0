Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.5660.1614054082711210773
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Feb 2021 20:21:23 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=L2uCccxJ;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: yifan.yu@windriver.com)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2080.outbound.protection.outlook.com [40.107.220.80])
	by mail.yoctoproject.org (Postfix) with ESMTPS id A98B038C06A1
	for <yocto@yoctoproject.org>; Tue, 23 Feb 2021 04:21:21 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M4ax1Ql5WX6BT8ya21fauFPujYtGKnV842pdNc2z8wRw1V1EgXHix1JgFq7TS7h65hVHybUQtjbZV/CM9MdYgFcZAs6HcVFr3lGkdUZl9+j6FnwvbzezE0dYQDGRZcAqNVesf4IL6i5QlK/EYyFUeBbWYiTH6QQoWj7nnlFuXLLqrQA2uxhlUzLchwKViB6gNA3jUOxyr8k7CpxTRhUetWk57h8oQziEGvUo7A0NUFANVOomtR5uSmNZTWYyExD9JKRz4AbIKyQZzlQXzBPulDVqyg+hSXjKC9O9LOxDoHKTt30JOIA/4/hBpUKVxDUwyMODP3aa1+GoVcbtXn4Y7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xRqbGA2zn1Z1acxZN2f5oNm7jsQLj1ql7xJG2HFcc/w=;
 b=Kbwsq1LFqPw77JAvVOorIQ8ccninAkLVv0TCm20dLInXb2/NpWkQrIT5LZKgOG2WaHyK3tirCbOv+GU56YRljY85as/GkBs1lE4pLLjY14kxnlaUwWDKuToXfyRARIaGoN9BBYV/It+3n61+1TVvLcsVdGEpRmRmjAeTvAgyGaqDx9w5kxBA0lkXAPDboS7WVBb1WIFODMkC3K9CyXC/06geRwLZIVgnF5vw+5b6jHsVFznRH9g4pgxmiKctet1QKzFYfi1BG/vBlcuE20PvyP4tIvSWxd3RC6vNSQZDX2UFq2vZkDIeHYmneARfQilt12h8AgT0AT1RdeE9C68eaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xRqbGA2zn1Z1acxZN2f5oNm7jsQLj1ql7xJG2HFcc/w=;
 b=L2uCccxJbDa0o9IwWTSY0bg/y4EQUmeeS4fkV1OVJSegEDxqLb2lmAWzsLBSL0HoUCoKFoKUGZVBrhzj3jWRy1ChLepwDxHsBgaaOockh5PIkBNAlLIG2uT7u4uzHO3V4ayZm0Rl7fWYrJmt3ZAQ0ir95xns3fLa8MSE039OA9Q=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from SA0PR11MB4719.namprd11.prod.outlook.com (2603:10b6:806:95::17)
 by SN6PR11MB2654.namprd11.prod.outlook.com (2603:10b6:805:54::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.27; Tue, 23 Feb
 2021 04:21:19 +0000
Received: from SA0PR11MB4719.namprd11.prod.outlook.com
 ([fe80::24e6:c5dd:a024:807f]) by SA0PR11MB4719.namprd11.prod.outlook.com
 ([fe80::24e6:c5dd:a024:807f%8]) with mapi id 15.20.3868.033; Tue, 23 Feb 2021
 04:21:19 +0000
From: "Yi Fan Yu" <yifan.yu@windriver.com>
To: yocto@yoctoproject.org,
	richard.purdie@linuxfoundation.org
Subject: [yocto][error-report-web][PATCH] Update to be compatible with python3.5
Date: Mon, 22 Feb 2021 23:21:05 -0500
Message-Id: <20210223042105.16258-1-yifan.yu@windriver.com>
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [135.0.247.71]
X-ClientProxiedBy: YT1PR01CA0080.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:2d::19) To SA0PR11MB4719.namprd11.prod.outlook.com
 (2603:10b6:806:95::17)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from yyu1-Latitude-5410.corp.ad.wrs.com (135.0.247.71) by YT1PR01CA0080.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b01:2d::19) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3868.31 via Frontend Transport; Tue, 23 Feb 2021 04:21:19 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f395cbb5-b512-417b-e04b-08d8d7b2782e
X-MS-TrafficTypeDiagnostic: SN6PR11MB2654:
X-Microsoft-Antispam-PRVS: 
	<SN6PR11MB2654CD2303195A45FC5AF46A80809@SN6PR11MB2654.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4714;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	oVgF2Wttk0KyZ8azhhhk69o8ALcanXKlteaNiDb8ssM0zF3V+lTgU+j6Xr9KoHcp6prY1526GjOqZwdKAxbJqCfJY0dU31gdaxTkfLRnsaOpnhQvbxGl56da7qijdFv/r0lwwbAxdYR6XtTm0i43JaKHZrtDj/OLW703wKRfy5Lwebr3X794At+ts0LKigUAdgS+y/SG+2nWQ5V428EUBWWVIaLcT9/DcicaRacME8CcaZlDbThwfFOBz7xEOCX8lm+CGH+570sEL6nGyFqpkxhFKUVw+28E360yf/DYAitFwttuy+cigYWxAmn2cP6jdU248tB2Lg3glYIwK3vPXG4kI4HhAC2tQpNsyIwsXDvvUAtl0/2MiAEocLCMFSa2xoNQmQyUF6DgMn+9C7kfw06PsCG2sFKytDdf9vTLQP1ciV/CcozshBpFGZyRKRweAYK63Deag1IO811h3S8Fwkol17Abr5Yxg9sBdPd5bS3T1nrKbcNBExONSpcTBIgIuDDGvpRU2TkNRgbvqNFR9A==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA0PR11MB4719.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39850400004)(346002)(136003)(366004)(376002)(396003)(86362001)(66946007)(956004)(186003)(26005)(8936002)(1076003)(6506007)(8676002)(478600001)(6666004)(2616005)(83380400001)(66556008)(6486002)(16526019)(66476007)(5660300002)(36756003)(6512007)(52116002)(316002)(2906002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?vGR0AWQgqr6ItEi+fICBauz8EL2XWx9igPQjb8RfxlIETFH1gnnNiNJIdf6O?=
 =?us-ascii?Q?gUO21nVzyHbz5I11x2hguaoBJejY4Rth2uN1a5txeZQhIE0i9Q0E00PpK0uD?=
 =?us-ascii?Q?8PNsDJHXBT1Ii7eE5qA39wDb9L1jIKoSNYkT6VA39AziwHWI7PkkiIgWOVll?=
 =?us-ascii?Q?PIooVTKweJetrRYHSk7KaBMs92JboSjW9haNGkcMghhgKBuH4Gp5Mf6hxZ0/?=
 =?us-ascii?Q?p8Lb4G+KLTuJK8MGx3Y30nUDvSCk3dB3bZUNmYYuXjHineTbGsulpl6sY/jf?=
 =?us-ascii?Q?pB0q6/SUP5Nn6hBX4Al08tjJ43/oMbd9G2GS9exmoId2c9VFfpoDN/eVQo+e?=
 =?us-ascii?Q?FDe5nHbgYpN2i02TzzFzyO1WKdySuW1KS/UOyu0CCO5Z+B9vmEw/cf4b7qRA?=
 =?us-ascii?Q?jxU6Aa4dlgrrAeQ6VBRkVuBhyDCXwK8fN9NHC1+pDxMWs8QR2cW+ShO1PZ+u?=
 =?us-ascii?Q?1Z/9NIqDUNLHy5bbTtSSml6Nres7m5urQ4d8HOSghCFMlm0JUGuaMbfZWtp+?=
 =?us-ascii?Q?x96alxLdRH3SjqEexrdHPV8d32YrUgMci40njhq/mrGGsEPuIh5il/ClXZ+I?=
 =?us-ascii?Q?EcVWkQ6LhsJE+QD/T57/9QaPT2V/6m5XCCDr7WhLcLrvn3eBYMkfaI1JbGTU?=
 =?us-ascii?Q?XOg/RzeEQ6Pm52ytFB79T0NbaTrWcS2Xqsi/dxcVqKFNq4auFORzmbuE+QaD?=
 =?us-ascii?Q?eLOZNS9r72pZ0mWKkAAajIEculVHP/Hs7ES9oOLKTLM9TIRX2COMR52jNbTR?=
 =?us-ascii?Q?JFEltEzJrXYhwcYuU7JII8Xdh65+QOMsjAAvYVTV1BF91hc56uRoJHToIPqw?=
 =?us-ascii?Q?0YaObNwd3F8z2zbpzh3tAcVhHszxyKQQhT6IxKtdBoBEjyRssP3myq34R5kR?=
 =?us-ascii?Q?Pwn6CtZSxmHW4HjCwStcl7t6qKPodubHmalCUIUa+cn0s+xwlqhobh5IE5on?=
 =?us-ascii?Q?zyjDsMmAIcNQMEtv3mOZb/Sw3CwVnkZG0Byd9AsqsuN2KTBo70u2B8VwrXhS?=
 =?us-ascii?Q?8Cy43xDow2zv+frevlw1xrkagtRwVM++GXw+hI1v4bE+nl5pV4jGNTk1O7kb?=
 =?us-ascii?Q?boNSfMTpWjq0tugEP/yBJ0r175Cy/X5zkLCz4NMdI9ve9zQWH8PmrQs4Msog?=
 =?us-ascii?Q?Ko7nPCBGf0WZkCgvQurwSdWp9Mcu3/C5zNDR8Or0CDjcaXeEoWKhBlwSSxRh?=
 =?us-ascii?Q?trq29NmMXNqhWhjMuUI1BOfR9RRVHYkn82k4zT0ZXg24eRCGljFbo7kAT4R6?=
 =?us-ascii?Q?sfLio4ZIECYgGe+eqp5JF/rLOR2tjHGPkDyv6+mPPRvLi5lb6/S1Zru4/k6v?=
 =?us-ascii?Q?UmseYeD4XMv5Lin0tk5MOq0k?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f395cbb5-b512-417b-e04b-08d8d7b2782e
X-MS-Exchange-CrossTenant-AuthSource: SA0PR11MB4719.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Feb 2021 04:21:19.5076
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: l7wXbKkKvWdwRxkzlRqOPtkYT85kXilCye4abfOZu7AKNhDkP8nNk33LoBxRmnrHPR2nqLUxqv5IjOueOOubYQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2654
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

mostly changed the way to access request.GET
also tested on python2.7 to be backward compatible

Signed-off-by: Yi Fan Yu <yifan.yu@windriver.com>
---
 Post/parser.py |  2 +-
 Post/views.py  | 14 +++++++-------
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/Post/parser.py b/Post/parser.py
index f54482a..f411e02 100644
--- a/Post/parser.py
+++ b/Post/parser.py
@@ -17,7 +17,7 @@ from django.core.urlresolvers import reverse
 class Parser:
=20
     def __init__(self, data):
-        self.data =3D data
+        self.data =3D data.decode('utf-8')
=20
     # returns true if the values contain '<' char
     # Ignore the failures field (which is an array anyway)
diff --git a/Post/views.py b/Post/views.py
index cc6aed9..fe7100e 100644
--- a/Post/views.py
+++ b/Post/views.py
@@ -15,9 +15,9 @@ from django.shortcuts import HttpResponse, render
 from django.views.decorators.csrf import csrf_exempt
 from django.shortcuts import redirect
 from Post.models import BuildFailure, Build, ErrorType
-from parser import Parser
+from Post.parser import Parser
 from django.conf import settings
-from createStatistics import Statistics
+from Post.createStatistics import Statistics
 from django.core.paginator import Paginator, EmptyPage
 from django.core.exceptions import FieldError, ObjectDoesNotExist
 from django.http import JsonResponse
@@ -65,12 +65,12 @@ def addData(request, return_json=3DFalse):
         if return_json:
             response =3D JsonResponse(result)
         else:
-            if not result.has_key('error'):
+            if not 'error' in result:
               response =3D HttpResponse("Your entry can be found here: "=
+result['build_url'])
             else:
               response =3D HttpResponse(result['error'])
=20
-        if result.has_key('error'):
+        if 'error' in result:
             response.status_code=3D500
     else:
         if return_json:
@@ -125,7 +125,7 @@ def search(request, mode=3Dresults_mode.LATEST, **kwa=
rgs):
=20
     items =3D BuildFailure.objects.all()
=20
-    if request.GET.has_key("limit"):
+    if "limit" in request.GET:
         try:
             n_limit =3D int(request.GET['limit'])
             if n_limit > 0:
@@ -202,14 +202,14 @@ def search(request, mode=3Dresults_mode.LATEST, **k=
wargs):
       ],
     }
=20
-    if request.GET.has_key("filter") and request.GET.has_key("type"):
+    if "filter" in request.GET and "type" in request.GET:
         items =3D apply_filter(context, items, request.GET['type'], requ=
est.GET['filter'])
     if mode =3D=3D results_mode.SPECIAL_SUBMITTER and hasattr(settings,"=
SPECIAL_SUBMITTER"):
         #Special submitter mode see settings.py to enable
         name =3D settings.SPECIAL_SUBMITTER['name']
         items =3D items.filter(BUILD__NAME__istartswith=3Dname)
=20
-    elif mode =3D=3D results_mode.SEARCH and request.GET.has_key("query"=
):
+    elif mode =3D=3D results_mode.SEARCH and "query" in request.GET:
         query =3D request.GET["query"]
=20
         items =3D items.filter(
--=20
2.25.1

