Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web08.65256.1629348449825384438
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Aug 2021 21:47:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=r2R1VLg3;
 spf=pass (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=38650d81cc=yi.zhao@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 17J4d3io003987;
	Thu, 19 Aug 2021 04:47:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=gu+arv2wBVPJ5V73KjmVihn5Ta1k0I7ZDqH/ObIXRXw=;
 b=r2R1VLg3maOPlu5JhoO+MIp5NxXzST6CmdbJZeDrEdt0YPF7fO+C+4A7Tl47Wg9AVKJh
 /7Z6WUHPTIqwFxZPhwHr8Fzo6I8ZDDqCJvOoY9Rgzs5lRT8oxMuDNqbs6R2Gv6B3IIa1
 Q5BF+0RJCTvohInsxT+QzdoXnHE/Ng3P4Vxck0IyXpJUT6tZJrImb15t1EynQEMulJIz
 xYM+agyo7fnwRa/udU0RBybPWZfq3/KNQtNIt6qI8smlin7OVeoi0nOm6Qja2jTOtrNW
 Z95IyrRliMA/uQspYKnsk3AMIEqtTjv0TYkqaCeLcrMteXEf76umFz7O2RddbDCTmv3B xg== 
Received: from nam04-bn8-obe.outbound.protection.outlook.com (mail-bn8nam08lp2047.outbound.protection.outlook.com [104.47.74.47])
	by mx0a-0064b401.pphosted.com with ESMTP id 3ahfs9g0qn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 19 Aug 2021 04:47:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TANuNy2MYNWcJnIqTp+aEFIacc+ZpiwNj6LdXL9Q3RlUM0tDvmw5zPQcI+N0730uDcofagSAaaiDHeyxXISy04JAMDRPicuN2QOCIM1f0cQfVKaHk0iFM3uByVgcFixamuqf558vjoxW13rv55epFTJznEKrVmIKW26WbKBZ1vheDUD9yeze4/DE+85Geo2GxtQy/qkef7MHi8ijhWdwHTkhs6t6WXudV2SsDQLXOAmHrBnHSDSA67Ua7GSjqxYQU6W6ywIQqi8g44jw5/cANoVWkq6pPaUkJULzo+ZFmfOInqW05WeEQb/Wl4YyYYOohEOHD3YRjjohz2rtXT8fnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gu+arv2wBVPJ5V73KjmVihn5Ta1k0I7ZDqH/ObIXRXw=;
 b=VjBb7vk3YXr/gmMo42n0nGbXU0rgSITxNqCwgHy3Pa7Fmb+sLgRPZLIzLZrfyKON9FzVq25IfQAa1J0EI/AZXxA5Fgogm5MpFN+vTwUOMsESiid3jVIv6vLiQ/zLgJ2qECSruAixW2LoQMP6EoMwSOtuYOGrQ1NG/QdbAidRBnhnrV2TPagAvtBlvmM1ELdMCuXagvAhaZhWJSUpqoPWLHg4FZY8IJTmMr4XDDsewFd/6yTBB4X59WfwzaELM9YwH6jYkDvVZ7Z/5230WT45kOG5TWCJfD/iMvU2J7+yjR3hWHZITVIOWdznfSTPRe4aZZLpDt2wF9BvOL7mev5iiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.22; Thu, 19 Aug
 2021 04:47:27 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::fdca:2b03:6e20:2d99]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::fdca:2b03:6e20:2d99%2]) with mapi id 15.20.4415.024; Thu, 19 Aug 2021
 04:47:27 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe_macdonald@mentor.com, joe@deserted.net
Subject: [meta-selinux][PATCH 06/12] python2: drop bbappend
Date: Thu, 19 Aug 2021 12:47:02 +0800
Message-Id: <20210819044708.105282-6-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210819044708.105282-1-yi.zhao@windriver.com>
References: <20210819044708.105282-1-yi.zhao@windriver.com>
X-ClientProxiedBy: HK0PR03CA0105.apcprd03.prod.outlook.com
 (2603:1096:203:b0::21) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by HK0PR03CA0105.apcprd03.prod.outlook.com (2603:1096:203:b0::21) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19 via Frontend Transport; Thu, 19 Aug 2021 04:47:26 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a11ab6c3-fe47-4000-3925-08d962cc7205
X-MS-TrafficTypeDiagnostic: CO1PR11MB4867:
X-Microsoft-Antispam-PRVS: 
	<CO1PR11MB4867C54033D215744C75208EF9C09@CO1PR11MB4867.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:619;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	2TgndBbJER1B9roSiPqaL+7eokLmZIyPuZOfi9WEwlIPCIJlOOFw3U3riVnaiKiVeiVWyoUoLapKplTxcLBARnnUTZ5Wat5HzNbazlzLEQTQXWfL2r2fkfSZ5ir2dZqUmIXETJsWH2rFSDVXDnQf9kR52XLhYSgOsrJP88m2vKlV4t6bYMoiaZPXfw6tmavEPRE5N4RO5fVrNZu7pIhQyvvwlSW9BFk7awglYsCcK1II0757sMWjfJB1OSmeaglx6YNKb6q5aj6vysyzD8hjXlcPM+PuolWgnGNzbCKw+ORXvfONuK06hYBdkiIOG0N7rbTqmPk3cmVQ/h082Ix4OtYdXnRvY6wVbKHZq8v2aytza61w/Aze/I97CgwQdUnUMRBsi3+tWWL7GbusCefXrbjNVthL3nrBA+RkSKWeSh7wPo8CGlEDyJ8RwXIkS+As3AcYXHL7qHuufBcvk08A2nWEaEQRlGvWhJqP3+WPsia2GUNMf0kyv39MJB6izElufyoYD11HZFowd/jusxJ7i+DvBa2BDyR9KvMNmopMZdIcbWM1lr/HvQXeYC1WTvsgdrTpyNfZW05U6EqyWYWDlO9yNjh/t+e8zKiPt6F4RGNPtCbopHbBNfi7KKulYTpqNWO5djoOGmBCJXVWfnkdzVZRDJXi4eP+cLOcqHkkLTIzwbXcisKNkB+CC2l4pxb3DJ6F4PXBOt0wPG1YhdZRWQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(346002)(376002)(39850400004)(366004)(136003)(6666004)(52116002)(26005)(186003)(6486002)(316002)(86362001)(2906002)(66946007)(6506007)(66556008)(66476007)(1076003)(5660300002)(38100700002)(36756003)(6512007)(8676002)(83380400001)(38350700002)(956004)(2616005)(44832011)(478600001)(8936002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?iDNm4t6pTlLLszXc6C5kiRjJleykqFIPiyJjBFehU2HmxWDG+Pb69GqGL6wp?=
 =?us-ascii?Q?W8IkV/ZtFAEo6t0OzsLN0qtQELnuVQKJs0WsLGM+sqzaA6qLTg4yZKZmTHtC?=
 =?us-ascii?Q?NEFXnWAnIy9viBJ+4FGP5/68sl/BSaiZYFtnw5nawx+wljChQ9qjcKJuJYR7?=
 =?us-ascii?Q?gYdsPwfKTMtdIWN+gD3kKQPlHrel4R+hJbuqjawVGVgygoAbXP7Sws8lscgt?=
 =?us-ascii?Q?h13RYbHi8pUTUY6FD3IPlwnIKQ5zbRbb3OlEjgHuH5w8/Kecum07OBuOOlPu?=
 =?us-ascii?Q?eef5NP3hUUqNSOMTKcbqb37G5RYkuYmkLBdvhe3NAzMV5rQfS2bF7YEqp2Ab?=
 =?us-ascii?Q?RXblwQYZhRdhzRIJy+zQBtHpHUqge2iu9zUvg8vDHwUpu/AlFuRw/1MILRuj?=
 =?us-ascii?Q?YJmI6aOJLp62WgiFYEn1jqCC8gr9Spv7YQ7P+iAGob90N0VCkZUiC8TyjATL?=
 =?us-ascii?Q?LTgOv2Xd3p3T2Un+l2Y6J0djDtJdo2usGF4qHWHByaJBiR4B7dfrhW7UEy/n?=
 =?us-ascii?Q?8XGyYyn9ogh4Ybqa1FpuNd3yNwRObwQaTcs3QMWcpiYE113sT0OpxvppxYwD?=
 =?us-ascii?Q?GEjfPptZQFG+I8arKklzInnRq34MEeYoVRTdrrxUj30Sh5salVzMn6/E38wB?=
 =?us-ascii?Q?8ow3++40mxOfTT5tiiP5LqPeznnjwpMYYlB0Kn5+sSAkgHcWKTKs8SqWNpHR?=
 =?us-ascii?Q?drfVME3P8nRmTNayOaLB3K3kgBn1HVnfg3eKs7VS5sjyn/4PPNTmH2MoSEyb?=
 =?us-ascii?Q?MALchuubuimVEUcYN9IpsS74uQBVy15dMJO30jgYFILDSg2ozMIKiIWSlCct?=
 =?us-ascii?Q?HSKLME2ORbp/mZ7xECp9MCniM+anmvm/ptQMEvN1Tk3gNsUCK8ZjzSYzFz44?=
 =?us-ascii?Q?Q7CVNmLvz1adRUOQdEOlNo3zFD5d7LXodM4i9pI2r1e19kRhGrZVMDVW0sh2?=
 =?us-ascii?Q?l2i5RK6UeeL0CPkoJJ1dkd4jcXFTKc2BnSUiWySTHA0GzwtP+jh5apQ67IWs?=
 =?us-ascii?Q?XNe1tE8PUT2HJWhxkPKhLbsMRaSQFcwG0x/ObQeHuOiwaFJ91VtC1ZJTrxRA?=
 =?us-ascii?Q?rI6ePOnfho+7A9pB1ZDN0v/EESenr1DcY+Nwqf8HsnuwQopJKyZN7p7/EZwS?=
 =?us-ascii?Q?LBymEoBlmUaFCeF7aVvWytqBneaBz1yq3SMYejXUztwylLcTyRKYUS3Pqo3Z?=
 =?us-ascii?Q?ygblOS2z21Q36TFfcZQ4XCxdwDk+QWO0Q5uxL3pj5h/HxI8oRyhpA38PDW4S?=
 =?us-ascii?Q?FdwBI/NThfmBkM7sxrX4hEkLubAB+LZMCEIFajY49YWYxDeMPuyFXKf8l2hm?=
 =?us-ascii?Q?Q+nenAl2bm6tpOHK9pTNibnm?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a11ab6c3-fe47-4000-3925-08d962cc7205
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Aug 2021 04:47:27.6655
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1gBM3V1xBCaHjOKo2pPFjv5VTINWM+SBrk4GLzd1Y5bAIxPCFs14d04rgbPZ13dZO6zt1naYL1syyTYF3+gilQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4867
X-Proofpoint-GUID: kbz2fjeQn736UZcDs6g9F3xJiZiDemWa
X-Proofpoint-ORIG-GUID: kbz2fjeQn736UZcDs6g9F3xJiZiDemWa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-08-19_01,2021-08-17_02,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 adultscore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 malwarescore=0 clxscore=1015
 priorityscore=1501 impostorscore=0 mlxscore=0 phishscore=0 mlxlogscore=761
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2107140000
 definitions=main-2108190025
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

This bbappend was added long time ago and it is useless now.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 conf/layer.conf                               |  2 --
 .../python/files/sitecustomize.py             | 26 -------------------
 .../recipes-devtools/python/python_%.bbappend |  1 -
 .../python/python_selinux.inc                 |  5 ----
 4 files changed, 34 deletions(-)
 delete mode 100644 dynamic-layers/python2-layer/recipes-devtools/python/files/sitecustomize.py
 delete mode 100644 dynamic-layers/python2-layer/recipes-devtools/python/python_%.bbappend
 delete mode 100644 dynamic-layers/python2-layer/recipes-devtools/python/python_selinux.inc

diff --git a/conf/layer.conf b/conf/layer.conf
index fcd61d5..d7c80b8 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -7,8 +7,6 @@ BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
 
 BBFILES_DYNAMIC += "networking-layer:${LAYERDIR}/dynamic-layers/networking-layer/*/*/*.bb \
                     networking-layer:${LAYERDIR}/dynamic-layers/networking-layer/*/*/*.bbappend \
-                    meta-python2:${LAYERDIR}/dynamic-layers/python2-layer/recipes*/*/*.bb \
-                    meta-python2:${LAYERDIR}/dynamic-layers/python2-layer/recipes*/*/*.bbappend \
                    "
 
 BBFILE_COLLECTIONS += "selinux"
diff --git a/dynamic-layers/python2-layer/recipes-devtools/python/files/sitecustomize.py b/dynamic-layers/python2-layer/recipes-devtools/python/files/sitecustomize.py
deleted file mode 100644
index d2b71fa..0000000
--- a/dynamic-layers/python2-layer/recipes-devtools/python/files/sitecustomize.py
+++ /dev/null
@@ -1,26 +0,0 @@
-# OpenEmbedded sitecustomize.py (C) 2002-2008 Michael 'Mickey' Lauer <mlauer@vanille-media.de>
-# GPLv2 or later
-# Version: 20081123
-# Features:
-# * set proper default encoding
-# Features removed for SELinux:
-# * enable readline completion in the interactive interpreter
-# * load command line history on startup
-# * save command line history on exit 
-
-import os
-
-def __enableDefaultEncoding():
-    import sys
-    try:
-        sys.setdefaultencoding( "utf8" )
-    except LookupError:
-        pass
-
-import sys
-try:
-    import rlcompleter, readline
-except ImportError:
-    pass
-else:
-    __enableDefaultEncoding()
diff --git a/dynamic-layers/python2-layer/recipes-devtools/python/python_%.bbappend b/dynamic-layers/python2-layer/recipes-devtools/python/python_%.bbappend
deleted file mode 100644
index 7719d3b..0000000
--- a/dynamic-layers/python2-layer/recipes-devtools/python/python_%.bbappend
+++ /dev/null
@@ -1 +0,0 @@
-require ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', '${BPN}_selinux.inc', '', d)}
diff --git a/dynamic-layers/python2-layer/recipes-devtools/python/python_selinux.inc b/dynamic-layers/python2-layer/recipes-devtools/python/python_selinux.inc
deleted file mode 100644
index 4fed832..0000000
--- a/dynamic-layers/python2-layer/recipes-devtools/python/python_selinux.inc
+++ /dev/null
@@ -1,5 +0,0 @@
-# If selinux enabled, disable handlers to rw command history file
-FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
-
-inherit selinux
-
-- 
2.25.1

