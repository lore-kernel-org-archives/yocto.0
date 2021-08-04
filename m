Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web08.5624.1628059800110711418
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Aug 2021 23:50:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=rDvboufU;
 spf=permerror, err=parse error for token &{10 18 testsso.windriver.com}: permanent DNS error (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=3850754a31=yi.zhao@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 1746irFi005313;
	Wed, 4 Aug 2021 06:49:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=PPS06212021;
 bh=jxY29k+Xwq6jl4ySiwJSoQTR/6raWSNczSIqg+kcQyI=;
 b=rDvboufUJG7c9P0g2aa1C7cJLPKzXbvjCOFn6nnb6thgjgkDdBVeDHoEDYr+4IsgGAcG
 1/G2wREkTnVCdHrCmbKvO+eGDvPPuZs2uWTaVTg/4GcocnOslmzISwQggWfhWhvl2GX/
 OjVvTZvkfk78v3TmqQztDD4pcDEbda1LYvY85SbH/zhsw0hJIdxK8ICtyftfJFFu+uNi
 EdpQe7QRlXsJQNa36NSry4+YFEFd1G58fNByCkrKZ9cXJP4CSYwUkcF6hXU6gkfH+/I5
 HAY017EotWPYoUWBUaQD6RwUZEphDsMYsCL6MXcM9mYusZFvpXne+77H0TKiQlUyUAC1 hQ== 
Received: from nam10-bn7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2102.outbound.protection.outlook.com [104.47.70.102])
	by mx0a-0064b401.pphosted.com with ESMTP id 3a705h8tmk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 04 Aug 2021 06:49:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c1REa+JGVIo7Bl36XAtPgES9JyoQ2BbLlTYHSzw+AS32fKMUCh3sXdmxYsesIwy8IZBdIwFlyKhzOC7X5qvUqB6euLNIgnln6CW87i2B/aCXfkw68vBqe1JoVToKtDoXbHXVaLph0YM0rJMWGbQB47iCMCPhaVFbhW81DcRj2XESUWKqyAR+IQTEwab3ffyIZBpHruGXOnbHQPzHDNAMeH8UadKjbTz45JcnUh5wjnsjrLHNIZRujj82eSXonkbj7jTWuOaLa6E1ih2V/pRQ7l8a4ZPPH1ouR0q9I0axtsQDNlGH+VSkgu99SGO+H2rQkVKIPljrl4zqC+t4kxyTgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jxY29k+Xwq6jl4ySiwJSoQTR/6raWSNczSIqg+kcQyI=;
 b=SBlFSs/ax4etwsNZEatOkGxMkx41i+UQ7PoFe8t8UiqqxDOhOFTXaJl5NGTVu7ZabOLwTUMJ/1LUBa+e8W+UZXMxcfKWJXmFjSnsSFFbL8jq+pLXhP8qPvPsTuL+VzIp2Iz7K4U+0va9b2Lo6hdUZL7kNkDhwL7CcfsDcYJ3Y9TOAliTmDLfKCiqOqQgVprDr9+Dkw2TMEHfBwAGflhbgx+P2sqZP894JZG6Mgca763FXU9Ax1r7rh0HOkTErobnLmsUGFWntuordDdXC0vh+i2odLzsKTyjtDuwwLqTnv5XfSXH5QTBDHdVETr9fBlvhQ1314mN1aDmxjNqS6Xwkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR11MB1950.namprd11.prod.outlook.com (2603:10b6:300:112::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.15; Wed, 4 Aug
 2021 06:49:56 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::6ca0:3d02:dcd0:626c]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::6ca0:3d02:dcd0:626c%6]) with mapi id 15.20.4373.027; Wed, 4 Aug 2021
 06:49:55 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe_macdonald@mentor.com, joe@deserted.net
Subject: [meta-selinux][PATCH 1/3] refpolicy: update file context for chfn/chsh
Date: Wed,  4 Aug 2021 14:49:42 +0800
Message-Id: <20210804064944.334566-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
X-ClientProxiedBy: HK2PR03CA0047.apcprd03.prod.outlook.com
 (2603:1096:202:17::17) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by HK2PR03CA0047.apcprd03.prod.outlook.com (2603:1096:202:17::17) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.8 via Frontend Transport; Wed, 4 Aug 2021 06:49:54 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e424f584-f06a-420a-f124-08d9571411af
X-MS-TrafficTypeDiagnostic: MWHPR11MB1950:
X-Microsoft-Antispam-PRVS: 
	<MWHPR11MB1950E3DA3CCE454CE97557AFF9F19@MWHPR11MB1950.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:197;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	3TvOT/dm9QrB0ROXaOKWR9B79sbiH11TzqHWpB3m8FBQTO6+tSLghJLIDVrYQwrrfjEEvB9pG3HCvnDGXEWkgJiSOAFAXTXJvqgQBbSabBZIxrQ1SqiLbjNAcpFPvb5lOQD1f6qlOlaGeApu9cGodkaZ3sDjeVoWp2clZrn5vx4LETacZqCBWSNx/Wy13L1et7gOjQjNMW6UbsjWjrZkrq5MTZbQBx8pfpPU8wqMjA0o+u3SECWPOUQ+syQfw0O129kr6/w0LG9Ay1HV7FwXWtZvc11GmSV849eNWsCvllSS179u2P0MBbiKbpBgIYVlr+TOjzeKASrwyiJCmzkfrk2+M9x3z2dMPQypovHUhneMK83UTd3SYr6dEt6NiXGezROlW1AYYw3njS1TUhi9H0VRgjkiT4KsnoTavxITWLpof2/LXu02BmEzuFzeM3NobCODE7NTLVcNUV6azYU+GOMfuuGUg0y2AnbdEzUgdKb2B9zVmQsEhakm63DL2XGNIrztzqlm+2vleSiEsat0+V7C4qxy3UCKP6iELe/5RCRqFeynXGqaPV6nAEFbfXR0H87km9Jb27TOZ2fdPo1g7F1QyhWZV21trElyRBDfTR+DCgnqMvBpkdcRhx2GcJnD1zvLFQ08S6oP8/ekPF+zyD598Gangkq9rdoe6zqO6cFQAEE6ETzWSAM9zOntihuPfz+GWEmDNPI4YiPvvQDpww==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(366004)(136003)(376002)(39850400004)(396003)(86362001)(6486002)(8676002)(6666004)(8936002)(36756003)(6512007)(478600001)(83380400001)(956004)(44832011)(2616005)(5660300002)(52116002)(38100700002)(1076003)(38350700002)(2906002)(316002)(26005)(66476007)(6506007)(15650500001)(186003)(66556008)(66946007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?oxN3ZlITri/q6eRh1bx3QbrUHbzeP4TUwBsHezg7Wq0N3QXiS8jz+3deuOM4?=
 =?us-ascii?Q?E6OAFOA8xPH6cs45WJr+ds1DfJWcOHe4Zr+pSkqpjQhQEKf4J4siNC6sRy5C?=
 =?us-ascii?Q?xxCLKdLlkq2Xi1ksm0aRTo8Vl85JTb4UaKZSJndXyNfa4O20+DiIka8uaeQ+?=
 =?us-ascii?Q?cbJ+uPok+LNDw8AciE6XERNBZZ1rnIy0zp/Ikqv/+bLaCmHZjdq6fU7jLP/n?=
 =?us-ascii?Q?8NLG5/DyV5A0d8VfQhMQhXdMHcm8e5aPCrVanztA1viXW0uByMHEJ3wOPhnz?=
 =?us-ascii?Q?D/AdqPbtxfGVn7h4r1T4joad5itBmsMzr0HC0mKuZAlHEzdcaCwA4OgMRPQI?=
 =?us-ascii?Q?MO7eZr06BCVxB0MnSi4b5rQlXexAG/tAfrvLtZba/lUWepAAdXU/97pkeAez?=
 =?us-ascii?Q?ed05itATUrDXW9/4X5rhwC6He50erdHLaMJ+V4/pMsnOnrJHJz57UMRSXZZf?=
 =?us-ascii?Q?JHqxSn1D3Yk1D4VTxMWLhTpp5+kumIgKfq0A7CMerEqnvU+eomz4eEABdcfq?=
 =?us-ascii?Q?pUGvDJL2J4vsnTm0K/0UcldRQBDQKjyIIa1Xx4qj0uV+3oAROD0f+GhxklyS?=
 =?us-ascii?Q?VmptIcNs4N5/DzA/ytH+G6jKYwWdwAny+Z/Ew6pFOBMSmpHEx50wJYW4u86J?=
 =?us-ascii?Q?GE70u+dgryoHwU3FUPsKnNyKDiFgHRjiVL0uhRHgTBSza9VysmQa/D45QuiX?=
 =?us-ascii?Q?3DJn4EG4UbF3rAusq1L0vpmzhkbYW+WP887cLC7/u2gRHrIm221T60RDVJwv?=
 =?us-ascii?Q?p+GYy4Zjs/lRhH7NN5Au/GLSB/GH7QeqgQzY64+A9nWM4wLxAbfrliMRLEkw?=
 =?us-ascii?Q?SM8jDEohrpafM1Z6taYw+w7PpGws/Fd9WMpE7pSfCPp/Wxi2Zf5gjCrQdeQ6?=
 =?us-ascii?Q?siRo8ZGf4nZ546xwTyb89J70Gf3YLAYJYttO+rv5DqO1Qx3bFFqQOBLePIKg?=
 =?us-ascii?Q?Y7X4dmvHAjtWyeynAVArp9MZump3r3Mkw8SM25KmFGw9OXzTZjR03jJeP3GL?=
 =?us-ascii?Q?c+eF/DF/oPHWKAFZgGDWuqvcOPYyElA+tGeUtjHKdymE0pIZUJ3jTw+tjrA4?=
 =?us-ascii?Q?FGb/SanAtF5XQoGLj8qkDZTobjzv/JSmQjPJ2q4ene6PxAJw56uWGMUQW+8u?=
 =?us-ascii?Q?BdH+DfbUsHkXf666Fb13fT2Z/rrlj7m3U5bEZA+kVbz/qWTvgJdh0FggJq4k?=
 =?us-ascii?Q?C1iLQB4h9GTya6oPY9g0GtJHdH5N1xkF13ObahDvYOsbGKwdRJEYztCbNbwn?=
 =?us-ascii?Q?0bgM+HGKVA0CamRF506VuWGP0jWvOqPANSeZ3g0iwN//IqJ0ycENv6M22I0U?=
 =?us-ascii?Q?OPHzLmDfT7/DNMQbMzAqGGkg?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e424f584-f06a-420a-f124-08d9571411af
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Aug 2021 06:49:55.8585
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8g/VAu5icJ6hD+qdDP+7FUXRINU2j/HZIw41ydD7JoypFiyi/p2leseW7kuzZAQp2f9m15HsOMwEDX9zndhzDA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1950
X-Proofpoint-GUID: 591GA2GDK_6CRPT2qn2474o_XnsUZCjH
X-Proofpoint-ORIG-GUID: 591GA2GDK_6CRPT2qn2474o_XnsUZCjH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-08-04_02,2021-08-03_03,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 clxscore=1011
 mlxscore=0 suspectscore=0 priorityscore=1501 bulkscore=0 impostorscore=0
 phishscore=0 mlxlogscore=999 adultscore=0 lowpriorityscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2107140000
 definitions=main-2108040036
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

The util-linux has provided chfn and chsh since oe-core commit
804c6b5bd3d398d5ea2a45d6bcc23c76e328ea3f. Update the file context for
them.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 ...ge-update-file-context-for-chfn-chsh.patch | 34 +++++++++++++++++++
 .../refpolicy/refpolicy_common.inc            |  1 +
 2 files changed, 35 insertions(+)
 create mode 100644 recipes-security/refpolicy/refpolicy/0091-fc-usermanage-update-file-context-for-chfn-chsh.patch

diff --git a/recipes-security/refpolicy/refpolicy/0091-fc-usermanage-update-file-context-for-chfn-chsh.patch b/recipes-security/refpolicy/refpolicy/0091-fc-usermanage-update-file-context-for-chfn-chsh.patch
new file mode 100644
index 0000000..370bc64
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0091-fc-usermanage-update-file-context-for-chfn-chsh.patch
@@ -0,0 +1,34 @@
+From 311d4759340f2af1e1e157d571802e4367e0a46b Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Mon, 2 Aug 2021 09:38:39 +0800
+Subject: [PATCH] fc/usermanage: update file context for chfn/chsh
+
+The util-linux has provided chfn and chsh since oe-core commit
+804c6b5bd3d398d5ea2a45d6bcc23c76e328ea3f. Update the file context for
+them.
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/admin/usermanage.fc | 2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/policy/modules/admin/usermanage.fc b/policy/modules/admin/usermanage.fc
+index 6a051f8a5..bf1ff09ab 100644
+--- a/policy/modules/admin/usermanage.fc
++++ b/policy/modules/admin/usermanage.fc
+@@ -5,8 +5,10 @@ ifdef(`distro_debian',`
+ /usr/bin/chage		--	gen_context(system_u:object_r:passwd_exec_t,s0)
+ /usr/bin/chfn		--	gen_context(system_u:object_r:chfn_exec_t,s0)
+ /usr/bin/chfn\.shadow		--	gen_context(system_u:object_r:chfn_exec_t,s0)
++/usr/bin/chfn\.util-linux		--	gen_context(system_u:object_r:chfn_exec_t,s0)
+ /usr/bin/chsh		--	gen_context(system_u:object_r:chfn_exec_t,s0)
+ /usr/bin/chsh\.shadow		--	gen_context(system_u:object_r:chfn_exec_t,s0)
++/usr/bin/chsh\.util-linux		--	gen_context(system_u:object_r:chfn_exec_t,s0)
+ /usr/bin/crack_[a-z]*	--	gen_context(system_u:object_r:crack_exec_t,s0)
+ /usr/bin/cracklib-[a-z]* --	gen_context(system_u:object_r:crack_exec_t,s0)
+ /usr/bin/gpasswd	--	gen_context(system_u:object_r:groupadd_exec_t,s0)
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy_common.inc b/recipes-security/refpolicy/refpolicy_common.inc
index 6e460cb..1bacaa9 100644
--- a/recipes-security/refpolicy/refpolicy_common.inc
+++ b/recipes-security/refpolicy/refpolicy_common.inc
@@ -108,6 +108,7 @@ SRC_URI += " \
         file://0088-policy-modules-services-bind-make-named_t-domain-MLS.patch \
         file://0089-policy-modules-services-rpc-make-rpcd_t-MLS-trusted-.patch \
         file://0090-policy-modules-system-systemd-make-_systemd_t-MLS-tr.patch \
+        file://0091-fc-usermanage-update-file-context-for-chfn-chsh.patch \
         "
 
 S = "${WORKDIR}/refpolicy"
-- 
2.25.1

