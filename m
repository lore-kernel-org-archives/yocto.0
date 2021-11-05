Return-Path: <yi.zhao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A25FAC433F5
	for <webhook@archiver.kernel.org>; Fri,  5 Nov 2021 06:11:59 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web09.1886.1636092718938004218
 for <yocto@lists.yoctoproject.org>;
 Thu, 04 Nov 2021 23:11:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=XE1fkkMW;
 spf=pass (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=69438ba20e=yi.zhao@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 1A567Ls7023066;
	Fri, 5 Nov 2021 06:11:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=PPS06212021;
 bh=2JDe2TEZFJ2n/GZ+7dNX+q/LRHKu8SrCfm92qUilcLA=;
 b=XE1fkkMWWIveUJFhFemjZFzFiv80c/+jH+gXmSGvY9Pv4O01yIqbxqUAnm/UHTbZsRWN
 A6QU4ij9BlC+AwjgVGFaKmBbivQYLMG5aBiHzGf8lqgQg9LSyOzcATBQeozVAhbNTOzh
 ZdPK8f5ojtkVSDdjTxHe8wjMg9u1wqEl4N5JncO8GzjSPG6sQ2RaAZuMFAdzlxMKE6me
 FoODXefsCbbyFctGpxedcLAcVxRr7ecEPX5fsQletbFGm7oXQ7IQxN1QRCV466mTi/wt
 H5r0OLJUcfcwLiX0W7ywjw6uVPyUjMIjFL8G1z78UpZb+jAWsgxqYURlL0cSyaIuXL36 kQ==
Received: from nam10-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam10lp2103.outbound.protection.outlook.com [104.47.55.103])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3c4t3s0621-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 05 Nov 2021 06:11:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ETultWGdyPwvWjL0Xk0DYbbYG0BCAc666dSPZyFT1dR6iOQQ2I73bOrVo1g41izLJyz4Xg18vfKEZSNXhjSuN8JJ9/42X43umsz7OcOti8GYU5obpe5+QASjLV79iH7XvhW0/axPaNTVFJbWfR7qD90GqMtL3Y4jCd2ZxNBEUHy3ClNgO68dZjTVFbTXGgqruc0qOY5J6HC6VVbMxbUdvm1BGywnViGfl03UIOzW+QJHiCvk9rwAl/0Opb+Xfxljls3VK6xhz6RSMWdHn8+mc+o1U3F9Dd8/S947CeVRaPI9EVBrOvenmgAv6wAJhUE4j2+3K5dTBNNvZTbqKJfw9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2JDe2TEZFJ2n/GZ+7dNX+q/LRHKu8SrCfm92qUilcLA=;
 b=T6CBZl2SXdwyV2kHr1ylxW6SRAEu35HOY0giGPxrGUc98UQi1c3fYF+isZLApTU5wwP2p01Tfkh9dp/MY2rnodU4KlRqtMQCr0+SdXJ/2QAJbuSKi4GIWfXa0Hbxx/3kudSX9wU0aaRwmsZ2OuzOwW/fiPyIVVZbptJ1/9soc01zE/xVVvpV+SkRcgL/TCIslnNZg+ysp0WbtSKo5zAMlMlTKErLObSvzXOn/PocuchxXy0ygVtjZ+rSmJIYkK2x9BbauaKufqBxFLSweizS8noNd05MU5UDBqNnWf1h6n3dTuMaUDU7e1B4sZp2++pGGRMCbWTa1TuJUt0GsHDfqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by CO1PR11MB4947.namprd11.prod.outlook.com (2603:10b6:303:99::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4669.11; Fri, 5 Nov
 2021 06:11:55 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::455e:9cfb:d106:4480]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::455e:9cfb:d106:4480%9]) with mapi id 15.20.4669.013; Fri, 5 Nov 2021
 06:11:55 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe_macdonald@mentor.com, joe@deserted.net
Subject: [meta-selinux][PATCH 1/2] recipes: update SRC_URI branch and
 protocols
Date: Fri,  5 Nov 2021 14:11:43 +0800
Message-Id: <20211105061144.562179-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: HK2PR0401CA0010.apcprd04.prod.outlook.com
 (2603:1096:202:2::20) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by
 HK2PR0401CA0010.apcprd04.prod.outlook.com (2603:1096:202:2::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4669.11 via Frontend
 Transport; Fri, 5 Nov 2021 06:11:54 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: feba7a1b-5113-4363-c6fc-08d9a0232aa7
X-MS-TrafficTypeDiagnostic: CO1PR11MB4947:
X-Microsoft-Antispam-PRVS: 
	<CO1PR11MB4947FA202A2ED6997BA95182F98E9@CO1PR11MB4947.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2331;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	m9ph1gt9pcCj+bLKlPIziZjCxu/m4xYtn1E8YEDYPdrgROcJ3Bc1g3jRLz7nrBYe5tsEgVGtbcVJSctSXDrGyp4/BG5cEE62HNJe2D0TG/KcTloZRnCW4eZ+bUfPZpgNT7bvJtFgq6zM7Nmj0LDCP6VRWY7yXenCmndeciLeXtdKHyasZmcWCbo/jKEeZdnJ1VMWgQWDtLJ6YUnRuQpioltNf9psFZt57oCiwHw4D8BC++aE6Wtjqy0YCo0CZlppbC6tAIufCIYY2hw3biZ50avpifMv27TYytUD7ftuAZVgIm401XM0mc9BwE2UJDbIJNRK5CTXs2S/uE87Ul1WvG+TfcN3VfU7JrnwVW3vxvv4zUcoyu0NoO1BAtGRzp0OSRKIXrJAFyE86InobvAOoQABVQ4+IJ6dbETi6JTCNCt9crxFD8Cq3QnqEzBDaaMSzFJ622846Hys1MTO2rSyJgfvVtLeRnq2RozEwYVTHqBVdRWzaouuI3Oukct4/wgR8UIcVJI66asuadH84CzE+xlbRmV31gR7XyOx8Vc27j5Ri3jyxBzDquuhOXM2SNs1TGDlrn0Z/7ZntwY0wAqb9EpMgoZT/6xOqcsYJ0AoOR6TQrN0ZE3IS/604gLJjoQJqw5i0/Mb+t2c55gKYt+T4RGmiDnNhetI32cNXgJl2rw+IyWoQkhYtPzJuMQ7eQHUDuesRQ/nEePgU/p/9ZJfK4Xmtsu7wnrPSLk//8iby0SzadOwzuiWFbLG5vpa6P11eyEFcZaKJC07/SJIAt+g/NExGfN5mRmlCXUN3PI/ZSo=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(956004)(44832011)(66556008)(86362001)(66476007)(26005)(186003)(8936002)(316002)(8676002)(2616005)(1076003)(83380400001)(36756003)(38100700002)(38350700002)(508600001)(15650500001)(2906002)(6666004)(66946007)(52116002)(6512007)(6506007)(5660300002)(6486002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?1yPD9ttLiXXqtdMqaVDu9ZgAAhHv7H/ZNSRdsm/IJS4qwvasHQuflJ4wTcFz?=
 =?us-ascii?Q?2jDoJ9FyuiHcRYlfqsP+1FKMMHHPfkdWxZlZdraoAXuQa5vxqhkaxQIsjeLu?=
 =?us-ascii?Q?Yj6aF6PETsUT3hkCzX9FmvJJAwtIafM9j17SNm6iaqSdthM+QQN4WQREFh/V?=
 =?us-ascii?Q?yYFV8KJPbqpWnD0H59WqMBq0lme9r5e62hkHczBPkVwo061tapuLeQtvdH9I?=
 =?us-ascii?Q?azgc+CVsg8/Lpi8Hp877jo9IAKhp1GkvWaZRx4YHlaRUiNheetrmrKPncKqC?=
 =?us-ascii?Q?YDvQPb020UgJJoWdraS1mOqps0hebsMDPqvB5cIS0Y77XNVl7/V1QeST5FBi?=
 =?us-ascii?Q?2V49UgXkG3mmhuWIPAXMr8xPis+8uZoMbCuoe82iI1s82tIr8MCGwuzrjSlM?=
 =?us-ascii?Q?uJFw24ERxqOktmqPplnPhSiUE7rU/mwS/2+Xj+xn1kzy5/hHP3bxwKfqO78g?=
 =?us-ascii?Q?1ZD96sdeV2rNXbjKIVozs9aowBqzVS0bqisPJLG0dIiQmAhnpFRSOMCp2te4?=
 =?us-ascii?Q?2goB1Hexuwl2b8CmIWORyxdvQ5r/fpCfI4NQcg/fCjbP02HfeaMaVMCQQZI/?=
 =?us-ascii?Q?3kqY9hnsP18cAAsB/F3Z35mSVdhRoQubyJtH5/kFEzvgAE1tOPYOAF33h9dA?=
 =?us-ascii?Q?NzdeegQO9ruAVCqQUW1RZMge3Wh5raZXxAauT2Xyc1+sP8UTYv2Q46n4QF3o?=
 =?us-ascii?Q?k4iCRLk/BarFks1Vp8m95M6LjmrA0tsgrDv/jiGxs2vJ7QRREtfyg2jSc5IK?=
 =?us-ascii?Q?O0Y0zxTnSaM4E8EDdkr8iVCezQD/RERI+Tuz4EhYxPW8ldi13rIJYRUOjGLn?=
 =?us-ascii?Q?iCeUMtWL5e6p0xQU5XCWnq6K+NSHcYRNnh57ZNxTsjHtx2kFGDrfxt7YSZS9?=
 =?us-ascii?Q?Rye5lSp9GyOk4Eh5fEfAjea4040uZXSV5VGCU9tKD3DInpW5Mp6bHXRgRwvw?=
 =?us-ascii?Q?qU4TYw1Fqd/YOQ+vylH0W9DwmRPyMrwHdhi9bqdc+e/e/nM9kdzaJYb2iZmy?=
 =?us-ascii?Q?M5DLGhbt3adxpyqLqUdutC4pzrRr1Tu15NVsz2eLDesQZp5pF6yN2OZQgA52?=
 =?us-ascii?Q?6YLvNnUK/NlSGzwASIHJQCPWvTYfDen/PRde8N+iCtvmqZpUAG6723KbZjcL?=
 =?us-ascii?Q?mGvKEntCA3UO4grIKWUFDDVCZBeke8Tgx99W52N5P0zct75NkMHybBlWXv3X?=
 =?us-ascii?Q?CTGjYv9AM0X6vHuvJ2hSU/LGBQ4NLlH7vVZnungAdpKxiw7HrJWJfM0svwp0?=
 =?us-ascii?Q?AoTS337xuZz/M4hyhiZIYMfASPfMBi5skPEyKsvBnR9GahI8fM6RVBFQHGUv?=
 =?us-ascii?Q?15Do4eXkykd4OXsu4FcybmRiip1dq9ovDa9CtNrEW1O6Kj6/PMECX5Ph6rmp?=
 =?us-ascii?Q?Yj32sOzJxQOid2Q2XT37bLANC+JDKuGIBFKZxWx4iFKsWz+GjmbVClSaEeAI?=
 =?us-ascii?Q?Ribn6F0Fgiq22w8s/IQ5gMJ/tvhDPS308pRqF30vXNAmXfTeodJa01xVez9V?=
 =?us-ascii?Q?FevwODcO3/zaRiqGkWBtcE4FF4XVQ+01+iZSDuO66wPodg9Oa71t5/Su6U3B?=
 =?us-ascii?Q?DAKG7Yj4OWdnQhlZEydW24UPMSViSiC6aVf7BXd209PHmGpWYAeddk2XrvVa?=
 =?us-ascii?Q?wimLSQHkiD11QzyOFpdzHmI=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 feba7a1b-5113-4363-c6fc-08d9a0232aa7
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2021 06:11:55.1206
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 nlNPcrk7nTKtzq/rkkwE7rKXR3Q6SD6z4ZRKs3svSjWDyfqGnty3I21zxMbnQIQ1ed6AU9iVHq7R3LGxEB558g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4947
X-Proofpoint-ORIG-GUID: 3CoBg9rnZIzLsplXVM0c-BD9E3V9Iwmg
X-Proofpoint-GUID: 3CoBg9rnZIzLsplXVM0c-BD9E3V9Iwmg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.0.607.475
 definitions=2021-11-05_01,2021-11-03_01,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 suspectscore=0
 clxscore=1015 adultscore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 mlxlogscore=935 malwarescore=0 spamscore=0 bulkscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2110150000 definitions=main-2111050033
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 05 Nov 2021 06:11:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55243

Update SRC_URIs using git to include branch=master if no branch is set
and also to use protocol=https for github urls.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/refpolicy/refpolicy_git.inc | 2 +-
 recipes-security/selinux/selinux_common.inc  | 2 +-
 recipes-security/setools/setools_4.4.0.bb    | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/recipes-security/refpolicy/refpolicy_git.inc b/recipes-security/refpolicy/refpolicy_git.inc
index ccf1bde..1d56403 100644
--- a/recipes-security/refpolicy/refpolicy_git.inc
+++ b/recipes-security/refpolicy/refpolicy_git.inc
@@ -1,6 +1,6 @@
 PV = "2.20210203+git${SRCPV}"
 
-SRC_URI = "git://github.com/SELinuxProject/refpolicy.git;protocol=git;branch=master;name=refpolicy;destsuffix=refpolicy"
+SRC_URI = "git://github.com/SELinuxProject/refpolicy.git;protocol=https;branch=master;name=refpolicy;destsuffix=refpolicy"
 
 SRCREV_refpolicy ?= "1167739da1882f9c89281095d2595da5ea2d9d6b"
 
diff --git a/recipes-security/selinux/selinux_common.inc b/recipes-security/selinux/selinux_common.inc
index f2e180f..dc4ccd5 100644
--- a/recipes-security/selinux/selinux_common.inc
+++ b/recipes-security/selinux/selinux_common.inc
@@ -1,6 +1,6 @@
 HOMEPAGE = "https://github.com/SELinuxProject"
 
-SRC_URI = "git://github.com/SELinuxProject/selinux.git"
+SRC_URI = "git://github.com/SELinuxProject/selinux.git;branch=master;protocol=https"
 SRCREV = "cf853c1a0c2328ad6c62fb2b2cc55d4926301d6b"
 
 UPSTREAM_CHECK_GITTAGREGEX = "(?P<pver>\d+(\.\d+)+)"
diff --git a/recipes-security/setools/setools_4.4.0.bb b/recipes-security/setools/setools_4.4.0.bb
index 2b10993..b78af36 100644
--- a/recipes-security/setools/setools_4.4.0.bb
+++ b/recipes-security/setools/setools_4.4.0.bb
@@ -9,7 +9,7 @@ SECTION = "base"
 LICENSE = "GPLv2 & LGPLv2.1"
 
 S = "${WORKDIR}/git"
-SRC_URI = "git://github.com/SELinuxProject/${BPN}.git;branch=4.4 \
+SRC_URI = "git://github.com/SELinuxProject/${BPN}.git;branch=4.4;protocol=https \
            file://setools4-fixes-for-cross-compiling.patch \
 "
 
-- 
2.25.1


