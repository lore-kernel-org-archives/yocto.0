Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 14193C46CA2
	for <webhook@archiver.kernel.org>; Sat, 16 Dec 2023 08:22:31 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.11932.1702714949774726202
 for <yocto@lists.yoctoproject.org>;
 Sat, 16 Dec 2023 00:22:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=OG6BtKHg;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=071467d4b3=yi.zhao@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 3BG81AaR001321;
	Sat, 16 Dec 2023 08:22:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:subject:date:message-id:in-reply-to:references
	:content-transfer-encoding:content-type:mime-version; s=
	PPS06212021; bh=Db4ORA0e6GNlWuM3+rqLMyqeNcmWoPs4JjmmrF+WvmU=; b=
	OG6BtKHgYbge0CW6+yjPz07fhHa3OPXAQkQOVMtbD+m4tw3LGE9wRYKRJrl12dS9
	24plVcN28rZEbVpUqjPm+9UWAZLPoWE1uvUJUT4YPUxPpESn6rpNfYbNE+lzD89Z
	JT7RZzR/5N59QKwwBKvzmWNXr4xsSCDrgX9/CSWUU82oVQAht117AfuZNT9ClK8M
	m8rr5tt1YYi5BceTGw5RIb3H7U92bKyCLKffR0eAXFTe1VN0VlXl/y7mIAkc29zL
	RkP4AdEX142zqPBbrFO5ea1v15vNp9DMtuD7lwm/5qL4iOMDFaaqVtH3xg/bmB8l
	q1hEin+31oFhCp/w+M1mzQ==
Received: from nam11-co1-obe.outbound.protection.outlook.com (mail-co1nam11lp2169.outbound.protection.outlook.com [104.47.56.169])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3v12v5r5rh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 16 Dec 2023 08:22:28 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jLLOML3YCarYfBoXueNnf0KkszzPedX6xluF/VFTSrvPz4KaEOZhyLEzx6/n8N6C+gJA+9MIZ9cliYCQmfZHf2rwvYNeHm+hyrypIWqMr2arw6Q5n5j6/t8GGgKfE6F89u67psRT4Rvw4ZTm3mJ0+qIlXIgL2wJnZqNda0rV9yhV2egSaszURA538vRC0VidDpnWzfK5tniuoti5KYerleT6W+1gIp/hYNofn1newRrMbJ1qB4UOtOQUWj4x85mCT5HEsn2nNLg7HKotftDRZtCE4lJmk0Kj+WM0I50oXcjTQ91aUFiRLfY1by4XXgTgYeLtNfx1UcOn8ICCPhR/bA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Db4ORA0e6GNlWuM3+rqLMyqeNcmWoPs4JjmmrF+WvmU=;
 b=Lfu+IsHsYF3Uh55WR/aY1HSCqQr0UwimIi0uPYALDvtpWPaWj/8X20abYlOKLsh62SuSaaBgGVsT0Mu8uuxvMxocMFuWSzTDnGDxVIXmzCVPgSnh/EDEDSKAMxCcNsQzaupDfdfLg7K7geYNKjaFg/EJBCEgpUW6nfPeRpUuxM0BUeXKRwg+DxVwYuOMCBRnkt9GYqeL6c6BHbJwxN2M1q2FSZdZ2nHQUKEJNn6ItA/qx/G0hYjJo01PVin/gHvrLzE7VklM9oqs3a1S3E83kPqpMUTFd9yFA8sSFUHMZ0q5MY39pPaoRpy0/x/lFaN7sx9+cCa5/l/Q2QmMdzUSDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DS0PR11MB7484.namprd11.prod.outlook.com (2603:10b6:8:14c::10)
 by CH3PR11MB8466.namprd11.prod.outlook.com (2603:10b6:610:1ae::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.31; Sat, 16 Dec
 2023 08:22:26 +0000
Received: from DS0PR11MB7484.namprd11.prod.outlook.com
 ([fe80::c56:aece:e7ef:6cb3]) by DS0PR11MB7484.namprd11.prod.outlook.com
 ([fe80::c56:aece:e7ef:6cb3%3]) with mapi id 15.20.7091.028; Sat, 16 Dec 2023
 08:22:26 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe.macdonald@siemens.com, joe@deserted.net,
        joe_macdonald@mentor.com
Subject: [meta-selinux][PATCH 15/15] setools: upgrade 4.4.3 -> 4.4.4
Date: Sat, 16 Dec 2023 16:21:42 +0800
Message-Id: <20231216082142.198501-15-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231216082142.198501-1-yi.zhao@windriver.com>
References: <20231216082142.198501-1-yi.zhao@windriver.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR02CA0033.apcprd02.prod.outlook.com
 (2603:1096:3:18::21) To DS0PR11MB7484.namprd11.prod.outlook.com
 (2603:10b6:8:14c::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7484:EE_|CH3PR11MB8466:EE_
X-MS-Office365-Filtering-Correlation-Id: 4956fc9f-389d-4a00-248f-08dbfe102318
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	u2g43W0HM/nsef/xwbXT3HvWz9FYhaGonvQSl/N46baoywWXtUJChViQF03gG/eXo25REhKwJiIi0h5x7ZiRt0OTUXCY/jDdGBBrY2G6teH+UB/EcSmg0WiTTCGtMzIDVu9rCBfbFbcRfFgWOobR1jaK0WxH3mGSsGMzWWx8moqD0mkBbBJ1xWRdvq4ZLzKuBFf3WIlH6mz0J1SH8PBmtQMjbrutRRkmh2etxHHUA03tL62nLdtSnZumS6+Fqo2FFIk3z78N/uo7H1j2N+4rFP8gALlDsU9pfg42rpt8LEAshlkwxi+l/EVrDm9RVkK7Lh7e5CszmjFRX1z0YT4oMU/7UQUBFtkMA/oxY9lROPnMvSobs4Hs+UPp8TEH66SQP2v2t51+36guxZFxhNiUHdoO7I5xXE95B+dgy+3KeeeFj8h3TM355HlyqZLCAVw9wjGB7fS2v7noJv4NDDGtcB+hB8xv69dgbk1+c+IXEsdKn2RcARsdmI35XRPvSMqmPHOUlZV2wG5uR/IMpFzpgVinQm6n6IlnhNio+Pn61SS2fHX3fxksiPMrDVLMbvKwXEJpDg6SpV9PpSIdMfImySztUBeqjewu6NEXzjcNDyE=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR11MB7484.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(39850400004)(366004)(136003)(376002)(396003)(230922051799003)(451199024)(64100799003)(186009)(1800799012)(6486002)(86362001)(53546011)(2616005)(38350700005)(6512007)(6506007)(26005)(36756003)(1076003)(966005)(478600001)(52116002)(2906002)(83380400001)(6666004)(8936002)(44832011)(41300700001)(8676002)(66476007)(66556008)(316002)(5660300002)(38100700002)(66946007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?C+vzXjP5Y5CMmJ6+yLQDnQTDkTdlgM5CQQxFUaJopfkx6LvMVKHzvQICZbup?=
 =?us-ascii?Q?c6R8sw//jRefdLyRQuEIgiC2goZpBCRcB3luQj1fpEtVGi6h4jbCcsi3s3En?=
 =?us-ascii?Q?5pI8qb0im+d/rdFL9EEr1vgdjOGoOzIqutAn10BsmnTBtVKuZfvsFoXgFhnc?=
 =?us-ascii?Q?XBmCe8GGbwJEmqcQR0qrbi6o9Wtpnpq/FtveP2h8gOpauUafrtcS9cBykKMK?=
 =?us-ascii?Q?/Ya/7euonO67HATytm3CWkegrTrOUxIzNPrd5M6qSMPFzBwBnjhITooe79EF?=
 =?us-ascii?Q?LZrLAGYYx1IPSPZBeo6PU8XNbJFBSD6pPRAvoSrzgv7SBtNIaMRB7Enzhce+?=
 =?us-ascii?Q?ff06G1gYaF9JzhEQ7aiQxYBGM/D7ex0s4k2+0gzAznN9fUdsQ8po9fOGgl55?=
 =?us-ascii?Q?ILrpITjUeq7GV5Tc9Xh15nsnC+OgVIFC5rJWqQqhmA50ShLqbZb7m46A9R5J?=
 =?us-ascii?Q?kRfLlSxRIEvfOIst6kHEgboyP4uEap77spipJe/CYAGlGB0lkasg0zw89Ddc?=
 =?us-ascii?Q?gQ5CnRLLGazUpQCK+FX2EBJ1ldO8Fvf4J3ERJzSdzk4Ptl00kdbJb9SUsTT+?=
 =?us-ascii?Q?wWRxZIR/Ygltji1DLWxcE/+b6s2qTIugNtezSPODddJJdMduF1OeDtfigdbZ?=
 =?us-ascii?Q?rKV9yPO6PIUXNSvg6wRq5OHUFhNXsoeVgcfBEfb4OiBylV0aJSGOghPypchE?=
 =?us-ascii?Q?kT9rTZFD3H2MHP06Za0cZStUl3IRfwwtUc0PrxsmCvOhrvHzesbp6pDSrzyH?=
 =?us-ascii?Q?haY9JHteKdof2TKD7CjVaqmmUUmUn2FcFwu2ws5o4J/nX3lNpEE2y/TpsN8t?=
 =?us-ascii?Q?I+bctFuUdezQo3WKfUGRF7w5AAHTK4tuRlZtFNqbBrdfu5ZyUhmV88EfdKFW?=
 =?us-ascii?Q?AccZLjnaA0p2A08CNnyLUuq1+RkGxEu9eSn+0zihYceJ8TAJ6+S6lSazJ08U?=
 =?us-ascii?Q?h83JopKbk2BL/+nZrCcFOjjkQVo3idfQ8mahrFsM0cAJ8W3N/og/eVeivlCt?=
 =?us-ascii?Q?P35WHt1oMf2LeQX2p1fDqjS/G8hDDrij3EUmu+nAjBvIwadIHEJnWv0obOVE?=
 =?us-ascii?Q?eoRU2h1pvb+w1wygRqY8p+COG9wX17dxz7j4U3qn3hQFI96AZ/yaABqZdPdm?=
 =?us-ascii?Q?Ett7rkPf1jDGlFnBqxCj7pOWWbYt2A6DddmPbJQ+gwQB1PBbvy+J0BXsWXRc?=
 =?us-ascii?Q?FBw2EROZFSu4DL1YprDCycLOLtfSUvtBis9ILUgH2uVxB1MNuJhgFedg3/oU?=
 =?us-ascii?Q?GINOPR/Kb7rFpckNJlshCRkkkoiytwkndJCDzkNK0yJcefTcYEKq3BHUE0Db?=
 =?us-ascii?Q?pp7vSGsb3OVlBJdMZXwNLaGLYGU387XJdAM7SwXQ/JHmHA0KCeVjlUC4ctbp?=
 =?us-ascii?Q?EQlm4h8zNhi/CqJfqJONzTJ7y2a4cEVqyvvZb6t1KA6sBHalpGiGlcfYiQf0?=
 =?us-ascii?Q?l6lP/EOC1tofqUY4xcY9levGa12JUiggAekSXiBsa9dCpFKQ+EmiqonsZ7zY?=
 =?us-ascii?Q?ERXl6QX4gtk3ZLlTr2+UNnN0eTJXX9AEhxiOupd7yyZEA81J50GQU5j6lQzP?=
 =?us-ascii?Q?J+DLABARpVFQ7gsgrQlNwNgXp2o9a+lEA6AsxCX8?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4956fc9f-389d-4a00-248f-08dbfe102318
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7484.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2023 08:22:26.6333
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7NB6LpfS6b9BbFZgwBESBIKfbHU6unDdqLKK1xy9Q2uZxm8zx/lz4Jyx4WcL3FMP2b7Jlv/Y3PbbNQUQ+3EIQA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8466
X-Proofpoint-ORIG-GUID: crV7y6zeWwy5fvcgqnF7pZCQtEzqFXDV
X-Proofpoint-GUID: crV7y6zeWwy5fvcgqnF7pZCQtEzqFXDV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-16_25,2023-11-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 impostorscore=0 suspectscore=0 bulkscore=0 phishscore=0 mlxlogscore=999
 priorityscore=1501 spamscore=0 clxscore=1015 adultscore=0
 lowpriorityscore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2311290000 definitions=main-2312160063
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 16 Dec 2023 08:22:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61941

ChangeLog:
https://github.com/SELinuxProject/setools/releases/tag/4.4.4

* Refresh local patch

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../setools/setools4-fixes-for-cross-compiling.patch      | 8 ++++----
 .../setools/{setools_4.4.3.bb => setools_4.4.4.bb}        | 2 +-
 2 files changed, 5 insertions(+), 5 deletions(-)
 rename recipes-security/setools/{setools_4.4.3.bb => setools_4.4.4.bb} (96%)

diff --git a/recipes-security/setools/setools/setools4-fixes-for-cross-compiling.patch b/recipes-security/setools/setools/setools4-fixes-for-cross-compiling.patch
index 51c7603..cdaa45c 100644
--- a/recipes-security/setools/setools/setools4-fixes-for-cross-compiling.patch
+++ b/recipes-security/setools/setools/setools4-fixes-for-cross-compiling.patch
@@ -1,4 +1,4 @@
-From e0a112874d10dbf741c27b107edddedd86d51529 Mon Sep 17 00:00:00 2001
+From 673bac44ce13f475845e0b69dc73bfaa5a0866aa Mon Sep 17 00:00:00 2001
 From: Wenzong Fan <wenzong.fan@windriver.com>
 Date: Tue, 14 Feb 2017 06:32:35 +0000
 Subject: [PATCH] setools4: fixes for cross compiling
@@ -15,10 +15,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 1 insertion(+), 1 deletion(-)
 
 diff --git a/setup.py b/setup.py
-index ac8a876..df7ebbc 100644
+index 5584e55..057bbb5 100644
 --- a/setup.py
 +++ b/setup.py
-@@ -78,7 +78,7 @@ class QtHelpCommand(Command):
+@@ -79,7 +79,7 @@ class QtHelpCommand(Command):
  
  
  # Library linkage
@@ -28,5 +28,5 @@ index ac8a876..df7ebbc 100644
  
  with suppress(KeyError):
 -- 
-2.7.4
+2.25.1
 
diff --git a/recipes-security/setools/setools_4.4.3.bb b/recipes-security/setools/setools_4.4.4.bb
similarity index 96%
rename from recipes-security/setools/setools_4.4.3.bb
rename to recipes-security/setools/setools_4.4.4.bb
index 313dd0b..37bb86a 100644
--- a/recipes-security/setools/setools_4.4.3.bb
+++ b/recipes-security/setools/setools_4.4.4.bb
@@ -8,7 +8,7 @@ LICENSE = "GPL-2.0-only & LGPL-2.1-only"
 SRC_URI = "git://github.com/SELinuxProject/${BPN}.git;branch=4.4;protocol=https \
            file://setools4-fixes-for-cross-compiling.patch \
           "
-SRCREV = "d3dbddb4e162dda3a25c419d10afe042a3dff7fa"
+SRCREV = "a04b015459512d0460ff6bc50f28d746861f4a0b"
 
 LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=69a7b68f0a4a570d7c0c43465333ecbc \
                     file://${S}/COPYING.GPL;md5=b234ee4d69f5fce4486a80fdaf4a4263 \
-- 
2.25.1


