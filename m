Received: from EUR04-DB3-obe.outbound.protection.outlook.com (EUR04-DB3-obe.outbound.protection.outlook.com [40.107.6.118])
 by mx.groups.io with SMTP id smtpd.web10.11597.1600432232521596223
 for <yocto@lists.yoctoproject.org>;
 Fri, 18 Sep 2020 05:30:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@qt.io header.s=selector2 header.b=JERAO/n0;
 spf=pass (domain: qt.io, ip: 40.107.6.118, mailfrom: samuli.piippo@qt.io)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Mbb0n6qymzmHT47IqzUYlsk2Lr7B2elkwOMpuwgtVCkyEYR/8sbWwhH7IvzoaOW2qJtwntc9kornqskWZ63lSx/X5D9VcP8CLJUIxIchrpwZvB95J96mrhiJc8NeEsTZiSIVkJl656pwwN9uwBLCzrcUwK9wWCL6iv/xhvL+bNL+5yM57RCq0kpf7blIVlJr7Yz0Spyfkl/wve80lLuM197qeBYCwUrk003IwE9zBtA8KmAweLZpOuN14qDPI0ftEOq3G/f9ZNbSdx7TlSnP8IyRcXMpGqBxHZfKxLDIa2qrr5BtG6GVjW3XaieVRCwN8uJWI3ioAze7cGnqsDklAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nRJTCXqo5fUuE5j0A4fUWrUV6H1Ibv6qMCD2HmN0x+Y=;
 b=BATYdyH24YHrB6XpkmRm23NVvFB8t+HCKc5IYKzGV1HGW5tcIgtvLXQRyxtgq3ymnQ73Czbnly+nY8PLoqn+licQ+z2veQjEOHP2VGZt6xR3JbI53IqCIFraYdULSm2OPXpPoWhu0ioI9QwV+UprmyAkzmhV5ftLkSYN9JFSrJpbVUpUWsDOVgOzbcASIOLR/Lf1fd/aVQdXIcquA59zr7yvdVeCpcjqBv4mODweS9l/rflzHQYXiL5NnZRYN6mtE2iqJq3XwOjKfY5E92l8phEDXoBQj3k0//vyIbWy+ZpSsjZdVDTrH2/ayOfkbdciAoTnu4wryeiTqp+Z1xsn9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qt.io; dmarc=pass action=none header.from=qt.io; dkim=pass
 header.d=qt.io; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qt.io; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nRJTCXqo5fUuE5j0A4fUWrUV6H1Ibv6qMCD2HmN0x+Y=;
 b=JERAO/n0ywiSbSBGKaKmDCvyGF5E/C3UBdwR5ss5HMwPnpNSCpszbhiE8qK3Ah80zvZXcZgHhZzMM7iBZLvlsBkz0KzMrZTujhoCOdOTbH4e2uy6hxY8oEzlvsU/KHqaLuqR4OMkYhTnuG1yHhNrLio7ur1cfEcybZo6moS4fOs=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=qt.io;
Received: from HE1PR0202MB2841.eurprd02.prod.outlook.com (2603:10a6:3:ef::18)
 by HE1PR0201MB2460.eurprd02.prod.outlook.com (2603:10a6:3:82::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3391.17; Fri, 18 Sep
 2020 12:30:29 +0000
Received: from HE1PR0202MB2841.eurprd02.prod.outlook.com
 ([fe80::4817:13c2:2b92:647c]) by HE1PR0202MB2841.eurprd02.prod.outlook.com
 ([fe80::4817:13c2:2b92:647c%8]) with mapi id 15.20.3391.017; Fri, 18 Sep 2020
 12:30:29 +0000
From: "Samuli Piippo" <samuli.piippo@qt.io>
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com
Subject: [meta-mingw][PATCH] cmake: remove dependency to bash-completion
Date: Fri, 18 Sep 2020 15:30:22 +0300
Message-Id: <20200918123022.23519-1-samuli.piippo@qt.io>
X-Mailer: git-send-email 2.17.1
X-ClientProxiedBy: HE1PR0401CA0103.eurprd04.prod.outlook.com
 (2603:10a6:7:54::32) To HE1PR0202MB2841.eurprd02.prod.outlook.com
 (2603:10a6:3:ef::18)
Return-Path: samuli.piippo@qt.io
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from munkone.intra.qt.io (62.183.187.94) by HE1PR0401CA0103.eurprd04.prod.outlook.com (2603:10a6:7:54::32) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3391.11 via Frontend Transport; Fri, 18 Sep 2020 12:30:29 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [62.183.187.94]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 42891813-0ac2-439d-9e14-08d85bcea0e1
X-MS-TrafficTypeDiagnostic: HE1PR0201MB2460:
X-Microsoft-Antispam-PRVS: 
	<HE1PR0201MB24607A23373FADA0E954F39CE93F0@HE1PR0201MB2460.eurprd02.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2512;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	RFQ9y0y+4hOu7QrZgqFVdUOeSuYpjqs2AmjrfNrisHNtF71EH31JxPC3h/tgScF9TJwakXNue8JsZabJhOd08yWpRBmgW6fUf1GEztRatKsR+5MV4tb9Zjniz5LMLUQ+KxI8dQAbTmLNs2E+G3OdqI6lccTUHPLMAnjSle0165vjuStUUdJYqftYa/zXx41TvdzPfaNexc7ptTz/HTrrEDachpyL7WnqlebbdR+XDcoKntFiUYfOrXcyhwjCjbZPjFi/mqT7jiWkxfHnd45GQNhUqCGom7iu+/eQpCpgk3JknI850WgoBhezTUlt1GF0bOIZ4pzrL7klz4fOJbadyz/ZWR/Pwc6KnHyMz8RKxLmxM8OUkT4oPLyjMN8HLEXC
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:HE1PR0202MB2841.eurprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(366004)(396003)(39840400004)(346002)(376002)(8676002)(8936002)(5660300002)(478600001)(6666004)(36756003)(1076003)(6916009)(6486002)(66476007)(186003)(26005)(86362001)(66946007)(66556008)(4744005)(316002)(956004)(2616005)(2906002)(44832011)(52116002)(7696005)(4326008)(16526019);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: 
	8k7BU8twzJXbwrSAxuvuuvn+cxC9jTFWUMin0CkBgPrdarSU6jH7NQcEHQBBwXF4jbXrEU84eDMUjuTWVt3zvkdn0lmpcdYRFV5f6oYGoKaUPGTiDobyEDYTFHvOpgZLdrXk3sxbrzcVoa5Br8oC0xSxBLGjbexSlOkh0Ibg/nevSkJJSHQAXGujSUecjZzKU6S4CSmFyhl17CGlERDyzPr8gDY9f8PbDsqUX0kLFjN1EMUJnjpdSypOoV9GkjrcKzG0OeVAVisA9Kgg8wP4D17OFSW0nSdVRHS3UGCmb6EIg5S5U7CmsnZ37LEn7NJnMHNwlUBYDSn5srS0/ZDZoLW+p69PGfkg3LPntDxnXaaVp5Cckn1I6udjpx2GYGfIj0FQDQmi5jeXZHBDVVcgw3tMxK9JdWbHJUgRTrrm1MII1yYPSuOGMBphWmo9gyN8VQGe+qoT4pPGBFEZcbkCxga2s4orC7dmHb3q9JUUpy3FZ0ThL6tnXMlQ7EQPgnwgJ0P0cMnbJCZdZEpqyDPy8LiBXYuMgImpF8C4mu2XFyCG9wrK1MH23THEcPQNGekd7aTOy06E9Z+4ck11RlTQIc9kh4I+MoM0yYn8Df/WfveNwkxO5vsMIviGyt5MEOwqZkoWnnF3nSY1wJEZMRiu6g==
X-OriginatorOrg: qt.io
X-MS-Exchange-CrossTenant-Network-Message-Id: 42891813-0ac2-439d-9e14-08d85bcea0e1
X-MS-Exchange-CrossTenant-AuthSource: HE1PR0202MB2841.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Sep 2020 12:30:29.5045
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 20d0b167-794d-448a-9d01-aaeccc1124ac
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KDoarUZBcgi5Hh+0Kc0x87oa9Lemd1rmiHUm3wS4cRHMIm8IfDXv7Pv9lw0mYebjFhuaDm33K+tMH/QBo4Y2UQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0201MB2460
Content-Type: text/plain

bash-completion pulls in ncurses which does not build for mingw.

Signed-off-by: Samuli Piippo <samuli.piippo@qt.io>
---
 recipes-devtools/cmake/cmake_%.bbappend | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-devtools/cmake/cmake_%.bbappend b/recipes-devtools/cmake/cmake_%.bbappend
index 42d36ac..b2e8a19 100644
--- a/recipes-devtools/cmake/cmake_%.bbappend
+++ b/recipes-devtools/cmake/cmake_%.bbappend
@@ -1 +1,2 @@
 DEPENDS_remove_mingw32 = "ncurses"
+RDEPENDS_${PN}-bash-completion_remove_mingw32 = "bash-completion"
-- 
2.17.1

