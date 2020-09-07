Received: from EUR02-HE1-obe.outbound.protection.outlook.com (EUR02-HE1-obe.outbound.protection.outlook.com [])
 by mx.groups.io with SMTP id smtpd.web10.2108.1599499083155224375
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Sep 2020 10:18:05 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@vaisala.com header.s=selector2 header.b=L1tC3PaO;
 spf=permerror, err=parse error for token &{10 18 spf3.vaisala.com}: parse error for token &{10 18 spf.creamailer.com}: limit exceeded (domain: vaisala.com, ip: <nil>, mailfrom: niko.mauno@vaisala.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eMtwwPw8jV7GGtwvQhagZXCM5BcUn+qUDAgArXj+gqnd+oyDABBkeSdRoO/ykjpAD4Kk6tMBQsbi5G7f978t3YWpySJkfg43EunTET+VE25zBpGP9u/LfmK/96IImonAs8ErTVdn4WGtPpFCU9wdHAVfHTsaTjkwcZtHKpfZ4zecruttWvIePp74jglhpEa4gY1GYtnDBa4eJF0CiuhiZtAtv3dhLELdPjU2QVi9TicT6wsurp+BxGcP7MVUTbMs/JpoD9DrfIDCYDZxe984XkcT2cgG3YF1UvOuJBqKKibfTHQGXmEfuuvsJuIgK45HZzyn/QNSzSwieYmYw8eLnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c2Y1smuUgb0PNXveM/5bBNUkKSm5Pozgay0Bl/VYJCA=;
 b=kiEWCO155d0r+vT5726TRqgUcQfXuJy8rkXv3ZV0WDBarL4halSugyKlVlJTbCLsiCON2DneUKePWU1SJt8K/2rNxiADtdV9F9hSP8n5NJkACThDKt8ES9yN1VX3vlkVyPLn3OP1gMaZdk+8lwCCPMwHoKpEQ+6Yfdb+6aUVfV4RjdPpjEUvN+Swsn5K0PZmLgg8Dhs/ImBh1uDZtyvTM3AXQ2fq8RJSk6PX0dYNkqg9FqE1RQGxO5If428W64zJ1BY3sP/jhjPRVWeM6+z/Id3lwoO8tuhRaRU0ZUeGH3bchtjoo+mFUYRg9MUb0tfdD7Pbs9A3T3HOs4sB5t1N9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vaisala.com; dmarc=pass action=none header.from=vaisala.com;
 dkim=pass header.d=vaisala.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vaisala.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c2Y1smuUgb0PNXveM/5bBNUkKSm5Pozgay0Bl/VYJCA=;
 b=L1tC3PaO6ciog98BM/+vqBDYYtQ+rJ+C9eEv5nfIIuyB3krjXp4/N03GZ+nbxGePKoscyawNQTF3+GnUH8Xz3yDNGURQ1aGvt0UQYefv8MgAnM9+Z8bayWp9md092kXPsLZHqWUsUevUocBB3lryAISjkD02gvlcqZTOuwwFaBI=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=vaisala.com;
Received: from AM6PR06MB6198.eurprd06.prod.outlook.com (2603:10a6:20b:ff::26)
 by AM5PR0601MB2404.eurprd06.prod.outlook.com (2603:10a6:203:6f::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3348.15; Mon, 7 Sep
 2020 17:17:58 +0000
Received: from AM6PR06MB6198.eurprd06.prod.outlook.com
 ([fe80::a4e9:19eb:3dfb:f286]) by AM6PR06MB6198.eurprd06.prod.outlook.com
 ([fe80::a4e9:19eb:3dfb:f286%6]) with mapi id 15.20.3348.019; Mon, 7 Sep 2020
 17:17:58 +0000
From: "niko.mauno@vaisala.com" <niko.mauno@vaisala.com>
To: yocto@lists.yoctoproject.org
CC: akuster808@gmail.com,
	brgl@bgdev.pl,
	bgolaszewski@baylibre.com,
	Niko Mauno <niko.mauno@vaisala.com>
Subject: [meta-security][PATCH 1/6] dm-verity-img.bbclass: Fix bashisms
Date: Mon,  7 Sep 2020 17:17:32 +0000
Message-ID: <20200907171737.108284-2-niko.mauno@vaisala.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200907171737.108284-1-niko.mauno@vaisala.com>
References: <20200907171737.108284-1-niko.mauno@vaisala.com>
X-ClientProxiedBy: HE1PR0502CA0006.eurprd05.prod.outlook.com
 (2603:10a6:3:e3::16) To AM6PR06MB6198.eurprd06.prod.outlook.com
 (2603:10a6:20b:ff::26)
Return-Path: niko.mauno@vaisala.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from hel-eptripper.corp.vaisala.com (193.143.230.131) by HE1PR0502CA0006.eurprd05.prod.outlook.com (2603:10a6:3:e3::16) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3348.16 via Frontend Transport; Mon, 7 Sep 2020 17:17:57 +0000
X-Mailer: git-send-email 2.20.1
X-Originating-IP: [193.143.230.131]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: efc0e10c-903c-40d1-19c4-08d85351f753
X-MS-TrafficTypeDiagnostic: AM5PR0601MB2404:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<AM5PR0601MB2404E58CCF09D682F800066D81280@AM5PR0601MB2404.eurprd06.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:580;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	gynuGsVPsLS9dJ1w2VN99EJhwpYJCjE7zrLZfG9EE0l8eKpPCaTVyGEpyUOtPd7wKcc5rR0+GJgb09dwYRy98t5DchozJZDfZ/65xPfqeWaBFW2rE8yYarHMeeY/IwiTNEDjub20M8GkAmBHWlJZR+01AILh3oMqhJ/SK8/GFkfoEONxlNHh8fxQvTnTx2kHO9VtSxSODpQE854dHezu7fuLQK/wLB7z7Zwkdoi0sMHriXefZpRm7vHhsU2TYVDFgdfniTWrMhuQhNw3ZzJxtg9ydMW/th/XrEOaMaeUZES6gdHkm7q8G/f4cYIuQ2Hz+B3exactowl/ciXnwJhLNQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR06MB6198.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(396003)(39850400004)(376002)(346002)(136003)(36756003)(1076003)(66946007)(6916009)(107886003)(6666004)(66556008)(2906002)(83380400001)(86362001)(66476007)(956004)(8936002)(478600001)(5660300002)(6486002)(52116002)(7696005)(16526019)(4326008)(26005)(44832011)(2616005)(8676002)(186003)(316002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	3/IQDvuj7lbn7WwT/6xLtkbvY6V+1B6cP1l2OEL8wrqFEwgGyxHtkW2JQLe/cl5Sr7BsMA8LfIJfOCdyuBp43hAHKnrUn6LUQmLsQc2v28syZlNLZ/fe9F9fLkitZ5RngsFTbBR+PcUAO5wJXdx/ObLB+1xm6Oe+xwlc6EE2mlJ0lwxpl8iA7NkrxeRDj2N05dTqXhZ2xdrY41ROmLZXXfOPCwRZybkIeY8SaPVYN3Ej8ZII9OE4jOryzl1uCybdKBH+XTQNJ4KlEwNpkrRk90/7xAPJP+Vg9ljFHxeCZlu5ZXCX5lfgffwgSFgCGpi9+0NHC2gn65O0VERPGHv83ybzYKtFUiQqCKiC60d9krJ5yHkn9djpL6qikt0PytrIIkkiE/hQCOzlapaCUNBeFYJlUj6YLIT5u94TroaKcGFAJxN6lzPIy0e2WKWU63yNqr4Vzc4GhKJRlAjZApkDdaft1wDEy1sDFn5T1zlAQ+k/4tWK/g5++bolUucMrUzRi5JO7JWZQr/KnrMsmKsG0WzpXTXO8f640SBcoV3OmUKHZoait+WH0DcMRi2KvS1Wi8HK6CvKUZIfS+gnEB9EpyOK/vRUFHiY6i1H4b+8WsR/QAZq7zE+WUS8BoqXXkouOV1acBOz1tSH8SH6iiyh7w==
X-OriginatorOrg: vaisala.com
X-MS-Exchange-CrossTenant-Network-Message-Id: efc0e10c-903c-40d1-19c4-08d85351f753
X-MS-Exchange-CrossTenant-AuthSource: AM6PR06MB6198.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Sep 2020 17:17:58.1698
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 6d7393e0-41f5-4c2e-9b12-4c2be5da5c57
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SqX/+NiOjaW/tzshIAIiv1COlp/SlcS9Uak3OflI5mkrqd67NwVtzR85V4e5NVwpT87qDQJ6P3JXssdDWt0RMw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0601MB2404
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

Resort to printf in order to avoid usage of non-POSIX compliant echo
flags. This mitigates following errors visible in console during
boot-up with image that has been built on a host that symlinks
'/bin/sh' to 'dash':

  /init: /usr/share/dm-verity.env: line 1: -NE_UUID: not found
  /init: /usr/share/dm-verity.env: line 2: -ne: not found
  /init: /usr/share/dm-verity.env: line 3: 642864e8-6a17-46b9-ba1e-9386a390=
9c8d: not found
  /init: /usr/share/dm-verity.env: line 4: -NE_HASH_TYPE: not found
  /init: /usr/share/dm-verity.env: line 5: -ne: not found
  /init: /usr/share/dm-verity.env: line 6: 1: not found
  /init: /usr/share/dm-verity.env: line 7: -NE_DATA_BLOCKS: not found
  /init: /usr/share/dm-verity.env: line 8: -ne: not found
  /init: /usr/share/dm-verity.env: line 9: 12064: not found
  /init: /usr/share/dm-verity.env: line 10: -NE_DATA_BLOCK_SIZE: not found
  /init: /usr/share/dm-verity.env: line 11: -ne: not found
  /init: /usr/share/dm-verity.env: line 12: 1024: not found
  /init: /usr/share/dm-verity.env: line 13: -NE_HASH_BLOCK_SIZE: not found
  /init: /usr/share/dm-verity.env: line 14: -ne: not found
  /init: /usr/share/dm-verity.env: line 15: 4096: not found
  /init: /usr/share/dm-verity.env: line 16: -NE_HASH_ALGORITHM: not found
  /init: /usr/share/dm-verity.env: line 17: -ne: not found
  /init: /usr/share/dm-verity.env: line 18: sha256: not found
  /init: /usr/share/dm-verity.env: line 19: -NE_SALT: not found
  /init: /usr/share/dm-verity.env: line 20: -ne: not found
  /init: /usr/share/dm-verity.env: line 21: 19d98185b42a897a37db6c56c7470ab=
2d455f0de46daa0df735eee6263816439: not found
  /init: /usr/share/dm-verity.env: line 22: -NE_ROOT_HASH: not found
  /init: /usr/share/dm-verity.env: line 23: -ne: not found
  /init: /usr/share/dm-verity.env: line 24: 298d75fc2ea27fe594b6a37158a6ae7=
538e77d918bab98c475934f625de0e4ab: not found

Signed-off-by: Niko Mauno <niko.mauno@vaisala.com>
---
 classes/dm-verity-img.bbclass | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/classes/dm-verity-img.bbclass b/classes/dm-verity-img.bbclass
index 1c0e29b6..6faed5b6 100644
--- a/classes/dm-verity-img.bbclass
+++ b/classes/dm-verity-img.bbclass
@@ -32,9 +32,9 @@ process_verity() {
     # just trim all white-spaces.
     IFS=3D":"
     while read KEY VAL; do
-        echo -ne "$KEY" | tr '[:lower:]' '[:upper:]' | sed 's/ /_/g' >> $E=
NV
-        echo -ne "=3D" >> $ENV
-        echo "$VAL" | tr -d " \t" >> $ENV
+        printf '%s=3D%s\n' \
+            "$(echo "$KEY" | tr '[:lower:]' '[:upper:]' | sed 's/ /_/g')" =
\
+            "$(echo "$VAL" | tr -d ' \t')" >> $ENV
     done
=20
     # Add partition size
--=20
2.20.1

