Return-Path: <yi.zhao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EDEC54EE9
	for <webhook@archiver.kernel.org>; Sun, 28 Aug 2022 02:30:06 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web12.55468.1661653798932267275
 for <yocto@lists.yoctoproject.org>;
 Sat, 27 Aug 2022 19:29:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=VR/4MNRS;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=52395d86b7=yi.zhao@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id
 27S2SFPd007546;
	Sat, 27 Aug 2022 19:29:57 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=qeaoB4tynqpsIOBFz1co+nLQxCDAyxrdHidMtHVuPh4=;
 b=VR/4MNRSA+2d0HmP9DA4zXe8B73NAQzcvhZw3/SSD3OMUNGJiQxUyo0E/g+SXbpyRbgf
 Zg5iFpUHvFTn8KQnWNHaw+Q/PcQz400MhjQCHCmflAXPbIO6mILf6ac4wIlA1BQtBDYQ
 dXuMzMQTpsQ6v+e9xRI3VvWcLMhsM9DjCZGZd64l5ostIWgfGYz554mJV70RyGXL9wt5
 YeJqvGLyxoPql5FfWyePmOLEZADvmrLgVSRDEZ1wBkQIzdnCpz1I849FkuLDV4FVxJ9u
 sUhfkwPLSCwJxmdbG4aIgvSHiY9ODyx+CA+um6YvRmu3bN861zm+T5LzLMC62OqpseWM YA==
Received: from nam12-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam12lp2041.outbound.protection.outlook.com [104.47.66.41])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3j7jsk8d59-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 27 Aug 2022 19:29:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jx7c73M0s+oZqu2l8dsXxxv+jJrH9E191SVinANJZ+xEDaYAVaulH0f9kLD9yKvyUJDtcNSVAQbfWzZb4dJ67Af5LQsa6DlmfpYvflBa7Wu85oEkxxspEY0YmZ0QJ/ckMXUziDm/2bz/cqjC/zXwsl+LD9r0B5f9zp/W6sJFEhSefZFPOW6xdsrWazJF8gwuhMVJ+C6BNjqoCwS5rsfd4Esc/TCwHlBqbxOS1Io8BcCQ16fn6K1JieLj1eNXvukwqejWhCaoSDae9KSewWbX56of4VuWs4Ziwme5zOrEFGU3GOPWAFjqkyCVnL+ibhjxozwSHAZyof6u/uI42Mqivw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qeaoB4tynqpsIOBFz1co+nLQxCDAyxrdHidMtHVuPh4=;
 b=BjjENIsLhyQsXeCHAwVGnSeaO8O5SHVUK3x0bTvsoJ9UgPgr29cto/uo9WYd/iaujMvq+kkg5cL9RsPgCQQrkdrCbd9hs1FDnxprYHyc5EVrB+H/EuL3QRP+S6Mt8A0pZAfCc3nsaRKWBfQzVZrLz4oFzKZtzMYmiRokbiTomRQgC4GNy5RGqK3HokDv2sREc/MY1Q/rCVD9u9CVoU5AI8r15NMjDgACpKmNY/MITzL/tnrWjg/Ip0Ncv2EvGwMnTe8O+WS+5gzR9tG4348t0gzxZzYyLfehwjKL+Xsd4Jv30aDSdPX6nL5dST397lsuuMB2HpTLn5jSQacnseVzcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by DM5PR1101MB2172.namprd11.prod.outlook.com (2603:10b6:4:50::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.19; Sun, 28 Aug
 2022 02:29:55 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::a921:a88e:14b7:56ec]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::a921:a88e:14b7:56ec%6]) with mapi id 15.20.5566.021; Sun, 28 Aug 2022
 02:29:55 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe_macdonald@mentor.com, joe@deserted.net
Subject: [meta-selinux][PATCH 06/16] checkpolicy: upgrade 3.3 -> 3.4
Date: Sun, 28 Aug 2022 10:29:24 +0800
Message-Id: <20220828022934.47592-6-yi.zhao@windriver.com>
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
X-MS-Office365-Filtering-Correlation-Id: 4f795985-cf45-419d-0a96-08da889d31cc
X-MS-TrafficTypeDiagnostic: DM5PR1101MB2172:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	PIICl0JOBpA3i8v29ANCqRtCy17DXsFvOqR4EmLCymH5v7tzKebZUP0nyypmP4A8hkPNeLX0+3Z91BWSuo6pyleIdIvDFGKBmY1o7SIeumgbsWZWGOUMxUQrcXEMMIM5zo/nbY34/c5rZ0tp0sE2Y1bIHzu8F9RyiMgpqtMP4pCZ7itBF0OpSUhQy5SjnptNJvQlO1NFTHoyaC/06oE5ZMw9rVkrGCQdrzBlMcxX3pU1vRyGWXRsV08Lme2/m6H+uNmMUPYnobnBwpFK9qKBWD84whAfEZvZPGCvIy1W6nfIZcNXPUkK3e1kWVV2e7Z9ntSMMqrnflQ+/H7WW19UTr+zrQ17rhOVW+U27eTzZkVDGDWA52h5Ec9qo0jpDxt4rVR0mvYX4qi20Jr8+ZOsIlu4youT2dFu20XVT61RwNHKDCQbnf+Ps/JirjuZ3qPoCdBdMJ9fs0LsWkh2VMXPkOi9zoNVk6Nvdje6ez2hQ0uR8ratI5uAcUbfRCUZ7ZV2Ko3HKLX9oGl509iH2V/4MAaOklf3HDdH4EkExt9+46V3zInQwABZsdcl26wQ1UGkOfQq3McrD0XRTRSK2yiTTIDJDoN3RH2UVsKFaUwkF4Tc3jZiOVEe294KlP0LITtvTCNXwr2ipH2c22vlzd4jMqM+gnuXS9LWCqQ8mpQEk8g5joZnLasnqcxr9pUr3YS5Lt7CI1mSQ7S95vdAeJj88f2banXtbo7Fr284SruCgR7UQ3dyqPpuk0AblXTO2ApNoNaPCNv4WcoCrDp7VCmAJg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(396003)(376002)(346002)(39840400004)(366004)(136003)(83380400001)(2616005)(1076003)(186003)(38100700002)(38350700002)(66476007)(66556008)(8676002)(66946007)(316002)(26005)(6506007)(6512007)(6666004)(52116002)(41300700001)(6486002)(44832011)(4744005)(8936002)(478600001)(2906002)(5660300002)(86362001)(36756003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?ddSR2IXcBObdGZb+2M+MqSrVL5MaDUzn4SlJBDf2RAJizQ7mfUT11SNmZStE?=
 =?us-ascii?Q?G+fwBYTMARLGevIPExPOFEPPb/XwFl9LWbg2kUw7Up0OUIBBh3AqlEOkskGW?=
 =?us-ascii?Q?wbREC18L2aZH1KXwgYjPMPYM25wCEKBy3OmN+9pYy4EaYBrtxNvmKETu3PeJ?=
 =?us-ascii?Q?7ktHj6umKXW5TjnnT+O5RJMuJQL3j+h+m4OtPc03zaAR39LYxj866u7nS/KB?=
 =?us-ascii?Q?C6No3Mo2S5F1AQkeMNXWox0NtUEwUXPL6WWnvx/MAystKJ7c7cQ11WrWXmu5?=
 =?us-ascii?Q?Ixxbf51PoxDZF/Kwft/klS7bxMbPuCQEc0wH7BcguX8YaxniEvPeG8IR9VT/?=
 =?us-ascii?Q?KeVpFEWLeskQuC2vBfWZU8cfMBc6LHf1FedVeTMp/OS12gK8KLVXOx8fNiFA?=
 =?us-ascii?Q?0pWSmdsyb2wg9dze9zbZnCWiXZ6GW2n/i3W8j7tvoU4/wdfUaooR/oHggO3E?=
 =?us-ascii?Q?JlSup3zHFFAzcbWCRVJGRfP255aeHw8iRXL4Elh7SnJA8hD0NYFzELbi3Ykl?=
 =?us-ascii?Q?L5AuuG3M7QZyagfiHlUv0qk84F610mfyQV64iY6E5H1BwT3odduqBgFI/py2?=
 =?us-ascii?Q?Bn9KXsnLXlgfE1/JkahHvgHImXguty0JsyQDXo63dcWM0wzPNzq6fNkgmSUo?=
 =?us-ascii?Q?Uqd0BquewhoYslUP+FysxTj5qYWAufLPqeKS/mvqI5855wH0NQATLWBdtzNj?=
 =?us-ascii?Q?iIW4RE/14gY1RgTbZtgxnDUs/s8ZGdTIX1oxFh495N0TIwvkHEPv/HVABVAK?=
 =?us-ascii?Q?M750I8Xo/Cni3yEkTnAqQPzU4jH1LPvNcbkh8pHfvmt0gyaljfqxPilr3oSe?=
 =?us-ascii?Q?dDH4jJPLVvDYw51AJ/O7rWH2TnfpW6xvymf4qAvFOhKYvL+gRdC2t+E3j/ZC?=
 =?us-ascii?Q?acSm30kG0lPqKDrrR0w/xpFlddrUYKo/nnQHQQRkpGcId1CjlDIcftIT1IZk?=
 =?us-ascii?Q?itSgXqK+TS46TOTT8dALqxsAvxoTtXuj1PVQ4dcyTEsjGSDsLPYFGInUnBiZ?=
 =?us-ascii?Q?keADlWXGInUqOto+1cHSGiHdqXrhnVzZcbuMesKokbfIKeNOnQxRahbXWl4R?=
 =?us-ascii?Q?8g/p6ghwSGqGBYhQZkgv962Xm4MQraSfX4laZGXVkczsVU61BjePdQQCaseK?=
 =?us-ascii?Q?B5pyOkDR8vcQ7SwupNQPOC4O4adDYEZgvlBdeqOg4Jaa0IasMAn4VIpAQsvK?=
 =?us-ascii?Q?mq6mxYq47TKXKfQvGfDnMhiwq7d9LbxTQR6kvAAC7Xe/9kP6kaCPqwMcKRq7?=
 =?us-ascii?Q?cA0Rsbujt1mXmfM2UnTHnTnhFPFfmouCS/AS+3Zx0FLWkPIAW+LF2npu4EH7?=
 =?us-ascii?Q?OU1hcxU8XGzmOI9h5HD2A8TpOpn2gzahD34J09/y3NngRurxKyTOyvs9HXPN?=
 =?us-ascii?Q?vn4xq8DKqIkC8Z6yIJWiWyx/sS1NhZoIVhx3lxF6nwCgw7ufJQ5IkPEdQlM4?=
 =?us-ascii?Q?/5mHaX+gzufvX0+DdOOKT4Eg2J4KiKDuJwE+Jrs91E0pxXYZEfdpkd9p8tas?=
 =?us-ascii?Q?/ZMc3zWtoETgxfODR35lLCaTQhfbjIF2NjQxp+fyiQdBFtGLTu281UuBjvt7?=
 =?us-ascii?Q?n247VnDnLhhDZ9dyfnIPhcYbyYBd/TjkA9875dC3?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 4f795985-cf45-419d-0a96-08da889d31cc
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Aug 2022 02:29:55.5869
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 +HXvDl2QUmP/OcDoRkimbgvIQ7hSSGqO9tfb9bDRjhrE0aU1rRQArrd7uOKKRtxg+cGs5f7JL/4Ak8IiullNmA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2172
X-Proofpoint-GUID: OzNTGMIo6rX5E5io-XsjusSXnR6LTkLQ
X-Proofpoint-ORIG-GUID: OzNTGMIo6rX5E5io-XsjusSXnR6LTkLQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-08-27_10,2022-08-25_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 priorityscore=1501
 malwarescore=0 adultscore=0 suspectscore=0 impostorscore=0 mlxlogscore=770
 spamscore=0 phishscore=0 lowpriorityscore=0 bulkscore=0 clxscore=1015
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2207270000
 definitions=main-2208280007
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 28 Aug 2022 02:30:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57921

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../selinux/{checkpolicy_3.3.bb => checkpolicy_3.4.bb}       | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)
 rename recipes-security/selinux/{checkpolicy_3.3.bb => checkpolicy_3.4.bb} (84%)

diff --git a/recipes-security/selinux/checkpolicy_3.3.bb b/recipes-security/selinux/checkpolicy_3.4.bb
similarity index 84%
rename from recipes-security/selinux/checkpolicy_3.3.bb
rename to recipes-security/selinux/checkpolicy_3.4.bb
index ad90cc2..3df1bbb 100644
--- a/recipes-security/selinux/checkpolicy_3.3.bb
+++ b/recipes-security/selinux/checkpolicy_3.4.bb
@@ -11,10 +11,7 @@ LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=393a5ca445f6965873eca0259a17f833"
 
 require selinux_common.inc
 
-DEPENDS += "libsepol bison-native flex-native"
-
-EXTRA_OEMAKE += "LEX='flex'"
-EXTRA_OEMAKE += "LIBSEPOLA=${STAGING_LIBDIR}/libsepol.a"
+DEPENDS = "libsepol bison-native"
 
 S = "${WORKDIR}/git/checkpolicy"
 
-- 
2.25.1


