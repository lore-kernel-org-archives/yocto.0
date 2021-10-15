Return-Path: <yi.zhao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5828C433F5
	for <webhook@archiver.kernel.org>; Fri, 15 Oct 2021 06:04:36 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.5758.1634277875274686586
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Oct 2021 23:04:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=oDVdMAPp;
 spf=pass (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=5922253b0c=yi.zhao@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id
 19F5pP5F000515;
	Fri, 15 Oct 2021 06:04:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=PPS06212021;
 bh=j/gEgYsGs88gb54C0CfGlMslb4rx+iZnRaiEFyl0tag=;
 b=oDVdMAPpDjIrZ/BXngf3Bm6N00quID+b8uueQ5y2EtsVupYWnt7OouURq8q354IFFjIu
 SSQCikjbvel7TxpivKZe5BrR3gm94jxJWGoj88xEU9wlw92Gljm09WTmMnUf5OaSte0r
 5ihECoiqIeP5mLBscZmSMxmQjystV5tmTlzTHzKsAunBNiePpNe0ldQVKpmX72skmf7c
 NghDkO2fvhJrywiekxhd6FN0QS0ZFUZyAB5EykpOi21lm4S5ntZT33HIRvabydCQWpS/
 I1+HsdKyzf+JhmUUKlkqQ9YrJpcgImk2OLcHNVgJoDS+My0ZWNjm2r6dy51qdYnRiUyf dQ==
Received: from nam11-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam11lp2171.outbound.protection.outlook.com [104.47.58.171])
	by mx0a-0064b401.pphosted.com with ESMTP id 3bp9rb19fq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 15 Oct 2021 06:04:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZN/RIKpJN5jFYtmyV2KjofhLFeLYbu1ZqnqedKNPUG1dZG+usmeQVQcrBlmQ+Q2p6hskpAkBuYjBpzpHnP33eqMYyuLLmebFHgFTFCOSrMBO/GQsF0mk7QBDXXimHpZcTvtaqhWSynR0XiPpwjv/6vqvAKZ8qMePxiRX7KTtKfU+ahKlIT6Qwr4/qvkthOXvaBgrBQdg4K8QRONBgsTUpvgpx4OxMteRHlVgPy9ZcAXx35lGZo7vRu0VZ9FHDjXw6g1iml5qrPJfU60aCI0juvRZEaDTsfv2uO3sUziJct9nUiysE5NE71pqNye5LqMPtzVVG+yKl3pouII+WVawpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j/gEgYsGs88gb54C0CfGlMslb4rx+iZnRaiEFyl0tag=;
 b=Id7tgp0vyqRuYcJDwW+a9p571Fzkytqyav3+kTLFb6B0XlN5cpIBIE0i+GgeHumO6uXxvIeXd0wT5Ea0NGKs/jMhcgjIYHLAn96IkzxLjP0V75UcTwifAIdsyLdTKMisUiYngB13tG9rSlyi5C5M/0sSrGBT7II7u7s81xxqs9Y0H7HEjRzZ/jJ1R6ash3ulCfLQilj42EBVAdTmLwGWkLOa0zxcHpdZ+em2Ly0ZY8tzUZp/LwuvruByjWYH5ekl82WFhMY/vywCSIxa0Vzx8fFEZjhNkVOi884i5YG+VJlMEjkHtcJ/9pybGxFfZR4s0I88IkwAugbBNBiA2hwINQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR11MB1902.namprd11.prod.outlook.com (2603:10b6:300:10f::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.16; Fri, 15 Oct
 2021 06:04:31 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::455e:9cfb:d106:4480]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::455e:9cfb:d106:4480%9]) with mapi id 15.20.4587.030; Fri, 15 Oct 2021
 06:04:31 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, jpuhlman@mvista.com
Subject: [meta-cgl][PATCH] libsocket6-perl: inherit autotools-brokensep
Date: Fri, 15 Oct 2021 14:04:19 +0800
Message-Id: <20211015060419.24336-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: HKAPR04CA0015.apcprd04.prod.outlook.com
 (2603:1096:203:d0::25) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by
 HKAPR04CA0015.apcprd04.prod.outlook.com (2603:1096:203:d0::25) with Microsoft
 SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.15 via Frontend
 Transport; Fri, 15 Oct 2021 06:04:30 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0d8f1d90-ed90-4f48-4721-08d98fa1a7b9
X-MS-TrafficTypeDiagnostic: MWHPR11MB1902:
X-Microsoft-Antispam-PRVS: 
	<MWHPR11MB1902BCE5C735276941DBA857F9B99@MWHPR11MB1902.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:121;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	d8lHq1ArgLzqbxwMKCaIFoBWAesLOR5yf7SU9DlIl1BF5oyPT4kqrdw7mbvRQPXB7AOqJEd6gZfQLPCzv4d62gNqKq8iAKJqVu3l9BPcJ5qgVUHHjVPhUX7F4fBnHqntnNkcbbcseWifPLP0bv5kqCqm+rCYrRWWfofdVx6XTjTBl47AkgwDsmM8WKj+HA+krRTa/855fsZQLwbGLry1KXCStaU3DW6H6kFtc7hSEoc9OjFdvnbuSjmAzNhFrLkuKC9HRkYAX2kCx5BoUS+vwc1k96lkUU5a8geL3kCZ3/3bf7aLEDV02hN0pUniMQ537oSdWPrmqHIOLavkOLb4GY2ai/m2Ni26FyyHMpYQ+SqFnk3k/DcFwCtgyqU7nGQh+2dvIIuF8eiSTnKCsJKJmNRipbFtDBbxA6lKnn282j96qwYOpmGXv5NaY/rZoMqtYLUr7uQKJQfGUu2J/iqwsNzZAj39an40zwu6cG+JmTCaWeGJtxEBU3ZIHpSoYZ7uKbP/S6HT0t2ccSa35JkdQK/EzInXpy12IN3/2wTwXcF2/oABbs6Drz31OyHnTabfk8cpgdEuBZ+1WIfpJ9qUT6NJt0SnuPVsUv9qvff6ABOsndw+4SieYOotUPBF6ro/bf+y4TfGTuW4l99Vya8BNAwKOn6fLCsBpaQuaMlId3XYccDcvoXdKEhj23NYkBapuay98MegeMoFisoOVfARyA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(316002)(8936002)(38350700002)(8676002)(956004)(36756003)(6506007)(38100700002)(5660300002)(2616005)(186003)(44832011)(83380400001)(6486002)(52116002)(66476007)(86362001)(2906002)(26005)(6666004)(1076003)(66556008)(508600001)(66946007)(6512007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?2Pr1oNPSoovLVY9xi2XtcaQot2fkOgJ2acxTXAmL8ghOpvCU8+D/eBO86Id3?=
 =?us-ascii?Q?p3u0fCe/qXumHcvbbl4XT4CoKYkf9/L9pzbAYrPzWxlz2RSdx1sBM9eun7Sq?=
 =?us-ascii?Q?giJ2a0GuH2oGtZ9n8rhlf6hRoVjH2ZLSzjNE7sFpLa/W3YBVLMVSa9yUjKLU?=
 =?us-ascii?Q?HSFP+2gbWLKvtJ6UE+9mbkmeknxqvBsTQt0fWi5e8TxUPLjh19O3Tbevrbb9?=
 =?us-ascii?Q?J3Ws7INlsysMu5D5tBZ+FvrN1n5EROPB3LILSPO+d/Q9+pEY05DFdNzvE5Pq?=
 =?us-ascii?Q?Mo9VG0DMHKAKfzj9og/MAnwMoT9u3QY+JPrIRHfjrlJboadyKangZyLReKHF?=
 =?us-ascii?Q?zaKBd5Wc9t7NMjdmhkeV+BAdex3aHwcxmRZvvmdsFIzCqfLFCLhGic7qgI+K?=
 =?us-ascii?Q?Lp/9OlXYfx0AVZw5Drv2kbHHDuVEC/xNo+VoWB3IvpRopjF2LW+GjuITwmj6?=
 =?us-ascii?Q?W4TZWE44kreMsur8VNKn3tpe0c/48Wb12NToDTrnYvvK6vPCCGOVnsHOB3w0?=
 =?us-ascii?Q?RINLiBUZhwuGIITGQgbEIwOyUJIWDyfJYRIk1lMPGwmAEabsL5x4hDQXpXO8?=
 =?us-ascii?Q?gzNbCjynNYSpNI9rxVwam9dxXlrdB6zyyauwC8yFyJetOyZeBd95VvEMkSMG?=
 =?us-ascii?Q?CqfiI5xLyIL/Xt5H4swM9c9gV0z1T7xKtEpVMeROcDoLZkULz7cpL5pZi3e8?=
 =?us-ascii?Q?FaT9NZik/1OWAirGqUMbFjlsH8aW/lDsglK7Ivt/zkQiDv0jgjeUyp6CTbLa?=
 =?us-ascii?Q?uQAs0MK1SYgaKdmTaS1hY3t4SfmvpbCqlyPe34RA9OIFdD8pI0gHOxt4wiww?=
 =?us-ascii?Q?cynTK/Ik0xQwfH8gI35bPn77OZ1AJ/k/zaSxWpDFxVZwGh4eziQbUzwWilzN?=
 =?us-ascii?Q?t+gYf7Uq3pOzYe0sUK6XFnvtLJ4L3PXxMZrGEiT0fLQ99fD5TBYg+7qgqAok?=
 =?us-ascii?Q?Fd0Jnjd7DyO+kixZNZeZG+D+sj4WmEgUmwbD9KRLNoZ78EgcCxZLJiVsXYwk?=
 =?us-ascii?Q?sQxFJ7d0jXhBKWW8zDWKXOxY81Zu4rKjV7HVcihd59liPWINIY5k1HtBCByu?=
 =?us-ascii?Q?PwUT7RgQnE0JjtjGXHC26bn6iwvHGxFAOignwRY0t7edMZLKAOkc0lxARXM0?=
 =?us-ascii?Q?pWmo+bzDLy867UaK7trVtmgXUUWEkJ6RicjgNrrkvCG/gCFMu8O4GWxF86Ee?=
 =?us-ascii?Q?aqoddzmtBqLBWpk4Zl28/OCO7LQOctRwmualhWjpQi8nDcvbHgOGf6Y4Fi42?=
 =?us-ascii?Q?/MBZWL8KoX2DA6ZUzHeYOtX7EfUh2LczTfkRbB0Gr3pD30IE30Gb5kg+bFvT?=
 =?us-ascii?Q?VM0xX79qxvjoZdLNtCLwqdo6?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 0d8f1d90-ed90-4f48-4721-08d98fa1a7b9
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Oct 2021 06:04:31.7354
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 ARlszXpzEstnAFHRzjX1C5C7sauarrgMZ8fbuqE9JjHGcKBmMspHGnf0o+hOrHmUO2Q5pzZy9ZI+GcofUW30MA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1902
X-Proofpoint-ORIG-GUID: 3zBKbvLEKV8GX6EHm6B5Y-J9aIH74mmT
X-Proofpoint-GUID: 3zBKbvLEKV8GX6EHm6B5Y-J9aIH74mmT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.0.607.475
 definitions=2021-10-14_12,2021-10-14_02,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 impostorscore=0
 mlxscore=0 mlxlogscore=999 spamscore=0 adultscore=0 bulkscore=0
 phishscore=0 suspectscore=0 malwarescore=0 priorityscore=1501
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2109230001 definitions=main-2110150039
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 15 Oct 2021 06:04:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55081

Inherit autotools-brokensep to fix the build error which is introduced
by oe-commit:
  commit 8e26252b45b7660c7c67c702411bdec187a76ffc
  Author: Richard Purdie <richard.purdie@linuxfoundation.org>
  Date:   Sun Sep 19 16:17:31 2021 +0100

    layer.conf: Extend recipes not to install without explict dependencies

Fixes:
libsocket6-perl/0.29-r2/temp/run.do_configure.27951: autoreconf: not found
libsocket6-perl/0.29-r2/temp/run.do_configure.27951: oefatal: not found

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 meta-cgl-common/recipes-perl/perl/libsocket6-perl_0.29.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-cgl-common/recipes-perl/perl/libsocket6-perl_0.29.bb b/meta-cgl-common/recipes-perl/perl/libsocket6-perl_0.29.bb
index bbeab8e..9f38380 100644
--- a/meta-cgl-common/recipes-perl/perl/libsocket6-perl_0.29.bb
+++ b/meta-cgl-common/recipes-perl/perl/libsocket6-perl_0.29.bb
@@ -23,4 +23,4 @@ do_configure:prepend () {
 	sed -i 's:\./configure\(.[^-]\):./configure --build=${BUILD_SYS} --host=${HOST_SYS} --target=${TARGET_SYS} --prefix=${prefix} --exec_prefix=${exec_prefix} --bindir=${bindir} --sbindir=${sbindir} --libexecdir=${libexecdir} --datadir=${datadir} --sysconfdir=${sysconfdir} --sharedstatedir=${sharedstatedir} --localstatedir=${localstatedir} --libdir=${libdir} --includedir=${includedir} --oldincludedir=${oldincludedir} --infodir=${infodir} --mandir=${mandir}\1:' Makefile.PL
 }
 
-inherit cpan
+inherit autotools-brokensep cpan
-- 
2.25.1


