Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 323E7C48BF6
	for <webhook@archiver.kernel.org>; Mon, 26 Feb 2024 05:43:57 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.14888.1708926231262979506
 for <yocto@lists.yoctoproject.org>;
 Sun, 25 Feb 2024 21:43:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=YtjnbZSq;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=27862c89b5=yi.zhao@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 41Q5fijA029913;
	Mon, 26 Feb 2024 05:43:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:subject:date:message-id:content-transfer-encoding
	:content-type:mime-version; s=PPS06212021; bh=EMjSyVLJEp+YAA6cE/
	1FrhQYJN9i6+KlXPsh1PkzIJ8=; b=YtjnbZSq9rbU4iTTpnDOZrbhZmOFkzekFR
	T+uCUZeY9YlKlPKncRpb18/E7zIFmzT1mTL4ooeS9x28zax/IjbBrRAcST8ZIzl6
	YapIFrJb+PkIZ1cpPiZ8xXWNDmgRWF1djFDDFmst2n5bok2tIli9Js+kQz8S83Aq
	s9VdNhbhymjpqdNqsoX0N2UhYfwr0EAfqkJr9LAjH1wfCXs1dENY4U5uC4F4Ump+
	QKPuIHh+yVk/AqH3liOsREd0YSpLI+UWai6IdGQX1ym1IZKS34Su/0eh4mfUs0QK
	ldwWsHVU70WqagfCCZYMpge9eEm9Mp4LOUo1MeMUSH7CbU7+O/Kw==
Received: from nam12-dm6-obe.outbound.protection.outlook.com (mail-dm6nam12lp2169.outbound.protection.outlook.com [104.47.59.169])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3wf7e69gs4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 26 Feb 2024 05:43:50 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cjVQrl42A3+Isn3WTWAiGUJ31Q0DH36dkxJsVMzxeCiTICLdw64lJMqpFUX3rT6qjARFvEgwIEXMws5zcJwCnRKU3uvMXAktlgeEkpT1w/6YXxr1Qx5K/j35cx/JenRmOP1QiJ29l6k5jGQVaCI0UB09Sl4SiJtqztVAktb9kOT8/1hey+5lc1eNZ8qVPR2/a8+8IY8649oCg152PxFTvFciucfgUbcsnNMXqUb4mEOwtnI9PEaGVJWBkD6Rk8h+r4R7i6raN29fd+iQnLlTyZWvbb7e2CWOP0M77UR09LaVl+1FXGV16LGpw0SFmYHQ7aEvZiHWk7XS79wfXd6x2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EMjSyVLJEp+YAA6cE/1FrhQYJN9i6+KlXPsh1PkzIJ8=;
 b=Q5IxD77SbGj/wDUOXRbnzUmhNxZuMya812UZ9gXv5FuEsHTOv2KxJRpmwhQd8kEJ7xJojEm6dYNmv66NzuuAvDwyw76jBgY8hBMIn6TR1CMisc1KrtL9i9zargwyDugprkq+w9/LxPcQt63Q3HMWPTyYrvkL+Pi/0f67qjo3zCfxJRfo/EzbHSWVZQEjBwh72nUMbq+D1A1vNjc96hGNoEWdfdaMqnC6k6aCEndFx6NCL80mC6kuvDgOztb9akjWG86NbiqiFS9sAUaXwaeKx9m4xi2niKLrFhEEi5iGvTf1Cekz6w3k2lgBnpPJw9K4h1u//170JmyNwkZXHrrwEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from SN7PR11MB7489.namprd11.prod.outlook.com (2603:10b6:806:342::14)
 by SA1PR11MB5804.namprd11.prod.outlook.com (2603:10b6:806:237::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.22; Mon, 26 Feb
 2024 05:43:48 +0000
Received: from SN7PR11MB7489.namprd11.prod.outlook.com
 ([fe80::4d75:6fb1:18e8:9aac]) by SN7PR11MB7489.namprd11.prod.outlook.com
 ([fe80::4d75:6fb1:18e8:9aac%7]) with mapi id 15.20.7339.009; Mon, 26 Feb 2024
 05:43:48 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe.macdonald@siemens.com,
        joe_macdonald@mentor.com
Subject: [meta-selinux][PATCH] refpolicy: drop ${SRCPV} usage
Date: Mon, 26 Feb 2024 13:43:37 +0800
Message-Id: <20240226054337.240502-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SI1PR02CA0010.apcprd02.prod.outlook.com
 (2603:1096:4:1f7::17) To SN7PR11MB7489.namprd11.prod.outlook.com
 (2603:10b6:806:342::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7489:EE_|SA1PR11MB5804:EE_
X-MS-Office365-Filtering-Correlation-Id: 8828319f-2c30-499e-2f51-08dc368de724
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	QYrbAmp9clq33eJgleLyExKRv9wkdg7KShALKjgD80o3W8jjOhldbLU7O8A/9ac4wb0ncjV5ZN/wxDcWFXnOZlPnwcNieC+hc0k+Ywg+KJwCJw/zWo/91mgyQuiNiLc/YP0XQF6VpvA5uVbN8Gnj62bFZvZrACUUzlB1Ccy4ch+oq2fpOoKLHITCsyNGSxlKtad/pGhSyHpEkbhED+2ZesS2bh4Lsrp0pBoxsJFD93XxkkEMjwUglZK17E3Hfj3FhkdmNtNGA/TH1Z9M8AVywoOeO9cLrlgV7YHBEikziqvFbyynvH7T29/q4+V74Zl5R2NXvSS7QJ+DQMcs6m7OK7j8/lOxH+XEe1zH2CwZIo71f9O5VFnQnw/DW5TSIQO65RepeErbjV926QKlKpeNnKbCcW9F1B0G60TVofkt0GQgFTp/gCRkkAHnMCwJBM1Fm6CotztOng35GQ4xJ1Rx9e7Cqm6bfgwO3AFOukH2bMX9AzuHJQIwawBJt1oxmlGqA0f44RQjrfZyHP/7UtN56ugXxs6tfTszZmH+HbnZMJWKQtcxNCBnh2jO7Hq3h3dzLQjUDEk1g+xdvUZFZqQRXzKNQwRIPSb+qOhWVRqpoKjKfbtVY45TMCmwRuWZpVhgn4ac+40igtb9JiFcdDkKLRiPqf1BAYtQ24zCtwgAUSst45Q9TsEhk1ULCG3MHft8EpAGwLqdE0U2V6/MnD9lFQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN7PR11MB7489.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?E7KQ7itcdTb0yh5266t+L/osMAnnByby48cnLMvcLcqosli4+vFAuBCxu1kb?=
 =?us-ascii?Q?He+x3WNFQdvvwYAWf+KOCemo47aj2D+KqTOCUG+6/IUr6OfDI7sFWCILMWKU?=
 =?us-ascii?Q?3g+V6WcmryHexNP9KvUN8dI8R5DOPrBi/ejKahHgXpQG5VdJbTEt/S3ARHxt?=
 =?us-ascii?Q?M2axaBE45GZ9Gd98RdL3tg5IgrL49jp0lh4oI82UF4eZQqv2/UIa3EP6JfEk?=
 =?us-ascii?Q?ApeMeDA6FLH4azvkvDCHwt+CGsN55gBgznZBUAhIIgQhvu5WqSaVhNkmycpa?=
 =?us-ascii?Q?e3UbO88T7RAl/JuZ0pMkscEDR4ZPSyfDKf0+WVXW9yAR19l34TNvTL+xyZSd?=
 =?us-ascii?Q?czpd4PsHDQXzCbN+aPu9SN9QpusXcisxtiHseLGd85EjQErKyO9ngYx30lmm?=
 =?us-ascii?Q?Bn1gqoINX+BT8Vsn+BLqKYb4MWh0vK5VKakFyBYjQTwweAQtyv7M2hWQKY86?=
 =?us-ascii?Q?xEphqwIQij3udqIEjhyevHuFOZmDDrCN43upg1GlNbeaRCO5C/+FOTJhzPGV?=
 =?us-ascii?Q?f14cPZHliEg5WS1+7GLO4O4wUUE4n3DpqB9PJ50ADchxDwyePXUrobdDssxp?=
 =?us-ascii?Q?XTi5ShVvetYqOKmNRqD7OPwPo5CLDOS8IOxSStwJlx1vGyHBnzIGx0PVyCO8?=
 =?us-ascii?Q?ztaOVpB50r7KSeJJYTsL0zwTp3m0zt0YhfmS7y2MLRMqGx4WnxfNuB9It1pu?=
 =?us-ascii?Q?H4jbuMl72awf6qbb0gZxckeUEaJAk0sJ30U706ujfXsxkRnNX1mVc5kmoAnA?=
 =?us-ascii?Q?5XZqvR1HoWEicmPrK6GL4JJzvQMNqThycMLMBq4CoCpnDXwavKrKDUQhEnXH?=
 =?us-ascii?Q?gLTGDClXRrndz55VgnqOikB1nkRICTrKBCM5JXvsTj+ZbYpRRyWHlqMIQqeN?=
 =?us-ascii?Q?M0bBWX9KNZtUqhThzaK51AaZjQ1RJBdUvQrWI7+SwBkNGZIL2zOPibAovnEJ?=
 =?us-ascii?Q?MRVOzSk5dfQG2tBPc/iCbn/2JdZYzjT4kmtW4qD+qHq6uGpActbSn5KxPB8m?=
 =?us-ascii?Q?5J6HpiOI6ghXDuu/Z7KDeNXbIkfNrwOQpOmuGsidQoqt+4S7Tf6Otxx7nBQ5?=
 =?us-ascii?Q?1ClLkMAwiA9a4kqfJ64wzeUi0jiEHGavkwRhQISy0R0ubUAn5MK23DCC9Nhx?=
 =?us-ascii?Q?rdyNgJyglGxSlHi5JvVA954YvePvhO6oVlGtWSW29aycLgwxBsEeg7Q2xa7a?=
 =?us-ascii?Q?uBhYpFXrHA4GW0vQ53ONe/fjWs8llMzpKggCVdw8kmzzk68xFU3eKqkPb5mR?=
 =?us-ascii?Q?rTv8tqmKu4go71dR9PJpY5cU0ok9b4MvWaIksWazGmN4rhCxnrsSSSKCLfmQ?=
 =?us-ascii?Q?aO3EP+O466BWeKTKsblkCIjwdy5W3kRDh6pKdS8bIYxx1BChVT31y8rtpgDk?=
 =?us-ascii?Q?cNUJxtObntzB4Z1VOsMHx4mjP1xPMwRWZuMpSuJK/czQguDL1GiQXLM2ts6+?=
 =?us-ascii?Q?DNyFRCiHbh7IH7Z1bj2G8N24T7mkVnktdURFvFKA8ZTvB5EVCttTjtGD8fPM?=
 =?us-ascii?Q?g191UJHQ4H4xybr5/CI18csu7fRhE7qLYOMGlWrXeN4ZN8XPOcA2Pt99PuCM?=
 =?us-ascii?Q?E/XFiAldzzej8TfO+Pe1hDzE+zkW42Gprmic6LEF?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8828319f-2c30-499e-2f51-08dc368de724
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7489.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Feb 2024 05:43:47.9086
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LEsH9TV4Dn4+3pOsF6lnoOwVwwLNAvBBGZ8HHwSmnQoCJJQx0CPbUVFZfoXkUWsN4s11HDlwObGP+bx5WP/MNQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5804
X-Proofpoint-GUID: CwP2WJKoapdakOuFnwIh7pnpbUF8Ktfp
X-Proofpoint-ORIG-GUID: CwP2WJKoapdakOuFnwIh7pnpbUF8Ktfp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-02-26_02,2024-02-23_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 adultscore=0 phishscore=0 mlxscore=0 impostorscore=0 spamscore=0
 bulkscore=0 malwarescore=0 mlxlogscore=824 clxscore=1011
 priorityscore=1501 suspectscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2402120000 definitions=main-2402260041
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 26 Feb 2024 05:43:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62600

Drop SRCPV as this variable is no longer needed in PV[1].

[1] https://git.openembedded.org/openembedded-core/commit/?id=a8e7b0f932b9ea69b3a218fca18041676c65aba0

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/refpolicy/refpolicy_git.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/refpolicy/refpolicy_git.inc b/recipes-security/refpolicy/refpolicy_git.inc
index d739522..018e29d 100644
--- a/recipes-security/refpolicy/refpolicy_git.inc
+++ b/recipes-security/refpolicy/refpolicy_git.inc
@@ -1,4 +1,4 @@
-PV = "2.20231002+git${SRCPV}"
+PV = "2.20231002+git"
 
 SRC_URI = "git://github.com/SELinuxProject/refpolicy.git;protocol=https;branch=main;name=refpolicy;destsuffix=refpolicy"
 
-- 
2.25.1


