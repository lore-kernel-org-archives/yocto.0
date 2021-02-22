Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.31888.1613980898071503561
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Feb 2021 00:01:38 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=VJStEMMa;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: yi.zhao@windriver.com)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2045.outbound.protection.outlook.com [40.107.93.45])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 4060C38C06A4
	for <yocto@yoctoproject.org>; Mon, 22 Feb 2021 08:01:37 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ucpu0tmfmxNwSr7FXjxOaGm4+5UwDIbNNpTei7g7V3p27jjnYhNU4HoYZzYwlfuOncGQk268zJvjbp1VvmpelmBSELVXKJJjetXrv0KtX0MSX4shu8rqgRvfXVvcY4+THA/gLicAnWRSLjKrDjV5PF8RyVrBLWU9EU0Pjbs8KTuNQSfouBNBtkx1FqL3PdXiUkSb911uwbllpBR1SkHm6EosYiqRADYl/znwN18fx+0cf/kvhZ6q9NMHGCxGtya2QGZZaRUR0FNycFf2kIO2vJP99xRRYlHu8x61jQjM0djyK1P3VCCbs7xeDhh5WL05pPWrC49z7RsoXs0Tag94KQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1legQo7GArGkRUgJvNqDfeC5jk3mF8XNu4WvAdgM6SQ=;
 b=I6eUf+iUWs/Pdk/cNvonlCG0nWqmgB67sfi+9UJQ+JWTRG+DFwwa2ar8t7j7j2vD77Vj+BaJMEGgPQceLTUe8NV/09ZC5XvlhCn19JcgZEnFCB4eFKGt2ICjAqiktw4X/ePbb5x5LXl+xX9iJhlf7J6pOADk97wQTdnp4RxU/73osRuj3ChipINgVhODPIIewAcq1KGdDDAsp2B1c/u+ZD+nEzPb2bkcyrYXGqkafXYO4WFqTnL338Yovf82JmrRBYLugWHO2xCifEw5/xYvWu44gDjvtNjtsS4YC6STNF78o4UaXjkYmY9vp8cDbHji/gEt9Jh2HvhHDNXwAv8JSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1legQo7GArGkRUgJvNqDfeC5jk3mF8XNu4WvAdgM6SQ=;
 b=VJStEMMaFaE4kZjPeVo4TOFjmcv36qLDsC8n7Keis0qVDtSE1RQiJQZzIVzo3hxDqtyEQaj5g3HFzdaKzsIqKpgZrrMVAaQrWlK5T7Lr1j+ERs2+6ruuuXcD7t8SgtUgIAn4KpwU3ybEqCLBuapnJ869Y2FP9XBrKmfwCyzYE4M=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR11MB1263.namprd11.prod.outlook.com (2603:10b6:300:2a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3868.27; Mon, 22 Feb
 2021 08:01:33 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::b954:4302:820c:ca28]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::b954:4302:820c:ca28%4]) with mapi id 15.20.3868.032; Mon, 22 Feb 2021
 08:01:33 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@yoctoproject.org,
	joe_macdonald@mentor.com,
	joe@deserted.net
Subject: [meta-selinux][PATCH] parted: remove bbappend
Date: Mon, 22 Feb 2021 16:01:22 +0800
Message-Id: <20210222080122.65750-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR04CA0086.apcprd04.prod.outlook.com
 (2603:1096:202:15::30) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by HK2PR04CA0086.apcprd04.prod.outlook.com (2603:1096:202:15::30) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3868.27 via Frontend Transport; Mon, 22 Feb 2021 08:01:32 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a1823fd8-56c8-4031-b3c7-08d8d70811c4
X-MS-TrafficTypeDiagnostic: MWHPR11MB1263:
X-Microsoft-Antispam-PRVS: 
	<MWHPR11MB1263154306E267A30C8A9790F9819@MWHPR11MB1263.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:120;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	5WKD+VHl7NZg0MlYUlCzipcwA8lStA00VPZHbVtO9aINqjYOD/R879s23k26xjIb5wtOHWOcZKQ5gG2TmK5Crp9GLd4x9/GcOaRJtiOAsCWcCFQYWMUN1VsIEf/7Dcx5BBvFCgscM9Mp3Bz6QKBaD7lDvr+i5VqfytBhjnygVWfxMLAZK73YgCU2FfxHIg2ufOi9+Q1JMRYYLUAlRu+DnNjBxR+oNJdWJdea6py3yt+Vb83QcEzjQ37Jfe5YDp4WmnZ7V7pgmT3o7/AAubLXw0FEaNiAWvE0BjZFlyZmix09BifCCCoqKx/qp77vfyYjG+hizTNyW0R+qAbOqGA5J1kuC5Ky6CKKNHN7kPJFHNmIgPpGxJwE0p8I8kJbFyOm8oZXSRrQu3ADpNLFxay/tHgS7UCckDRFyRc0zg/DNpBonLh4ZAOaddf4Pa1D1k2Xl0Ep+7tsE1BpiDLxJfa6xZ4txvrMpXFDg8Y3+/LiOjBVQWqbZs89jVW/36YDNil7Xktp17xLaCTwZaj4Gr2uMBplnYoNF8dZeABdLIVAkNmZvvuB31R8tSs9Zmf22OlME6dGqaJeT4xftB1lnbom2rr114HPba3YXZfx9qrOxkM=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39840400004)(376002)(346002)(136003)(366004)(396003)(16526019)(66476007)(186003)(2616005)(6486002)(86362001)(6512007)(6506007)(44832011)(956004)(66556008)(2906002)(66946007)(83380400001)(316002)(52116002)(8936002)(478600001)(26005)(36756003)(8676002)(966005)(4744005)(5660300002)(1076003)(6666004);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?lKQ46wxzj9u8YVWY9d6NEVYzzx/U9oZQl8PN9QiaXdGQ0/wyiHqcIwkCsrRU?=
 =?us-ascii?Q?05BHUng2dF9dYZQluc75BFVPOzinm1jpCgA3DgwOzFYIIpX7bTZ3ITfMmR8t?=
 =?us-ascii?Q?NZaVR/4ZAzufdN3/6Hb56xnskwHo0cZrfCgvWeIXZ2fvwjJklzaVRtzwa2xP?=
 =?us-ascii?Q?FMaps/Y2w4pWl1Bhgw+Tk818K+XLLX26pCIoO5dSXvo0bBF82aHCM9imfY+m?=
 =?us-ascii?Q?rV6XAzNR3fnvC+D8XpBiPXtWrEDwulE8Fs5cmoDj1+C9OAK0vNUtOZemYd6B?=
 =?us-ascii?Q?VugSwpPWrtBkeA9/5Z0Yn1/R35NidP4WkjLdt4guQxzjziup3RfHlMRG/QaQ?=
 =?us-ascii?Q?iAVk3PD523Ct/Zc3bSNC7lx8+fEk8nAmBUk/4VM/wxam+PzyzFoWstzc3kAY?=
 =?us-ascii?Q?OqT7GqYRiZfCvr4mM6VIpkwHX37YDYXkHz6eyNjbnhtDi2KiQ+we0OlGswH9?=
 =?us-ascii?Q?wBhiW3wb8xJ8JSBvKDsYuZVR5ZURgkmOUVmynnTu8t7g/a/nSb+ZvoISBYoN?=
 =?us-ascii?Q?7hDNeb4v4xL8nvchejDBtcQsXEtOvrRQ6VziKFUacf+1CZkEhW3SYcYZa54V?=
 =?us-ascii?Q?u8LHdMIMaQ/EgdUz71Pv4x4FLTiQN6KNezh9IuOz5RtMnuFyhgbz790/IDcp?=
 =?us-ascii?Q?DpLCZM9Nf5YTHo47PvwJLk01lzlhPa/BiwQfy5ZL7yIByVBxY6u/fu1RiZM8?=
 =?us-ascii?Q?KgKNqfFF1Y3MsiEO2+vENTkR/WHBr/ln+PsEpRN4clo/uJDapjmgyjCO4uQZ?=
 =?us-ascii?Q?m7TO2dvQZHX8GPFrPFEn01hhjJY9pCGQCPWVluMYR9UdzQ5U0JSTmFwZNPk4?=
 =?us-ascii?Q?/63YjTeOCmzeZsn2X0T/mdJZKv518LBkDkSlLDCAkN0ruhtCJwhiOhxANEj8?=
 =?us-ascii?Q?ISCRuTQJ2u3MCERrwjf4UOkSnjw75lMHL5lqxCt8NkZ/jkdHCHopZjnvD2Iw?=
 =?us-ascii?Q?ma+pm6hmk0NV+GV39l0nHPNMM2ko48pXtHHDQ56vUBSsWZXrNVnWQ4g6I2VS?=
 =?us-ascii?Q?e5cuHRQS6R1zTNdP71IgBD/fQksSA5OZIZpIrHJCUY2kr40kC3m87TG7yxIk?=
 =?us-ascii?Q?8KGyFzMBnshGLTEdRplA/cNfid0u92mjWj6TYahWONL7fRGOxME/XfMQXQT+?=
 =?us-ascii?Q?9l9ecql+k0cwe1nX3DYuNhWFasrEwt3AzppdV9UmdXbVSVmUVxLD8WhZa+Rw?=
 =?us-ascii?Q?lpYrBHmkGuk8quJ+DKjTpctoPKQfkM/Fhy9QDet2zqLVG4sjnhhlqNXVyaLY?=
 =?us-ascii?Q?gElm7HjVidYBEuoZRgdBLh7htK6fkjIzCc1oNtbzJzO0XDCLdqGs+UibbQdK?=
 =?us-ascii?Q?wdH166u6Zsvh0zQhhSridIpP?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a1823fd8-56c8-4031-b3c7-08d8d70811c4
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Feb 2021 08:01:33.3506
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 44cdUCpqq2uw/b/Nj7w8Daq6kQWi4co8dVDP/eEOXa/CW/nE55eEi9ZWjKDdTzWQgmvEAtmBWuFn/HqbRjCHRw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1263
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Remove bbappend since parted 3.4 has removed the enable_selinux
configure option[1].

Fixes:
QA Issue: parted: configure was passed unrecognised options: --enable-sel=
inux [unknown-configure-option]

[1] https://git.savannah.gnu.org/cgit/parted.git/commit/?id=3D059200d50be=
b259c54469ae65f2d034af48ff849

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-extended/parted/parted_%.bbappend | 1 -
 1 file changed, 1 deletion(-)
 delete mode 100644 recipes-extended/parted/parted_%.bbappend

diff --git a/recipes-extended/parted/parted_%.bbappend b/recipes-extended=
/parted/parted_%.bbappend
deleted file mode 100644
index 74e22b3..0000000
--- a/recipes-extended/parted/parted_%.bbappend
+++ /dev/null
@@ -1 +0,0 @@
-inherit ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'enable-selin=
ux', '', d)}
--=20
2.25.1

