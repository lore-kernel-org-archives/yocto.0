Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4620CC761A6
	for <webhook@archiver.kernel.org>; Sat, 11 Mar 2023 13:13:56 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.44237.1678540435392034762
 for <yocto@lists.yoctoproject.org>;
 Sat, 11 Mar 2023 05:13:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=AcEv01nA;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=2434990727=yi.zhao@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 32BDDsRl000735;
	Sat, 11 Mar 2023 13:13:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=f4qgt74dEMi/EMgtrGfRkqialerL9GDpmsHGQPj6fYI=;
 b=AcEv01nAMUR82btXHJlpUuQBRxGrMnrH+Rs8LlfFwLZUpnbundj+hjxyPLbichVI1/RG
 iQUy9dzgxqvqKQf8PnRcZ6/zqGhHWfzvO5C6spSfGOVUO+Rtk/CHVNPTSN64DKXY4iy4
 NDDpeZz7EAw6RsO+nEVvFP7zeB9Y5hYM28y5Ye5vXTDXwAwfxC96safFzKa2nfd8hKtp
 d120rwRcTTARktzVWqwKhNoXJoNv5qGuw62M5G2mwHQdanozbNW7lSugOu6pCCmo66S0
 VJti0eGu2K3wyKt+u5thqLIvqQXlOJEZuLNiyUpuangpXThCx+hduSQDzqwkeEqy8JRA Jg== 
Received: from nam10-dm6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2100.outbound.protection.outlook.com [104.47.58.100])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3p8gma0b7k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 11 Mar 2023 13:13:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=df5knOKEIv4qZwZP21pdykKyLOJgmjw1myy850RKwsMBgNc1F6Pd3W931drRS3pHjIMkp7F1KhkmXOs7EuG191ns1/UsTOLvZVQ1JngCBVUh0j1cO/PNzdXvpj04dVIsE6RQR0pHVhswERl9yaJZeugsXF8lOmDU7H4LtAzUyFUpPIs39d1tF4RxuGp4wBbBgezJM12R0baLFiin784ZdwaThWX2LIiffqtfM3Ry90VhwZNYMA5i3IPFfXyvgZbzLC6IuHqCwy7BLb+qL1DDE7KOe8sBgj2oM1xdn/L0p+u17nfTJLZc0Y37UBKxAk2Pf3UEtNWg61jwlcUa6NioIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f4qgt74dEMi/EMgtrGfRkqialerL9GDpmsHGQPj6fYI=;
 b=ci3ToBEbeLKgV7reBgYIhe5b4fmBytWZJB8uLNtlelKE+E5m00F5Sxc/L6zP+UW1zDuaK6g+tig/DIFJeiq46rkuBx5dQWZBZSbzzSzMJBuCLARPeLECPJTnag9Kc3GqOziF65rIzX67KDTB3JJxBdrvZngIFBtwLiop9PfIEEymdj5VU24z3uRquCy+qlxKBshpwnjBaULc9dooszjKv5CElNIbp295nMSd0pugAj5fKfw8YbrRToXc2rJ/R/x9qH4tM6F2ImMw/RGzVRS3Qv3wUxCBlpAgYvwqC/AqnKUCH2K8qNdhq+9zxOYOq4UKnyyC7FXzOV0mW4rtMWR+ug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by CH3PR11MB7203.namprd11.prod.outlook.com (2603:10b6:610:148::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.22; Sat, 11 Mar
 2023 13:13:52 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::42a3:f515:f89b:4eb3]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::42a3:f515:f89b:4eb3%5]) with mapi id 15.20.6178.023; Sat, 11 Mar 2023
 13:13:52 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe.macdonald@siemens.com, joe@deserted.net,
        joe_macdonald@mentor.com
Subject: [meta-selinux][PATCH 16/17] selinux-sandbox: upgrade 3.4 -> 3.5
Date: Sat, 11 Mar 2023 21:13:07 +0800
Message-Id: <20230311131308.1337339-16-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230311131308.1337339-1-yi.zhao@windriver.com>
References: <20230311131308.1337339-1-yi.zhao@windriver.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR03CA0128.apcprd03.prod.outlook.com
 (2603:1096:4:91::32) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4867:EE_|CH3PR11MB7203:EE_
X-MS-Office365-Filtering-Correlation-Id: 878d0ecb-24e7-4ac7-35f5-08db223275e7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Fj+O7DbYtxKklnes3+H2lWg5HJ3iqWptpmObVs1S1SV3Dyx7eBIHbID/6ld2sRp0gnbTLfpAI8QeWQfrB58Wr0D0OAiXpV2DxEV37V2d5UTxfSXPY2+e6M7Uc3kZV1UpRbvyxSYD0d8Epead+Sr23uJw85efUqRlcQifVvlsXbXajNJbrRRckaaBniELFIQx2moYJvgzq79xXOSaAanxsD7p3FwR/fThrWWS971V3EftH048YI4xAHjydgScEPDAly1mVWS7kFuoOti1oMO2cy07gZzjSHUr+mOTYJ1hMGTMWYIDABubcnAAlK7h4zm1AemwzBZoCzp/8ev/bj6O5AVGxJQzXodN5MRMxc8B7O0othIuxkHmt7SXo3KEX/TK2FyMK/L8M6j0CRss1rfdv5zsXWSprzixWxgvQrxClRDZq0/UkRZbYkQ7CfAjIsYCal7x0h2XyQIBbWiPcOlad0OajJBNboFf85DZMsnPLlt0CwLRq6uGO7iT3/7Cl3dniujB886HPCWOLVyrUpV6IzFIx1Z33VPxJBaE/wBfZitsZEV5fogBM/43xVarzHnm+8drHuEpZpOzQrbGHXTCkgh0Z3jA0pXgss2ojpgKg7dkeFammkXdAvOy7wDOGkB1r+SAtNPggdaIVHCDj7b9wLvMkno8UeLjSZFBqENL97vkt2mlgPp54sZPPA0SxarG
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(39850400004)(396003)(136003)(366004)(376002)(346002)(451199018)(38350700002)(86362001)(36756003)(38100700002)(44832011)(2906002)(41300700001)(8936002)(5660300002)(6512007)(6506007)(1076003)(186003)(26005)(83380400001)(6666004)(316002)(2616005)(66476007)(66556008)(66946007)(6486002)(52116002)(478600001)(8676002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?IaGxoHpbnoxNoNuGzRPUezsqoMQrp7KPI84XKlKXTVMwzlh2dyDVjMcq8hso?=
 =?us-ascii?Q?EXhmlmgFanObfagqaUbY2/thjTBzj2czpTGGjA/9903oh2QBsJEWQyjN335C?=
 =?us-ascii?Q?CJv4oEn4VqpCDpjWmqbOsrt77X077zJIauci7epmwbIsIYqM5GImY5U7+IHS?=
 =?us-ascii?Q?LylqqyLtPR22hvE0jaWo6Km39nHnQURgLUqpU5TIQ01sDm1wG9+AIpK6PuZt?=
 =?us-ascii?Q?KEGkaeU4a5JbgMnupMZ1Vk/LFDlh39KN/ds52sG/NezSNuzHWlrsYZu0aAH1?=
 =?us-ascii?Q?qj+ZL13EfV3b3dSzlXVMyVyAZxYqKjsTCOy4wADLUS1cDehQOPsFmxuYT5sX?=
 =?us-ascii?Q?YulsNuzUh2LfqpWRa+1ZukY0E8ZFtHnw6PAr5wnVNNJKHptqjFppNI+/YdFS?=
 =?us-ascii?Q?UHXtJFuVOl8iSUbgepOYWhIczNHSvkD9mCNWKEhJXBA6RcU/zeSmPz8SFZek?=
 =?us-ascii?Q?ZQxp2e6ycerfdbbga1dpXnIEYbMIbz0B+CyMqTHI+PISafvy0rLkIYEuSRsp?=
 =?us-ascii?Q?cYKUWW8tBDtAZ5sg107PU1MDdm6Odc3MVjeHTROMsAwAmc2CX6EBKh/Nwxy7?=
 =?us-ascii?Q?4jJsR9szH41g56pyuLcEyRS5i4PUKrDZE2rCgon4+RyqLzuF3447eRlAGSIG?=
 =?us-ascii?Q?M+rSofXV6kJ0KNfvBsQnhVeTYFbXmWLyEzXLj3qXS6y1fHFXLxcMMfwkONhf?=
 =?us-ascii?Q?cEQjLD3JnmD1L2qxf0xOExwC/wIAhXQ9mjQBUwk8AyFUeFeDF+kwxXbaPlNb?=
 =?us-ascii?Q?39I9WsV6X317yofn+x3Ec/tWReCPcCG3rMxpc33OInQAVbUW6QU1NhgynDdn?=
 =?us-ascii?Q?bEQEXvf3skwhEJKXO+l9SFXbZp6P32nawGrr4qxaZRTUc99WDMMY59yOn1zQ?=
 =?us-ascii?Q?JXPR8yBYA0GrFmbvQFb1PcwsMYe59QpvjeXpEY+edxYUTnGksbl3BMrr7Me1?=
 =?us-ascii?Q?XGBQT/vB4xhsbAqFEb7G2xTfaX4172fZ91HuaMsOR7JG/BNeyReMve1HVR3h?=
 =?us-ascii?Q?4CkVRuu3MP3MA3LtHZ2K2WFmbfUnI7hK1aENb1Jle9y5HpRcVLKWQyhFqsHB?=
 =?us-ascii?Q?kZgil18Vw0zkSw9gwyrEtH38rUmI4ZWcf7YOEYMkhnxfw1w155+4fNObeS4Y?=
 =?us-ascii?Q?qgAdr4+0V4ehK1eggPpG8C7LXLoMFDEp0zdN+GVbsNgCVDufy9ZPskaf6fHl?=
 =?us-ascii?Q?5bv1VvXOK1asaZLKLBxAWEY4ct1SKgX5RJGbxnsS4+gjua3yMsvTaRDLc/dj?=
 =?us-ascii?Q?7YjsIMtqIutdEKU7JJzBD4LabFib+pdhc4m+jdVGWTlGVdi62C0agf72MD02?=
 =?us-ascii?Q?jx+Iv2i7y5qbxHZ4eul55jr8xRcKznAGOGI08cs+bYa8BgwmDPRY6OXoCA1x?=
 =?us-ascii?Q?qI6mb3QHIPx2N9cIBp+7B5GAhzP2Vu3Hq/ly+nZmUyjjQ8hRxvBu5PN8xHGA?=
 =?us-ascii?Q?H8CnQZXGRKIRspOUHxgfQIYvn19XpghASTENYYQOO9zv3GMV/OEPEXjWynDY?=
 =?us-ascii?Q?29yANrmvjYnl0A27A2Ov/Fuw2ikfTIIXzbwghYo2ejKaip4Ibay1zz6GtiFJ?=
 =?us-ascii?Q?4s5rIgNp8i9Pw7JA9a1eqeUf3IufJTuQv/bBELCz2qvhqeoVp/O7xirS4RKr?=
 =?us-ascii?Q?hQ=3D=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 878d0ecb-24e7-4ac7-35f5-08db223275e7
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2023 13:13:52.6414
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 95d+uXqan0eg7APMay3etnSuhuBQDnNTeOf40sECsQ9hcWmuhAOCYqspDJJc3eTz9H93+3srsjFnuNnla4tqqQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7203
X-Proofpoint-GUID: 4edX0mU2qabt0k8PDAW8X54ufi1mwAnj
X-Proofpoint-ORIG-GUID: 4edX0mU2qabt0k8PDAW8X54ufi1mwAnj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-11_04,2023-03-10_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 suspectscore=0
 bulkscore=0 mlxscore=0 priorityscore=1501 impostorscore=0 mlxlogscore=616
 lowpriorityscore=0 adultscore=0 spamscore=0 clxscore=1015 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2212070000
 definitions=main-2303110118
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 11 Mar 2023 13:13:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59399

License-Update: Rename COPYING to LICENSE. No content changes.

* Drop backport patch.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 ...andle-unsupported-languages-properly.patch | 49 -------------------
 ...-sandbox_3.4.bb => selinux-sandbox_3.5.bb} |  3 +-
 2 files changed, 1 insertion(+), 51 deletions(-)
 delete mode 100644 recipes-security/selinux/selinux-sandbox/0001-gettext-handle-unsupported-languages-properly.patch
 rename recipes-security/selinux/{selinux-sandbox_3.4.bb => selinux-sandbox_3.5.bb} (84%)

diff --git a/recipes-security/selinux/selinux-sandbox/0001-gettext-handle-unsupported-languages-properly.patch b/recipes-security/selinux/selinux-sandbox/0001-gettext-handle-unsupported-languages-properly.patch
deleted file mode 100644
index f1d8235..0000000
--- a/recipes-security/selinux/selinux-sandbox/0001-gettext-handle-unsupported-languages-properly.patch
+++ /dev/null
@@ -1,49 +0,0 @@
-From 70602601ac1cfc4399430ef8609b96fc224d1e25 Mon Sep 17 00:00:00 2001
-From: Vit Mojzis <vmojzis@redhat.com>
-Date: Fri, 24 Jun 2022 16:24:25 +0200
-Subject: [PATCH] gettext: handle unsupported languages properly
-
-With "fallback=True" gettext.translation behaves the same as
-gettext.install and uses NullTranslations in case the
-translation file for given language was not found (as opposed to
-throwing an exception).
-
-Fixes:
-  # LANG is set to any "unsupported" language, e.g. en_US.UTF-8
-  $ chcat --help
-  Traceback (most recent call last):
-  File "/usr/bin/chcat", line 39, in <module>
-    t = gettext.translation(PROGNAME,
-  File "/usr/lib64/python3.9/gettext.py", line 592, in translation
-    raise FileNotFoundError(ENOENT,
-  FileNotFoundError: [Errno 2] No translation file found for domain: 'selinux-python'
-
-Signed-off-by: Vit Mojzis <vmojzis@redhat.com>
-Reviewed-by: Daniel Burgener <dburgener@linux.microsoft.com>
-Acked-by: Petr Lautrbach <plautrba@redhat.com>
-
-Upstream-Status: Backport
-[https://github.com/SELinuxProject/selinux/commit/344463076b2a91e1d2c7f5cc3835dc1a53a05e88]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- sandbox | 3 ++-
- 1 file changed, 2 insertions(+), 1 deletion(-)
-
-diff --git a/sandbox b/sandbox
-index cd5709f..789621e 100644
---- a/sandbox
-+++ b/sandbox
-@@ -45,7 +45,8 @@ try:
-         kwargs['unicode'] = True
-     t = gettext.translation(PROGNAME,
-                     localedir="/usr/share/locale",
--                    **kwargs)
-+                    **kwargs,
-+                    fallback=True)
-     _ = t.gettext
- except:
-     try:
--- 
-2.25.1
-
diff --git a/recipes-security/selinux/selinux-sandbox_3.4.bb b/recipes-security/selinux/selinux-sandbox_3.5.bb
similarity index 84%
rename from recipes-security/selinux/selinux-sandbox_3.4.bb
rename to recipes-security/selinux/selinux-sandbox_3.5.bb
index a5a8e13..2cb55d6 100644
--- a/recipes-security/selinux/selinux-sandbox_3.4.bb
+++ b/recipes-security/selinux/selinux-sandbox_3.5.bb
@@ -5,12 +5,11 @@ sandbox domain only allows applications the ability to read and write \
 stdin, stdout and any other file descriptors handed to it."
 SECTION = "base"
 LICENSE = "GPL-2.0-or-later"
-LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=393a5ca445f6965873eca0259a17f833"
+LIC_FILES_CHKSUM = "file://${S}/LICENSE;md5=393a5ca445f6965873eca0259a17f833"
 
 require selinux_common.inc
 
 SRC_URI += "file://sandbox-de-bashify.patch \
-            file://0001-gettext-handle-unsupported-languages-properly.patch \
            "
 
 S = "${WORKDIR}/git/sandbox"
-- 
2.25.1


