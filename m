Received: from NAM02-DM3-obe.outbound.protection.outlook.com (NAM02-DM3-obe.outbound.protection.outlook.com [40.107.95.42])
 by mx.groups.io with SMTP id smtpd.web11.8828.1619074592807457735
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Apr 2021 23:56:33 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=KCf1Gjwu;
 spf=pass (domain: windriver.com, ip: 40.107.95.42, mailfrom: yi.zhao@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JDqsxtAIZ1Y6EYt05ivc5dguLxhTOuizBeHaLvtiEQDb6ZR93Xs1hqnijWrYjgfDJFtV7q8oqXpO4SZh/3xTd8rV02qsWyzPNM3hEkodBlBMLkWvOC9VltUVR0bqxh5mAMUYFbPpbaH1ccAhcyTF7rHco5j4AYyY3JSDExa6XVlNjys/wCyrk8YkXAoakVcvUi/wNavVhTcW3+BeyPb+Xkyt+HnewmFsHQJ0OToh0aXWIEgGqWqslJdPvmRl8pLg5a17z428RIMsAxt3++G4koqvjwfoLZ/XZD45niltY8P5qQgPRu1yOKwR++Iu+V7BMoJNycokO3GdFz80VLsJTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=REMpV3Ra14NTnzvaMDZ9Vao4isNPILj4pjWC2Tn7gjs=;
 b=f6Hj+N+cu8K/E11DEOGrTsdIXpIFdX7andVgQU19UIn2DFbrtoZ7dpyX/QqGgftT7dU2tf7CUm7Igcdp3B5xrdc1ufimh1HcpmJlHKnT6OHrGDBpTAdq96NcBXY/SdQw76eAUJl7GytnlePPjmmjn+kTvVNQbUNC7/wFfSILU5p5Wzq8mkpZ5g8pcb64lgT5LO9T6fDMKQ/GkQa6fT9VUD/fGp5CqCgkbIOBNG9m2pqV2dpwcPbEZ8sleV4Z1UQEa3WoCMOBxT8xQu1Z+yqOEmVrHLIXzrCxFbk+OPOfaK12gAupVgXqWSDCkzvsdGpFlc1O5OtneBkGpjORdUK4wQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=REMpV3Ra14NTnzvaMDZ9Vao4isNPILj4pjWC2Tn7gjs=;
 b=KCf1GjwuLHJo6vdiAKkJEKxMyq9EqbNDB8v8u45LDeMkDEg3iQSqLY2W88Ij7IGHgu/gfFPxD3m2DCexVs1k+E7aii4xFG+Ae1FRBCFLmMmJks2gegjgnFMT+8hLAZW0Qq0gcD8PcbMOL5jWrt8TG+dnDctOBTF8VIZBxsE4DTg=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR11MB1789.namprd11.prod.outlook.com (2603:10b6:300:108::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.16; Thu, 22 Apr
 2021 06:56:31 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::55fe:763e:6961:7bbf]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::55fe:763e:6961:7bbf%4]) with mapi id 15.20.4065.021; Thu, 22 Apr 2021
 06:56:31 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org,
	jason.wessel@windriver.com,
	mark.hatle@kernel.crashing.org
Subject: [meta-openssl102-fips][PATCH 5/6] openssh: set kex->sessin_id via sshbuf_put in ssh-cavs
Date: Thu, 22 Apr 2021 14:56:08 +0800
Message-ID: <20210422065609.143415-6-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210422065609.143415-1-yi.zhao@windriver.com>
References: <20210422065609.143415-1-yi.zhao@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: BY3PR10CA0023.namprd10.prod.outlook.com
 (2603:10b6:a03:255::28) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
Return-Path: yi.zhao@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by BY3PR10CA0023.namprd10.prod.outlook.com (2603:10b6:a03:255::28) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4065.22 via Frontend Transport; Thu, 22 Apr 2021 06:56:30 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0473f838-bcc3-4d1c-9abe-08d9055bc29d
X-MS-TrafficTypeDiagnostic: MWHPR11MB1789:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<MWHPR11MB1789348EAF9386C695BBED9BF9469@MWHPR11MB1789.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:276;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	0wq77jkGlS9qTDnmlD5WERgyRapQENN+8DNmMAEaALfTefzCRbJGKuIDYjg/3NuNenfwxNe/9mMzVRn+ABA7B+KtLgF52w6MVamG4VQc0C4rOZAZlSVf00SZ4STNpXV8NOs5LCU4agEroOb7mrp+1qJcGSTJ77Qzs+VlSO3JMRw9Z4XI7c2XOC9eu3BAEiizIpATe4XkOqOBtsGXj2GQCOg9ev9NTkl+Pmht1yScDWL96XTPPQ/RcbC8imKlacYhiOp993h9ayp1bViFHf8CPXG4MKP2zeqNDNJxXBSKRnfjzk+4MIvGQsJDC0eBHD2enMb98LygW8NIBfEkFrIEoWoCaoe8M7GUaCUi17EzTL1elKtqYtvl5/T8epiPnTTsjqE1JKeBLpJvSRT8mIH64B22ESyq7BwIeCjLvBbG2kjVEZyk2JrEYbkjupIqpIGgyDk45XrSCFXasZKIntaNAHrnV9hSBjhK3T3zSsDq1uP31s/wIYm9Kqi11pHXGgpyI/5XRujHfGbQansjF6rwMRaJ2x43EqRb4bpwMp4RZ/Oz+t0lWK+RIy2qVo7vd+5aCzTLAqTL+A/qjm7xtesZQX0REOaE/ffdD7fP1wmdHp7UdXa0fyQHmzhhYUz3NlyhlPuCQn/Ye5ajbZBBtnPu8wP00sLO8EM4db5/jIoehv61ALi60hEHOEykZgpOwzAeu3RdgwLYyxuVGC+u+OdfDzTuWmnaJUKQepoEQ1tleLM=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(136003)(366004)(39850400004)(346002)(376002)(86362001)(26005)(38100700002)(6512007)(66556008)(5660300002)(2906002)(66476007)(186003)(6666004)(38350700002)(83380400001)(316002)(52116002)(956004)(966005)(36756003)(6506007)(8676002)(478600001)(66946007)(2616005)(8936002)(44832011)(16526019)(1076003)(6486002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?eFvNGzqz65jZJUqlIKUIINfJQZvoI49W/YZsv9Ns+Dia0AU/7VssrQmMvGfL?=
 =?us-ascii?Q?ChCEexc5pTRswQfMelgF5t6vfHez4KoxbJIRPlRdBBkUhhV6XsFaPaCA2gwQ?=
 =?us-ascii?Q?syVxiZRUw0oMCt46XCY18I3xNbmA9a0uBdCryk5BFlrBHiY6ZyQW2DC4sgxc?=
 =?us-ascii?Q?/j5Rj3Df716QUaQ2+I1ZI5x3c0sPPe1j1lVqdQ7W3JIruRR02ILI+w/Eu3fz?=
 =?us-ascii?Q?pJQNcAEl/CiilN5sVmbKR4bUdO8vBVqR6kXX1RmKR1iWgdGDtkZBgi4AtgjE?=
 =?us-ascii?Q?Hkgi2A2m7G0Hd86jktZFLtKrkbDcQgfi/omrxLog4qEAIIZuzEGBHKYhNzfi?=
 =?us-ascii?Q?r0q6aVVsp2YOX7RHUUqHQ15gQzqyWQCobyRhxBkUM1T4zljRQNfwOST6EJ+5?=
 =?us-ascii?Q?csdX+5rZPuLNo48QCI0Julc0yR1NqWm5q76IkSeF8GDjQQ8wxqJ7gljo62jh?=
 =?us-ascii?Q?ZKevvyxmV0d6zZ8JTlYTzOmAvhL1iE04HRIOwvMW+u2mrhlHZD8piAqcyv3i?=
 =?us-ascii?Q?hDO5YWHZAHbs2/+lg2AQgi5BWXDeSbbFEUPPZm3KkvwWEziJyZyOYAnvlu2s?=
 =?us-ascii?Q?B+tguLWRInMSdZY4DGJPFMTejQek+w7jToB6QwRUvWxIFMcnUL9JmSPqcb6P?=
 =?us-ascii?Q?FF8QbddXxFWT6zQ9avfpF5wZEOBfgotmN4KPVywpLLN/i09bsDFBHISa8TEN?=
 =?us-ascii?Q?4onxd95gfy6bPdP9jEJ2kJHlLpgMpaK4Gx64qJskCRoINEMIQ5VJZ0VKuy/r?=
 =?us-ascii?Q?Gpt0OwUM8pkMmrPULku2nwAJZrFNvE/23uHab6LvFLpfki15WgYYXSDmnnj0?=
 =?us-ascii?Q?C++GWK6aGKEBU4PQLXWchLTNrcMiORcWLB9I+zm0NI57K5ZbhaywVsv1GhHJ?=
 =?us-ascii?Q?tcNCXhU8csfM6RMk6Kns8v+mFN022q4k1wBooxC/mHaQaNz+DS1vah/LFeFu?=
 =?us-ascii?Q?XMKOwtBks+TlDcW8SUVuvUhn2OJN6rizuyLRH8C59jfEu6n4vcIAdHqOqKAb?=
 =?us-ascii?Q?Wh/XwkWYW1CdfBV0MQdQlFG8M9ObbV94gS8Tc0JbACijN0dfaAFQmExYyO0u?=
 =?us-ascii?Q?mEXBFor6ghT2Pet/1VvYjUrfPv6nyHIMPj17myUBq+hxha0bDBanmPKx6SQW?=
 =?us-ascii?Q?E4sizc+WIqlBq1iAr8qTOug4ynGFQRgqzrWQhUxjXr9iQSda8oBS6Uv/9Cez?=
 =?us-ascii?Q?zrUnVdf5sKxjCmPjueQ1JJcBdY6ch/jAS1rUmv4TM1kIFgzpge9Pvidu2VwB?=
 =?us-ascii?Q?JPDym5KxTsLz3xfFLa5wxr24fk9DCJ5QfhXfN2/FhesmioBUj1x4yIJ5eK/S?=
 =?us-ascii?Q?Wn00fWrKtmHSXU2SUrzTBCTn?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0473f838-bcc3-4d1c-9abe-08d9055bc29d
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Apr 2021 06:56:31.7356
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: p3Izf+AxfZfLdcz5ANnTiikeorQq6QmJeSc0TW6lzt+T8cMbLNIhakXWrP5OCvyEMOZ9R2GGK248SzRErDc2kQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1789
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

The kex->session_id has been replaced from u_char * to sshbuf and
kex->session_id_len has been removed in openssh 8.5[1]. Update ssh-cavs
to adapt it.

Fixes:
ssh-cavs.c:198:12: error: 'struct kex' has no member named 'session_id_len'=
; did you mean 'session_id'?
  198 |  ssh->kex->session_id_len =3D test->session_id_len;
      |            ^~~~~~~~~~~~~~
      |            session_id

[1] https://github.com/openssh/openssh-portable/commit/39be3dc209f28f9c1ebf=
eba42adde8963b01e1cd

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 ...avs-set-kex-sessin_id-via-sshbuf_put.patch | 45 +++++++++++++++++++
 recipes-connectivity/openssh/openssh_fips.inc |  1 +
 2 files changed, 46 insertions(+)
 create mode 100644 recipes-connectivity/openssh/openssh/0001-ssh-cavs-set-=
kex-sessin_id-via-sshbuf_put.patch

diff --git a/recipes-connectivity/openssh/openssh/0001-ssh-cavs-set-kex-ses=
sin_id-via-sshbuf_put.patch b/recipes-connectivity/openssh/openssh/0001-ssh=
-cavs-set-kex-sessin_id-via-sshbuf_put.patch
new file mode 100644
index 0000000..20e8604
--- /dev/null
+++ b/recipes-connectivity/openssh/openssh/0001-ssh-cavs-set-kex-sessin_id-=
via-sshbuf_put.patch
@@ -0,0 +1,45 @@
+From 3841d7c1057e62a57c49e5042080202739c9bf98 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Thu, 8 Apr 2021 15:09:21 +0800
+Subject: [PATCH] ssh-cavs: set kex->sessin_id via sshbuf_put
+
+The kex->session_id has been replaced from u_char * to sshbuf and
+kex->session_id_len has been removed in openssh 8.5[1]. Update ssh-cavs
+to adapt it.
+
+Fixes:
+ssh-cavs.c:198:12: error: 'struct kex' has no member named 'session_id_len=
'; did you mean 'session_id'?
+  198 |  ssh->kex->session_id_len =3D test->session_id_len;
+      |            ^~~~~~~~~~~~~~
+      |            session_id
+
+[1] https://github.com/openssh/openssh-portable/commit/39be3dc209f28f9c1eb=
feba42adde8963b01e1cd
+
+Upstream-Status: Inappropriate [oe specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ ssh-cavs.c | 7 +++++--
+ 1 file changed, 5 insertions(+), 2 deletions(-)
+
+diff --git a/ssh-cavs.c b/ssh-cavs.c
+index 641a453..48bae74 100644
+--- a/ssh-cavs.c
++++ b/ssh-cavs.c
+@@ -194,8 +194,11 @@ static int sshkdf_cavs(struct kdf_cavs *test)
+ 		goto out;
+ 	}
+=20
+-	ssh->kex->session_id =3D test->session_id;
+-	ssh->kex->session_id_len =3D test->session_id_len;
++	if (sshbuf_put(ssh->kex->session_id, test->session_id, test->session_id_=
len) !=3D 0) {
++		printf("cannot convert session_id into sshbuf\n");
++		ret =3D 1;
++		goto out;
++	}
+=20
+ 	/* setup kex */
+=20
+--=20
+2.17.1
+
diff --git a/recipes-connectivity/openssh/openssh_fips.inc b/recipes-connec=
tivity/openssh/openssh_fips.inc
index 961f2d5..194a6f4 100644
--- a/recipes-connectivity/openssh/openssh_fips.inc
+++ b/recipes-connectivity/openssh/openssh_fips.inc
@@ -11,6 +11,7 @@ SRC_URI +=3D " \
     file://openssh-6.6p1-ctr-cavstest.patch \
     file://openssh-6.7p1-kdf-cavs.patch \
     file://0001-ssh-cavs-fix-the-double-free-error.patch \
+    file://0001-ssh-cavs-set-kex-sessin_id-via-sshbuf_put.patch \
 "
=20
 do_install_append() {
--=20
2.25.1

