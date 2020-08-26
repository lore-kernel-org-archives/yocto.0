Received: from NAM10-MW2-obe.outbound.protection.outlook.com (NAM10-MW2-obe.outbound.protection.outlook.com [40.107.94.48])
 by mx.groups.io with SMTP id smtpd.web10.6865.1598422931056622232
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Aug 2020 23:22:11 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=JVPeh57m;
 spf=pass (domain: windriver.com, ip: 40.107.94.48, mailfrom: kexin.hao@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H8vhPUKjueaT4pEWr9PIw0G5O1fskpSU+NKb+0MvynfZ5R/gaUO55yQaxEE4elOw5z4UkDm0OAcglq/p5vvjpQau2SqLoVJHIu9va3li8N5jZd1DFTbhKM7xWCyMKJExRweMzcXMoj9Y72AK9mSztOanV3wcWrpzlZtR+Lw1a9OKzVJP4q2jdD7zi9tk4LPRbegIJiao9L7YM0XixK3RNzEQb6/ZtQZq9YkeU4syIJALGM9+gldpE8nRKtJDF4Oi6lKrMKwi53w1hZWhXeYh9ZO55uRFD2+9K/E0RiaFHTD+BAEm8FxFnW0E0d/rEbB/CTCCw2N7mAZDpKY9vygqMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=61xgHqElgvNsn9zuJ5+aoIRNS7yQLlyUnH4Zu2Hv3hM=;
 b=jxYBEn1pVjENrgtYy+XcJfcz2fSJFoZMpdoYsdc0TDaK3CWSxhwVnQID+BXXabWwpSz7Fx/+vnHPHzXLADtMa0fmnV3EpdjPd1VhmvdJJxNCkJc9vWMsXhB3GQF+l+2Mve+M+9+UuOj1hcSoagp5wLINWrtmsVninbi14/gzV7ujvb3RMK++7Riv+WRhC1sui+kvl3uqCWeB+5VERutYo3JiA3ESWYzKYMRnPAYW1GbX3xmH658pIG4KRmPiYemzj9gxABq/FouHS4oSjqHFluMMQIknMRJDgFy3/LXIZoercoZWQ71L0CkskGrAwq1Xb2reh4TE1iO6Y5KaIhMTfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=61xgHqElgvNsn9zuJ5+aoIRNS7yQLlyUnH4Zu2Hv3hM=;
 b=JVPeh57m0JePiS6NgeLHtejo+VLrzfjki9HuOurGKuBepzM531RqGzLgdW+HIg+C4rFbV43uCdjcDPQVT8o2qgAQ5Op4HKjVu8AWW6g8aHn5bmnAtzxBK2x6uDC1PoMYbB3fJFYHwJYAldcvS3OA07+HO6zRktp2Er9E9bpXPbk=
Authentication-Results: linuxfoundation.org; dkim=none (message not signed)
 header.d=none;linuxfoundation.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB4314.namprd11.prod.outlook.com (2603:10b6:5:1de::32)
 by DM6PR11MB2697.namprd11.prod.outlook.com (2603:10b6:5:c3::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3326.19; Wed, 26 Aug
 2020 06:22:07 +0000
Received: from DM6PR11MB4314.namprd11.prod.outlook.com
 ([fe80::54d5:4c20:95f8:e637]) by DM6PR11MB4314.namprd11.prod.outlook.com
 ([fe80::54d5:4c20:95f8:e637%4]) with mapi id 15.20.3305.026; Wed, 26 Aug 2020
 06:22:07 +0000
From: "Kevin Hao" <kexin.hao@windriver.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
CC: Yocto Project <yocto@lists.yoctoproject.org>
Subject: [PATCH] meta-yocto-bsp: Bump to the v5.8 kernel
Date: Wed, 26 Aug 2020 14:13:30 +0800
Message-ID: <20200826061330.30586-1-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.26.2
X-ClientProxiedBy: HK2PR06CA0012.apcprd06.prod.outlook.com
 (2603:1096:202:2e::24) To DM6PR11MB4314.namprd11.prod.outlook.com
 (2603:10b6:5:1de::32)
Return-Path: kexin.hao@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from 255.255.255.255 (255.255.255.255) by HK2PR06CA0012.apcprd06.prod.outlook.com (2603:1096:202:2e::24) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3326.19 via Frontend Transport; Wed, 26 Aug 2020 06:22:06 +0000
X-Mailer: git-send-email 2.26.2
X-Originating-IP: [60.247.85.82]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b2a17bc0-43e7-4655-9ada-08d849885b91
X-MS-TrafficTypeDiagnostic: DM6PR11MB2697:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB2697BDD81F0224E84C477140E2540@DM6PR11MB2697.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	F2Y8+4/UnPV63pOZ0HJdHX2W4Ypr1+/BIGSfp+xjdjogZ2tOoE/FYbOg1JVGexGUXzygwCe/Lvw6tl42L6samZ06U4KCNVUDOij0KgB+6q66Y9OLBVezbY2JBQLM61ilCbXzVmA79K3rRjjl7bpnWeTHlV24mhWArba1j7+VIn2dcP0ipnp3HmQ5hf1c9GJDiQPogkAGeLmh2IOAcf6wf9jQzM9a7m/9VXhleXBGnwUG5y4/WT7SLHmV+jo/Q+qmnqjHE1yBzBZwTXsdMeAUmBswyAAKRny44J9moonGcxBuS4u1uOHu6XbUmyTbxuzwxc8pF6mAZ7ofuTbGrHUNvcAC8t2rfUIs1qhLuwf+WbONyiJUtLVfPc30szECkjcS5aPueFH+kx7ONMIp3VVKCw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB4314.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(346002)(39840400004)(396003)(376002)(366004)(52116002)(956004)(16576012)(966005)(478600001)(2906002)(316002)(8676002)(6916009)(83380400001)(86362001)(8936002)(186003)(2616005)(1076003)(66556008)(66946007)(4326008)(6666004)(6486002)(26005)(36756003)(5660300002)(66476007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	x26DX/L+/oFjquwmniOI27CP629zLq8EXxSDbwZnRCNOB2VoZmMXFI67oDsGEywiDjcC1+tZ1wKojGtPR/J80dIUatMpJq4m2IfESCgYaUp6PiqRjZJlsROATUdzhfu6a/bUU7DMnbLPQZIKqWYC3BCVvlNbjvwdYw2Qpol4qMhJ1r5uiiWMCofU1cYKqaldk2mgGQc3ib5c8t03omTckfHfHoYu1aYSzXKgPidR1ONtwgOtFUk8IsQ/DuWsy7iYpe21egdrROk7q0FVM4+Pp40NpGu66AhQ/5wx5kzye7moFQNQQuabOa0UORMfw9CmOVOdqhd03JjGVgfd6BcpvuJWsuUArXW20xkikGqRaNUoZOjQGbWDRdvHpi3rvADGcY0AxB/c327AgSmVdKyRjc3eCIBv2JYSx//N4w3CIpbJlCTRzDRN4dgxVQMZ4/stHgIlPP5Ng65nYNBc8o8RKA24YxZCCWHZrXZrrlNlc8dqcK7/qcaWuObZw9psR6gUvg9SUqTg062QlrD+M286xtR789i6+fLJj9rX7LeGrZc670lQkT9pXU2LHPzBOT8lc9xIYKXhmR9Kg5E5MfFEQgelCh+eXfkUQhApelhoQDj0/9y+AbZhHfp2qGGZR+8SIkDmxuGUXU97daJzm4PZpg==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b2a17bc0-43e7-4655-9ada-08d849885b91
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4314.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Aug 2020 06:22:07.6272
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: is020eUcS2kzEdKc9RAFcZwFFG5tNSFNOOJhL1ACY3pzqGQQmesG+dpw4yWzG/GidIRvjEt4fOBi2x5SIY2SLA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2697
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

Boot test for all the supported boards. There is a kernel config
check warning for beaglebone-yocto, the fix [1] has been sent to
kernel-meta for merging.

[1] https://lists.yoctoproject.org/g/linux-yocto/message/8992

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 .../conf/machine/beaglebone-yocto.conf        |  2 +-
 meta-yocto-bsp/conf/machine/edgerouter.conf   |  2 +-
 .../linux/linux-yocto_5.8.bbappend            | 23 +++++++++++++++++++
 3 files changed, 25 insertions(+), 2 deletions(-)
 create mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.8.bba=
ppend

diff --git a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf b/meta-yocto=
-bsp/conf/machine/beaglebone-yocto.conf
index 5b481434bd89..b7defb0d0170 100644
--- a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
+++ b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
@@ -24,7 +24,7 @@ SERIAL_CONSOLES ?=3D "115200;ttyS0 115200;ttyO0 115200;tt=
yAMA0"
 SERIAL_CONSOLES_CHECK =3D "${SERIAL_CONSOLES}"
=20
 PREFERRED_PROVIDER_virtual/kernel ?=3D "linux-yocto"
-PREFERRED_VERSION_linux-yocto ?=3D "5.4%"
+PREFERRED_VERSION_linux-yocto ?=3D "5.8%"
=20
 KERNEL_IMAGETYPE =3D "zImage"
 KERNEL_DEVICETREE =3D "am335x-bone.dtb am335x-boneblack.dtb am335x-bonegre=
en.dtb"
diff --git a/meta-yocto-bsp/conf/machine/edgerouter.conf b/meta-yocto-bsp/c=
onf/machine/edgerouter.conf
index d6fd934fa583..75bc5e5f28e7 100644
--- a/meta-yocto-bsp/conf/machine/edgerouter.conf
+++ b/meta-yocto-bsp/conf/machine/edgerouter.conf
@@ -11,7 +11,7 @@ KERNEL_ALT_IMAGETYPE =3D "vmlinux.bin"
 KERNEL_IMAGE_STRIP_EXTRA_SECTIONS  =3D ".comment"
=20
 PREFERRED_PROVIDER_virtual/kernel ?=3D "linux-yocto"
-PREFERRED_VERSION_linux-yocto ?=3D "5.4%"
+PREFERRED_VERSION_linux-yocto ?=3D "5.8%"
=20
 SERIAL_CONSOLES =3D "115200;ttyS0"
 USE_VT ?=3D "0"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.8.bbappend b=
/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.8.bbappend
new file mode 100644
index 000000000000..5d844423afce
--- /dev/null
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.8.bbappend
@@ -0,0 +1,23 @@
+KBRANCH_genericx86  =3D "v5.8/standard/base"
+KBRANCH_genericx86-64  =3D "v5.8/standard/base"
+KBRANCH_edgerouter =3D "v5.8/standard/edgerouter"
+KBRANCH_beaglebone-yocto =3D "v5.8/standard/beaglebone"
+
+KMACHINE_genericx86 ?=3D "common-pc"
+KMACHINE_genericx86-64 ?=3D "common-pc-64"
+KMACHINE_beaglebone-yocto ?=3D "beaglebone"
+
+SRCREV_machine_genericx86 ?=3D "912adf166eb0688e011154048f5fa0e5863249c3"
+SRCREV_machine_genericx86-64 ?=3D "912adf166eb0688e011154048f5fa0e5863249c=
3"
+SRCREV_machine_edgerouter ?=3D "912adf166eb0688e011154048f5fa0e5863249c3"
+SRCREV_machine_beaglebone-yocto ?=3D "912adf166eb0688e011154048f5fa0e58632=
49c3"
+
+COMPATIBLE_MACHINE_genericx86 =3D "genericx86"
+COMPATIBLE_MACHINE_genericx86-64 =3D "genericx86-64"
+COMPATIBLE_MACHINE_edgerouter =3D "edgerouter"
+COMPATIBLE_MACHINE_beaglebone-yocto =3D "beaglebone-yocto"
+
+LINUX_VERSION_genericx86 =3D "5.8.2"
+LINUX_VERSION_genericx86-64 =3D "5.8.2"
+LINUX_VERSION_edgerouter =3D "5.8.2"
+LINUX_VERSION_beaglebone-yocto =3D "5.8.2"
--=20
2.26.2

