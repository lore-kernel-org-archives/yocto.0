Return-Path: <yi.zhao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FC5C54EE9
	for <webhook@archiver.kernel.org>; Sun, 28 Aug 2022 02:30:16 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.55603.1661653808935430447
 for <yocto@lists.yoctoproject.org>;
 Sat, 27 Aug 2022 19:30:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=TX2MAr1L;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=52395d86b7=yi.zhao@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id
 27S2U8tY010828;
	Sat, 27 Aug 2022 19:30:08 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=Ozj4C7QtNpCSZWQ1Oele6nvZfCmiImRMAnIlYb5kwAE=;
 b=TX2MAr1LngYt2BBcPn10aJiOZKrS0oAohWcaMHoKpi2OZMB4VyyAzKQx4QLYfl/gdO+0
 pdikmnWo/wIx3yqWOxdvQI1NuMBFLssf1X7K6UR//v7q7k08zWIz+QrjRM52n/qmWJ0Y
 P6JEyLwsMr2/m0WEz3DY823pnl6+8gxzgkTsdGs4rACqBQmBSzZJnsgjNa5S87TTRnHF
 /Yh7sBt0tsdjvuIcl05G1c9mwWoO3k8JtImhC6vSRZHoFsrSvEReBb28MbbnUFXoh3uU
 d5/ptaG7BRtGL0qG7akY3iXG8It1ql83ccR5EyKFHeHRvaEJvnM3GiNz/DEd2zxii5dp GQ==
Received: from nam12-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam12lp2044.outbound.protection.outlook.com [104.47.66.44])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3j7ej60hj2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 27 Aug 2022 19:30:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TCuvR1f6Us4S3MaM+SV68LZHO0cGWhhUyVcj7U8n41lQrh/oe+YtdQfezcXYnbZPLFyh7QnjijoSMbw0i8sQpJY3Xbii8tjMRxhvydCtgZDrgb4OUtIVQ+eaQnLOK1vHAJZKP2SfDUksOtTipSN5BhSr2xIlWgkoELKt0qQuoo6JJ44+zW+Xog9L+L44JZ97VaskXI2P2giAZi7tDB+B8pxDhm44KGjpTj/JYYQH9uOuSTMBUG9JWgGhBRZzbWJs9dx1kz+6nhO+vnttnzVyc1IrmrrmV0c6zEpriaM27Td/10SqwchqKNiWcp36OyCdV0We5OznQy4gcSQkrHsCRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ozj4C7QtNpCSZWQ1Oele6nvZfCmiImRMAnIlYb5kwAE=;
 b=b0MTat6ErrlPze4F22gv1um/ZOK78VSpHvJaEy/Hu/z3YA+svigAIMdgK5Cl7XzhUG+8Yk/E/IiAbCzoIIRlM4CaJ2jmhXPjI06Avy+UOVYL2E/KKpBQioXh+GUp8GM1+ddef8XGGdofaly0V71mJrregeka+SoCAbvQsS647FMkXZOlq4WcnadGSh72Z02ywEuzfncdXLKyHFWDCbAnH/cYnzn+Hb7srIHECX0uf3FyRw8RAERqqMJZUqSUXnOOsDUsTv2xcrhw4iAnzkBeD4EV06ss46OzofXBlnmQNQIjwlrLkz4obzr1WaDdDBTMuUsHfMyVLrKrHprFtejVRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by DM5PR1101MB2172.namprd11.prod.outlook.com (2603:10b6:4:50::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.19; Sun, 28 Aug
 2022 02:30:06 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::a921:a88e:14b7:56ec]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::a921:a88e:14b7:56ec%6]) with mapi id 15.20.5566.021; Sun, 28 Aug 2022
 02:30:06 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe_macdonald@mentor.com, joe@deserted.net
Subject: [meta-selinux][PATCH 12/16] selinux-dbus: upgrade 3.3 -> 3.4
Date: Sun, 28 Aug 2022 10:29:30 +0800
Message-Id: <20220828022934.47592-12-yi.zhao@windriver.com>
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
X-MS-Office365-Filtering-Correlation-Id: b980ae81-88db-4c92-5da1-08da889d3869
X-MS-TrafficTypeDiagnostic: DM5PR1101MB2172:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	7XHF+vRIN9EfpJmeDxmAOw4bOdpkhaaRucS6WmZkQv65Jnlp197VqoVZMTbWILGmDG8w/adhVoVwMkf2PZk/9H6cbfK0bYbK7ZPKuJTyyCCxKbTCUbNNq6X5kDRYXz16xybP6xer/R05UZjZxP20rj8ykHHl7BrDMAIVmbanyUMBqnL3qor2zufq3e1MEqeM7LEwBnvboOwg8CsDo2Pys0LFFTqHeJWD6nbHr5RxnkLyLsxh1+TFD1A7Jv0G5i0YtkL9szGVNiDjpTYe+nJslUwFZ46AjP6bDDy94CY620C4E9Vqc2Jtxl4VTaBU4H5CBkhXP2EHAmsb+MQOIK4kTXuCIU9t1AF6shVM+kbmoVy1lqTL5Z4F0DDx17KwzjtTwD0LMcxH2Mmn+9SuDzBiet4WoKVovH84f+GI9cL3Hkb7QoynuBNDC9LI5VnNvaeo8k0OE6I53Qe9fQmKGhIG8tYSolzYjx1GvrOXqyyyO0iG4iBlnkHEU1PlaKcdfd3zRMmp1akJBYGmnfPuoi461bfJ39WFPPb0MecBcnhL3+heWSmAPkQ0wIvExCeVi76hHi/w+X/5umGN1HHDG5fGACqN/5kJiUtzG1qVul82RRtHI74X4haU73D4dzbVucZeAunPskFajc4bKE3k3V5tuLWMXyysGU7yCP1WVRLjT9T0m0DGXhxkEIczIKOeJfG1M9fy6m4aacZNIchkIdDtFOdsSZZNSjHCbSnx20RHR7WW2DUsPmgfaEmrk/A6qG+29D+tqpt5Y2+rT+WukbY+iw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(396003)(376002)(346002)(39840400004)(366004)(136003)(83380400001)(2616005)(1076003)(186003)(38100700002)(38350700002)(66476007)(66556008)(8676002)(66946007)(316002)(26005)(6506007)(6512007)(6666004)(52116002)(41300700001)(6486002)(44832011)(4744005)(8936002)(478600001)(2906002)(5660300002)(86362001)(36756003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?0gNBhr9XhFSixkTI3ECHEhVcqbDMfZhKUTj3XMy2VA4om4PjJ/FLHKh8XqUZ?=
 =?us-ascii?Q?HFyDP1rW4C5388pv/rODsps4AqvOQte/Ddp+aVQUY1/JUhnasGHH1Zwsdhnv?=
 =?us-ascii?Q?gg7aHFrPUa5dhLrs89vZ7UtoK6OJo5y/6XZ6xVr5DQ5UIDYC9gN/mvLE0JCn?=
 =?us-ascii?Q?o+DCezgLEOsIDH9XR66m/VjbVQIo1sCtgUv5Lxm2hAwVUjkuIjvj3Qo4fWHo?=
 =?us-ascii?Q?OxDtyF7PnTb8qTn72jGSoYl7EIMN764jKfrXTI06nS0sd2leCqUM8t4Q8iee?=
 =?us-ascii?Q?GbVFYncDUO/q7+CPG7w76BUjp4ZL/GETLpUzHc0Lyfb2newe8mR5LskDj+1W?=
 =?us-ascii?Q?0hGcw2JiG/m8uf6m2RcQ8K36NJk4IaexPCnDuigrxATRojyi4mw+saR9cY95?=
 =?us-ascii?Q?bptviNaCy8ccG1CQ+8oMT/WsxN8Q33SI19Lc31GJfHNXkzRLqNkJjp4GNE6z?=
 =?us-ascii?Q?cLqaA5LBE2piXpw36haTJw6w/2wggHdiw+9EgC1CjtlBm5gzfpqfkx/45VVX?=
 =?us-ascii?Q?CvFf05AmZdu6aZ8cdURMuirhdDU15f5Dk4TMoBF3tkE+PQrB1u/MhXXwYSiE?=
 =?us-ascii?Q?KXFiAX2thKlc+G6V4/q7m24g6ogMjxPGP0cedorBa22+doa31RgZn8+oOPil?=
 =?us-ascii?Q?vrCFln9fW3CJnRxmbEd6rphXwRGCTa54saZa0DS8pdLD23pl2RIhg5BfCg8w?=
 =?us-ascii?Q?SrnjtqFJbDWfriY3RNGic58ivZWuoDN0a3iOeyI6adJmOM9iwPKHIc3PtfxU?=
 =?us-ascii?Q?xhedBPMGxgpoIrwoeGRp4v7iqRaM9rtdSYPfQSiMWTpw7CW4FRd5SR9gWgM5?=
 =?us-ascii?Q?BNwddutBhnUixpiGqJ4Azjz8lu0siVWRI4xRFKnYsMrZOuKB1X6clqPCNXk2?=
 =?us-ascii?Q?dPSptCtw8rQijeTDPk90wMF5ISX+tmz772FxiiPO0pkDYFiZkjFNu7CsuK7K?=
 =?us-ascii?Q?Hj8jkqhd84gjOujKf/eEarGcRYll/hWp1ZWHSLMiZ9oy6MLeHz11qJzye7Vn?=
 =?us-ascii?Q?TBWSxWWJNy/NlCKmlQ65/wlblm2n7trcaZJCPtp8QnbE65YTGeafMhDZ96eh?=
 =?us-ascii?Q?mCJcNe6v1nF18UWPEaiAOoLg2GxKHLGOnCs6IHQz3FvTX9GKTODyWCFcEQ5t?=
 =?us-ascii?Q?DetLxqoHj86WwYhyk9NIyjoWatKqSBg4A+UdC0ownXVcT+35heC1JQDZEQXt?=
 =?us-ascii?Q?IwCi4QhEjHLvZM8NCB2wiDY/idl8CUuF1M7Ux2kDpo/CeqFt17AplGEAfoE3?=
 =?us-ascii?Q?IfQsIrJ4zAs0kuuajNlcTHcI2UOosSxob3r51dE4m1EeLIlmB7eu6Pa8MqKb?=
 =?us-ascii?Q?Uz67SatIYUpnZ8BZaIruT1n5d2OdcSFFBdByv+kIsA9U49qlF01y9nNbFab4?=
 =?us-ascii?Q?qmERAzq/fpna86bDn+EJFbQiycT0LsgMR+Jfo8MHObVwxpD2+fEpiW4ea8z+?=
 =?us-ascii?Q?S/B3J0Ll1DLJmFDhGDzcf3nwT8nnqlk0vt2rHUpLHDqZCw0a8dSfoMM5emQH?=
 =?us-ascii?Q?sWfdIaCXxf3VEInOXCrB/BgIKGfBpCln+PfRJHmZ/EDpJ6WeE36rGNhshcYL?=
 =?us-ascii?Q?SQKEZ4cHlIAU1Xou5+HfltRCYKvbnU9j8H6RCcMO?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 b980ae81-88db-4c92-5da1-08da889d3869
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Aug 2022 02:30:06.6855
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 U26XAfl53X1/o4v4HpHbzfPMcZPsC2QVyoClPuUx1FfnrdRSHYGVsHdlZB5WeIHGmAeZIChj0SrFzyDtmeTNeg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2172
X-Proofpoint-ORIG-GUID: Vm0W-ozlB7bo6gqkZX037xX2wO9E8qF2
X-Proofpoint-GUID: Vm0W-ozlB7bo6gqkZX037xX2wO9E8qF2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-08-27_10,2022-08-25_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0
 priorityscore=1501 clxscore=1015 lowpriorityscore=0 mlxscore=0
 adultscore=0 malwarescore=0 bulkscore=0 impostorscore=0 spamscore=0
 mlxlogscore=820 phishscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2207270000 definitions=main-2208280007
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 28 Aug 2022 02:30:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57927

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../selinux/{selinux-dbus_3.3.bb => selinux-dbus_3.4.bb}        | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename recipes-security/selinux/{selinux-dbus_3.3.bb => selinux-dbus_3.4.bb} (89%)

diff --git a/recipes-security/selinux/selinux-dbus_3.3.bb b/recipes-security/selinux/selinux-dbus_3.4.bb
similarity index 89%
rename from recipes-security/selinux/selinux-dbus_3.3.bb
rename to recipes-security/selinux/selinux-dbus_3.4.bb
index 936baed..1619829 100644
--- a/recipes-security/selinux/selinux-dbus_3.3.bb
+++ b/recipes-security/selinux/selinux-dbus_3.4.bb
@@ -9,7 +9,7 @@ require selinux_common.inc
 
 S = "${WORKDIR}/git/dbus"
 
-RDEPENDS:${PN} += "python3-core selinux-python-sepolicy"
+RDEPENDS:${PN} = "python3-core selinux-python-sepolicy"
 
 FILES:${PN} += "\
         ${datadir}/system-config-selinux/selinux_server.py \
-- 
2.25.1


