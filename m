Return-Path: <liezhi.yang@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3636AC433F5
	for <webhook@archiver.kernel.org>; Sun,  9 Oct 2022 09:38:53 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web09.994.1665308330013018457
 for <yocto@lists.yoctoproject.org>;
 Sun, 09 Oct 2022 02:38:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=VuHSfeZV;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=728112dbd4=liezhi.yang@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.5) with ESMTP id
 2999cF09008466
	for <yocto@lists.yoctoproject.org>; Sun, 9 Oct 2022 02:38:49 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=VG1yQkxnoSl91gkn1+ng81RxHnQGBNRZpzrc11tbyj4=;
 b=VuHSfeZVLHvnfzfjU5OxCK2WgS030DwPI165sJhe21hq4wisv2+fywwxcSegn/Jq3M/c
 +TQMMFo1It4403EIVePgLkCzfE6ufLA8d+HuDlDeXihwVZJULlTEUzKdTKj/4K/FBkuy
 Y2RuXkyWCWAH9Jv5h/GF1/cttt6CymhdI/d7ZuLW+Tl/FoP7PNfWLjS0DBohuq3bHdMe
 D/IGxxLn/FLQHUNfpP8YBihfDSVb4OqnYR4uKevanvkphYE5KHne1ldF6PD/c5ENE7fC
 gSbmUkQseGlfjFvC4Rvh7BDuG3q2qI8yLKEsaVuNFu6fxc5Nite17X9RbwrogYQM32Uq Fg==
Received: from nam11-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam11lp2173.outbound.protection.outlook.com [104.47.57.173])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3k38qj8heq-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Sun, 09 Oct 2022 02:38:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q0dHxCysLSdBnZX2JRzLtp3kDAse4QPYE/Zq9+UZeKFk2NluGIrGEvYuZwxuu5ImF/4Mg9XX9MfzGwqVH6PfXwjd2FFVVktZLXzX4ZOdL+qVwgG4zaVJPJFA1AiZ9LQlm5l7glGxp5KiJcH0tqjW1Bj6jLroOiX0BozwktXAOMlN+VQrMaPBl03xMuBIEmpFMCSNHFv8HVf/2Qk+IeUfzdiqDAf2si9LWYM4w0Tz8kaZ3iwIMbw+opxNQyA4evf9wLY+qqwIuSejR4K3wMr+p6vX6Lisu/l8aNUF/gdgPx0C//aD8hZ4vAAuFdc3nGhgD3gfhea9oK1pHizQ+XQvGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VG1yQkxnoSl91gkn1+ng81RxHnQGBNRZpzrc11tbyj4=;
 b=A2w6tuB51yIFf+o3i8trekE6lTbTboXFW4jpYfB4Uw2sadC0cnSSE12AVmanVbzoF6PR/II4atLVuXXXsftsw5uS6RQOQffV76uRM8TJi7OvLbNgnGXGdp9u4u95vSxxv4RO9h8L90S5gW6+VCT+6ggMygPWKkMfBq5Sxu8JYiH5OSjqyqkY7qFYBKOBHJ1F/JmKIea+CS60lVbQgwgwMQsWLTVmd+y11gdhsduqyf3YRJOEqiFKBsdifOBlYjRjZYAnmi/6Ojp0gQWvuQtksaUFyYnOqz15wGrlY+5Yqw6cSmmjVNcnw3waZPEE3CH7zVhRkOVUSStlmdnA0fn8cg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from BYAPR11MB2789.namprd11.prod.outlook.com (2603:10b6:a02:cc::11)
 by MW4PR11MB6740.namprd11.prod.outlook.com (2603:10b6:303:209::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5709.15; Sun, 9 Oct
 2022 09:38:47 +0000
Received: from BYAPR11MB2789.namprd11.prod.outlook.com
 ([fe80::4018:c3c5:27bd:7ed2]) by BYAPR11MB2789.namprd11.prod.outlook.com
 ([fe80::4018:c3c5:27bd:7ed2%3]) with mapi id 15.20.5676.038; Sun, 9 Oct 2022
 09:38:47 +0000
From: Robert Yang <liezhi.yang@windriver.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex-web][PATCH 2/2] layerindex/admin.py: Remove
 has_delete_permission to allow deletion
Date: Sun,  9 Oct 2022 02:38:36 -0700
Message-Id: <20221009093836.90911-2-liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20221009093836.90911-1-liezhi.yang@windriver.com>
References: <20221009093836.90911-1-liezhi.yang@windriver.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BY5PR04CA0009.namprd04.prod.outlook.com
 (2603:10b6:a03:1d0::19) To BYAPR11MB2789.namprd11.prod.outlook.com
 (2603:10b6:a02:cc::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2789:EE_|MW4PR11MB6740:EE_
X-MS-Office365-Filtering-Correlation-Id: 5bdaa76b-0125-40d7-d8f3-08daa9da1095
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	jJxYDSabk9Y4hN7euRoWMJBRWsGgpg8f23r9RKis2tLZfVcGU11OmKLsIvkIHffGiUqswGfTU05q6Lvolmm/fYtUrn+ucoNDi5rwaTCK3gY32j3/buAcGShoXX49ZoPf9wzw21BeOYMiHLH+z567HY4gvMmQoHKR06cSwWdHMjywxsdGldo+kNWuQVAowu9qGIYhtgr8RfjExmOlSBs7Y9HOThnlsIEaRq2uUsGlsll8wlMHqv9WW5aYvjq3JR5KAKwiqIQ5RWDXkz2anT9TuKQih2SMjagqD2iihgZMnqPIg1jGmnBfTg7wX+HirmRoa2BD788Dq9Srg4OkJazYrFm9joVd9pN91oXAAE494th2qSsbivhckuXjW7aA7km05l0BB+9lt1t/V52sRmpCKENbwnoVgFGmcMInaJCtV1gAOp3Z9qehNfQ8V0dqhIKYUuM3rYezE3uygQ8vfo7tihzqN5uezKqYjqeH1xQdeL0Se0AAYKbCJbX5YlnA6eGiEVBjMcspnEjstQkbmOCxNB4P09BUlyIF2JtZ8UbSsWMoJG3Uccw8q8JWAkM75292jShGmqDuo5jLF+LFlN/wmy8fGUZmlv82QgP/cpoCtf6CcULjs4fui8QgxvI1NkwIeGPiYzXpplT7dlxHCtG2DNUbDk9RUvn8PaZ5nd/3JHOLpiy0Fm05AR2lBhLOLtcsh6rTZ9wmKrmtMPOr6CyoImHLX094gZKxo4c6pEEGSX2fJpXu52E3hrm1Ky5LmuZP0jipoDb+toREZrhZeenn0P8aSIOgiR2Z/SXwl+mL+L4=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB2789.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(39840400004)(366004)(396003)(346002)(136003)(376002)(451199015)(2906002)(41300700001)(66556008)(66476007)(8676002)(5660300002)(8936002)(86362001)(38100700002)(66946007)(38350700002)(6512007)(36756003)(26005)(6506007)(186003)(52116002)(1076003)(6486002)(966005)(6666004)(478600001)(6916009)(2616005)(316002)(83380400001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?zT+MFvTVO9lTyhKFtyiNKQqlJ66L42ePbu29fcTKyj4gUp2JJAtMGe1PU0Yl?=
 =?us-ascii?Q?23w5rjNAbbGGHQGk1LhVa5w9Od2wErNliWYMnplzayRW6KLOccFZ10WsGW5o?=
 =?us-ascii?Q?49RWF4O55SJEo3KnWzDN6rZD/y6+fm2bU+A9u/l+BqR5feaWAJQ6T0SiYLTa?=
 =?us-ascii?Q?wOvzEHLwz4LuvH+vQGOUkmzLFm39M2GA7nWls1M6zUGcSlcIqDnvx2YXYgB5?=
 =?us-ascii?Q?36rO7K5XXe6mICjseM7TkDZH/MyNamFhr4sYaTJifWAUzXyapoio5hbQuXRU?=
 =?us-ascii?Q?p8a/h7fbHHGtz4lT6zsRVQTv1MBlhaAQpnOi5fu8bb43UQtDEYyUTVukQCIo?=
 =?us-ascii?Q?nZvz+4deJQzjLPYY8rZ/1K7O/FhwF5YgSlF7bl++5g69C4bFoFHKPIIQelDF?=
 =?us-ascii?Q?t06WBEBI6Jn7w38bop7VcKXmg8RCTAk4V7nLOyaUQIVq7ldS67qaBESv/t0Z?=
 =?us-ascii?Q?mx3F2wfMz3iOTjTHZ2ppirrYRxbeM50nERc0Lp8EUDAZOJtkNe4RLFLjP9qz?=
 =?us-ascii?Q?9T4g3PqaYp8J5ptC/RSchYhxg7PQFXHwkDETkZeUWMbxJ/+2jvkPrSGRYeFf?=
 =?us-ascii?Q?No4SYzLpvoSWOsbzJEjAowNRKoBPiGzLKDkU0FfvLF4UQ16P3gE2ryjYPDSZ?=
 =?us-ascii?Q?bObw6DFEEjZ9fwaIrjDzCr1XJvgH+ZThN3lt3WAdVqR2sIjbUYRv6ATps+dN?=
 =?us-ascii?Q?J48ZXe6z7T4hJPdpY8KBz8hEpK66QRjLhYabUyuISVWE5yvK5qej/sT7CoJU?=
 =?us-ascii?Q?Nawwml89jrmy9HZH5xv4V1RAZpBXTBg9LfmNvfnBrgcM+Wj8ORClZUtES3Z/?=
 =?us-ascii?Q?Q16APkH3C2HnIU9Hbtp+WTPLI/r0MZdpgSws2qzyNXsmDQ1HsaNrtyuDYSuY?=
 =?us-ascii?Q?auKDD1maLtByppLJzsCkcFdCjwQa8MvSOBeQ7a3WPiwRC2ycqoLyMJmIGANL?=
 =?us-ascii?Q?IdMQaVuoqpcFHDEvo2GoWUWFMurX84QoqWJDNEsobrau1vN4ZjmnSLzpdMTM?=
 =?us-ascii?Q?jXeUEG5FayGeGVwVABZookzmSMgCJS+TwiIjVXi+8Dp9pEB7pI+ZIPpnigfp?=
 =?us-ascii?Q?xLHYn1ospsAcmRJbCQBbjHlwbpBBm2/rNb4T5ynPtJ+MVmKKy8gTlJqlPtvA?=
 =?us-ascii?Q?zzwzGl37egrz2oikHlpCDMinHFjXuQPfaFZkfO5hIhmA5xf2mtBOsUHTEUG3?=
 =?us-ascii?Q?hvALKOXvntnMMmSyoecn45ym940u09SL0XosH9xWhnJmN0vWXVrSFj+A1WJd?=
 =?us-ascii?Q?DDJyU5b5lJ0Aj3izbDNr8tG7OyLcNy+iWjsAxRtArMx0kstlJU3qOYNAclzg?=
 =?us-ascii?Q?clbQUIXgZDMSFD5g89R15Rn7hDoDw9FXUPH5EQBFJWHpxMJkhMFni1+6edGu?=
 =?us-ascii?Q?bs3cD1UibezwKz5Oc6FDx8M6qxtJLfYlHz2CW+i3uvduOVTO817WueLqGdT2?=
 =?us-ascii?Q?q9TZdLU9kBMKn4euyVDjU+KxM7IWoQx4uoNiLBWSgB5UybmtPr25v2n0y/YL?=
 =?us-ascii?Q?SlDkpNHBrhXnjxqsGXV894IxLfRqmeMKeSqVf5Y8mDkS6A7sUnFZf2reWBKK?=
 =?us-ascii?Q?L7jBGNSyqvr/82CpfdNJvmHauSmjSuEQjXhUFSirVjzelwDkBVAkgocZTMPt?=
 =?us-ascii?Q?qw=3D=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 5bdaa76b-0125-40d7-d8f3-08daa9da1095
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2789.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Oct 2022 09:38:47.4285
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 /GRveJiJ1INnMzHSoXZjLARpSDzcZH4Ti2aLGuu+7wd4WdDG6kjGdz8i3fVom57aqxjrqe270y0p1pXvsmK7OuHpUbZbnGzEYzdH/PbpazI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6740
X-Proofpoint-ORIG-GUID: Tgan2LeGo_zxOHpCIUBn4bu6A56YmCTt
X-Proofpoint-GUID: Tgan2LeGo_zxOHpCIUBn4bu6A56YmCTt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.528,FMLib:17.11.122.1
 definitions=2022-10-07_04,2022-10-07_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0
 malwarescore=0 spamscore=0 suspectscore=0 priorityscore=1501
 mlxlogscore=484 bulkscore=0 impostorscore=0 mlxscore=0 adultscore=0
 clxscore=1015 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2210090062
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 09 Oct 2022 09:38:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58298

The commit (2d526f9 Updating models and imports for Django 2.2 upgrade.)
has added on_delete=models.deletion.CASCADE on the ForeignKeys such as
Branch and LayerBranch, which blocks the deletion of Branch or LayerBranch, e.g.:

Deleting the branch 'foo' would result in deleting related objects, but your
account doesn't have permission to delete the following types of objects:

Append
patch
machine
recipe
inc file

Refer to:
https://docs.djangoproject.com/en/4.1/ref/models/fields/#django.db.models.ForeignKey.on_delete

The CASCADE means that it needs remove "Append", "patch" and other objects, but
has_delete_permission returns False blocks the deletion, so we need remove the
local has_delete_permission() to make Branch or LayerBranch can be deleted. The
django's default has_delete_permission() will be used after removal.

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


