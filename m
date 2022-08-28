Return-Path: <yi.zhao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2547C0502E
	for <webhook@archiver.kernel.org>; Sun, 28 Aug 2022 02:29:56 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web12.55466.1661653794529342245
 for <yocto@lists.yoctoproject.org>;
 Sat, 27 Aug 2022 19:29:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=hG8HUS+b;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=52395d86b7=yi.zhao@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id
 27S2Tr4v011295;
	Sun, 28 Aug 2022 02:29:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=P1sBMIcLaOxLee2ODIZPLJgwr6B4lHqzRPplQyUIXRg=;
 b=hG8HUS+bAASC06Ut+qS5bJUqSl/EJbwMkxa293bg1TGR/Ub2WPl5QFfhf9/o4mISvZH5
 iu+/X2S4PXSEMcJlzpAi+pmRLRwHCbNSh8vF7eheDBqFsUDmyheFmGDwe94bwGdPEnY7
 Q8mknChg4mbTyEH8hdisuVZu/LSJzCtnsWq/5qR8uauZHZgZ8amfJNbMfQ4iZMTiaEE6
 bR45bJkQampVnzigbktzRcWqKEBpWe/+YEYG3a/Z9L8rpr40kGO255FhUILw2Afk/YZD
 cIbIXYjoqSindv/N9sKHgfbhMWx05Z/Iys+Bq0pG26FM1D1m7Y3JwWkAEGi3+XjguC// fg==
Received: from nam11-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam11lp2168.outbound.protection.outlook.com [104.47.58.168])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3j78g2gq45-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sun, 28 Aug 2022 02:29:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Uw333qYObtcqvfOsKfgsCtWVdnlRrEwa3N/CwNgKmAoYWZRIY9/F6Ynb+UP5rOTzNvn7OusYf8WDSC88pFHP6mxW5qV7tyhltODUYyJVgyaIuSYZBVDoZ3z88uQIixEqOZ2/cXSg2BU+SPOtw8kWvLdMzXP9rzXq9i8a51JAe0pAAbbz3YbV4GKRYGPnfPFuAjGlu9llg5Bh20NLvxEVNePctdaOQ/g/aRP4F0IySziPRvT7xSNW75WUndS7xZ3RJpGhSFBTAc8Sk3Ytn+z1rUJTDeYt7I7S6Zf34ZP+dj4/fQDg/lKy6zUlUymsAfL7ESThSF/nimfYKysRpeWpJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P1sBMIcLaOxLee2ODIZPLJgwr6B4lHqzRPplQyUIXRg=;
 b=a7GDJwWPzIJF/W81qs7BFHroWQF/zsnBVMh8aEuH/EaGkGR3YYC86En3qRIA/2Ftk8BldgAL/yoZn2U2rqQrCXqzKgWZyTJasPXi2DssyFumDx2e25Z4tBhHkV48uWj75dI5xy4gG/OJguQ0v+WheqZY4iGo5sqrFaEI2AUjiqFJxBKELyCN3fBPzKsMGWHOrVyJ9STQSpJBnE0ylnNzF7ulfRgfFGTXobdwEDFDUQXh1vlD6zZEWxVelrAC1Ka9Y9KdiZVr+pWv5y0KsqELwQc1i2YGSZ5/fULBQP6NO7swc/cy0MVTrxOHkNdQe8nsQs0LxO0JoRSyyvqSefUifg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by DM5PR1101MB2172.namprd11.prod.outlook.com (2603:10b6:4:50::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.19; Sun, 28 Aug
 2022 02:29:51 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::a921:a88e:14b7:56ec]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::a921:a88e:14b7:56ec%6]) with mapi id 15.20.5566.021; Sun, 28 Aug 2022
 02:29:51 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe_macdonald@mentor.com, joe@deserted.net
Subject: [meta-selinux][PATCH 04/16] libselinux-python: upgrade 3.3 -> 3.4
Date: Sun, 28 Aug 2022 10:29:22 +0800
Message-Id: <20220828022934.47592-4-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220828022934.47592-1-yi.zhao@windriver.com>
References: <20220828022934.47592-1-yi.zhao@windriver.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR02CA0058.apcprd02.prod.outlook.com
 (2603:1096:4:54::22) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6f9ab2f6-a4a5-4b32-9a86-08da889d2fa7
X-MS-TrafficTypeDiagnostic: DM5PR1101MB2172:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	dLm5Y8Qia+aT/x4cWV/n5gspYsI4/h2T28belg7wxmTjcc/y/A4nstIr3OjVwqN4tbA0ocMVK+Pi9M0+63XFDWspzdr/jJmXjyi/9DQhN+LF4ffYATshcRmJFz8kI3VIj0y4eOCsdxrZr/kug7y2UPtl2xjG4Iz9NadV7G0/noGUnw+HOQML16cj2oKi1P8wU9KuzhJlbGs6AY4ts7M/jGgK2riBRndAJ/KZ3M+l89Nezmv4zYfCyFxxbibv5AxnD5QOfgDNm0wX+2TFOl3BANnjTTQr2hM8/3RuFab9YWQUEzkRDTYvwqXeJGIuE6WhQex68DXOFUP4aSEQHOcFXOOrcAu36kh5SFcKJLOqnrd6GezjATneiIp1pXx+cAV9QqjHvKcM28n1SSAxy95BxZOLgVPEZH+OaU3O3P+XY5d09lPC6sOTdVUHdgdawr+to7wozRWUMSElqLBtye6xpvK/khUxxYzEpAKZ8uL+GB5/yBqNuoxxC55sDPB217tq5rqlOSY/TcxYB9VpaijaM1BylkQItNgB6u97fjSmzO6keM2s/l7vgu6XOZHChR5r5MezQlIlBWhuJfEHX6ewlsCYP+VNjQ8KZ6k2f7PvD7adPDxRulkhIRerRed8X+7aNEMuaUfpScgLwO0b3yUQ1iAg8bIQQe14VUzLSs372Fc0SJdmXpcT4gibWF1ewfuUh5vswaoxvhLS2/XuBR8GhQwvHaoVxbnap0H47xp8SyoKTupFS+3aigRsZbEQscI619fGa9ctuhK0W7IIykSzBw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(396003)(376002)(346002)(39840400004)(366004)(136003)(83380400001)(2616005)(1076003)(186003)(38100700002)(38350700002)(66476007)(66556008)(8676002)(66946007)(316002)(53546011)(26005)(6506007)(6512007)(6666004)(52116002)(41300700001)(6486002)(44832011)(8936002)(478600001)(2906002)(5660300002)(86362001)(36756003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?/Yq/DyH1YjcIKCLueJT1ZdNU7emBdzVtlHBO3U2KWgoGp22KOkai6aGFFtbW?=
 =?us-ascii?Q?7Qqr/FVw8R8h90gZ474LVHpI5D8MwVGataqdFRCSp5RDal2u+tiTyooEDBum?=
 =?us-ascii?Q?vcwCHvoPZvuisWmomY/L+zNABkgUIo6CSu0Lo1WfG26+gm+7GLF1F709fuqw?=
 =?us-ascii?Q?epaDNK6LMLgRQX6mzH+G8NTmIOFRAg24Fi68K6qL5crRQz9eNCL9mphMPzk9?=
 =?us-ascii?Q?KdH0RZ8mSBWAhmjT830vdqupub55CQoYnTSg4swy/9lfDO5FI1IFeSVqMTHI?=
 =?us-ascii?Q?JRwVcvdylJA7dEecboNFmWL2DKQB28CIvgamsZVasLRh7HV+Hsh7B/6wJCGE?=
 =?us-ascii?Q?AzHUxmkiWvlKhBUasj93ogBik6CpoTdztT6YH6OVgNFN4qMAyaQpkB5OIjBF?=
 =?us-ascii?Q?KOXeuDiybtZTkhDt1xDU+HDfT/ms4vdjN9eJ6FvZ/NGAqCqJ2bD69bjpejF9?=
 =?us-ascii?Q?Hs6PD2MpN/7bZtTy+8wQ/b9Pq0OVv2K3f2jSy9ovjHj/RGKWnAxSmILMKJHQ?=
 =?us-ascii?Q?N85VddMktYd1l37GtuH/f3+GWzQxcNYI/3LmuRxKJpDKSDIxIFwAI6vaIFrH?=
 =?us-ascii?Q?nouz2Ur6jhOrayyaW8LCMfrGKeRmFF0Alyef3iHheiEoFhNTSHnxLjnebCOH?=
 =?us-ascii?Q?Th3auADfl8XMoMWmgI0+o/2fZLWEqx8YSp+2UZXI6GhgZRaL7braYiIJ8Fil?=
 =?us-ascii?Q?T6RfZvkbSROeZ4LlnBRMcB5kltHvi/BAkaU8jxQ6TBzLOtTJCEANOtR0Ld6n?=
 =?us-ascii?Q?s8NB4etWQg9HTWn2zxf0uEzXJ2KLryxuTDhqAegEprrMEc1DBah+cg1d4l08?=
 =?us-ascii?Q?fCGcwY6JwXI9/xftVLxm5KID9IT0SKb9l53sDE2E7Wi+A0HEneJM6dkncOH+?=
 =?us-ascii?Q?0EJMctjbEkubJepkKYRqzMY6NhuddU3LKeOnlyHN1Q5b5DdLiXsT17YoxnQU?=
 =?us-ascii?Q?ItBv0LZXtZPij5gGR+2Ya8OShIUknfmTwE4P5k8Dg6KFZyndCAnvk2MdhKzP?=
 =?us-ascii?Q?K15RxhAWxGXm1ync++CkjHgxuR9bwoISwDrPW2mlbteMiZHA0lYeOpf+rcRE?=
 =?us-ascii?Q?4sY6Q1UsGSUHC1t1cKQKdjv7jZsDCIH48f0DS7ysVaLm3N0yL/o/mN/vKKKu?=
 =?us-ascii?Q?vqR0LIr+BnI84jEzhz2hgV9R4SvSA1AojalRhDWXwh7nTBewyO0IK/jDKUi8?=
 =?us-ascii?Q?6HqzfE88WzEyFT5CV/P2QqwK7xQ1KWO3/9vndhScYp93KTyfmdO0U8kttBvY?=
 =?us-ascii?Q?3/38wex3pOfGDVkl86zBhDPQ7/Pd9AOPMFK3LE9L6FiJwa2k04rKFjGbnrFJ?=
 =?us-ascii?Q?1CAPSSWVpulurR1kUHfch+gr/za6vD3UmPBI6A8CR+wt662zMgTFhyN84ZmC?=
 =?us-ascii?Q?S+/xU4e7KrbYVeB7cLsAkStDTrnnDUULAmusLvECXHVJ1ixyGA1J8/bAwiUT?=
 =?us-ascii?Q?kin1pBhCBsJFiJRJzxhBKLs5G3ZZa8k6J0dSH6hHSFSJTlBzf7qLVB+h3O2D?=
 =?us-ascii?Q?nF21L4U305wnZkNwUDkQ5+Ja4k2JjZ9M3NSsMzfl1IJrLHIBC7Vs+nFdlZSy?=
 =?us-ascii?Q?pD2/vrXPi19DbvIBGA4BNtXRBOLh93pYo6CWIhIy?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 6f9ab2f6-a4a5-4b32-9a86-08da889d2fa7
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Aug 2022 02:29:51.8352
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 UvMcYqrTKxCaKc+nYNELFD4sDic1H1v2dqHPco2pGQ6S0DIFhvc+JYXCvqZBOXIjEiHXflTMLhtze2KmVzfbYw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2172
X-Proofpoint-ORIG-GUID: sgDi-BWm92r598suWCIRi9qRdbzrQDfQ
X-Proofpoint-GUID: sgDi-BWm92r598suWCIRi9qRdbzrQDfQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-08-27_10,2022-08-25_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015
 priorityscore=1501 phishscore=0 bulkscore=0 suspectscore=0 malwarescore=0
 mlxscore=0 mlxlogscore=924 lowpriorityscore=0 adultscore=0 impostorscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2207270000 definitions=main-2208280007
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 28 Aug 2022 02:29:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57919

* Use libpcre2 instead of libpcre.
* Refresh patches.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 ...linux-python_3.3.bb => libselinux-python_3.4.bb} | 13 +++++++------
 ...ix-python-modules-install-path-for-multili.patch |  8 ++++----
 ...PYCEXT-and-rely-on-the-installed-file-nam.patch} |  8 ++++----
 3 files changed, 15 insertions(+), 14 deletions(-)
 rename recipes-security/selinux/{libselinux-python_3.3.bb => libselinux-python_3.4.bb} (79%)
 rename recipes-security/selinux/libselinux/{0001-Do-not-use-PYCEXT-and-rely-on-the-installed-file-nam.patch => 0002-Do-not-use-PYCEXT-and-rely-on-the-installed-file-nam.patch} (94%)

diff --git a/recipes-security/selinux/libselinux-python_3.3.bb b/recipes-security/selinux/libselinux-python_3.4.bb
similarity index 79%
rename from recipes-security/selinux/libselinux-python_3.3.bb
rename to recipes-security/selinux/libselinux-python_3.4.bb
index 136f538..a850369 100644
--- a/recipes-security/selinux/libselinux-python_3.3.bb
+++ b/recipes-security/selinux/libselinux-python_3.4.bb
@@ -8,18 +8,20 @@ LIC_FILES_CHKSUM = "file://${S}/LICENSE;md5=84b4d2c6ef954a2d4081e775a270d0d0"
 
 require selinux_common.inc
 
-inherit python3native python3targetconfig pkgconfig
+inherit python3targetconfig pkgconfig
 
 FILESEXTRAPATHS:prepend := "${THISDIR}/libselinux:"
 SRC_URI += "\
         file://0001-Makefile-fix-python-modules-install-path-for-multili.patch \
-        file://0001-Do-not-use-PYCEXT-and-rely-on-the-installed-file-nam.patch \
+        file://0002-Do-not-use-PYCEXT-and-rely-on-the-installed-file-nam.patch \
         "
 
 S = "${WORKDIR}/git/libselinux"
 
-DEPENDS += "python3 swig-native libpcre libsepol"
-RDEPENDS:${PN} += "libselinux python3-core python3-shell"
+DEPENDS = "libsepol libpcre2 swig-native"
+DEPENDS:append:libc-musl = " fts"
+
+RDEPENDS:${PN} = "libselinux python3-core python3-shell"
 
 def get_policyconfigarch(d):
     import re
@@ -28,8 +30,7 @@ def get_policyconfigarch(d):
     target = p.sub('i386',target)
     return "ARCH=%s" % (target)
 
-EXTRA_OEMAKE += "${@get_policyconfigarch(d)}"
-EXTRA_OEMAKE += "LDFLAGS='${LDFLAGS} -lpcre' LIBSEPOLA='${STAGING_LIBDIR}/libsepol.a'"
+EXTRA_OEMAKE = "${@get_policyconfigarch(d)}"
 EXTRA_OEMAKE:append:libc-musl = " FTS_LDLIBS=-lfts"
 
 FILES:${PN} = "${libdir}/python${PYTHON_BASEVERSION}/site-packages/*"
diff --git a/recipes-security/selinux/libselinux/0001-Makefile-fix-python-modules-install-path-for-multili.patch b/recipes-security/selinux/libselinux/0001-Makefile-fix-python-modules-install-path-for-multili.patch
index 9dfd8d4..9750cd6 100644
--- a/recipes-security/selinux/libselinux/0001-Makefile-fix-python-modules-install-path-for-multili.patch
+++ b/recipes-security/selinux/libselinux/0001-Makefile-fix-python-modules-install-path-for-multili.patch
@@ -1,4 +1,4 @@
-From 41540f5c4e3552a2806097613f016d1a2fd4754a Mon Sep 17 00:00:00 2001
+From 1ff60a36bb0bfc95ce33cf950f58e121548a3c8a Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Mon, 13 Apr 2020 12:44:23 +0800
 Subject: [PATCH] Makefile: fix python modules install path for multilib
@@ -11,10 +11,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 1 insertion(+), 1 deletion(-)
 
 diff --git a/src/Makefile b/src/Makefile
-index 190016e..dcdeb10 100644
+index 04bf4f2..81ae6a2 100644
 --- a/src/Makefile
 +++ b/src/Makefile
-@@ -174,7 +174,7 @@ install: all
+@@ -181,7 +181,7 @@ install: all
  	ln -sf --relative $(DESTDIR)$(SHLIBDIR)/$(LIBSO) $(DESTDIR)$(LIBDIR)/$(TARGET)
  
  install-pywrap: pywrap
@@ -24,5 +24,5 @@ index 190016e..dcdeb10 100644
  	ln -sf --relative $(DESTDIR)$(PYTHONLIBDIR)/selinux/_selinux$(PYCEXT) $(DESTDIR)$(PYTHONLIBDIR)/_selinux$(PYCEXT)
  
 -- 
-2.17.1
+2.25.1
 
diff --git a/recipes-security/selinux/libselinux/0001-Do-not-use-PYCEXT-and-rely-on-the-installed-file-nam.patch b/recipes-security/selinux/libselinux/0002-Do-not-use-PYCEXT-and-rely-on-the-installed-file-nam.patch
similarity index 94%
rename from recipes-security/selinux/libselinux/0001-Do-not-use-PYCEXT-and-rely-on-the-installed-file-nam.patch
rename to recipes-security/selinux/libselinux/0002-Do-not-use-PYCEXT-and-rely-on-the-installed-file-nam.patch
index 0fafcef..db7d68f 100644
--- a/recipes-security/selinux/libselinux/0001-Do-not-use-PYCEXT-and-rely-on-the-installed-file-nam.patch
+++ b/recipes-security/selinux/libselinux/0002-Do-not-use-PYCEXT-and-rely-on-the-installed-file-nam.patch
@@ -1,4 +1,4 @@
-From 1542c79660484a2f2e24ee0593586dba35c3ad13 Mon Sep 17 00:00:00 2001
+From dae53d7cd4d7875f7fb7aba016a0331559044eea Mon Sep 17 00:00:00 2001
 From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
 Date: Fri, 25 Oct 2019 13:37:14 +0200
 Subject: [PATCH] Do not use PYCEXT, and rely on the installed file name
@@ -27,7 +27,7 @@ Signed-off-by: Changqing Li <changqing.li@windriver.com>
  1 file changed, 1 insertion(+), 2 deletions(-)
 
 diff --git a/src/Makefile b/src/Makefile
-index dcdeb10..da6f719 100644
+index 81ae6a2..37399e1 100644
 --- a/src/Makefile
 +++ b/src/Makefile
 @@ -15,7 +15,6 @@ INCLUDEDIR ?= $(PREFIX)/include
@@ -38,7 +38,7 @@ index dcdeb10..da6f719 100644
  RUBYINC ?= $(shell $(RUBY) -e 'puts "-I" + RbConfig::CONFIG["rubyarchhdrdir"] + " -I" + RbConfig::CONFIG["rubyhdrdir"]')
  RUBYLIBS ?= $(shell $(RUBY) -e 'puts "-L" + RbConfig::CONFIG["libdir"] + " -L" + RbConfig::CONFIG["archlibdir"] + " " + RbConfig::CONFIG["LIBRUBYARG_SHARED"]')
  RUBYINSTALL ?= $(shell $(RUBY) -e 'puts RbConfig::CONFIG["vendorarchdir"]')
-@@ -176,7 +175,7 @@ install: all
+@@ -183,7 +182,7 @@ install: all
  install-pywrap: pywrap
  	$(PYTHON) setup.py install --prefix=$(PREFIX) --root=$(DESTDIR) --install-lib=$(PYTHONLIBDIR) $(PYTHON_SETUP_ARGS)
  	install -m 644 $(SWIGPYOUT) $(DESTDIR)$(PYTHONLIBDIR)/selinux/__init__.py
@@ -48,5 +48,5 @@ index dcdeb10..da6f719 100644
  install-rubywrap: rubywrap
  	test -d $(DESTDIR)$(RUBYINSTALL) || install -m 755 -d $(DESTDIR)$(RUBYINSTALL) 
 -- 
-2.17.1
+2.25.1
 
-- 
2.25.1


