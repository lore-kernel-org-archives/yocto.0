Return-Path: <liezhi.yang@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 31507C00140
	for <webhook@archiver.kernel.org>; Mon,  8 Aug 2022 16:28:52 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.455.1659976128787851620
 for <yocto@lists.yoctoproject.org>;
 Mon, 08 Aug 2022 09:28:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=plhsICMX;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=5219e52a58=liezhi.yang@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id
 278DIZCB009114;
	Mon, 8 Aug 2022 09:28:46 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to : cc :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=PPS06212021;
 bh=Y+C5pQXnU3X/klBHYBU5syAC+Pl0T+B18hjiXQq3gkI=;
 b=plhsICMXKWqZSyMiGUtGgNPuZas4k6LBmTvXo0JwasFt2W5TEiVJMTSbSkKwdw1nfmyf
 9E4Xj+trISzZDoBTmkH6A1BKzxjc80qlTHkU+2bLanzNvPscch7VA2rgqUWN27JfPkXV
 F694OnyrY6SjyZXgS6M0EJFTSK/TGmuT47eGB72debtgdFV6Exu4HhvpZuPiCxDKG90G
 +VyXxUtOgZkyyh5lKCRPQaYlpZtIH35gA9PD0E9y6rQhz4/MfqFjggSZB1ghcEHl7MWe
 AxZuF7Fm+OdwgwesI5Sn2sOFsyMycFDTuYgIfj6I9AaI4VKiRo870bLYj+DwSc/XJEU4 zw==
Received: from nam10-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam10lp2103.outbound.protection.outlook.com [104.47.55.103])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3hsqtk9e7w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 08 Aug 2022 09:28:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cyCv/kkSB1oeX97DS/lIL52G471OD7cFjKQkJZo34lC/0R3N2WRZKz/H0EDUGvwYCIs5OpbqkNBagBqthZBVVqr4oW8piyJxZf2D0qus+y1fr5rbEXZIo0zMQr9AHnCHQkJd+p29JVUrkCL1JGzHaKY0U30TKAh54bEHG8SlDiyV6SJ55zP30XgNLHWX4Em+NavghTaIWKl8bOinxmmfCPAwru8O0VU+FywOnN20RP2JN1RJ8gma6Zi4OhOoEJ7UOA5nMlT5jEhWHJ2ayma8M+LSMRIbmXYBia0VKEgH+3FDxBymKmcujWZHobhIQn6Th3DUzqHq2jlfOaVTbrlc4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y+C5pQXnU3X/klBHYBU5syAC+Pl0T+B18hjiXQq3gkI=;
 b=gxL3pbLZlcVaFkt5gNZcU+KSFBJO/dFuDzE5X82rBESoetkKx3VPq7ccLG+geRPq/bPZ/HTbZ4ohfWKIcZk6XvYru2iuQ0jxlg6790dOiANPzxxtYnIWX4TLTlcdtOEyBCNZE2ciPsVFb+A9sNrRzZdTTza7gUvZMqjKzdRDtOKjJI3FaHQjHOIW68MjCfeMf7SkWemQo+/lw6nB9EO/NcSAdql+i5fqXMpfZqgW7Y2SuUkWBkqaG8+0IcuetbvFLwmV9nLbIzCXitDKNJoC0wMYXKEfXYGS1iAiCYmN2435Tp97wRQWQabdHqi+y9Uuruueghpc3szbnHL9Iu638A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from BYAPR11MB2789.namprd11.prod.outlook.com (2603:10b6:a02:cc::11)
 by BN6PR11MB1620.namprd11.prod.outlook.com (2603:10b6:405:e::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.14; Mon, 8 Aug
 2022 16:28:44 +0000
Received: from BYAPR11MB2789.namprd11.prod.outlook.com
 ([fe80::c517:5e:d3d8:d408]) by BYAPR11MB2789.namprd11.prod.outlook.com
 ([fe80::c517:5e:d3d8:d408%7]) with mapi id 15.20.5504.020; Mon, 8 Aug 2022
 16:28:43 +0000
From: Robert Yang <liezhi.yang@windriver.com>
To: yocto@lists.yoctoproject.org
Cc: paul.eggleton@linux.microsoft.com, tim.orling@konsulko.com
Subject: [layerindex-web][PATCH] admin.py: Remove has_delete_permission()
Date: Mon,  8 Aug 2022 09:28:36 -0700
Message-Id: <20220808162836.10159-1-liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.37.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BYAPR04CA0015.namprd04.prod.outlook.com
 (2603:10b6:a03:40::28) To BYAPR11MB2789.namprd11.prod.outlook.com
 (2603:10b6:a02:cc::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1f9abcac-42a4-4bdc-46c6-08da795b0f9e
X-MS-TrafficTypeDiagnostic: BN6PR11MB1620:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	j5xCvv16yOM98EFiV2wgf8Z0b9CxJHxhcLWXldeKqleG4Ve4+zHdnkSoVL3A0fkkV6qCwrkQ4w0FfZPaN7SLtyWUPgPkiSmBwox3hjB2nGXy+PttZ0XajGw2uO8hon+XL+g2z7cz4k2YZpIHrMvSHf+H2lS+3kTcGfEfX/bDrLZobCLCApN00rV3kiAXAFkAD+usfLPAaJ7zXwWohZznkXF7j7gn0esn6HwSC7S/pvYGYW3t/R41t4OSmMxGDkQlVtXiooGY6elRicJc6uChCeULFaqsH9GPzlfb+Z+Isx0PEOJ5X24LvZRqgKGGhyzDNm2Lth6svGy+RQgbzlbe0doxnmxDlXAAEmaTJe8voS8/KTGKARCj/Hk5L7i1A0MZIf2pUNjdogvTe3o+PkCkbdfyyIaLpz+xbsEycBGj1TLKj3Ujwe8LtsXxnbhrNrVq3sTUDPNOgomBVBp20JhK0CFfT5tpqivYnBAJu4cE/L9f/Si14ga6z6vhfnw8jq80ILqgAcheVfIMQlxtHdDT8Ry9OSXTaaVOZ1oVo+dDbiMRpuPc9RCgv+D1uiVt/wLbgk9AwukT7vJ+RrhRhfM6P7iPt8IAqKRtr06pSh7XTNNFYpKJ3nE6l2XKzoXN6TJEEfQlnrbizGEqZtmax2IpdrIudoKMH5gIXQU2tW6EYWp+zwMPs0wDl8CCIQehSgXamIaB4UAj+vLXXvBtZlkG8v/n8oA2sPsWtdqO53PKQ6H4hQXrQJDBD5Zb5jLSw3tZqLHOGx2RjwZJCcyPaYLyHT8SxAeQzn6pBRxOvhdv5l9QfprxRDqNPAcu8eXcCapb
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB2789.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(396003)(39850400004)(346002)(376002)(366004)(136003)(41300700001)(86362001)(26005)(6512007)(6666004)(52116002)(6506007)(38350700002)(38100700002)(83380400001)(1076003)(2616005)(186003)(8676002)(4326008)(66476007)(66556008)(66946007)(36756003)(2906002)(5660300002)(8936002)(6486002)(6916009)(478600001)(316002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?1QftIoKn7PvbTso6UzYmeDvh9/p90rGcDZtVO5IKodbctmalPajnPJ93Qjki?=
 =?us-ascii?Q?eiG7eUaF6RPlgTYtVma841i4xh5/t/hypcivuixw1g1TIAY161nH+ikLscXE?=
 =?us-ascii?Q?mlNJVvrin1d4Wgj3X54gQotdk29y7AFhm22K+Zl+Sfqjjr3FvhM6QJceWFa4?=
 =?us-ascii?Q?YMOsUUtpla4/giOu0alf1Wejhgy+i/iqgEKAKQmDceHgh71lbqEBPViSfd+k?=
 =?us-ascii?Q?n0SQKzXIF8h/x5aiKccSLxonBBdEjSPr4wJjQKoKokIb/bMsxGf9eLNKVsim?=
 =?us-ascii?Q?MrLWXRn2goocaeWs8D9Zk45krExzu1X5OlcQiQEwCViUF9tW6QcChdF0VuZa?=
 =?us-ascii?Q?Ge73wU+JnlsOMFAnZBpTfCdHzAdvjBRVeI7nyYIQ7rNrpSJHlgYzSWIi06yT?=
 =?us-ascii?Q?Whr5bgsaoSZDGFz/mbPEtwpvD53CPRQ0JmMpoRUfdBnWFuBfzVPX3EwokVGM?=
 =?us-ascii?Q?+GZyNe1h82/AuL33uvfjDKngHet/w9wDkCRx518hsAy8pcRhp183DgV1OSS8?=
 =?us-ascii?Q?5k3IFKgJ9X6j/4+NneVViGVghAoVa3AJB6zNff6aPp3g0yz9nP8UDE++cIM6?=
 =?us-ascii?Q?bx6WB+ac8AXzWOA6g1dTlfLfpSFP16JveqbtrMAm0uUQtLNmIZNEnag+xYDN?=
 =?us-ascii?Q?kVLBB0TtCHCJOXl+aByl0sDV3z4H1j2tN7NTu10TeMsJ3XCIgLCgrKvwjJXi?=
 =?us-ascii?Q?7NhjurWzOcj+v7jObwOvRRQ9SsOVt6KgTnA9qr/YFlddVjSma4aPZ1M02M+T?=
 =?us-ascii?Q?q6PXSJZsfbkBikj0pjCoeQsD/CtAGAfjOp5dKegWXHrQuhvBb/0B+iXpjCOl?=
 =?us-ascii?Q?RwOggbGxi3jq4a7egJcvP/qYMk01jsu5VyJZFYFd0mbxXXacsg+r+r6aoA4D?=
 =?us-ascii?Q?5eBeqhCF+wfxyt9ZVsb9ikJAEmgO0VPB7fEdpPbKnMCgAnxmX2WjeVQJInCz?=
 =?us-ascii?Q?F3kHEPGqySyfIdHcsZuGlucxmb/ygzsO+QTlv5kJr2CrPiSOctwHY+NpWRkv?=
 =?us-ascii?Q?Oro9jKDrzCb5Ek6uWqcvAniXZjbFHs+AeIrlV0EQRTgkosJB8MKTM4ejlpHi?=
 =?us-ascii?Q?hg/1xxPV4NidELtt1M51Db07pXWJyXI034xRfjXwErUGYm/zRIHLHXfqhy1m?=
 =?us-ascii?Q?WA/W0tWb/LyS5xyrGWsiPr0XcP7gRYuaBZ+b5tT4Q/9vSEzpEIbshLiXAMBI?=
 =?us-ascii?Q?+Ha1ccr5jPPZTylby0JLcYb5FoiC4MBjQlNuxeDelTZf78mDNFjdJtVYlSdk?=
 =?us-ascii?Q?L49Q1D94+6+KdwB20zVbiQDzj67rSXBrfIRrWTcXp1YY3dBPRhT4UofHor9R?=
 =?us-ascii?Q?vVcvBMizNLvnrb6HL2pVk9499gBBgtuQaz36/wnX3tFDwb+emBJmLJgLlDCd?=
 =?us-ascii?Q?ta0XzNW2Ypks9hGwd3S7sVUA61dzVXM/X0Tob1MPInprkImInfZUORZWuNcR?=
 =?us-ascii?Q?MoWMQ7MpY+3QFX7C7MCD+HsGkEMhV/xF0EDgQhs1j5uS8RJeCjMKtPowzlMt?=
 =?us-ascii?Q?LgZIvtH0WsHHAyUBFaClD7VnkCM89mTGQdpbYSpx9ahu0DdfHYdgEJbHEbTb?=
 =?us-ascii?Q?9qMdtkZm+ZVrOpgkVZxlvcmsyy1EO0GOElxeZHrpZjxy0n4T9w1GsNw7IKwI?=
 =?us-ascii?Q?cQ=3D=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 1f9abcac-42a4-4bdc-46c6-08da795b0f9e
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2789.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Aug 2022 16:28:43.8612
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 9Vjoc1B9qzDRpMt60OBrUBZUEkieCJ80bb25a0VCvH8zX0vYpd49yjwe/LozFtr7W2xC43TkmVTh7F+KT7tHmE7RFlNh8YrDc4B24o3by1U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1620
X-Proofpoint-GUID: _EW0ah2VPfNdiPQjsM6ulkD0OJTb9iZF
X-Proofpoint-ORIG-GUID: _EW0ah2VPfNdiPQjsM6ulkD0OJTb9iZF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.883,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-08-08_10,2022-08-08_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1011
 bulkscore=0 phishscore=0 priorityscore=1501 mlxlogscore=739 spamscore=0
 impostorscore=0 lowpriorityscore=0 suspectscore=0 mlxscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2206140000
 definitions=main-2208080078
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 08 Aug 2022 16:28:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57803

The following commit has added on_delete=models.CASCADE to the ForeignKey:

===
commit 2d526f9b0d363f3e442abc97ef9bd9fab37ee5e4
Author: Amber Elliot <amber.n.elliot@intel.com>
Date:   Thu Jun 25 15:57:34 2020 -0700

    Updating models and imports for Django 2.2 upgrade.
===

The on_delete=models.CASCADE will remove the objects which references the
removing objects, so there will be errors when removing a LayerBranch
with admin permissions:

===
Cannot delete layer branch
Deleting the selected layer branch would result in deleting related objects, but your account doesn't have permission to delete the following types of objects:

Append
distro
===

This is because has_delete_permission() always return False, remove it to use
Django's implementation to fix the problem.

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 layerindex/admin.py | 17 -----------------
 1 file changed, 17 deletions(-)

diff --git a/layerindex/admin.py b/layerindex/admin.py
index 9ed6102..f8b2f6e 100644
--- a/layerindex/admin.py
+++ b/layerindex/admin.py
@@ -102,8 +102,6 @@ class RecipeAdmin(admin.ModelAdmin):
         return rofields
     def has_add_permission(self, request, obj=None):
         return False
-    def has_delete_permission(self, request, obj=None):
-        return False
 
 class PackageConfigAdmin(admin.ModelAdmin):
     search_fields = ['feature', 'recipe__pn']
@@ -132,8 +130,6 @@ class ClassicRecipeAdmin(admin.ModelAdmin):
         return rofields
     def has_add_permission(self, request, obj=None):
         return False
-    def has_delete_permission(self, request, obj=None):
-        return False
 
 class MachineAdmin(admin.ModelAdmin):
     search_fields = ['name']
@@ -141,8 +137,6 @@ class MachineAdmin(admin.ModelAdmin):
     readonly_fields = [f.name for f in Machine._meta.get_fields()]
     def has_add_permission(self, request, obj=None):
         return False
-    def has_delete_permission(self, request, obj=None):
-        return False
 
 class DistroAdmin(admin.ModelAdmin):
     search_fields = ['name']
@@ -150,9 +144,6 @@ class DistroAdmin(admin.ModelAdmin):
     readonly_fields = [f.name for f in Distro._meta.get_fields()]
     def has_add_permission(self, request, obj=None):
         return False
-    def has_delete_permission(self, request, obj=None):
-        return False
-
 
 class BBAppendAdmin(admin.ModelAdmin):
     search_fields = ['filename']
@@ -160,8 +151,6 @@ class BBAppendAdmin(admin.ModelAdmin):
     readonly_fields = [f.name for f in BBAppend._meta.get_fields()]
     def has_add_permission(self, request, obj=None):
         return False
-    def has_delete_permission(self, request, obj=None):
-        return False
 
 class BBClassAdmin(admin.ModelAdmin):
     search_fields = ['name']
@@ -169,8 +158,6 @@ class BBClassAdmin(admin.ModelAdmin):
     readonly_fields = [f.name for f in BBClass._meta.get_fields()]
     def has_add_permission(self, request, obj=None):
         return False
-    def has_delete_permission(self, request, obj=None):
-        return False
 
 class PatchAdmin(admin.ModelAdmin):
     search_fields = ['path']
@@ -178,8 +165,6 @@ class PatchAdmin(admin.ModelAdmin):
     readonly_fields = [f.name for f in Patch._meta.get_fields()]
     def has_add_permission(self, request, obj=None):
         return False
-    def has_delete_permission(self, request, obj=None):
-        return False
 
 class PatchDispositionAdmin(admin.ModelAdmin):
     fields = ['patch', 'user', 'disposition', 'comment']
@@ -199,8 +184,6 @@ class IncFileAdmin(admin.ModelAdmin):
     readonly_fields = [f.name for f in IncFile._meta.get_fields()]
     def has_add_permission(self, request, obj=None):
         return False
-    def has_delete_permission(self, request, obj=None):
-        return False
 
 class RecipeChangeInline(admin.StackedInline):
     model = RecipeChange
-- 
2.37.1


