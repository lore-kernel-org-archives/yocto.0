Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.5905.1628149186855032745
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Aug 2021 00:39:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=Zbe5aPSn;
 spf=permerror, err=parse error for token &{10 18 testsso.windriver.com}: permanent DNS error (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=38513e44b3=yi.zhao@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 1757ZXKE029366;
	Thu, 5 Aug 2021 00:39:46 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=Cepe99zmLQbppKg/2IrVcQOeO9ZgChixGSBbTjBSkII=;
 b=Zbe5aPSnouSec8aQUhLKG4xZXzwXavnexYMsyDcsqpNEHsyAVu4pbBSlguJPyazlN1tS
 7y6d70NWFouELVZiGFHaRQUErPaeCfxm1FGfsfvhgj9tns5EZyRru8ZpNqqqf8fyURv8
 Lr2JD56sQZj7ISr8Vq6MQQcawHxUxuFxFzL+dcykzfvLA1XcJl7hZ7UjSkbvmmoq82Me
 M2UxTUzmZf833t2yH2M7O4XpwyJFCSS1tNQWqAuceenwQ8YkCFx6bY2iIqVo+ixUhPmR
 e8PAdQIFuDsY9saKhuNX5voDVD+wc84fqPUzPd2NaTe0zwDDvrAbMJ+BidroHJYsYjNH 6g== 
Received: from nam11-bn8-obe.outbound.protection.outlook.com (mail-bn8nam11lp2170.outbound.protection.outlook.com [104.47.58.170])
	by mx0a-0064b401.pphosted.com with ESMTP id 3a800vrcwr-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 05 Aug 2021 00:39:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n+uLB2BZ4CjDmsX1Nvdg17gzpY7LOC7TxWWMAQW+vOF2ybENiTP+5mhKJEJBDLNkFFRW4CYyst3lhEnNQlCirHYE4Qo+FPtUuBVdFJCCPnEw0fsxeYV+SHv4vGTMcrJyXU7FZNVc59jF5r2dK5M14eH034TjeqwYuQI1wn1t+NTpGD57xhJ4bMTsG8t4IvwtAELOsglygoOcto+WT5KLpmFMmp/UZRvIPWXrnirDUT1PLzdl4czO49S0RKv6tN2Ra4fzkDQEqi6sWSVJhzNRHmTo0MSJEntPK/7VghmMWi4ziQD/Pobdy6bmKrgUZ6xlvWr6hRZg8YxNPHO0DC26yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Cepe99zmLQbppKg/2IrVcQOeO9ZgChixGSBbTjBSkII=;
 b=ah7PRqyRhDC+wzJZLzLecgE8ufxMDuidQhaITH9qnuXNnIP/ALHqoBVAtAJ0+ZfkvNkPgTe1C+bLIs+MWw7w4jNbpi0tafoFxbgatC4BWHV6kKbFyq2HWWgiBwOgYlU09jG/buOiYpn7ZrIgtGqfdQRIlIiwy52wLDYAJZ5AIdfO6uT4XeeINxyn1qigGTnqDT82vkZeHpY8sVY3E8dlutgec+Pgxkkkbi23bj4pBd6Vg9/DOdFf7cLBRTIgEPIoiPuXU6ueVaTcDn7i0pgGTW871QH3SSPPMKXFYs7zNoboO8B4bx11ChX74/ODxJcabjDO6Ru1kh/NOQCMNFmFRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR11MB1264.namprd11.prod.outlook.com (2603:10b6:300:27::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.16; Thu, 5 Aug
 2021 07:39:44 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::fdca:2b03:6e20:2d99]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::fdca:2b03:6e20:2d99%2]) with mapi id 15.20.4394.017; Thu, 5 Aug 2021
 07:39:44 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, jpuhlman@mvista.com
Subject: [meta-cgl][PATCH 3/6] packagegroup-cgl-middleware: replace dhcp-client/dhcp-server with dhcpcd/kea
Date: Thu,  5 Aug 2021 15:39:27 +0800
Message-Id: <20210805073930.382397-3-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210805073930.382397-1-yi.zhao@windriver.com>
References: <20210805073930.382397-1-yi.zhao@windriver.com>
X-ClientProxiedBy: HK2PR06CA0016.apcprd06.prod.outlook.com
 (2603:1096:202:2e::28) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by HK2PR06CA0016.apcprd06.prod.outlook.com (2603:1096:202:2e::28) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.15 via Frontend Transport; Thu, 5 Aug 2021 07:39:43 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e9a4d7c3-9832-42ed-ca6f-08d957e43167
X-MS-TrafficTypeDiagnostic: MWHPR11MB1264:
X-Microsoft-Antispam-PRVS: 
	<MWHPR11MB12649620856425AB769FF339F9F29@MWHPR11MB1264.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3276;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	M20Qiaar+znOM+7tjs8ZfjbFnSgb3vmPXkpUeXEMRHWZ93Cr0X5SqvmJB3wnRZU7qVMPgOwfpWVEVm/LFc4Ugey5PXLpsOUjZ89AW1irRpNcTlz9/7+RE4hQpfixtht0nCj947YkxM7FKQANT6jSU0m1qBVLIAaLj6ibgp25yAbJKJwpo/3+4dD3/3dHDOZdCjpiRBWQFP93Y2+Lq2ER4woTlMD1ut3GnSnLwU6iHR21ykOSIn6r2KIMnbfndsMHcFnVMUWQ/8Ebjya2PrDaUiOYR0UsHZxOAjYwfRWmStyHr0v9qPF+4U4SgTze8IH6ILfH44n58e2tcm3gsSNZRCSRxmsUKJdiRmlLTNLfPgbswFA5gWJMJ+h9G4ejogINrVr35c1Z+gHj1ClN22BBrjKGOQzALjx+h4hX1pcJ9Vhjf8yBm/C/t4piESZK/SflQHXKryBkdKkESoyZ1KCgWWZ/RxhfRQ2N0h0MVzL5UzkRMN2VroKptrYivxV2UpKEjww0Oe4Cqugig93LUNG/YZAptbdpcQh3/Fi9+0fHlMzy7S/FXDcujwCjr6HU0+weoXyyxpWW2gOxjSlkLQpSYMnEfSFeJ+di/nHALsat4uVqfgtImRvkh4jnyYgOB/+oUj505Dc1iIrPHdQqLW54wArYTExVMyWpasUTVct8vNi/yGdwJPJrXfs1jJ0yoZIzZCgjH8EUQZ5VRHg6akZ5bg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(39850400004)(366004)(396003)(376002)(346002)(8676002)(1076003)(38100700002)(38350700002)(66946007)(44832011)(83380400001)(6486002)(66476007)(5660300002)(478600001)(6512007)(6506007)(316002)(66556008)(26005)(8936002)(36756003)(86362001)(2616005)(52116002)(6666004)(186003)(956004)(2906002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?ecplZArSoKOFNy2SEcm2H7fhV86VPx25p8HxrreVXZ/66cjaP6Tt8H1svbut?=
 =?us-ascii?Q?6B/dsGRivKqD72dnDpKJUMT4FLw/uNHez3CqbGdZ8ll65hRKYhNs6cJB+AqZ?=
 =?us-ascii?Q?usNljzvbDYeEvDy7/QBOccniOeuhCe40OEE45CHNz5sPK+AZzjE8SXpkALLv?=
 =?us-ascii?Q?+KVXf1MNkkoFQf4oOFsCg6Op7JllrCc2pX7aQWPJNMS8CSjG7MV8KKw+aSq/?=
 =?us-ascii?Q?maOXN5OJrYQJrxQ2q64NHMJel5XXdWrDqVJf52Mepube0a6kvqJYdFN8Y2vq?=
 =?us-ascii?Q?UOBaVueurZ9rJoACLhicj17sScQqG2uTHzFY9xLrmsrS91Pn8aCmAPhFeuMM?=
 =?us-ascii?Q?XdTSTCyPmaazkdGCMLAhFfqbdiAGVJsiijqfa44JlOBBefQ4sljycMHcH+dZ?=
 =?us-ascii?Q?zkDKdk5HaAP6YUqd4aD7EsffCOK6t33zN1C2iL1u4KpOEDrmmbeNazh0B341?=
 =?us-ascii?Q?56SQKKgh2+HSWG3dam/CNbXtzkOisbmQf7/aD7QHdJhU/8wmAuEc7hOtjgW0?=
 =?us-ascii?Q?tT3aF6FbKOmy8iLoFT13MH1xWL1ZJ0xQ7pCAnXGOQQmIorRt6uRNGDFnvkfi?=
 =?us-ascii?Q?DNt6jsbovF+uk8XzGSS9ccNbEq3TTKcZwNumCHGHse7fy7iDBOIFNKQuhyqs?=
 =?us-ascii?Q?fTGxETBEphOHHvI74PSGSagAc23ir8uVPDWWUmoNftkDkHOwqZ7R2sDuaaH/?=
 =?us-ascii?Q?yAnYhPLYrI66F3yKdiJDU7ZkJTr0WoabXOyeH5IfCIOvTn/jgd8sRB/i7UtV?=
 =?us-ascii?Q?vREiVMefabG/AY4B+bPujiz7RE7+ovpXJaXHBzFaLsoXkTdKj660mGxDpTGy?=
 =?us-ascii?Q?R3Bsda7fsDsiZtQZc16aWXpjHFQv9Lv+r7f1bHErwBVhJ+GCgyin8NQttgqz?=
 =?us-ascii?Q?pMb7/1QwYZMnMQXmYvBVU5PQIeVLbq6KoK1zDzutEmSjtEQ3Kf446W35tJ/E?=
 =?us-ascii?Q?96cjjH681bOyCZ4NNclOOcLV+kd1f52cXfkD4bEl9VldFSqFVBcfezLgDVHx?=
 =?us-ascii?Q?no+T2u4yHrVN5ibkTzwXl9lTXcLaPDpGxnK59weF02BhH8PXHBF15fIfWy6T?=
 =?us-ascii?Q?To1dlTadmF9rWfF6nlXh3L84LSo0SWpB+LywnCtYahLyL9ziRBlTh77IsC09?=
 =?us-ascii?Q?HcRkx3oezLUiOYnc0RZocK2ES67wY9May1O18709diJR3gWgdbH0OI/m6mga?=
 =?us-ascii?Q?jYcTQQi+Atfwt6B1DVnJgGvI2F9EY0M693bfcL/RFmuJtKNDR6Wlcc86myEK?=
 =?us-ascii?Q?fpuGyE7GQZQlxSreqTl62WyyADydV0hTDyExn0d2VkHCamV+XoY4xqBzWbYk?=
 =?us-ascii?Q?3NEeto54jR/0SOnEffu3npvH?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e9a4d7c3-9832-42ed-ca6f-08d957e43167
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2021 07:39:44.5250
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DoudUpQAp8pgnSEgP5DtErv4JapjJcaG4/LfM0mZ6mptusXI8RK/uLsE4Jmgj1exuuk50zpRmZVAuI01xVjLUQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1264
X-Proofpoint-ORIG-GUID: HwryCFdik3d_PF4uZw_FfugS7n2MyAan
X-Proofpoint-GUID: HwryCFdik3d_PF4uZw_FfugS7n2MyAan
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-08-05_02,2021-08-04_03,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 mlxlogscore=973
 spamscore=0 mlxscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0
 adultscore=0 suspectscore=0 priorityscore=1501 malwarescore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2107140000 definitions=main-2108050044
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

The dhcp had been removed for oe-core. Replace it with dhcpcd/kea.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../packagegroups/packagegroup-cgl-middleware.bb         | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/meta-cgl-common/recipes-core/packagegroups/packagegroup-cgl-middleware.bb b/meta-cgl-common/recipes-core/packagegroups/packagegroup-cgl-middleware.bb
index 4c70a84..8a9cfc0 100644
--- a/meta-cgl-common/recipes-core/packagegroups/packagegroup-cgl-middleware.bb
+++ b/meta-cgl-common/recipes-core/packagegroups/packagegroup-cgl-middleware.bb
@@ -10,11 +10,8 @@ inherit packagegroup
 PACKAGES = "packagegroup-cgl-middleware"
 
 DHCP = " \
-    dhcp-server \
-    dhcp-server-config \
-    dhcp-client \
-    dhcp-relay \
-    dhcp-omshell \
+    dhcpcd \
+    kea \
     "
 
 MULTIPATH_TOOLS = " \
@@ -41,7 +38,7 @@ RDEPENDS:packagegroup-cgl-middleware = "\
     strongswan \
     vlan \
     corosync \
- ${@bb.utils.contains("DISTRO_FEATURES", "systemd", "iscsi-initiator-utils", "",d)} \
+    ${@bb.utils.contains("DISTRO_FEATURES", "systemd", "iscsi-initiator-utils", "", d)} \
     openipmi \
     openhpi \
     pacemaker \
-- 
2.25.1

