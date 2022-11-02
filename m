Return-Path: <yi.zhao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 846F8C4332F
	for <webhook@archiver.kernel.org>; Wed,  2 Nov 2022 07:31:13 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web08.3567.1667374269053795241
 for <yocto@lists.yoctoproject.org>;
 Wed, 02 Nov 2022 00:31:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=TbzNdF6U;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=83050761c3=yi.zhao@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 2A27QHev027485;
	Wed, 2 Nov 2022 00:31:07 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=0LhRFou80w3AEKZN/gvIuQvZmeGzF+HGcPfoOD6wxPI=;
 b=TbzNdF6UO0xeRvAdD4r2VPb+dVVKtYdomRNbbUrtHiA4WqJT7omScbbHUsxkpPuS0Ntw
 m0B6DO0cUMyfFFP+vZ0sMbOURtWKDLvYA3BdoXt9yQJ3SB1alBMTfRJ2hCQyOdTR6HSV
 1J6KKMZE2ZQrildc6GuTX5T+yTUSH0IYNnm6uKfDefwsglNJk1mSgOxp59NDKH2swfQX
 BxP8Dy7UcmCFpq6wUw0gMzL6u4UjrinA1IqdgzGFgUoza5y1wISnNMzqM9AlJBIOcUp+
 yoYKCQL167dKFFKxTOFB4L9ZWp5i5GidC/beOBbGsyudxq7d2Hk2Rsu705fRddg+JwlV Ww== 
Received: from nam11-dm6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2168.outbound.protection.outlook.com [104.47.57.168])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3kj2gsa4ts-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 02 Nov 2022 00:31:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y79sCeyOhIWD1W2RZBJtSqenXltr55QQD+5Dbw2/THmmH9HB24KqwXINgTAV07RvGigsup4j6evXeNLejCXbtdSQ4K9yU4zhZzID/9AHNGgSyqA3W+mJJe9nYQYSljZy9KxJSqoninQviqaAgPSaVUdcC9JRTFlFyQ0k1BuEHuEumCQb15W9NB0il9onYuesgfbYQHwj5OXlaqhwEN6M1ZevbNBj+NMyIFeOG6CUXH55YvE4+RsvTOBjKSFq8H7dZ3yvasiDNDybHFBENDmmGc61xJYBQ/aTmehKR69+ww6fJ9BmXkZHhN+1ZDalsfEWAlQBUwrUVnHWzzR4BXjOdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0LhRFou80w3AEKZN/gvIuQvZmeGzF+HGcPfoOD6wxPI=;
 b=LQQBatgszIO+vyJrXhsTCc/jK2yooZOE1EYDdVILn6D3PQppW/dqMN4Y9SrjROVE6zH6GWNryZ+oXEi6AIYBMMO4zxQf32KzfSA5hSZdyAzcXyUcWDfAKMdqidCXsCVBTfJ+73uSXNsUhmGY4utgihfswXmw+1jfeHwJzKhH+oSns99W6MKIJt8RJaDXEtGkbkDlCu8pv5PCpbcRvwUtHSHopkldxqPEVZmyE9zjDHpej4/cXdCkc0F23Z3VRRNSkAViu+LWQpRbqBWOMs5LEzZlgf2PYxhq/zAeqM1I6FF1dIah6Mn5ONoQ2+ZWH2yrzRf++rkgthWEfgawn5Wnsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by DS0PR11MB7333.namprd11.prod.outlook.com (2603:10b6:8:13e::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5746.28; Wed, 2 Nov
 2022 07:31:06 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::6ad2:95fb:73d5:35ae]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::6ad2:95fb:73d5:35ae%8]) with mapi id 15.20.5769.021; Wed, 2 Nov 2022
 07:31:05 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe_macdonald@mentor.com, joe@deserted.net
Subject: [meta-selinux][PATCH 2/4] base-files: set correct label for /var/volatile
Date: Wed,  2 Nov 2022 15:30:50 +0800
Message-Id: <20221102073052.1567876-2-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221102073052.1567876-1-yi.zhao@windriver.com>
References: <20221102073052.1567876-1-yi.zhao@windriver.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: TYAPR01CA0108.jpnprd01.prod.outlook.com
 (2603:1096:404:2a::24) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4867:EE_|DS0PR11MB7333:EE_
X-MS-Office365-Filtering-Correlation-Id: dd1ddfe9-0bca-49ab-8e46-08dabca433d7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	kw0XrFTrbU6K3O13BJJ2AsdeHs0bnFQsz/bHzTmflEtHqQ9IzHnGDCxjpyUY/z4m5TY29x789mX0UKujcapq4gJKDaQOR1j7tPVXOtLnB55GUD9x8TS24yslJ+zigwR6x+0du2cbRJWuQWezsge4sSTGxgKSQNSEZACX8gPQNQXJVQe4GthdNI8WLTZsMYfvQNnemdm58eNdW3qZz4Olx7z+E5Y9prGPzIrsbPKysGDI+9LAGaVY0KuX09J9Mk1QVudmb6PzBqgB3QrYM7ZEBgoQy8JiiTjegNRN/HBl5YnXk3dznUm6fkp2Ip6NKzMaEDDcIXBr9I7+wBR8cXta22J5KX/15ENSm2l4NN0twCv30JvuvW3PbaDj2cuu/rAyKtTCgCOt5J3bGP35qNANcHPVqf4gA34nI7k0AFinJ1QSyO2pkUpqKCK76w3YoYz/ZsftO810VFC5U0D2BHdz9G5pyCUSXKSE9I58L20FiY5Ip6kkPeSJmNpHPHIYE25dEY7GK8ZOGgBaVoHPQp4HNDgtkRRPmhgOIH0eKPtlTyMux5GTcz8eOmC1sxn1U6lEGMkA5Xs/WxZsnDGuZVbqnijbjRR9r8fs8y4DDpENfr5EPDC5NfQHH2xWjtl6IzwfR2nn36bpdHWZtRoxIEFvPZ9JJykMi1u67F+xg2qT35mkKO4pwBTiWnOHyZLTB0GptML5JmPzI24O1jFnkidmtTZB/GCmf0YzPtO2/CwnkR+gyoWxqVyogAoLmOMnn2j4AxV3oThLlEmld2Qm7020PA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(366004)(136003)(39850400004)(346002)(396003)(376002)(451199015)(1076003)(316002)(38350700002)(41300700001)(5660300002)(6506007)(8676002)(66476007)(66556008)(86362001)(38100700002)(26005)(6512007)(478600001)(2616005)(66946007)(186003)(6486002)(52116002)(6666004)(8936002)(2906002)(44832011)(36756003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?b9Wg4C3souVxzsE360AqosBvX6s1nm5qUhzPqG+iMpyjdzqerwGRJVcfpZ4f?=
 =?us-ascii?Q?y6R7QKA/ZrvrWzrfFFWGYSzm9JlDmTYveobbk+ZfeyJQ6jII33eqnqbScoxV?=
 =?us-ascii?Q?RXPvQxGn1Ngozx4OwU58Jy2knT1nObNGqy2WSOzufC6ewwZ9IDlvd92vTki/?=
 =?us-ascii?Q?sYYuxY6Rl/jPDf0rXo5Vyi3KLai51mkMLs+T0rdXaN7UYSM0ep0aGUwNc4c8?=
 =?us-ascii?Q?OxfaIsXYACnV9IzsqjxKhSqM9c/iuAquGXMBVXwtDWA7ITZy7UUfLRaPVxcD?=
 =?us-ascii?Q?l32FYmmBNRBf6/HncI/d+FaNQEY6eR/Ae1kwjSI+B2BGpJVivPy5ZQGszFGc?=
 =?us-ascii?Q?C4sumxS+0YZc570Pu9XR+S3x8OPhIRm7ywTPp9jsuuXDZvPPKrRJbC5wlGd9?=
 =?us-ascii?Q?axx3Ny3IICNQ9lIfX14yzxePKbeyhlJUgAUeSwgsudazk2pZZDZC8ekwRoSa?=
 =?us-ascii?Q?44SvRS6mdVkfYKTH1M0idAUh34RJ7tFPK3JoUbfYjcbyj5Jc7gFur66PgROF?=
 =?us-ascii?Q?p3+KDtfGHdM2l4D6yLvAlZ94hLA9JK4bFJRr8AtcNolVYXtSDDgy9hgcyE9g?=
 =?us-ascii?Q?eSo3ISGmps113mjeNvo4viwlT5xI3rJvAFh38NyEkvPSyd55/lvUMhJElWgH?=
 =?us-ascii?Q?UHTnsR30rtxxdiSkWDX6gFYnpsOblcZAPWWZ7MArMhMqCps9QcGTxwCWTsez?=
 =?us-ascii?Q?mo86We86lQ1Xf9LaakM703dYjditt+RV7X+ICdfS1mzu+GxmAO227a8RS6Nz?=
 =?us-ascii?Q?kGimjducu59On7MqI29Yl9ln6JEBcrmkOmDRT8LM41nQYO+5tA9Jpvox0QeB?=
 =?us-ascii?Q?mCfdHxeFVlGEhWS4nxo+QqY2kmLfvQpenS3NsI7WIxYfZ2AvNL+LDWG95Oyu?=
 =?us-ascii?Q?u0VGIrpjJa1p9ft8ugKA9iKbozwa2Pj1tqejk5WiGTzDFt9QUIBJFzl9r9ql?=
 =?us-ascii?Q?AgALjSp9mjNUuUlAh6QN4LdcIl8knv2L/gaGVbQMqNQJyaDFzbzFwHLwrbPO?=
 =?us-ascii?Q?oCxAi+1exXWrduDU9/VVBuATuXZzAxmBksnvL+feMc18kmE2jbnK6+RjMQHS?=
 =?us-ascii?Q?gQe5D0p2UE+mCxgTc8SbQaSGrHVWMHIQe4wGmoIlrCTNyQiS7GsnlLnOLGh0?=
 =?us-ascii?Q?dyGtyT5gvOM5lYklcHBCMy8weHzuCblWvZNRTMX3scSi/z6St1i7mrLpWm2L?=
 =?us-ascii?Q?eQvkUKr6CJnMkHO3ae8mqlPfBFfzWSnnXw4uyvaMgsxrZClI5foSrwkNckgS?=
 =?us-ascii?Q?HitMTOXWGa+ocosGbbG3cdh9OLrBVhnPVGQfkkNJQtEVv4t4VMXmr/v8BuTe?=
 =?us-ascii?Q?TPfBd3jt4f/TURCXwZqM1vbZ5FLF8jp2Dd3cZHLKCzAHbASWQH3xm8UknAUs?=
 =?us-ascii?Q?HZ/i5kGrq8f23nj79ftQ+tL5wDMuDMUSe60jrSrlPwE25h5W4L4QxtYPXALF?=
 =?us-ascii?Q?kbgHvJFZt+q7TyiOK5dktNDAuGDADS6n4PbIxIyJerd/mK7PV2sqG7kYMujl?=
 =?us-ascii?Q?I51hWaygw3RoBDxi57bJovkAMlTH83BhtuiF77FuV4faTKxQ6UEydyWF8Pr1?=
 =?us-ascii?Q?zV2nVbQlF4+930fmSTc23512FSKMWV49yGJdgpLP?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dd1ddfe9-0bca-49ab-8e46-08dabca433d7
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Nov 2022 07:31:05.8967
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dQ6n4BmVqrmK3SVlbJO5kqKDLj66ts59XubOQtQW3V9115kZLhYwyyT4pNxVZzUznXcmSxPbq9pOXqM126xvRg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7333
X-Proofpoint-GUID: elTGpQUjuLnaLtko0iSWOvDxXHV7ajye
X-Proofpoint-ORIG-GUID: elTGpQUjuLnaLtko0iSWOvDxXHV7ajye
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-11-02_04,2022-11-01_02,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 mlxscore=0
 spamscore=0 malwarescore=0 adultscore=0 mlxlogscore=886 impostorscore=0
 priorityscore=1501 lowpriorityscore=0 phishscore=0 bulkscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2210170000 definitions=main-2211020045
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 02 Nov 2022 07:31:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58467

By default /var/volatile will be mounted with tmpfs_t instead of var_t
label, which will cause us to have to add some extra rules to eliminate
avc denials of some services.

Set rootcontext for /var/volatile in fstab to make sure it is mounted
with correct label.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-core/base-files/base-files_%.bbappend  |  1 +
 recipes-core/base-files/base-files_selinux.inc | 13 +++++++++++++
 2 files changed, 14 insertions(+)
 create mode 100644 recipes-core/base-files/base-files_%.bbappend
 create mode 100644 recipes-core/base-files/base-files_selinux.inc

diff --git a/recipes-core/base-files/base-files_%.bbappend b/recipes-core/base-files/base-files_%.bbappend
new file mode 100644
index 0000000..f167033
--- /dev/null
+++ b/recipes-core/base-files/base-files_%.bbappend
@@ -0,0 +1 @@
+require ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'base-files_selinux.inc', '', d)}
diff --git a/recipes-core/base-files/base-files_selinux.inc b/recipes-core/base-files/base-files_selinux.inc
new file mode 100644
index 0000000..f2373aa
--- /dev/null
+++ b/recipes-core/base-files/base-files_selinux.inc
@@ -0,0 +1,13 @@
+REFPOLICY_TYPE = "${@d.getVar('PREFERRED_PROVIDER_virtual/refpolicy').split('-')[1] or ''}"
+
+do_install:append () {
+    if [ -n "${REFPOLICY_TYPE}" ]; then
+        if [ "${REFPOLICY_TYPE}" = "standard" ]; then
+            sed -i 's/\s*\/var\/volatile\s*tmpfs\s*defaults/&,rootcontext=system_u:object_r:var_t/' \
+                ${D}${sysconfdir}/fstab
+        else
+            sed -i 's/\s*\/var\/volatile\s*tmpfs\s*defaults/&,rootcontext=system_u:object_r:var_t:s0/' \
+                ${D}${sysconfdir}/fstab
+        fi
+    fi
+}
-- 
2.25.1


