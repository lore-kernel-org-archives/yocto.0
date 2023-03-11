Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56147C74A5B
	for <webhook@archiver.kernel.org>; Sat, 11 Mar 2023 13:13:36 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.44267.1678540412486832830
 for <yocto@lists.yoctoproject.org>;
 Sat, 11 Mar 2023 05:13:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=niRGcsqi;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=2434990727=yi.zhao@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 32BD3C1G012457;
	Sat, 11 Mar 2023 05:13:30 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=O75vKtw0I4rS8DzCxBSgIvrVkSjm/Q7WCpVgr+WkZOg=;
 b=niRGcsqivCqzDrb8rs2roivf26pqWucRyp0kiDZPoW2d0IpbdeDZHsxkM41rSmKDp1Qi
 ETqVzP3G0/jEa13RigCuZDi+ZNDoU2b/BbBV07lFhLQu2ZRPsk1hORtHVf96KPWC0xAt
 u3OY+r6i9gpqfiHTjrRQBKk+wfLTNc8pqv1x90wg+Qure8FWPfBa85cIakH33laYLcpb
 F5+mYQQ6Cxibgn0KUHxu3OBuPR0rMyMLXPWxjL7isWhPETJYKz+/fiCYUj8uY0kGqtjY
 8oWwQBvCcKl6oNexiGV9Qr+eb7TeIyQCDm7gm7YGxhzPwh3pSsnpH4fWo/H0RRnTyYUX Cw== 
Received: from nam10-dm6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2106.outbound.protection.outlook.com [104.47.58.106])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3p8nt8r554-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 11 Mar 2023 05:13:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HJKGfiLGDRnIWNWSwJW4JDP/jOJGkUTDNTZHzCI0TSBMJU8OkaG7diHdkK6zm330idb/gkY2DXghMcb92+EaPHwc50xvmbdatFO2l3YocvqPDO8FoiuQGAK9iCwrY43N0AVyBEIjpSmoGvPI0T0udGFTl/zxNOZz2Lir2qUolNgpFq4Qg1sHvKFpWc2SDKX6ZLUC/TV3qYKv/eK3PAXYl8aKlEgk89Q5AME8Tc03qEh8Wi0b+sv3LVovbw75BrvKejYDMhnb6YoFKMlSk3l+jDMqDuwusXiuVZ3/XdFabK4Nox9SKkUoeR/yT9RWJntmA5Y1BQmQiqg14aX+3Y8pJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O75vKtw0I4rS8DzCxBSgIvrVkSjm/Q7WCpVgr+WkZOg=;
 b=OuXaqCYxzu04VhqpWGc6Ba/QWojInZ+ibU95TrwwkQlWug4Kdi0F1eVclBVVre9ueqojAipBRXCOosfh9gTy8AneUgY8E56vMk1E7OLdZH9R0UQRWTfseddCyAfmf66Zl2ZIZDpn0El8sNCsvK75ugLlb+6rnwAx/yYeA9N8IaebYltqvn2/bmkeFa+Dm8tVZRigKYOGKAoDRBK38L8aWLvav0HaF75BRnykhcTR123KCbRHweK9qoJahgYzOtpw04QM1YESPyqXNXczeJoTL7jr1dA9oN/dB1c1s03TypLJbU7qlAgKGbIsH8HWYPSQet7/k4O5woKXf81pm++l4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by CH3PR11MB7203.namprd11.prod.outlook.com (2603:10b6:610:148::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.22; Sat, 11 Mar
 2023 13:13:27 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::42a3:f515:f89b:4eb3]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::42a3:f515:f89b:4eb3%5]) with mapi id 15.20.6178.023; Sat, 11 Mar 2023
 13:13:27 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe.macdonald@siemens.com, joe@deserted.net,
        joe_macdonald@mentor.com
Subject: [meta-selinux][PATCH 03/17] selinux: upgrade 3.4 -> 3.5
Date: Sat, 11 Mar 2023 21:12:54 +0800
Message-Id: <20230311131308.1337339-3-yi.zhao@windriver.com>
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
X-MS-Office365-Filtering-Correlation-Id: 1bb636e3-9496-4a3d-1690-08db22326694
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	LZxVY1sgtSwbMTVipyxnSa0f0SO21Yq6fQDDea+phn4HUJJaMeuJ4eFSGrApcpBEPUJ3O7BSscfTv9O+6QJyyA2xO5DTU0slA1zAM1swFquL1J+38B+3MjtjWW4Tu8py6YcLHP2uti4+FqxKMWXFvAWRoOPcLa9nKjO3s3yCJcuTyhGvD6T3yJZ2bLQqT9Xu5IbpDJFU29mDkx3cGtx8h/NJodX380Lv14PgOM8L9uD/o0/2+VgOV3qKCVhJ9Cq9pAUDNVVnD27et1DOIqo9MCneLvBflCotPIbswFrjEq8HKlnmMlWCTW1VP5nquqwbar1L3f0UVTUHR8rM3mbWtyPql88Gd7WCIFS6Db3qoGCCCAfCqLNB0i7W4UFwUZA+kogQNqrwb0n7D/hZiG1TXf9UKceL85wB6unZH6UeSm4nxDW7cY0IYJ3QMf6GYrL0OpFEc2kXzAUdSmoUNtBrcrBMpAWWuFVxyWT+MMOdxg1uaY1N2Smhzv9OJDwmLRga9OGIyPtKdzyJLWyty3wZelYknOCF7tdMyN5zkSCCWClO10j1X1o374neTR5ALZNgCczXA7GhVkcnCFc6D+wFtOY/p6pdnhSfOsbB+I4iwSLi7Siw1LzpDE1jOjBltjRWYNs3YjdbPLiUwSmznKxeuzHWh8/SBDWh6mopYU7xrxypRKVCK76V1CSfZLdbZqpUTs8nCvdybPlTwgDeqm8zZFt0tKiy8hCXsm0QtEFNyBo=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(39850400004)(396003)(136003)(366004)(376002)(346002)(451199018)(38350700002)(86362001)(36756003)(38100700002)(44832011)(2906002)(41300700001)(4744005)(8936002)(5660300002)(6512007)(6506007)(1076003)(186003)(26005)(83380400001)(6666004)(316002)(2616005)(66476007)(66556008)(66946007)(6486002)(966005)(52116002)(478600001)(8676002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?KjL5cvTLFhiGfb2/wdUmSbdnfLCE9UNYftde+KzRgDlTFo4OpqTVcVTLRfcS?=
 =?us-ascii?Q?zYKwpr/hw0ooLziV0xS+cWEZiRmbjuTdWdJiCULL/VbHGsjRssoL4fe1jd4Q?=
 =?us-ascii?Q?nlCQWFmKFVwfRPndxnSV7VwB+PoJ1IpkQvglH6XcDRsqz5Lc7xhQHMXkz8kI?=
 =?us-ascii?Q?80h4r7NoaHlAe5GoKVynUKoRQdmn84VH7bDFhPnCQr7YueBUV8tnGztPYTt8?=
 =?us-ascii?Q?UofZlr82JJLO75wavhMEhJtx/A2ddfNPrhvfOEWZ1/PRr3jCcfymobLcCwsM?=
 =?us-ascii?Q?N7WFPMxb0dI4eSt17hGn95evAXWz5r3xQdOBRMe7vY2Kc9oKwsxqZYIwPe+g?=
 =?us-ascii?Q?Apzy4Yks0DEu0o0OqrjO4bI2N29IPGlxmaJ824IJQ1tuUZBdbbf9uRFsSyEU?=
 =?us-ascii?Q?VUUlZS4lgHnRvztY4wK8/ybCLrCrV8Yt5X5/smf19aDy+Ohv3t4cyOGaMN7f?=
 =?us-ascii?Q?MguzW3m+niQ9WlB8ZiolvCYTe9J8siT+OIPVyj77gRiEeAmaMPE0dWIIb+L6?=
 =?us-ascii?Q?BRdppnVcyookO7OZJTDhb2J96M9ktSKdBdxXK3ROAIP3q+0nXQR0afQLbg4d?=
 =?us-ascii?Q?Dbficj4Go0QCrdNvrp+WUl4yrqnPoYGvRyCHcHg71aYffCUtm+QJqunVQttF?=
 =?us-ascii?Q?vEo3jzKY22F7iGToCudab7KZmojzFaFkHORSPpkMp7WuXH8u++f+A+99Jz9b?=
 =?us-ascii?Q?61PYKib8U81lFhd6WHXENWkaS9vi4UNXbN8n1Kgdb+2dRtQC5iCaS1XKimmC?=
 =?us-ascii?Q?EIK2IrZnNBwGelWMixIdEAOmObD2OwFRqdF/VbWeV38+cw1yDFGUJiKRcD6q?=
 =?us-ascii?Q?EayxhFkqgD05C1v2NKznm1uUODsvbHZCus/IneGcHpkRwlWcqDB2QoWSYDfq?=
 =?us-ascii?Q?Mo/8bZvoVYnICOgj3mMbpAAf8S5r7dBVxr5U3v+Z4xvK1n2k3EEZuM0ZyUlk?=
 =?us-ascii?Q?CSUk8k5oHb8S2g4CvbQmzyePgsn8SrBTswHotz1V9k3Nb+NxS2Kq0SQm1pg6?=
 =?us-ascii?Q?Rl5/JEr6J2AjOLvCg/c+Dz6xu6Qx2yn+j32b6yQyZC4vXjpntNs4r1XxXsKW?=
 =?us-ascii?Q?/RRCuDUS/R+UuJHOKy/Dd7sY+QS1kS3VFcGCtJ/NezwYo4VjktPGiUnLa5fF?=
 =?us-ascii?Q?Dw2fPDi1hUMqrJDiITmh5XWZ/tb0CoruucEOydrkKO4X5qxrpGvmEw7JwOc0?=
 =?us-ascii?Q?A8qjOveC1u1G7u+Q/cBn/ypFN4Z5Q3D4Vve2KoMMtPp1OLFWSvCqAOBxOGvz?=
 =?us-ascii?Q?Zd8tksgxxEl5me+PEGwVWQTmziDJb975RoktUGBDKPqUai1h8F0KJSBmi6g7?=
 =?us-ascii?Q?KcG5Far2sJmOPXHact3N0EY0z8rr+td+qpkSZ7KhBxhbGm5ZvxGJs2YuIAzd?=
 =?us-ascii?Q?6OT3ox9roovZ/Iqb3mMNJaNUACQ/mEi0jfSfHQjZ4EAIXE8yyfD0unmlSE1y?=
 =?us-ascii?Q?0iikpmdNO48CjrB+uzQbbGN+SyK+inD+AJeQslHDF8kSMsNu2ctI5EDW6D2r?=
 =?us-ascii?Q?G4cVwWj0aQmwLdzbtHmLpDwGA4rNNz7aQSMsa+24mBTRsrfkk03a/UyHtJTC?=
 =?us-ascii?Q?A0mAavsOOY+yuKposnEiQbuL+DfyonlM1cdrpRBFmn7zV0r9L4VtIRjiUYXM?=
 =?us-ascii?Q?6w=3D=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1bb636e3-9496-4a3d-1690-08db22326694
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2023 13:13:27.0559
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Qt+cwNe/wcvatyQCokmghDHydqHNjThCyg/Ur7uzIrLurPV1tHNXm87rFiJKfXMi6kHnLMhyqKNOQP0tQiVdBg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7203
X-Proofpoint-ORIG-GUID: iqN_l5Yc5U8C3llsrjMuT0hGbdkciUi3
X-Proofpoint-GUID: iqN_l5Yc5U8C3llsrjMuT0hGbdkciUi3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-11_04,2023-03-10_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 mlxlogscore=893
 suspectscore=0 bulkscore=0 lowpriorityscore=0 malwarescore=0 phishscore=0
 priorityscore=1501 impostorscore=0 clxscore=1015 adultscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2212070000
 definitions=main-2303110118
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 11 Mar 2023 13:13:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59387

ChangeLog:
https://github.com/SELinuxProject/selinux/releases/tag/3.5

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/selinux_common.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/selinux/selinux_common.inc b/recipes-security/selinux/selinux_common.inc
index 86c748f..87e9231 100644
--- a/recipes-security/selinux/selinux_common.inc
+++ b/recipes-security/selinux/selinux_common.inc
@@ -1,7 +1,7 @@
 HOMEPAGE = "https://github.com/SELinuxProject"
 
 SRC_URI = "git://github.com/SELinuxProject/selinux.git;branch=master;protocol=https"
-SRCREV = "0a8c177dacdc1df96ea11bb8aa75e16c4fa82285"
+SRCREV = "d6e96c5929a3f1aa1dce93505edd9f0158757ac2"
 
 UPSTREAM_CHECK_GITTAGREGEX = "(?P<pver>\d+(\.\d+)+)"
 
-- 
2.25.1


