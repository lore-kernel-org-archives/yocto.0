Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.65589.1629348444527252825
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Aug 2021 21:47:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=M0rvIqex;
 spf=pass (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=38650d81cc=yi.zhao@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 17J4lME7012347;
	Wed, 18 Aug 2021 21:47:22 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=PPS06212021;
 bh=m8k500Q5EqE+KG+zoLmLH8sHx66KOv1xn3dbKBgR66A=;
 b=M0rvIqexZV6RL/gmK2xXRHgybmZU80f/6BLC1hBWrugWfKcx5BwN5v3WHeO8vhnRqTQL
 1nkmzjbACVAmdDlOdWlpG8BM9RQTc1kN/cRO3920fbGLV5pTbTs553Pm2JB3de9iWHUE
 smv9Omg13O6RzKRSgHIqqONYSTfIPvWG7GU9iZG01MTgUOpSGoqb7n5wnFNUWFP6JWyT
 3nbhjlR5wCJypnzgOaV8zazO2l/ry3FrYqK+z+0re+TgThAiM9pxKHid5YbiHWyyWdIw
 O8j/wCG1RGe3lTvF4xdfY3hc06fmsgGsh2UqZ8DjkVCyRsdypl3KPF0U3Bo5ubbr13oZ sA== 
Received: from nam02-bn1-obe.outbound.protection.outlook.com (mail-bn1nam07lp2040.outbound.protection.outlook.com [104.47.51.40])
	by mx0a-0064b401.pphosted.com with ESMTP id 3ah20t0mdn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 18 Aug 2021 21:47:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QwD1k73FlPLCt6BWWBLqFzp4HFZ7uN7M6YvTjGlIZY5ACxVYeKH3PXjJX2DOTwEnwav6KUrr9E+WoTC/tRJd8ANw6XUMlkr3+ovRnWTEerDVwrO8bFedbwN5qTWog+fwZO3nKbwTyPqlN1onVXKtkW1u+1++zkSqKfjPBngZ44GClumQWIaY72mjs0IWqRYAsm7PT3vNQQ+oD/Oe1tp1xtbGl8JuZbCsTsRcu20CNkPx8mn5Ied2/gK4i8ku7wRiXCo8FwJyvJ5y9U3OUBPQVAOfP5oP0sQpsa6sSf2lYeicYgO91Xkt22cKC75XehI/JX2gqAFymtWZdUTA7/JIsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m8k500Q5EqE+KG+zoLmLH8sHx66KOv1xn3dbKBgR66A=;
 b=AcenkVQHs2troh0OhFC6jb99oy2BKebmTWy0a+uhZVbioAZapmKLqTw/rivzIv3Ei9rY9PCkFhk7/o65Z2w2B6YVNGNNoAW8Dwkho4JqSH6TTheCnvJw/Sl+6/3kreJCPQ+gGk1NQO0Bnh5+gwsOvBVY8na5mZnIUg5biN4CWhFzEP1x/70Gc/HCN63hgct72llVFbYYW29deBPj+1rjW/vuhEmhgY2nX8jgpygyDY5l7T7jmNsT1ZO6H54pW+yxf0I1v3LllVawD46PIdwage7TMmmAVuhfuRNWFBUdwZ3PDEJb9gHif2VoFKuBfxJMaC9N8s1VtIrH0puJ8mZjZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR11MB1309.namprd11.prod.outlook.com (2603:10b6:300:20::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.16; Thu, 19 Aug
 2021 04:47:20 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::fdca:2b03:6e20:2d99]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::fdca:2b03:6e20:2d99%2]) with mapi id 15.20.4415.024; Thu, 19 Aug 2021
 04:47:20 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe_macdonald@mentor.com, joe@deserted.net
Subject: [meta-selinux][PATCH 01/12] libcgroup: drop bbappend
Date: Thu, 19 Aug 2021 12:46:57 +0800
Message-Id: <20210819044708.105282-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
X-ClientProxiedBy: HK0PR03CA0105.apcprd03.prod.outlook.com
 (2603:1096:203:b0::21) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by HK0PR03CA0105.apcprd03.prod.outlook.com (2603:1096:203:b0::21) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19 via Frontend Transport; Thu, 19 Aug 2021 04:47:18 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: eef412ea-51d2-4622-ff55-08d962cc6d5f
X-MS-TrafficTypeDiagnostic: MWHPR11MB1309:
X-Microsoft-Antispam-PRVS: 
	<MWHPR11MB13094000705D1A2A75A81BB9F9C09@MWHPR11MB1309.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3276;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	rd/l25hW5w5YdHASfFkrAcsmg6m2bQlwBecJu36tPfJ2cOyU1254U/UocmayP0fP472OPbxU8TlCjrgD1FbBfn2Q//zVYAO4Hx88g2GWzLC8PIX3rXFcaDca3lINi7NDfqqVEPEuQIKS9fVjGasCe96mDoLORUHmv1N172epxf6VX+d9T4S3xWZh+aTKa1OFHsJecIvtcq1hlkpo2oGnqW9bepyz7sID86CE9gJWTGL5RMbvp2eV7ITtZ0aCkeIMt9+3igBtGJY2BACx0AO37OnML+tYzqGK/r1AQYVil0DByd4fWYZME36qutIWjEP7PUostbaBHKJkcGEzXzhSTJ9upD156C/XxgRAnSStGtGbwrb3ksKpvmizou0fEy0Tt7GKoQsl2WFyz6QCUBK+5r8cYFfmseZXVUm8+Yi6kpq93gsZSfmmuzvTcccZwGI3fFU69+9I9z5bgF5Gm2tB5h28bxnT3CQGBBSUZmmTlp6Nkxv42qfwb+kDI/GDXnr829cYzncVg65ii5DK7GCK9j7R7R9rbOpvKoboILM+iezAIoZ95qYI4yTyDoZufwNis45WuINa3i2IPdhe1RQHCD9TWEZNPP477ZmANdnjwXEXYGVG4rCMR/30hgi7ZKffu8tx9PHFwrxm96oRV9T2XXhMGrSzkrathc3jHifzwWf53kA2MxNXPvBys6w8pb3uj9eEY1ebUFKnqYn3lf1cMQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(366004)(39850400004)(376002)(136003)(396003)(2616005)(8676002)(316002)(86362001)(52116002)(66476007)(478600001)(956004)(1076003)(26005)(83380400001)(6506007)(36756003)(6486002)(6512007)(5660300002)(8936002)(38350700002)(38100700002)(66556008)(66946007)(44832011)(186003)(2906002)(6666004);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?EJoERGEE3Qkp+8BFzlegdd5jGQyrEqIKnWbGZgpb3a4XSiONCOCkI4TA9aAA?=
 =?us-ascii?Q?XEO1oTO4SV5CO3o/XCeh/PSOcV2r5SEIVyaNZQM4a4Nm3HqwHLEfai6VQ8xr?=
 =?us-ascii?Q?fHnIkppQorpubuHZ2shGld1Tv2ShjRCQq/M1ZRA0zyLAWkK9SzvWrlkSF3EH?=
 =?us-ascii?Q?CNJz9LqzXegKzzL11QL8oAZAHbroJK3Wa/jredNYt3ETR/x7YW5cWgT2uC7b?=
 =?us-ascii?Q?5UeAR9u3Wk7b147Bjn41gM6h9QWWYO/wQl/HjLOK7zK5ziPreIm3+0u3FD6u?=
 =?us-ascii?Q?dM2zRa8spO6BF1rSwvee2WitTTUwo3V/tQQAJoYdpcUr4XJvDJJLQuc2Mcjp?=
 =?us-ascii?Q?pMuv4wGfdywBrlCTyjkel9ABkOGL2OlHJANdML63ZudSujt85CHyvAhLGN3B?=
 =?us-ascii?Q?PmOZEN+Ig5lh3qehd+rEftFWcEo+JzJJc32KeDimoP+51mzNpxVuyqEASR98?=
 =?us-ascii?Q?bJaJnG69do2/wVJ+GWkY4MyPcgDOonM3W4g7kyPgV8wnQ2g4THQ7ocLy+V6C?=
 =?us-ascii?Q?4AU17PO9TC9GiTlVFHkfLsoCzME5Xf/eipo4wiQ673uFlz0OHBXMaWsG02H2?=
 =?us-ascii?Q?WAPWmToAWvB0pdibZcd9YxxYam4h0rQdJ62ZMpWumZnoGA6rwUwL7G3GSuj8?=
 =?us-ascii?Q?H4RNW7NEPDpNyKUroWT1RqTKF6vTu2j/1ji5Xu2ghU43zc3fW09VUTrOW1VL?=
 =?us-ascii?Q?4Dowu/nZ2LyscCJEcjIBnLUggJ5hjnfWlvn6gFxRpemmleYrKNJet5COzxyj?=
 =?us-ascii?Q?e8JvB+99Qd90LotqV7B17GiLV+5fyNOR4abJCN0Anw/HQkJrfEA4YqueJpjs?=
 =?us-ascii?Q?KWZBc69PpJ6+LtQDcDduirL4BEtWcoZTHl6zwgf4Xmvrd/qhr4Q0XCeNGb5g?=
 =?us-ascii?Q?7jcpGE66EyOhCXf0pCI9/fKxrwFv85IL3zvmIirtmjx7+xsbrB3FfdeM9FA4?=
 =?us-ascii?Q?pa2/Yxsebyq/E3Yiouac6XRNKVBpxrXFZbRLgTWuRQRSc81oRICpAdwX+pGC?=
 =?us-ascii?Q?GH9uIK/F2m5O3y0WufFoWfKgsOsMkJpWKKKoCMqqFAvxvFUVBCshwR7LnqnU?=
 =?us-ascii?Q?0BARWzpvMuRmzWyyI+5bQPLbV5jIuKmPqbaNZyRyTeHRBZh2iAivNNkmhGDY?=
 =?us-ascii?Q?DvW/EeYZNiWaZrqqa8Dt3by/FpZjZ3HWPzp89wAgW/9tgRmrfkU0/6IrEfF9?=
 =?us-ascii?Q?IKmYWSwFmsVOrKemriiEz5KGc0XmkfcmWxlHFgDbhEsRIKdcTifASj5/K0Jt?=
 =?us-ascii?Q?UJiVr5yZxyJ4v+3rmYWfIl90KRAOfktUQ0dIQ7L9B/4Y/DNDusITyhgxiFX0?=
 =?us-ascii?Q?PCJJdSowZ1CLh/BF6IuQYU0V?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eef412ea-51d2-4622-ff55-08d962cc6d5f
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Aug 2021 04:47:20.0281
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aHQvpN0ijDTy6I+JEtCWkQO8f+zEQ9xtWcahwauToD6MlUDRsxWfu2Bquu5a2afbcqGgMFITKO/9OQghxkYGpw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1309
X-Proofpoint-GUID: IFQYC0Nty7u_6kSQUxBtYkq9el8tx77l
X-Proofpoint-ORIG-GUID: IFQYC0Nty7u_6kSQUxBtYkq9el8tx77l
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-08-19_01,2021-08-17_02,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0
 mlxlogscore=718 adultscore=0 priorityscore=1501 lowpriorityscore=0
 bulkscore=0 spamscore=0 impostorscore=0 mlxscore=0 malwarescore=0
 clxscore=1015 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2107140000 definitions=main-2108190025
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

The content of the bbappend is already contained in libcgroup recipe.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-core/libcgroup/libcgroup_%.bbappend  |  1 -
 recipes-core/libcgroup/libcgroup_selinux.inc | 10 ----------
 2 files changed, 11 deletions(-)
 delete mode 100644 recipes-core/libcgroup/libcgroup_%.bbappend
 delete mode 100644 recipes-core/libcgroup/libcgroup_selinux.inc

diff --git a/recipes-core/libcgroup/libcgroup_%.bbappend b/recipes-core/libcgroup/libcgroup_%.bbappend
deleted file mode 100644
index 7719d3b..0000000
--- a/recipes-core/libcgroup/libcgroup_%.bbappend
+++ /dev/null
@@ -1 +0,0 @@
-require ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', '${BPN}_selinux.inc', '', d)}
diff --git a/recipes-core/libcgroup/libcgroup_selinux.inc b/recipes-core/libcgroup/libcgroup_selinux.inc
deleted file mode 100644
index 7efdfd5..0000000
--- a/recipes-core/libcgroup/libcgroup_selinux.inc
+++ /dev/null
@@ -1,10 +0,0 @@
-EXTRA_OECONF:append:class-native = " --enable-pam=no"
-
-do_install:append() {
-	test ! -f ${D}${base_libdir}/security/pam_cgroup.so.0.0.0 || {
-		mv -f ${D}${base_libdir}/security/pam_cgroup.so.0.0.0 ${D}${base_libdir}/security/pam_cgroup.so
-		rm -f ${D}${base_libdir}/security/pam_cgroup.so.*
-	}
-}
-
-BBCLASSEXTEND = "native"
-- 
2.25.1

