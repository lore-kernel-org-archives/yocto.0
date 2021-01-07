Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.3753.1609991065011491239
 for <yocto@lists.yoctoproject.org>;
 Wed, 06 Jan 2021 19:44:25 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=k2DyK4iA;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: yi.zhao@windriver.com)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2081.outbound.protection.outlook.com [40.107.94.81])
	by mail.yoctoproject.org (Postfix) with ESMTPS id DF52E38C08EA
	for <yocto@yoctoproject.org>; Thu,  7 Jan 2021 03:44:24 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Dot1YZ88d0V1MFDo7JaOP6Yz3w5fTi2+YGQEJp+C6UhQXs32wsrgXkMVFFb6gwQxjrSfv87jQlMdHodxRt3Br1PpfY66w2n/bBNH1CS0Z610Q2kNxkFghyLVulwgQOKBtQvCiX6cGTyszV2ot6Wmy0vqfM45hl+sZ0ZFtnqkr6S4l6Uez7XiG/rKIkBuO3ih24Mwg0J5vxxAYm+7KBS1CzRSYnAXTNI4Pgd3JpqvkLTKJgso+AYDlknd0zowDwjmsH22TfSTR4A2Kc5smHn2RvkRwv61qnQYZuGOEZn/2RNCLamBwrdx33faJDcB+8uqWFcwerV0CRF5kh9z/C419w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4ZqJZqShxzkX5chuw/MPdoKoqHr0bUVhiSwvx9KAShk=;
 b=FB0q1MhTZ/YODwF6VHHqwpQRBi2CGrtX+rrpkQi6NrmG3ApP5kQ71w3cZhbhnJtZS57GON7BKe9pbMQ47jrTQT9bawiOmqkaYJEFm9/c3hFpsFw4Szv75QKY5gVa8DCk9MMbx0Qm68+uIMGMwnkZ9AjoCv+ZyJX4WNl931ufcl84iQ2kF1tp5SiYDfQ0KwCbR4URYGJRsU/bTilNN1JceJPibP0TyvitL99P7E6Gf8QCDQ8yKBcv2TEaGtDsUBBK9lZp1zsTUj23bPsWNhxU9RvQtkF254yBiUV98o38NK78+AUc6IP69yzXcnXB79oiP8vZs4bQmwUDcNIYgvMU8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4ZqJZqShxzkX5chuw/MPdoKoqHr0bUVhiSwvx9KAShk=;
 b=k2DyK4iArwJgb1LMpsdazqHL/6dOWJQpsKQuvNNAKQeCBnkOsgXMqRMUy+hektsv1mU7cFlBvQogf/zFRw/hB/ZsmWmURnrEXEfOKMWh9BEvfoOy8bF7HN3fyGDynlybuu31aoP2QCp0WHaIZBh48zDdf2zCWeEk7lWxHjKLgmQ=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by CO1PR11MB5073.namprd11.prod.outlook.com (2603:10b6:303:92::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3721.21; Thu, 7 Jan
 2021 03:44:24 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::21b9:29b6:fd3:bca5]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::21b9:29b6:fd3:bca5%7]) with mapi id 15.20.3721.024; Thu, 7 Jan 2021
 03:44:24 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@yoctoproject.org,
	joe_macdonald@mentor.com,
	joe@deserted.net
Subject: [meta-selinux][PATCH 16/17] selinux-gui: upgrade to 3.1 (20200710)
Date: Thu,  7 Jan 2021 11:43:44 +0800
Message-Id: <20210107034345.37200-17-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210107034345.37200-1-yi.zhao@windriver.com>
References: <20210107034345.37200-1-yi.zhao@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR02CA0130.apcprd02.prod.outlook.com
 (2603:1096:202:16::14) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by HK2PR02CA0130.apcprd02.prod.outlook.com (2603:1096:202:16::14) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.6 via Frontend Transport; Thu, 7 Jan 2021 03:44:22 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d01e0f3f-e341-4c37-7ab0-08d8b2be8686
X-MS-TrafficTypeDiagnostic: CO1PR11MB5073:
X-Microsoft-Antispam-PRVS: 
	<CO1PR11MB5073D83279C2D27017D13264F9AF0@CO1PR11MB5073.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:296;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	BcmXIMsGpni23ySL2NkffBw64ysQ8oVssA4ib87slwk5F/U5hB1JJJv2DKSxIKVQ36M7N3uovDc6IaGnzMD0L5iJ4rOOWyP4c+sAjhdXgUDeO+Mlxr2qx0UBSonBABRbP5dQI0ksxHa+gIUjks35MWw/37s2Gi+pYjkUyY+frYR01O59ydz3yh+gDK40FLgxNY6X77twbfIhps09EFaEAf0Xi+WDNRah17pfihqiiU9PktJNxnsPeZbnjVkp5Af3ZVayn1+p7xpxCX0bgDlQ+y6/FnGYrVDDx0Fq/kVgD0nFERfIYmiGPIUdoqnCIKrnqZqqZu1r1TkYY5lxN+qPtUbBkEdHJFPsn0RUtzHkBjb7Njuo/1CmAmhV4QycR3sbrmm3RlV9BqeG0GvCs3sHFw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(39850400004)(366004)(136003)(346002)(396003)(26005)(316002)(66556008)(956004)(16526019)(66946007)(2906002)(186003)(66476007)(2616005)(6666004)(8676002)(83380400001)(6486002)(44832011)(6506007)(36756003)(52116002)(6512007)(8936002)(478600001)(1076003)(5660300002)(86362001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?b4weOR3bum3+y250eJSOltqqyKNk9eXZ2Oz5nmOiHUmyKhZBKv3HpqXceMze?=
 =?us-ascii?Q?5XD8ZdD1cRUQgqa1LQPJwMprcVRbPst/sBqafZkrABxGuD+FdCm2ATtNs3LW?=
 =?us-ascii?Q?i6uaRhPz6kUYZhhCxfLe5HNhrRrgpS98SPFyloB2YS4tztERUopUj2KFptyi?=
 =?us-ascii?Q?pPwLKcjFfwEyDKcbM17+Rq/P3sZM97/wu2GtfFODo5fBbly3a0DZOYmEZDf1?=
 =?us-ascii?Q?/69aRSvCArSmS0bdQmQQ/ud/48Jk5oc0Tq41Obs/7YL2NFpRhFdAfAMVHQ5O?=
 =?us-ascii?Q?aDqjk8dTd3yNTvmIao8jC2PQ0jV8FX18YyIg8R7cMMaYKQfr8AtJewbgAmEq?=
 =?us-ascii?Q?k3+2WYDAR7m5neDRc/wLVdYG95LG1BgnX27pPde9ORVvk+kC7FNHx7VR2wQf?=
 =?us-ascii?Q?0bbrQYUwkAFWt560qrQiA2HSHjvcLy1o5Sn52B/0uAE/MeOs15fDRfRYnLHr?=
 =?us-ascii?Q?liZkleTCqUKmib51QDIkioU+1xTbASKmLt2cSlvphFAqn6XdPoOUy2MWnmUM?=
 =?us-ascii?Q?gnxlkesggYDNNpE6nHjdVekLNfAJutaKkE+epfWbkVu9N+LK+pKVKZFBfxjQ?=
 =?us-ascii?Q?8z+rLG9tpDOQwlLGQV5kpSl7PaZL/cFM63LBJvMYfqtt07nePXW/MoGRfpPG?=
 =?us-ascii?Q?kMBicxOxiKFBORPH22HvBTVz9qygzlOCbRslEuxap5nqhzskEsClflRbN29/?=
 =?us-ascii?Q?UZe5oLAjEI60pGRlya+dtAyv8fQWCbAXHsPf/SNfW6DtjEIS0zWAUA6CYUkA?=
 =?us-ascii?Q?dRyLcO5eAVEGNCrGztG22ZhKw+FCbbrtnD2gaRQ3PekPFrFyxNWW22+bOZXZ?=
 =?us-ascii?Q?rtzuPC6g+s3ETqV80QBRbeBIUcRAGkk7tRCoFQ4p+8FZ5G7whKqGGhPJWOv8?=
 =?us-ascii?Q?CEZV5rDjtUIWK+85kr+VX9hxThoQg6DOaglk2wJiFk4aP5lbQx2t/0zMnXzM?=
 =?us-ascii?Q?dOeCPz90vftclEnDbjDsJzQZL8RKmw/NlPWBFKd1xrCGisHs9yNL2F/W+PjS?=
 =?us-ascii?Q?j2b2?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jan 2021 03:44:24.2708
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: d01e0f3f-e341-4c37-7ab0-08d8b2be8686
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +pxXvY4KSNAQVuHL+wCpZdUZHWvzEP5YHOQzPiGw7nAq4gWfxfcJK5YBcSq6pst71V5yAbDilTY+19kAE8+/AQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5073
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/selinux-gui_3.0.bb | 7 -------
 recipes-security/selinux/selinux-gui_3.1.bb | 7 +++++++
 2 files changed, 7 insertions(+), 7 deletions(-)
 delete mode 100644 recipes-security/selinux/selinux-gui_3.0.bb
 create mode 100644 recipes-security/selinux/selinux-gui_3.1.bb

diff --git a/recipes-security/selinux/selinux-gui_3.0.bb b/recipes-securi=
ty/selinux/selinux-gui_3.0.bb
deleted file mode 100644
index e937836..0000000
--- a/recipes-security/selinux/selinux-gui_3.0.bb
+++ /dev/null
@@ -1,7 +0,0 @@
-require selinux_20191204.inc
-require ${BPN}.inc
-
-LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D393a5ca445f6965873eca0259a17f=
833"
-
-SRC_URI[md5sum] =3D "988a564eccc01feb8cc6fa49630efc6d"
-SRC_URI[sha256sum] =3D "e9e9b599950a30857b0954bf10853ea50efb7de68a5ae756=
a27b8d03ccc44348"
diff --git a/recipes-security/selinux/selinux-gui_3.1.bb b/recipes-securi=
ty/selinux/selinux-gui_3.1.bb
new file mode 100644
index 0000000..3038ebc
--- /dev/null
+++ b/recipes-security/selinux/selinux-gui_3.1.bb
@@ -0,0 +1,7 @@
+require selinux_20200710.inc
+require ${BPN}.inc
+
+LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D393a5ca445f6965873eca0259a17f=
833"
+
+SRC_URI[md5sum] =3D "1e0ea65dfb2b5408969bbe55f6f9d04e"
+SRC_URI[sha256sum] =3D "40775eaef965259ca2f8ad49c23b03ff2c8f70808a9e0587=
b1075970b2509c3d"
--=20
2.25.1

