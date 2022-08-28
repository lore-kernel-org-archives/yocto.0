Return-Path: <yi.zhao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 797C9C0502A
	for <webhook@archiver.kernel.org>; Sun, 28 Aug 2022 02:30:16 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.55606.1661653814505080416
 for <yocto@lists.yoctoproject.org>;
 Sat, 27 Aug 2022 19:30:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=nP5zT9g1;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=52395d86b7=yi.zhao@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id
 27S2TwdP022759;
	Sun, 28 Aug 2022 02:30:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=BgIzWE1wuMiYxxqoKzn+sg9jTkK7UCvOKFnf2ILYgwY=;
 b=nP5zT9g1aiYhY4aj5rbOA+RaRgudHjnkpdveNqE3s+DloGQK9c/i9e6p1q7j4nbVq8iu
 3lh5zAcAg6eDqVG7KLbnPLFylpXfeQutqEbaqf0g2gsZ/hK9MQNvahWohy1DmF91SzoK
 A0PnpjiUb38nqYXR1uRt3R+B9r6sYKk0ml7PkCSeDLQhOxWOfun+xw0eCkQ1Wc+IPOpa
 urJCvO25vnO3ENOLwCQy0/ysS1PmSTH4pWZmQsjzZrANU67J09hX5qqKMa2b6aAo4gs1
 5XS1GYipr+s55i0Ex0GEImfeUc9T2r6FyScv4xcGoLfwFMWWtK7dnrGyiK0OjvPuEN// jw==
Received: from nam11-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam11lp2168.outbound.protection.outlook.com [104.47.58.168])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3j7a89gndf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sun, 28 Aug 2022 02:30:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WdMQ+Eswn+bz4z49qAfzBDpRdIRy5jJMfahB0eB/wShdDprkztMp7aKZW8IjZtji47qU22Q1RCKGV/s39t+6iPd7gqi2EAyfPy4/L248Hyl+R3YdXD/HzI8i9MkMiJwqqarNDqk0qEstDA0twUZF2UV5rdTzDu5LjRci3tlz78fP7We54+FQWvxCrSy1xNX+HcOCxVmpXaBwMl0/PMyRbnMPXxMS+W36NvTZrQhzh9bPogGcXqBhikORwFTPWd+pWZdebfUfSW24H7v89bDvznMZ3WrkejJXz6quqwwZTIlh12FXm+GBwO67ffTjedFUy6asUaPfDILBbeedCZQXkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BgIzWE1wuMiYxxqoKzn+sg9jTkK7UCvOKFnf2ILYgwY=;
 b=lMjBTaaom42J81ez9VW9CZhGL5qnr/vdrPDRUnHiPipq+oW1DZtvL23Rl2wmp8+wgtPGNpMAbgevufyT2ogrUx/F5Jc+lwsC8y65sXYckX9OuZikdiA6UKg/M/Jl5QaDUfz+opRepiyARUntDU+qNPFR0pKETGFJQW1SOizGBeEB+mP7U1FA1zFjUFkPEsch8ScFmdDk5s8/RJ8fwnpXhSvYHoTDVOO0FyrNO0arEdqKGZoqT9+RvLN/4QknuxbZAC0fUCkPLz0QJ0iQ6txzwV7KigXX6tLexzzfxct/OgNFBzbI0syNrokSCHKyFAVTtub2BrgAer6lzyMflwm4Hw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by DM5PR1101MB2172.namprd11.prod.outlook.com (2603:10b6:4:50::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.19; Sun, 28 Aug
 2022 02:30:12 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::a921:a88e:14b7:56ec]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::a921:a88e:14b7:56ec%6]) with mapi id 15.20.5566.021; Sun, 28 Aug 2022
 02:30:12 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe_macdonald@mentor.com, joe@deserted.net
Subject: [meta-selinux][PATCH 15/16] semodule-utils: upgrade 3.3 -> 3.4
Date: Sun, 28 Aug 2022 10:29:33 +0800
Message-Id: <20220828022934.47592-15-yi.zhao@windriver.com>
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
X-MS-Office365-Filtering-Correlation-Id: bf5b9d2c-4738-4ef7-52be-08da889d3bae
X-MS-TrafficTypeDiagnostic: DM5PR1101MB2172:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	x8bk+9FS8wkxSzDX8dN9H+B5u76QeWY704pzvcrMH24hkfGmLoOhEiecBol2js8l8wz2s/pXLDSxwNPfri0X4c8147MqFZv6nA9KvCQnkF2JaNIVPaLXJECKx3bGXbtpg/JQe4xmL5DjENcbFhPcw//cvOKxEX+KBMaXjj/SyhgejBNid6aPwA73eFWAzCZXdqZytCySYHpDfsh+QNlP3xLuVUDzUnRsx002V9z99ZCg0tgixaRJQ1Q1rMcKHmaXq8JoeviZj9G6RfAnNQhtJRHHZE/NmvlOcmqhuUv4ekSsxJ2fw3JQvcdR6dJsG6Sa506RSAknwuu2ZOy1xn8gGzEt6baLKm6+0re6UAXDX8ZNjspo77GBZz2PyS9+RMOO3VGSIrE2wbZrAC+zfiDDYqopaow46qAgzylvgpHpmmc2Tpj04nQHyT4m6ARQrgHESX3jNRSKfjbiIRrB40txr8j3AeLrn/os6U6F/X0YJvgNNUuSQObd0jo6jweB1FcXnd9eHNPQHyK5O/bfrobcRvELADSq6xkb6K+8SxmemQZrTYZHHF9HmwTx3eO/36x0m/NS06oD9X/pxu7hD7IvlJhS9aTk5xpo0Z8hOaP+GqJRkr5T1QevSxgstPb3gt3sXkFR/G/i9f+n0sRfL2r6fACdr0OzkLGFK/tsD0sH3/Z3L6vV/gV4+NOIkVljUMDGvUYNw3SF+sRoFGCsnvWna0RlayCHDJxFSd+CKVa8olxzWOeYg8nKkuxq0zO2fAeMj3Iwlwp51EgntnMRGY1XXw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(396003)(376002)(346002)(39840400004)(366004)(136003)(83380400001)(2616005)(1076003)(186003)(38100700002)(38350700002)(66476007)(66556008)(8676002)(66946007)(316002)(26005)(6506007)(6512007)(6666004)(52116002)(41300700001)(6486002)(44832011)(8936002)(478600001)(2906002)(5660300002)(86362001)(36756003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?YO0ltZMHjbweWnhUPperwg5Sz/xa6EE1ub04e1IT8h9UM0XyGSTloxtL254U?=
 =?us-ascii?Q?Y40CAAd3VTr/TttxifHeWyFSXf8OIz7JFQWvU3xRzH7J9WyD3U/PhmFZADMu?=
 =?us-ascii?Q?fiECRFVjHJ1JE1GDt/upZZ8NvxaJS5+VmMpvxcAJS9lKXp9/jm34/x691pdc?=
 =?us-ascii?Q?Qxx39BEPJFVW4m3vzf+ndCupkumGxlcGQuWo8a4YSiI6q+JHp6bng4lOHNYb?=
 =?us-ascii?Q?dyCP66cNlVhAPDpmuSU/PgJqAYYIvlWjk0XCGd0Oxq5sqTsFTWp7ki4+LnBt?=
 =?us-ascii?Q?viwbD453izv/ClrAfr1ovNY86SsqC5htlyq+0tsOYXa+ZfgwlfAaU+sbovtB?=
 =?us-ascii?Q?kbEgFsspEScmu1Us+wuQJhSpewSNqzrMZe9xItWEjy8v79iz7XrVO+Wq1r0L?=
 =?us-ascii?Q?yUJaoYOJQ3a5arfARHMNLXnLreUXbNhIOmjgnodwkbdf0QIVcA80STGSMcRk?=
 =?us-ascii?Q?lrr8O+wt4Au6yPYm8rrGXk9auOPZLOg7KhaCiBsddUjzopZkQq1q6HgyEna4?=
 =?us-ascii?Q?jCpp/imNwaIN95LC8havSZB+7f4UZvlSsBm7AzNBnq+V5wxCHN9Re4yObD0K?=
 =?us-ascii?Q?kDs50GUnWUOApwhUapUhlaXCDzI6Kt7Oi/l7OKTdIk/sfgJkwjoK9KN4AKi8?=
 =?us-ascii?Q?8B6EP16o8d49179aTDQbuckaARh7Xx6JZ+S8ZfCNcPx1/QPdZLxt2mqMf0zN?=
 =?us-ascii?Q?hkiutHGlMvYKTV/ug95pRztQWfcX63Jn9FrpXUGNL+WqDYJnZl/wFH4zIqF0?=
 =?us-ascii?Q?EIv/m/OddgKPRpt4ofWfqVVPBhEqOc4pTxMMv6vSPJNFH93KNiVQR6ID/lMV?=
 =?us-ascii?Q?SF28Cl95D+EL5OkBcZScEdzNeJ1UaIpi/pLlX3GlWqVWMSKf9NXzp+/UOiuW?=
 =?us-ascii?Q?31kTaCcQqppT60Mh74lJzpXitkY8Ud9vqt6/U/5QOvvelvYCbkcb610IDsXu?=
 =?us-ascii?Q?xQGPwTTYvSg7akeyDsfHUCfm6fwJaMnIJEwO+YffxIJXgLMDzEuxKuIjlUhB?=
 =?us-ascii?Q?l2rzWtg86ALRFLZlyX0Vx0E2kcODrGGTkjghyJoqg9VlgKFzRGwxDj0iL/bX?=
 =?us-ascii?Q?NQKC7PpyaHN9WVDEKLuxiMWGPYYTZDPUuwEhBeD60w656EhClkUrKnnx73mB?=
 =?us-ascii?Q?nuPkIOexG5iOCxaYih2UwiwIvXu3hMNNCGWQb3sdkGYrtr3ykU6pmOvn9pm8?=
 =?us-ascii?Q?ZcK0NjpwsMx/kAWBqBdm4czA7HUy7KRA3ruLM7Pq7+227AtsWozAAvuHGFC0?=
 =?us-ascii?Q?jpDnPG9kobYTENyntoaelDqngY1hAdmd/dqtyiEIftSfnKvX34Qob8dwEVfI?=
 =?us-ascii?Q?9fEVaGP8uj8Q/d42fKoDu8lc4b2wDIHcktNd3Gh/aCw+qG4WBZgdE904V6g4?=
 =?us-ascii?Q?zzzF+4YMSnAGF9cMFtG0bOItuFZizohQzI4zKM6SY8u9M7cV/IXpBSMWfoYm?=
 =?us-ascii?Q?kcQY8mbKrx5XM0BLlDe9rgE4BzHIKGST9W93py8mrduYPIpvq/46HKexJp50?=
 =?us-ascii?Q?GCfCcYrYZwcxfa0Abx6i+AoHWkUy3NnhLus83rM3Nfj0ojTMQFF5aPmolD9C?=
 =?us-ascii?Q?W/gftJnGkqk3ZNOP8k/EdZo2Q6wIiVbNZkLe82gi?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 bf5b9d2c-4738-4ef7-52be-08da889d3bae
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Aug 2022 02:30:12.0119
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 X2usdU1HQUPY6R+TlsL6BjhsQBBKWHPiwZG+4l23UVfiUNSDztBwMPuKOqWDez4e+xbcNnu/acBJY44/s85RZg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2172
X-Proofpoint-ORIG-GUID: P3RfzbT461Zb_tJtl3DpDJSyZOFzs9Lg
X-Proofpoint-GUID: P3RfzbT461Zb_tJtl3DpDJSyZOFzs9Lg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-08-27_10,2022-08-25_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=789
 lowpriorityscore=0 priorityscore=1501 malwarescore=0 suspectscore=0
 phishscore=0 adultscore=0 spamscore=0 mlxscore=0 clxscore=1015
 impostorscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2207270000 definitions=main-2208280007
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 28 Aug 2022 02:30:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57930

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../{semodule-utils_3.3.bb => semodule-utils_3.4.bb}  | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)
 rename recipes-security/selinux/{semodule-utils_3.3.bb => semodule-utils_3.4.bb} (70%)

diff --git a/recipes-security/selinux/semodule-utils_3.3.bb b/recipes-security/selinux/semodule-utils_3.4.bb
similarity index 70%
rename from recipes-security/selinux/semodule-utils_3.3.bb
rename to recipes-security/selinux/semodule-utils_3.4.bb
index 06e28f4..3f53cf0 100644
--- a/recipes-security/selinux/semodule-utils_3.3.bb
+++ b/recipes-security/selinux/semodule-utils_3.4.bb
@@ -8,10 +8,7 @@ LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=393a5ca445f6965873eca0259a17f833"
 
 require selinux_common.inc
 
-DEPENDS += "libsepol"
-RDEPENDS:${PN}-dev = ""
-
-EXTRA_OEMAKE += "LIBSEPOLA=${STAGING_LIBDIR}/libsepol.a"
+DEPENDS = "libsepol"
 
 S = "${WORKDIR}/git/semodule-utils"
 
@@ -21,9 +18,9 @@ PACKAGES =+ "\
         ${PN}-semodule-package \
 "
 
-FILES:${PN}-semodule-expand += "${bindir}/semodule_expand"
-FILES:${PN}-semodule-link += "${bindir}/semodule_link"
-FILES:${PN}-semodule-package += "\
+FILES:${PN}-semodule-expand = "${bindir}/semodule_expand"
+FILES:${PN}-semodule-link = "${bindir}/semodule_link"
+FILES:${PN}-semodule-package = "\
         ${bindir}/semodule_package \
         ${bindir}/semodule_unpackage \
 "
-- 
2.25.1


