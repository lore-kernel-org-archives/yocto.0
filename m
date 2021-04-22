Received: from NAM04-CO1-obe.outbound.protection.outlook.com (NAM04-CO1-obe.outbound.protection.outlook.com [40.107.69.42])
 by mx.groups.io with SMTP id smtpd.web11.8824.1619074583341131208
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Apr 2021 23:56:23 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=ULRFDf6b;
 spf=pass (domain: windriver.com, ip: 40.107.69.42, mailfrom: yi.zhao@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JW3KYffVkdEvpUOqo8OX3+kHhzdUc1HQONdG52mvc06KL7eK6zE0ZSaR/Xnhlgi90pHnmXAVp7DQgiWj6KCrZmFKkWElSkX4HuzM4YeQVIHLeyiNhTbCoK57iq53u61hkaEZF7v94afL/qh7ZYWa1YnyiEEAxRTKyYrbc2/7XC+PbRRJ1KErasqFxKbZbFdKjn2OhGJ2nMDLCLj7lVJVkcK/Z7H3IE2hy25wxM6ANudk9KCdMT+y2DJkC2aJ9cjQTpnuh0Om+im14pkGyVC9v0vTZwued9aFGBuND7Sb696kkVz72kLsYeZHuBt+HDAT4KTPMEJxA/p8S8Wjwkm3Vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dCk5FGPtC12vbGKdp5yqtaa3R6gFXLiwLIXKnMWQx5k=;
 b=Tnk0c+mttnL1R523//oGdBeU3Q0hkTiVHZR4FvPeJRdSALIUBwGXg7EpdigB817yycxsRm20J341amag7NFsBf9wBF9ku3AKGNRyJcNKkZCh/wamEKBfjhpSEqwTHVFhhosjJwInBy0GU8wIZbgCZNl4S9B5jdDWub8bWRcTiDarwsyUnJaoKK54SiL6NuAUz8xNi/wysfKRh3vTQl29QAUqMUxSXN71eJGylLgToB2uk1tfyLMyxEv2nadsKV68BjJCV5arjSOX4YPE9CH8rfzIv5zVzzNvCXdM91Gi6RcyHLvBR8TvaMyV/MbjX6oZf9d4HXimRa1yR0+/94z+AQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dCk5FGPtC12vbGKdp5yqtaa3R6gFXLiwLIXKnMWQx5k=;
 b=ULRFDf6bhK2qvxirXIb4wP5GrEeJPdrcgmulaN4Oh3ueJBT1Mb2q8LG4p+L23W1RiU3Hcf77ZKJFVRMqa8Q9Y5QqPIuZqHjSs4Qh6FTIpu8+vLyQhJiNe61J2UdnlEwvjNPlxs7Gzz40UkKJxswXfzccXx28klG8iWlnjUi6DjE=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR11MB1789.namprd11.prod.outlook.com (2603:10b6:300:108::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.16; Thu, 22 Apr
 2021 06:56:22 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::55fe:763e:6961:7bbf]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::55fe:763e:6961:7bbf%4]) with mapi id 15.20.4065.021; Thu, 22 Apr 2021
 06:56:22 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org,
	jason.wessel@windriver.com,
	mark.hatle@kernel.crashing.org
Subject: [meta-openssl102-fips][PATCH 1/6] README.build: add "Known Issues" section
Date: Thu, 22 Apr 2021 14:56:04 +0800
Message-ID: <20210422065609.143415-2-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210422065609.143415-1-yi.zhao@windriver.com>
References: <20210422065609.143415-1-yi.zhao@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: BY3PR10CA0023.namprd10.prod.outlook.com
 (2603:10b6:a03:255::28) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
Return-Path: yi.zhao@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by BY3PR10CA0023.namprd10.prod.outlook.com (2603:10b6:a03:255::28) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4065.22 via Frontend Transport; Thu, 22 Apr 2021 06:56:21 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 32ec9ef7-ed83-4e45-4d43-08d9055bbd24
X-MS-TrafficTypeDiagnostic: MWHPR11MB1789:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<MWHPR11MB17891525A0BCE51076EA3150F9469@MWHPR11MB1789.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	sWcxF5jk8wH2g0VUvDYWV7zNpXTLaPva7CFw/3JVwFoJU/Sof277XNvviEOtAnYUBNQuTtcFba19a2kf24PVys8n7771MIqyTb95UhqsbEEdfHSb/f2fyE1FatbvVGVDEv1ubpbLpEMoBGFRLObHcexgYIdt7/uQ4OUCGOkf22ZnWyEsIc0TV7yCJnYaW0riC5YQ8LO6eGTc/ungfJH9INRMkQ1duHZZO4SF9ZxA8l2Kf4G9iFjtZnt1te9/hTQaNPtWPqs3vNh+Gf6hPjaOj+CiTjzEfXeBsdWJChUlzfLbrqHVdo1ei0ezR7hEdebaVQrBeS+Cwm1PHaMJBr3fiYWw1yMAjIeVw6ptKLM0eviD65idVW9nbBXT2GrXo1rAX5WWiUXlAtAsE/3K0KwAD2m5BeXE1x60Fcmzhu+SFWFpmV/bwuK4jWXjDU7yqG7iZsZ76T+eMxQj9i+hLZa9w3LYoC4xRcRx2eQaX4a0yH5RiGtemW9J43I9bHDtdEJFtCQ1LFCtC3YR0t39lccVDzA7dnnVTNqhZv2aJB2RtUgXIh9v+9fE1p1XWrk8lyQVHUsDKtzB5r5UAAcqPFVDYgbB6Kq1OJ1ZByKvz4838dWRLF5I7SvSgiUakIfieZ9WAxraQYFsMf0bfXZ6YZrkXgQFB9uj0FmECu7Xo2xsZOM=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(136003)(366004)(39850400004)(346002)(376002)(86362001)(26005)(38100700002)(6512007)(66556008)(5660300002)(2906002)(66476007)(186003)(6666004)(38350700002)(316002)(52116002)(956004)(36756003)(6506007)(8676002)(478600001)(66946007)(2616005)(8936002)(44832011)(16526019)(1076003)(6486002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?9wrCfIIAB+J9WdrF2Ijt5jRM+6IvqqANVK7rmy1Yn9iHEvl84JyFv42A99z3?=
 =?us-ascii?Q?iMDuPGLuHfJsvQ5fUO8G9NKFAH/gF+gJJNvr6l0yMVDr3JDV98CIG7m93ffy?=
 =?us-ascii?Q?jaoLRDeAvsDvjZJSwAUAXDICAQcyFaRgJ1ziiQ3Qt7h3oLwTMsNgdz9IOqJU?=
 =?us-ascii?Q?fbnk/0Mj5Uv2Uuys60jFJf6VBgyxvSduy50EFGld48B3OnOXfWT2OWfW4y4q?=
 =?us-ascii?Q?Wb+PmKRFGxWOWPEgzEGNj4ix5IvL2SxLV44uZDPaJezOMy6GE6R7M4Kk6T15?=
 =?us-ascii?Q?Np6wjBjAVsrJf3v6gd8zt6QVj+yz9rE3tWogZkFcAt2Ia0jdzaQ65oijQaq6?=
 =?us-ascii?Q?u83AgUG41Pm4z7cWW5HRaqBIPEIXkOkOqY7NzDdDxWy3AUB9b5ZCStMntSNR?=
 =?us-ascii?Q?4FOYT7Y6eNrnBEQPW/NOwZ3lnqeoeuVeOrf4bmSFhPZ5HIrosHlnj4veiriV?=
 =?us-ascii?Q?ynmVwv9xCIM9jCKYvHbz3H4XQbiIBraAjamw+qTXk6pdPrhmphuROO/m2dOp?=
 =?us-ascii?Q?zColcYSjyNVnHp4Ess8Wt3U6bvmUtpC8BJksPK72JmgqBk++uOZOFRBquEhD?=
 =?us-ascii?Q?FI98bZCNBBLwMmBZOq+BrGsr2hbfgKZMgtjxR6BekchdRnIwyBm5QyDC4NXr?=
 =?us-ascii?Q?jL2dYKse1qSbW4J4lgSBLtirPhwK8OngR2PqQQbfaFAzSr2Z4JTAfkVbwuBU?=
 =?us-ascii?Q?csEAXU0y0AKGHeKig6UvUGu8rMq4kD0Lcb5EIX4kzj3q+eyDA/766JKeHjOs?=
 =?us-ascii?Q?5ZcwOULTz3Dlnzs5XSCBZTLArKXRIOoWvVK2Aceb5gkxv+1Oc2wccXQc67bk?=
 =?us-ascii?Q?yAv5dgvvSe0go6KaU3wRjRIpMvf74wXM2a1sTS79YBdlSAyI4V2hFyD8h6jI?=
 =?us-ascii?Q?JiMGaB3Ke6TRgeu+am9HVOVBoKZEWP+q2xKzFGrPXJbClhPf/tdjx7/YfTwY?=
 =?us-ascii?Q?2RnpSj+z0ZZN3g3HZeakRq4EnYroq/jwvop2MYdR2bik/TJBDcsQjh0J7x6c?=
 =?us-ascii?Q?Q7wbgF1ecDXOcrmbpnLGHvCr3pBfjdqV+4gcQ1VpGHZncMpW+Od2r2NKjGdM?=
 =?us-ascii?Q?k3tWL3XyxkY/5FxLWGWej0RWg85iM5hUkFxmOd/JWf8uzUqTgHpCBF7lPerc?=
 =?us-ascii?Q?8hXzaBR4JOWh7GT91J8Faj8rBasHta5Qpxc6xJMC/AsN7nmZosxhMDQD9aJv?=
 =?us-ascii?Q?gbXHgEZGYl5U4JeGTx7o36LDv2by2T+QjmDa2d0dVQNIotDSPftiAbvXu7EI?=
 =?us-ascii?Q?hAOPG+71HWDGK/l1C/VfWJSmCgSS7u4dr45W3oj1RDMfIKsq8TOw55MVPUvv?=
 =?us-ascii?Q?Wz52ZJxcfw65zCq6Ef3PYwYy?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 32ec9ef7-ed83-4e45-4d43-08d9055bbd24
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Apr 2021 06:56:22.5431
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2qKULyVbbtqdKZOOILbtpVe10kGcxh5ss5b5GVDM8yHs920FR7u2QMQQmNytaefGbIY5D1sSE9cRp4zIRZsReg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1789
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

There is an openssl build error if the prebuilt FIPS object module is
built on target with a CPU which supports AVX/AVX2 instruction set.
Add section "Known Issues" to describe this issue.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 README.build | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/README.build b/README.build
index 102c850..36e3875 100644
--- a/README.build
+++ b/README.build
@@ -254,3 +254,31 @@ Note this sample command is functionally equivalent to=
:
 $ env OPENSSL_FIPS=3D1 openssl sha1 -hmac etaonrishdlcupfm fips_hmac.c
 HMAC-SHA1(fips_hmac.c)=3D ae25ad68d9a8cc04075100563a437fa37829afcc
=20
+=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
+Known Issues
+=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
+If the CPU on target machine which building FIPS object module is newer th=
an
+Nehalem (e.g. Sandy Brigde) or is an Intel Atom processor. Then you may
+encounter an error when building openssl with the FIPS object module:
+qemu: uncaught target signal 4 (Illegal instruction).
+
+The current processor emulated in qemu is set to Nehalem. But the GCC will=
 use
+-march=3Dnative to enable all instruction subsets supported by the target =
machine
+when building FIPS object module. The illegal instruction error will occur=
 if
+some instruction subsets (e.g AVX/AVX2) are not supported by Nehalem.
+
+To check if the CPU is Intel Atom:
+$ cat /proc/cpuinfo | grep "Atom"
+
+To check if the CPU supports AVX/AVX2:
+$ cat /proc/cpuinfo | grep "avx"
+Or:
+$ gcc -dM -E - < /dev/null | grep "AVX"
+
+As a workaround, we can specify -march=3Dnehalem in GCC before build the F=
IPS
+object module:
+$ export CC=3D"gcc -march=3Dnehalem"
+$ ./config [no-asm]
+$ make
+$ make install
+
--=20
2.25.1

