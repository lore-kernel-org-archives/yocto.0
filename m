Return-Path: <yi.zhao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F3DD3C433F5
	for <webhook@archiver.kernel.org>; Tue, 26 Oct 2021 15:55:34 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web08.14285.1635263733461646054
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 Oct 2021 08:55:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=ZPIaHvXq;
 spf=pass (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=5933689bef=yi.zhao@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id
 19QBR2T4012768;
	Tue, 26 Oct 2021 15:55:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=PPS06212021;
 bh=AQ2vEwyki3Zlr1fwR/V5xUxzbTMcIxrAprG+JHX1gVo=;
 b=ZPIaHvXqhJ0iBksC0ZpdHsoGZvtf/T4KpzWztL2bgBQcfIPF/k4v1oo7lc70sPzTJeWh
 /CbOWmc7CxcojZt2r+8Xh17QWdCq8UDsmIyG7B/YHOylxHq5kjJ01lfkFaixuvWyIQ2r
 hZQ5AgnFkV+fzcD2/M5dmcX36A5PQhQe9rCAZdwLusNuaWMDDE5hXu6cE6/EFxNczrFW
 ry4U4N0ayA3Tabs9NtMT7w0nmzttwDgv2pQbdMVYTTZ7KZkxO4WYYjNfYv6vw3xXWQJc
 iyee91Oz0DFNR1nDuGmw1E8f5N376SpeTPKI2R85dlKtMrpDIGRjBp0cjxXTAJkMvXbl og==
Received: from nam12-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam12lp2047.outbound.protection.outlook.com [104.47.66.47])
	by mx0a-0064b401.pphosted.com with ESMTP id 3bx4rcgnt2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 26 Oct 2021 15:55:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eWIftDb1iNZYvlKPLIsupFSYcMQcLjIkOLVdQjWNti2swJGtcnXk12lesW5ZB3eZT07AYol38GRwblsjHqoAt+GWzEs663S/E+nQHWhRI5jLbumM34uHgkj77t9D2CtCXXeRA93jW45cSF4hdOagqXM98B7nPaSRNlbbZqTLql6AjHg7wrnw9yI4ZiYmd+hyEdIaBRjG54mrfabn2ayw0ODQQ0CqrLKDzAfc+jZO7ITr6NtK4x8URa6gJJVyqWojZG2uFc5sEXITjDKugQ5ZiqryIL+mdqfRMwSnypQJ8BVMFkbemUiXetHYXEsxdsUEWIpRqO/pbyOZ5AfvB+42Ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AQ2vEwyki3Zlr1fwR/V5xUxzbTMcIxrAprG+JHX1gVo=;
 b=ZNHkRtHayJbV4vZ8dmTBEP8MTwFFpFtd2/0NImlca32GrYF3VbY26gY6n9IfJ8b9G5u5paBBwj5hueDLhwWkKvPw+UR65LtzwAoxo52/k+KhM9l2VA94xEcpnlDwgG/mCdrxutgLimQVbhbFdrBfmKGfXCnoTOCpU+NsVd8WX5iiTjHdswZ7hjp07fUBwDlcpf2OZ35zAuqJ8W8X21GM8mWkhnVKsewI2wTq6QazFv8iEJIhVP728jgulOhfITuYhVDhOBfs0vqn75PFszto6x6jVIwW9WNh7GkcUMeb8l478ndTVZj2QlrGJnOvw2tB2AyLlhm+BZfmCzsLC/REvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR11MB1584.namprd11.prod.outlook.com (2603:10b6:301:e::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.18; Tue, 26 Oct
 2021 15:55:29 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::455e:9cfb:d106:4480]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::455e:9cfb:d106:4480%8]) with mapi id 15.20.4628.020; Tue, 26 Oct 2021
 15:55:28 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe_macdonald@mentor.com, joe@deserted.net
Subject: [meta-selinux][PATCH] sysvinit: sync bbappend to 3.0
Date: Tue, 26 Oct 2021 23:55:17 +0800
Message-Id: <20211026155517.192831-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: HK0PR01CA0060.apcprd01.prod.exchangelabs.com
 (2603:1096:203:a6::24) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by
 HK0PR01CA0060.apcprd01.prod.exchangelabs.com (2603:1096:203:a6::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.18 via Frontend
 Transport; Tue, 26 Oct 2021 15:55:27 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5a02cae9-64f7-41a5-e847-08d99899083f
X-MS-TrafficTypeDiagnostic: MWHPR11MB1584:
X-Microsoft-Antispam-PRVS: 
	<MWHPR11MB15842FFCFD0687C2305DC787F9849@MWHPR11MB1584.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4714;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	8viC6oUeDQvao0gKelux9yMYLo/ihyeL68Xzvph2Zsvy0Vkh68d7DBnElHUbiTu92Rg4ZXtEX4E0Jkwsz9l0lPulaTn2lonVf4r7Jm3+f2tREoR7Hp8ofXqAP7vPnOlTYWfvRtyqp4DPGcT56w/u58b9vOsxXzd4QX7SyU04yR+0KQIMIpTLeuBI4OLYMfv8srMjRHvbxFsJv683LbPyYEDsYmGmRsKIGKqRAOPkDMnOoIBMX86qPycjP322oyh26VObv37d4eMNrFizvp+Ms91sSYZGKD28M5/3H326ESyLhOnKFSrVwtBFBUnThMFAc3Ji4AUptxfBbNVaCN9V890YabX/U6fqRHzqUFTqE9Lyhf1ps1fNEEM7db4nURhJ1e2yl6UuYe7lPt9L9WJ76uFu7MPACV3mXAcAiF3pwZb+uU3GIMvnHeSC46sn7WNEu5q3M0Ofrutjrvp1/AyE/lkhlfTUakJrea6fAOY60kGEPe3ah70y/JBy3JJhp9wpJyxQzusYjiu3QUNWQP3RfbEfEFyl4V+pDpJojvpMRwlVH3/qW+7PMA+pxvI4Mh+l1o7O6kZ6vshN3vrd0DOP9qhBMm+z3V93vTpJJXVvZZXEDKskO33Hqkpa1WZSUzV4NiUluYMwM66esec4iRvDAktrPoWKmB4sPrvYr2D8r4ftcgt1RhONE70DyKhuFmKUPJc8GbP7mPnk2kN32eo+5g==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(956004)(2616005)(508600001)(86362001)(316002)(5660300002)(6512007)(83380400001)(8676002)(6506007)(52116002)(6486002)(186003)(26005)(2906002)(66476007)(8936002)(66556008)(4744005)(1076003)(36756003)(6666004)(38350700002)(66946007)(44832011)(38100700002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?ztANQR8JClGiKxPtnu5+93PS6DnmO43JFNdIbZtoD9WVd0pkoJ/hu4zwNOrg?=
 =?us-ascii?Q?Py6+sXfYoH6VOFAm78hJLvZwPYvAdHliFF6+fAaciT3xQ39Fooook1J5nlMy?=
 =?us-ascii?Q?JnPSy259+fkOrMwF7apbJ3zaC0Mho2woq1GvmvbI4ovbxMx+xfqM7lYEq7Yj?=
 =?us-ascii?Q?qX3X5UHbs5aPnh/CI+EY/vvFP0zE5SKTEcfAmUzyB0/G6J01SWGIAUh0ZXUI?=
 =?us-ascii?Q?+C/rJcOPSDREuL+bQ0AIOIhQMxpKtF89sIcjFzc0EVy/H/dQyXr50jeOVq3s?=
 =?us-ascii?Q?SaWlZs+TSHn1LUGyt9WmauIxRvyiY+f3xCPGMwnA6SQCFl0q6y9TiHxq8ZHx?=
 =?us-ascii?Q?c668gPGephC8P2otK+dtEW5q2otQv0hqbAcw/DOMfhHyNSEWLJ9L/aHA2XlH?=
 =?us-ascii?Q?tYo+ixVq3tVokZeAmDxAW72H3i5RY7l6pecx8yeu+xHqowfi8Bsx7ceegcGN?=
 =?us-ascii?Q?f8UFa8LjEuVj9+4haP+S5gu1HlvJzS64alE3akQwTPehlNjMUUzBsmX8oI+2?=
 =?us-ascii?Q?9Q153VMCUhO9pcCzFk7atRz8182Doxj3xn1lvEz+dTDzPaeQkF5zuF30ky5+?=
 =?us-ascii?Q?b0qjBXV+vD8KXQu7lHYwS0uImZehQsDjnvfqRP/brC/PZkmeOdPIb45+rxWu?=
 =?us-ascii?Q?3I5sdg2azZvahNToXg0sNW1jbEzFk8TzCBOWzYoxf9wNecC5LHPq9PU9sXDZ?=
 =?us-ascii?Q?7xcJuI4nexySF8c80z9NSW1fontMYiN/ZvSfAIWCckILr7My6k2qEkxAvDOG?=
 =?us-ascii?Q?iwTAotYJP7YUs1t6uW+6UQ6SG0jzcTMLTnq2HhSLvvaLyGBTCLVCCrZXya2o?=
 =?us-ascii?Q?UxztuoafMgBOcBBxvpBsYuZUmNqHdv6vtb8aAWz55kNGfsEnzCENp3M9FHkA?=
 =?us-ascii?Q?Tkba77aT3zMSTuaTKz3pFFPyn90j0Vzp+3TErzEEo/ClI95SZ6K4u/naZD2G?=
 =?us-ascii?Q?7VKuLwygJhKRtLsAUD8hfeGRjTHZFbDqMYpVG365HC6zPaOwHmCumGBZ0D3M?=
 =?us-ascii?Q?6DSoM5SRKvfO2w/QGTaVxcFIdMw9RvHrZ0nFTyJ5jqN6C7rAb8OKCMb4PBh0?=
 =?us-ascii?Q?N2ZC2sq444rxZXNhCnISd2hpStajxg2JzFyC5I52HyAFWcWZTMv4iVN/7oNG?=
 =?us-ascii?Q?KCSDI2ahfMxlNkflv5vzS6iJGQS3nTGUirYOTSzZ/m8uj68x/Cabx02Iza2D?=
 =?us-ascii?Q?p37EA2KkcNZ7djP+OfUs1aWZNJLQ+iWFx4P5lYkvZCXpzGba2DiOAZmvnuME?=
 =?us-ascii?Q?3z5yanFPAUB+6dvTIrvNu3f7G6XXrZMg/SBojk6JHxSTK81AKozHsfvXclzQ?=
 =?us-ascii?Q?xPz8nfRCd2KOyRPthxkA8JWA2i+x/XIFuky+xEVGhiFotacz0hGVlGDqmSMb?=
 =?us-ascii?Q?Q43Ua/FDZwmJuG9Ll8RtSFULx2z3Oyc2Bq0db67p5QZPlhOFIhI7WFAb+o9r?=
 =?us-ascii?Q?ymxpHcNz4sDJr5eMEPjBjYcFqS65WhnbK9tlzEpHdv4Y4VHb/sLCAfg/dFPZ?=
 =?us-ascii?Q?JZxS9inje0Q8MtSXFLPcl+lFv4eOiw0p6PvVePZrbAdRjyJQx8e/728QA2PA?=
 =?us-ascii?Q?PrkaO6tmQC3noxUOtpMKE1Qv4RigwU2N51UobSnkr2+HL+AP4U1H00g3S0E7?=
 =?us-ascii?Q?80tuEa3RzaI+0SZcDf6hWUQ=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 5a02cae9-64f7-41a5-e847-08d99899083f
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Oct 2021 15:55:28.8188
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 /O8/P025N3V6PobKS+wnYl1lDTe+0Pa3jotlj6MKm3TRfBU+1gJyxUfw0Xa58ThAf1uoYjssAX3D8WPxd94hYQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1584
X-Proofpoint-GUID: x6EqdRJ7QRQ4X2KMqOdUKX6VmNSvlsqm
X-Proofpoint-ORIG-GUID: x6EqdRJ7QRQ4X2KMqOdUKX6VmNSvlsqm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.0.607.475
 definitions=2021-10-26_04,2021-10-26_01,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 mlxscore=0
 spamscore=0 clxscore=1015 suspectscore=0 bulkscore=0 phishscore=0
 adultscore=0 lowpriorityscore=0 mlxlogscore=702 malwarescore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2110150000 definitions=main-2110260087
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Oct 2021 15:55:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55169

The sysvinit in oe-core has been upgraded to 3.0. Update the bbappend to
adapt it.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../{sysvinit_2.9%.bbappend => sysvinit_3.%.bbappend}         | 0
 recipes-core/sysvinit/sysvinit_selinux.inc                    | 4 ----
 2 files changed, 4 deletions(-)
 rename recipes-core/sysvinit/{sysvinit_2.9%.bbappend => sysvinit_3.%.bbappend} (100%)

diff --git a/recipes-core/sysvinit/sysvinit_2.9%.bbappend b/recipes-core/sysvinit/sysvinit_3.%.bbappend
similarity index 100%
rename from recipes-core/sysvinit/sysvinit_2.9%.bbappend
rename to recipes-core/sysvinit/sysvinit_3.%.bbappend
diff --git a/recipes-core/sysvinit/sysvinit_selinux.inc b/recipes-core/sysvinit/sysvinit_selinux.inc
index 480bde7..1bdca98 100644
--- a/recipes-core/sysvinit/sysvinit_selinux.inc
+++ b/recipes-core/sysvinit/sysvinit_selinux.inc
@@ -1,7 +1,3 @@
-FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
-
-B = "${S}"
-
 inherit selinux
 
 DEPENDS += "${LIBSELINUX}"
-- 
2.25.1


