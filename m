Return-Path: <dwatkins@sierrawireless.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0AA9BC433F5
	for <webhook@archiver.kernel.org>; Thu,  4 Nov 2021 00:20:30 +0000 (UTC)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (NAM10-BN7-obe.outbound.protection.outlook.com [40.107.92.65])
 by mx.groups.io with SMTP id smtpd.web12.5249.1635985228017946038
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 Nov 2021 17:20:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sierrawireless.com header.s=selector1 header.b=oWxgo8dp;
 spf=pass (domain: sierrawireless.com, ip: 40.107.92.65,
 mailfrom: dwatkins@sierrawireless.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fR/070SvTKyEGIfQ39uK6zym2AA80h0Skjbt39vD4muLyVtqywtLShOnygUqBoEp3u61Ea4M/IGRerqmbzrM7Coi++iZuvX7kp6s8QTBw1J34UFLze7ThvSoUEV2hs9lsqdmRZW0jxRUw7I9pXbwbwtO1slB6rp1z+3d3IjkvmwRJzYcpyCQCl2ZavMvzKd0TXyDpWmfRyF/ixxcxS3JxqcIDiQSO6vDn3w15wYal0H78x19B2n8imBc5Ddrewawa6EGHDs65nf+gyCkstHzmJ4Lw9E7MpkFR4NPwXOLEJjtMZ6zBb7q4oG4nWtuD5qGVemaeOuI1xIfuQJ4xTrdEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rlxmznhxVjlQw6juqr4ABs81PL0rLJvzgYhDOGqNPd4=;
 b=YegPRENfzHHhFHVRgU0brduL1LsNp7CxHarPYQhunA3nskodIkTndDmHDXeR2nIyR5sE9JZI2GAtuvjs4+H5equ2cG280uqRo4+MDTNt+48fPBZaYxniczYMGmMeMtxeNygJJ1ukb0D+ApP+ysXIpibbZ6mtq6E7g34J0HBh+PSffAWDDJPW49VGlDI0oRxyeEi6wO38ZdRjFhKCZH67I+anSFfiiuh7ZOxD5EfshMl/wqB/kXUYuyc6l9SV4tS2rXBq68XJoCTm/CIBXYmDxYg4j6WvTlEYb85bV1SskM/Q7dUT0jMvlBTsSj1KFi4+tU47LV8zFYpWwy6iQ+QK3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sierrawireless.com; dmarc=pass action=none
 header.from=sierrawireless.com; dkim=pass header.d=sierrawireless.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sierrawireless.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rlxmznhxVjlQw6juqr4ABs81PL0rLJvzgYhDOGqNPd4=;
 b=oWxgo8dpkoSQwmrHRjtjf9S0+iFlxtuS2EIfVCB8KBl20mVyXAgH/vN0D5A7QMB+17tywMEViYaVZX7Y6nkT+YiGq3brBqHc789ysNCXT2pRKdO6FNBnBNUDQ4CLS//6U0uTpCdJRmURu+k5ghq1rnujdtF1v/T6dSiS5TZEsK4=
Received: from CO6PR02MB8740.namprd02.prod.outlook.com (2603:10b6:303:137::20)
 by CO6PR02MB7777.namprd02.prod.outlook.com (2603:10b6:303:a9::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4669.11; Thu, 4 Nov
 2021 00:20:25 +0000
Received: from CO6PR02MB8740.namprd02.prod.outlook.com
 ([fe80::49b8:c463:ddb0:47c0]) by CO6PR02MB8740.namprd02.prod.outlook.com
 ([fe80::49b8:c463:ddb0:47c0%7]) with mapi id 15.20.4669.010; Thu, 4 Nov 2021
 00:20:25 +0000
From: Darcy Watkins <dwatkins@sierrawireless.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Dunfell - ERROR: ca-certificates-20211016-r0 do_fetch: Fetcher
 failure
Thread-Topic: Dunfell - ERROR: ca-certificates-20211016-r0 do_fetch: Fetcher
 failure
Thread-Index: AQHX0RA900BWtHKgJ0eghj1mJDarVw==
Date: Thu, 4 Nov 2021 00:20:25 +0000
Message-ID: 
 <CO6PR02MB87407C625F4A1F4A228EC9C2B28D9@CO6PR02MB8740.namprd02.prod.outlook.com>
Accept-Language: en-CA, en-US
Content-Language: en-CA
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=sierrawireless.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1a4edcea-1bb6-462b-6de7-08d99f28e5e1
x-ms-traffictypediagnostic: CO6PR02MB7777:
x-microsoft-antispam-prvs: 
 <CO6PR02MB77773F30A0DBAA36AA642909B28D9@CO6PR02MB7777.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1923;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Q99awjgpu2wNEF5aEz+djwGtiyHmWinWnONJuZpRARKky0TkvhUIa7Px/TbqwJJCcDOhWu0G0ciDpqqHxz11dyn7uSQmwxf2P2NOB6B3DfM+iz6vAtVEpnfeYcoXcB7giuZy5Uc2w/jnV9Y6JUv5/hxDsogEP0f7Gm4qgWSeJ/uXFPBFUbL0GHoLv3TM13JfUA7TZvX9IJonB906B6pRV9YM0jxGvGCzlzhj/wR7aJ4m6BB1AaC/m1CJan69QGJpIZqUi/ZWykKp5pOeggixLG2e51PUHJ07SsiyW97Tb8Q0x84BHw8rVhZjZ0I98hCKDNM4bQObgi1un5zAddRJLXKbldb3WThAqyhmcxjlb2xx48hT6uG7Iiotnk7ZCLgcQoJKGMVdWG4+yo649Im3EcgtMeSAVYdWHPgAwlAxaj08GTaBrX3RGNNNn+yg7r/5uER9Naaor8y0Ub7zisztd77HKkuSW0jEf+OMQzSUQO0OpFWEP6/o/rEU/HC/bYSGOgwnO80b72ReTMY9nJ6UfQEo/YahuAacRrfwwiUZJyDotJXR2pWXfCtijhHvvunPzeqX+2wllUIetnLiRgbH5zwMdPY9xdj2hSkPblBSmZH0az0XUHQV3CgcTsHXtnFbWLiu1TxUVokPyK7JITRDzJ938jL5LjeWIOKNGtE8ifCBsgGMeETNtyzX6ic1m42jN1MQtmvWOjSxnoPjy2WM4+rL97tEOELyaRCfBUvNvQi6q3oyJDJ7ra4KTfCE8MR5NNdw/MjaWyriAXVm91id/2lS2atcZSpOpt05iwnkt088TWlfQQwU6GyT3mY9/NqwUeDXGHna/Q05AKUbRGG5vA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR02MB8740.namprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(6506007)(186003)(8676002)(33656002)(71200400001)(66946007)(76116006)(9686003)(55016002)(38070700005)(316002)(166002)(83380400001)(40140700001)(66556008)(66446008)(64756008)(8936002)(508600001)(52536014)(122000001)(86362001)(38100700002)(5660300002)(66476007)(6916009)(7696005)(9326002)(2906002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?MaohPXJNfnoiFANL2GxN+OqFle+1D/I8kNTgRHdmcMceXNY6aJuCe5Su?=
 =?Windows-1252?Q?lHCe41zgT/wK4n8ojBZv4ocozsfmaG7Uu3euQuxWDyTNKrrYkkLHzpfp?=
 =?Windows-1252?Q?3cQtRv3IfX+VR2orbXgRF8QDXL7cfyN/xU1K8DRXAy2MzQHoAI8Ro4DA?=
 =?Windows-1252?Q?OWnK9Vghs03cKYEyxaKOHZCApQFgb+BtwZwPoZuHhC6/5FmGbpzrdLFh?=
 =?Windows-1252?Q?baT2FZ80Dx6Zx+rBSm7ablDlPcwZujdccTl1RseTgCR5stXM0Blwk/ZH?=
 =?Windows-1252?Q?O3U+h1hlnOumZbDjVSvwwToCRMQSl7TAQlrxy0k4+JH5r7LgJvXrLcdU?=
 =?Windows-1252?Q?ODpp9vRGxj2AP7s6a9JYE9CyXtzILCj0/TepNttE8865WQU29A/42u53?=
 =?Windows-1252?Q?R6dA6N9WC/0N3Lcbps6xbLJ7cZwcCshu7Cn/yGCXCkK38LJ4iMoln6Xm?=
 =?Windows-1252?Q?d2kCYDchs0UGMu36mjXUxxB9RwCPmpBYepUHbknjfZnK4Tk06a0EtSgu?=
 =?Windows-1252?Q?QLf5fypGaoIaeVpcIBjLJ4+akbrUr40M9MlPSIalYYev6+Y3pRNf2m1f?=
 =?Windows-1252?Q?vwpKskpkkhs9Zz0BJFIcNtp+kVRBhAi+8erlbtRNYtqYBJs+CtoUZdog?=
 =?Windows-1252?Q?3uMQRGa9LIowoAQEdaJUX13OCjs14YYoLQ+OIgqtpayhqZFdbbZOPMMK?=
 =?Windows-1252?Q?qwBFa4JY8p3DNg4Z3v9NUVXXxU/74CCjrMxu9jcFiHNp66d/9L0m7rU8?=
 =?Windows-1252?Q?8hqsx1dxIFZgfjeASxCk6Rb0jGFvW3rRgCR1tvOYlE00/Ox5Q8ysxp9Q?=
 =?Windows-1252?Q?tUXuaIDmagsXOeN0db9l383iIZtmk92xYmdssxBUGJciS++DzC1BsqIw?=
 =?Windows-1252?Q?WLctdrTFEbTeGLyD0RNPLX8LfyXUemMmVnO5uP5g9IMlVOkdkgXnWni6?=
 =?Windows-1252?Q?649xDDkQiDvQTl+FLY0IcEycBCQB80t5vKO1XHYAsVJh9WdrV6fjpUAs?=
 =?Windows-1252?Q?BfeiIqTWLOUKbjp1OdJAojiw+7WbCRxtTX6Kj7N7iRSYeqCJD8psZ9KK?=
 =?Windows-1252?Q?aeLwom7h7TWjVVYyHWe3F2fyM7LPjUj3ZspQI1JP38qXGblhJ4hxTGA3?=
 =?Windows-1252?Q?cTrODT4onpNgyiGV2OMclMtCTyGFc43Jp7hTF1O0vPRncmFrHU8Jqn3G?=
 =?Windows-1252?Q?IzP3aSCWtrVE2/J266OoeYlGFln3re+GgGmFfd2qFm86zaO6rGVq74ei?=
 =?Windows-1252?Q?TEusCq0rA5NLjreJjS1ki26Pt2F/xkiCp61QEHgkQg0lwA2WfwTDEOAu?=
 =?Windows-1252?Q?2hYmYLJfP4RFV52028G/vnD0m0tkBBUSD5cp/6zxZkGY6ybeIWBCeBup?=
 =?Windows-1252?Q?KAo/c30jtQWju9451VvogpsaQxrcB6gZ1Ubu16dzAm4joEX5tpLjZWhB?=
 =?Windows-1252?Q?xPfMoFvctCWBLnid15OfJoc4/flIq98ZpVmnjIhjgnDSeRyIiVIf1xqv?=
 =?Windows-1252?Q?1kMNFaAT4vpz9M42ufXkfIDWFWl5vATdiEwVC4kU7Tw6WpasnjosiZDF?=
 =?Windows-1252?Q?h3kcP3bG8/X4JVQQNREbLRcEpiVgnQCRDAUA7RHCsf4IxZdDqUgvdmJq?=
 =?Windows-1252?Q?i3FSyNQm2VbSTlSTXba2/Gu0CaopZDI0S8G4x+Bo2Mr6ZRSStmdnghXx?=
 =?Windows-1252?Q?oymwJO6An9uv/LVdwcoUfoC+9esnDS+NjuVyBs3TF3Jv37K07TkeWd55?=
 =?Windows-1252?Q?CkjW4Ce6DMxoW7tGu8Y4SMHxC+p1BNThBJKdrPLgnIV+JDFOjP3g2S9d?=
 =?Windows-1252?Q?S//A8B1z0w9BAq30Exx290WjfHqqn7PS37t7MxkFRRTkM8rMHbPheU4s?=
 =?Windows-1252?Q?0UN9BxekfnCaaCjR33gLCxLjHimKOJiCgfw=3D?=
Content-Type: multipart/alternative;
	boundary="_000_CO6PR02MB87407C625F4A1F4A228EC9C2B28D9CO6PR02MB8740namp_"
MIME-Version: 1.0
X-OriginatorOrg: sierrawireless.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR02MB8740.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 1a4edcea-1bb6-462b-6de7-08d99f28e5e1
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2021 00:20:25.1998
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 08059a4c-2486-43dd-89e3-3a747e0dcbe8
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 2uqYSOfeZ0qjbZKlr4W+Bm8rrNGaKxwzOkOOo11sdoNAvwxnlfjhqUCEFT6NcWzZ/+BF6k8+M0rEBWuKqrWkhbFizpfaGxuRkdXdSRmjX6M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR02MB7777
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 04 Nov 2021 00:20:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55236

--_000_CO6PR02MB87407C625F4A1F4A228EC9C2B28D9CO6PR02MB8740namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi,

After syncup of Yocto dunfell, I get the following error:


dwatkins@carmd-ed-n11377-docker-dwatkins_apollo17:64bit build $ bitbake ca-=
certificates -c fetch

Loading cache: 100% |######################################################=
###########################################################################=
###########################################################################=
#####################################| Time: 0:00:00

Loaded 4042 entries from dependency cache.

Parsing recipes: 100% |####################################################=
###########################################################################=
###########################################################################=
#####################################| Time: 0:00:00

Parsing of 2833 .bb files complete (2815 cached, 18 parsed). 4060 targets, =
183 skipped, 0 masked, 0 errors.

WARNING: No recipes available for:

  /home/dwatkins/workspace/mgos/apollo17/meta-mg90-bsp/recipes-kernel/firmw=
are/linux-firmware_git.bbappend

  /home/dwatkins/workspace/mgos/apollo17/meta-mg90-bsp/recipes-kernel/linux=
/linux-qoriq_4.19.bbappend

  /home/dwatkins/workspace/mgos/apollo17/meta-mgos-distro/meta-openssl-fips=
/recipes-support/openssl/openssl_1.0.2%.bbappend

  /home/dwatkins/workspace/mgos/apollo17/meta-mgos-core/recipes-support/che=
rrypy/cherrypy-python_%.bbappend

  /home/dwatkins/workspace/mgos/apollo17/meta-mgos-core/recipes-support/hos=
tapd/hostapd_2.6.bbappend

  /home/dwatkins/workspace/mgos/apollo17/meta-mgos-core/recipes-support/hos=
tapd/hostapd_2.8.bbappend

  /home/dwatkins/workspace/mgos/apollo17/meta-mgos-core/recipes-support/wpa=
-supplicant/wpa-supplicant_2.6.bbappend

  /home/dwatkins/workspace/mgos/apollo17/meta-mgos-core/recipes-support/wpa=
-supplicant/wpa-supplicant_2.7.bbappend

NOTE: Resolving any missing task queue dependencies



Build Configuration:

BB_VERSION           =3D "1.46.0"

BUILD_SYS            =3D "x86_64-linux"

NATIVELSBSTRING      =3D "universal"

TARGET_SYS           =3D "arm-poky-linux-gnueabi"

MACHINE              =3D "mg90"

DISTRO               =3D "mgos"

DISTRO_VERSION       =3D "3.1.11"

TUNE_FEATURES        =3D "arm vfp cortexa7 neon callconvention-hard"

TARGET_FPU           =3D "hard"

meta-mgos-core       =3D "main:96c5c6d35f19d16f65100ee29cb23e9a1470876c"

meta-mgos-release    =3D "main:0825ac63c95db495330848f80d6d68b6f47a77d4"

meta-mg90-bsp        =3D "main:47d0284b7a337df7587055c405213f9428c94884"

meta-mgos-airprime   =3D "main:5e8ffb01629c60d282b22e3313740e3b2cf325f4"

meta

meta-daisy-cf

meta-openssl-fips

meta-sigma           =3D "main:abf8a7a7408b690dfb0dff796ce8e94b6b661b0d"

meta

meta-poky

meta-yocto-bsp       =3D "HEAD:0810ac6b926cd901f0619e95f367efc79d4c3159"

meta-oe

meta-networking

meta-python

meta-perl            =3D "HEAD:814eec96c2a29172da57a425a3609f8b6fcc6afe"

meta-security

meta-integrity

meta-security-compliance

meta-security-isafw  =3D "HEAD:b76698c788cb8ca632077a972031899ef15025d6"

meta-freescale       =3D "HEAD:727fd8df20c8ee58474ce15cd5e1459f14bee977"

meta-java            =3D "HEAD:6e84638d77ac921aac46649095bca5ddbde94d2a"

workspace            =3D "<unknown>:<unknown>"



Initialising tasks: 100% |#################################################=
###########################################################################=
###########################################################################=
#####################################| Time: 0:00:00

Sstate summary: Wanted 0 Found 0 Missed 0 Current 0 (0% match, 0% complete)

NOTE: No setscene tasks

NOTE: Executing Tasks

WARNING: ca-certificates-20211016-r0 do_fetch: Failed to fetch URL git://sa=
lsa.debian.org/debian/ca-certificates.git;protocol=3Dhttps, attempting MIRR=
ORS if available

ERROR: ca-certificates-20211016-r0 do_fetch: Fetcher failure: Fetch command=
 export PSEUDO_DISABLED=3D1; export PATH=3D"/home/dwatkins/workspace/mgos/a=
pollo17/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/dwatkins/wo=
rkspace/mgos/apollo17/upstream/yocto/poky/scripts:/home/dwatkins/workspace/=
mgos/apollo17/build/tmp/work/all-poky-linux/ca-certificates/20211016-r0/rec=
ipe-sysroot-native/usr/bin/allarch-poky-linux:/home/dwatkins/workspace/mgos=
/apollo17/build/tmp/work/all-poky-linux/ca-certificates/20211016-r0/recipe-=
sysroot/usr/bin/crossscripts:/home/dwatkins/workspace/mgos/apollo17/build/t=
mp/work/all-poky-linux/ca-certificates/20211016-r0/recipe-sysroot-native/us=
r/sbin:/home/dwatkins/workspace/mgos/apollo17/build/tmp/work/all-poky-linux=
/ca-certificates/20211016-r0/recipe-sysroot-native/usr/bin:/home/dwatkins/w=
orkspace/mgos/apollo17/build/tmp/work/all-poky-linux/ca-certificates/202110=
16-r0/recipe-sysroot-native/sbin:/home/dwatkins/workspace/mgos/apollo17/bui=
ld/tmp/work/all-poky-linux/ca-certificates/20211016-r0/recipe-sysroot-nativ=
e/bin:/home/dwatkins/workspace/mgos/apollo17/upstream/yocto/poky/bitbake/bi=
n:/home/dwatkins/workspace/mgos/apollo17/build/tmp/hosttools"; export HOME=
=3D"/home/dwatkins"; LANG=3DC git -c core.fsyncobjectfiles=3D0 fetch -f --p=
rogress "https://salsa.debian.org/debian/ca-certificates.git" refs/*:refs/*=
 failed with exit code 128, no output

ERROR: ca-certificates-20211016-r0 do_fetch: Bitbake Fetcher Error: FetchEr=
ror('Unable to fetch URL from any source.', 'git://salsa.debian.org/debian/=
ca-certificates.git;protocol=3Dhttps')

ERROR: Logfile of failure stored in: /home/dwatkins/workspace/mgos/apollo17=
/build/tmp/work/all-poky-linux/ca-certificates/20211016-r0/temp/log.do_fetc=
h.11215

ERROR: Task (/home/dwatkins/workspace/mgos/apollo17/upstream/yocto/poky/met=
a/recipes-support/ca-certificates/ca-certificates_20211016.bb:do_fetch) fai=
led with exit code '1'

NOTE: Tasks Summary: Attempted 1 tasks of which 0 didn't need to be rerun a=
nd 1 failed.



Summary: 1 task failed:

  /home/dwatkins/workspace/mgos/apollo17/upstream/yocto/poky/meta/recipes-s=
upport/ca-certificates/ca-certificates_20211016.bb:do_fetch

Summary: There were 2 WARNING messages shown.

Summary: There were 2 ERROR messages shown, returning a non-zero exit code.

dwatkins@carmd-ed-n11377-docker-dwatkins_apollo17:64bit build $


Looking in the git history, I find a recent commit=85

commit 7158bf0775383eefcec148c47310b4681bfbed86
Author: Alexander Kanavin <alex.kanavin@gmail.com>
Date:   Tue Oct 19 17:33:29 2021 +0200

    ca-certificates: update 20210119 -> 20211016

    (From OE-Core rev: 43aa25b523b2c11ce483ea22435196dfca259b30)

    Signed-off-by: Alexander Kanavin <alex@linutronix.de>
    Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
    (cherry picked from commit c479b8a810d966d7267af1b4dac38a46f55fc547)
    Signed-off-by: Steve Sakoman <steve@sakoman.com>
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>


I don=92t think this is necessarily the culprit as I likely fetched long ag=
o and have been using cached content since.

Is this part of that unauthenticated GIT protocol issue?



Regards,

Darcy

Darcy Watkins ::  Senior Staff Engineer, Firmware

SIERRA WIRELESS
Direct  +1 604 233 7989   ::  Fax  +1 604 231 1109  ::  Main  +1 604 231 11=
00
13811 Wireless Way  :: Richmond, BC Canada V6V 3A4
[M4]
dwatkins@sierrawireless.com<mailto:dwatkins@sierrawireless.com> :: www.sier=
rawireless.com<http://www.sierrawireless.com/>

--_000_CO6PR02MB87407C625F4A1F4A228EC9C2B28D9CO6PR02MB8740namp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Menlo;
	panose-1:2 11 6 9 3 8 4 2 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
p.p1, li.p1, div.p1
	{mso-style-name:p1;
	margin:0cm;
	font-size:8.5pt;
	font-family:Menlo;
	color:black;}
p.p2, li.p2, div.p2
	{mso-style-name:p2;
	margin:0cm;
	font-size:8.5pt;
	font-family:Menlo;
	color:#AAAB25;}
p.p3, li.p3, div.p3
	{mso-style-name:p3;
	margin:0cm;
	font-size:8.5pt;
	font-family:Menlo;
	color:black;}
p.p4, li.p4, div.p4
	{mso-style-name:p4;
	margin:0cm;
	font-size:8.5pt;
	font-family:Menlo;
	color:#CA3323;}
span.s2
	{mso-style-name:s2;
	color:#AAAB25;}
span.s3
	{mso-style-name:s3;
	color:#38B9C7;}
span.s4
	{mso-style-name:s4;
	color:black;}
span.s1
	{mso-style-name:s1;}
span.apple-converted-space
	{mso-style-name:apple-converted-space;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-CA" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">After syncup of Yocto dunfell, I get the following e=
rror:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"p1"><span class=3D"s1">dwatkins@carmd-ed-n11377-docker-dwatkins=
_apollo17:</span><span class=3D"s2">64bit</span><span class=3D"s1">
</span><span class=3D"s3">build</span><span class=3D"s1"> $ bitbake ca-cert=
ificates -c fetch</span><o:p></o:p></p>
<p class=3D"p1"><span class=3D"s1">Loading cache: 100% |###################=
###########################################################################=
###########################################################################=
########################################################################|
 Time: 0:00:00</span><o:p></o:p></p>
<p class=3D"p1"><span class=3D"s1">Loaded 4042 entries from dependency cach=
e.</span><o:p></o:p></p>
<p class=3D"p1"><span class=3D"s1">Parsing recipes: 100% |#################=
###########################################################################=
###########################################################################=
########################################################################|
 Time: 0:00:00</span><o:p></o:p></p>
<p class=3D"p1"><span class=3D"s1">Parsing of 2833 .bb files complete (2815=
 cached, 18 parsed). 4060 targets, 183 skipped, 0 masked, 0 errors.</span><=
o:p></o:p></p>
<p class=3D"p2"><span class=3D"s1"><b>WARNING</b></span><span class=3D"s4">=
: </span><span class=3D"s1">No recipes available for:</span><o:p></o:p></p>
<p class=3D"p2"><span class=3D"apple-converted-space">&nbsp; </span><span c=
lass=3D"s1">/home/dwatkins/workspace/mgos/apollo17/meta-mg90-bsp/recipes-ke=
rnel/firmware/linux-firmware_git.bbappend</span><o:p></o:p></p>
<p class=3D"p2"><span class=3D"apple-converted-space">&nbsp; </span><span c=
lass=3D"s1">/home/dwatkins/workspace/mgos/apollo17/meta-mg90-bsp/recipes-ke=
rnel/linux/linux-qoriq_4.19.bbappend</span><o:p></o:p></p>
<p class=3D"p2"><span class=3D"apple-converted-space">&nbsp; </span><span c=
lass=3D"s1">/home/dwatkins/workspace/mgos/apollo17/meta-mgos-distro/meta-op=
enssl-fips/recipes-support/openssl/openssl_1.0.2%.bbappend</span><o:p></o:p=
></p>
<p class=3D"p2"><span class=3D"apple-converted-space">&nbsp; </span><span c=
lass=3D"s1">/home/dwatkins/workspace/mgos/apollo17/meta-mgos-core/recipes-s=
upport/cherrypy/cherrypy-python_%.bbappend</span><o:p></o:p></p>
<p class=3D"p2"><span class=3D"apple-converted-space">&nbsp; </span><span c=
lass=3D"s1">/home/dwatkins/workspace/mgos/apollo17/meta-mgos-core/recipes-s=
upport/hostapd/hostapd_2.6.bbappend</span><o:p></o:p></p>
<p class=3D"p2"><span class=3D"apple-converted-space">&nbsp; </span><span c=
lass=3D"s1">/home/dwatkins/workspace/mgos/apollo17/meta-mgos-core/recipes-s=
upport/hostapd/hostapd_2.8.bbappend</span><o:p></o:p></p>
<p class=3D"p2"><span class=3D"apple-converted-space">&nbsp; </span><span c=
lass=3D"s1">/home/dwatkins/workspace/mgos/apollo17/meta-mgos-core/recipes-s=
upport/wpa-supplicant/wpa-supplicant_2.6.bbappend</span><o:p></o:p></p>
<p class=3D"p2"><span class=3D"apple-converted-space">&nbsp; </span><span c=
lass=3D"s1">/home/dwatkins/workspace/mgos/apollo17/meta-mgos-core/recipes-s=
upport/wpa-supplicant/wpa-supplicant_2.7.bbappend</span><o:p></o:p></p>
<p class=3D"p1"><span class=3D"s1"><b>NOTE</b>: Resolving any missing task =
queue dependencies</span><o:p></o:p></p>
<p class=3D"p3"><o:p>&nbsp;</o:p></p>
<p class=3D"p1"><span class=3D"s1">Build Configuration:</span><o:p></o:p></=
p>
<p class=3D"p1"><span class=3D"s1">BB_VERSION </span><span class=3D"apple-c=
onverted-space">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
</span><span class=3D"s1">=3D &quot;1.46.0&quot;</span><o:p></o:p></p>
<p class=3D"p1"><span class=3D"s1">BUILD_SYS</span><span class=3D"apple-con=
verted-space">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
</span><span class=3D"s1">=3D &quot;x86_64-linux&quot;</span><o:p></o:p></p=
>
<p class=3D"p1"><span class=3D"s1">NATIVELSBSTRING</span><span class=3D"app=
le-converted-space">&nbsp; &nbsp; &nbsp;
</span><span class=3D"s1">=3D &quot;universal&quot;</span><o:p></o:p></p>
<p class=3D"p1"><span class=3D"s1">TARGET_SYS </span><span class=3D"apple-c=
onverted-space">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
</span><span class=3D"s1">=3D &quot;arm-poky-linux-gnueabi&quot;</span><o:p=
></o:p></p>
<p class=3D"p1"><span class=3D"s1">MACHINE</span><span class=3D"apple-conve=
rted-space">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
</span><span class=3D"s1">=3D &quot;mg90&quot;</span><o:p></o:p></p>
<p class=3D"p1"><span class=3D"s1">DISTRO </span><span class=3D"apple-conve=
rted-space">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
</span><span class=3D"s1">=3D &quot;mgos&quot;</span><o:p></o:p></p>
<p class=3D"p1"><span class=3D"s1">DISTRO_VERSION </span><span class=3D"app=
le-converted-space">&nbsp; &nbsp; &nbsp;
</span><span class=3D"s1">=3D &quot;3.1.11&quot;</span><o:p></o:p></p>
<p class=3D"p1"><span class=3D"s1">TUNE_FEATURES</span><span class=3D"apple=
-converted-space">&nbsp; &nbsp; &nbsp; &nbsp;
</span><span class=3D"s1">=3D &quot;arm vfp cortexa7 neon callconvention-ha=
rd&quot;</span><o:p></o:p></p>
<p class=3D"p1"><span class=3D"s1">TARGET_FPU </span><span class=3D"apple-c=
onverted-space">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
</span><span class=3D"s1">=3D &quot;hard&quot;</span><o:p></o:p></p>
<p class=3D"p1"><span class=3D"s1">meta-mgos-core </span><span class=3D"app=
le-converted-space">&nbsp; &nbsp; &nbsp;
</span><span class=3D"s1">=3D &quot;main:96c5c6d35f19d16f65100ee29cb23e9a14=
70876c&quot;</span><o:p></o:p></p>
<p class=3D"p1"><span class=3D"s1">meta-mgos-release</span><span class=3D"a=
pple-converted-space">&nbsp; &nbsp;
</span><span class=3D"s1">=3D &quot;main:0825ac63c95db495330848f80d6d68b6f4=
7a77d4&quot;</span><o:p></o:p></p>
<p class=3D"p1"><span class=3D"s1">meta-mg90-bsp</span><span class=3D"apple=
-converted-space">&nbsp; &nbsp; &nbsp; &nbsp;
</span><span class=3D"s1">=3D &quot;main:47d0284b7a337df7587055c405213f9428=
c94884&quot;</span><o:p></o:p></p>
<p class=3D"p1"><span class=3D"s1">meta-mgos-airprime </span><span class=3D=
"apple-converted-space">&nbsp;
</span><span class=3D"s1">=3D &quot;main:5e8ffb01629c60d282b22e3313740e3b2c=
f325f4&quot;</span><o:p></o:p></p>
<p class=3D"p1"><span class=3D"s1">meta</span><span class=3D"apple-converte=
d-space">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</sp=
an><o:p></o:p></p>
<p class=3D"p1"><span class=3D"s1">meta-daisy-cf </span><span class=3D"appl=
e-converted-space">&nbsp; &nbsp; &nbsp; &nbsp;</span><o:p></o:p></p>
<p class=3D"p1"><span class=3D"s1">meta-openssl-fips </span><span class=3D"=
apple-converted-space">&nbsp; &nbsp;</span><o:p></o:p></p>
<p class=3D"p1"><span class=3D"s1">meta-sigma </span><span class=3D"apple-c=
onverted-space">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
</span><span class=3D"s1">=3D &quot;main:abf8a7a7408b690dfb0dff796ce8e94b6b=
661b0d&quot;</span><o:p></o:p></p>
<p class=3D"p1"><span class=3D"s1">meta</span><span class=3D"apple-converte=
d-space">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</sp=
an><o:p></o:p></p>
<p class=3D"p1"><span class=3D"s1">meta-poky </span><span class=3D"apple-co=
nverted-space">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><o:p></o:p><=
/p>
<p class=3D"p1"><span class=3D"s1">meta-yocto-bsp </span><span class=3D"app=
le-converted-space">&nbsp; &nbsp; &nbsp;
</span><span class=3D"s1">=3D &quot;HEAD:0810ac6b926cd901f0619e95f367efc79d=
4c3159&quot;</span><o:p></o:p></p>
<p class=3D"p1"><span class=3D"s1">meta-oe </span><span class=3D"apple-conv=
erted-space">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><o:p></=
o:p></p>
<p class=3D"p1"><span class=3D"s1">meta-networking </span><span class=3D"ap=
ple-converted-space">&nbsp; &nbsp; &nbsp;</span><o:p></o:p></p>
<p class=3D"p1"><span class=3D"s1">meta-python </span><span class=3D"apple-=
converted-space">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><o:p></o:p></p>
<p class=3D"p1"><span class=3D"s1">meta-perl</span><span class=3D"apple-con=
verted-space">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
</span><span class=3D"s1">=3D &quot;HEAD:814eec96c2a29172da57a425a3609f8b6f=
cc6afe&quot;</span><o:p></o:p></p>
<p class=3D"p1"><span class=3D"s1">meta-security </span><span class=3D"appl=
e-converted-space">&nbsp; &nbsp; &nbsp; &nbsp;</span><o:p></o:p></p>
<p class=3D"p1"><span class=3D"s1">meta-integrity</span><span class=3D"appl=
e-converted-space">&nbsp; &nbsp; &nbsp; &nbsp;</span><o:p></o:p></p>
<p class=3D"p1"><span class=3D"s1">meta-security-compliance</span><span cla=
ss=3D"apple-converted-space">&nbsp;</span><o:p></o:p></p>
<p class=3D"p1"><span class=3D"s1">meta-security-isafw</span><span class=3D=
"apple-converted-space">&nbsp;
</span><span class=3D"s1">=3D &quot;HEAD:b76698c788cb8ca632077a972031899ef1=
5025d6&quot;</span><o:p></o:p></p>
<p class=3D"p1"><span class=3D"s1">meta-freescale </span><span class=3D"app=
le-converted-space">&nbsp; &nbsp; &nbsp;
</span><span class=3D"s1">=3D &quot;HEAD:727fd8df20c8ee58474ce15cd5e1459f14=
bee977&quot;</span><o:p></o:p></p>
<p class=3D"p1"><span class=3D"s1">meta-java</span><span class=3D"apple-con=
verted-space">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
</span><span class=3D"s1">=3D &quot;HEAD:6e84638d77ac921aac46649095bca5ddbd=
e94d2a&quot;</span><o:p></o:p></p>
<p class=3D"p1"><span class=3D"s1">workspace</span><span class=3D"apple-con=
verted-space">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
</span><span class=3D"s1">=3D &quot;&lt;unknown&gt;:&lt;unknown&gt;&quot;</=
span><o:p></o:p></p>
<p class=3D"p3"><o:p>&nbsp;</o:p></p>
<p class=3D"p1"><span class=3D"s1">Initialising tasks: 100% |##############=
###########################################################################=
###########################################################################=
########################################################################|
 Time: 0:00:00</span><o:p></o:p></p>
<p class=3D"p1"><span class=3D"s1">Sstate summary: Wanted 0 Found 0 Missed =
0 Current 0 (0% match, 0% complete)</span><o:p></o:p></p>
<p class=3D"p1"><span class=3D"s1"><b>NOTE</b>: No setscene tasks</span><o:=
p></o:p></p>
<p class=3D"p1"><span class=3D"s1"><b>NOTE</b>: Executing Tasks</span><o:p>=
</o:p></p>
<p class=3D"p2"><span class=3D"s1"><b>WARNING</b></span><span class=3D"s4">=
: </span><span class=3D"s1">ca-certificates-20211016-r0 do_fetch: Failed to=
 fetch URL git://salsa.debian.org/debian/ca-certificates.git;protocol=3Dhtt=
ps, attempting MIRRORS if available</span><o:p></o:p></p>
<p class=3D"p4"><span class=3D"s1"><b>ERROR</b></span><span class=3D"s4">: =
</span><span class=3D"s1">ca-certificates-20211016-r0 do_fetch: Fetcher fai=
lure: Fetch command export PSEUDO_DISABLED=3D1; export PATH=3D&quot;/home/d=
watkins/workspace/mgos/apollo17/build/tmp/sysroots-uninative/x86_64-linux/u=
sr/bin:/home/dwatkins/workspace/mgos/apollo17/upstream/yocto/poky/scripts:/=
home/dwatkins/workspace/mgos/apollo17/build/tmp/work/all-poky-linux/ca-cert=
ificates/20211016-r0/recipe-sysroot-native/usr/bin/allarch-poky-linux:/home=
/dwatkins/workspace/mgos/apollo17/build/tmp/work/all-poky-linux/ca-certific=
ates/20211016-r0/recipe-sysroot/usr/bin/crossscripts:/home/dwatkins/workspa=
ce/mgos/apollo17/build/tmp/work/all-poky-linux/ca-certificates/20211016-r0/=
recipe-sysroot-native/usr/sbin:/home/dwatkins/workspace/mgos/apollo17/build=
/tmp/work/all-poky-linux/ca-certificates/20211016-r0/recipe-sysroot-native/=
usr/bin:/home/dwatkins/workspace/mgos/apollo17/build/tmp/work/all-poky-linu=
x/ca-certificates/20211016-r0/recipe-sysroot-native/sbin:/home/dwatkins/wor=
kspace/mgos/apollo17/build/tmp/work/all-poky-linux/ca-certificates/20211016=
-r0/recipe-sysroot-native/bin:/home/dwatkins/workspace/mgos/apollo17/upstre=
am/yocto/poky/bitbake/bin:/home/dwatkins/workspace/mgos/apollo17/build/tmp/=
hosttools&quot;;
 export HOME=3D&quot;/home/dwatkins&quot;; LANG=3DC git -c core.fsyncobject=
files=3D0 fetch -f --progress &quot;https://salsa.debian.org/debian/ca-cert=
ificates.git&quot; refs/*:refs/* failed with exit code 128, no output</span=
><o:p></o:p></p>
<p class=3D"p4"><span class=3D"s1"><b>ERROR</b></span><span class=3D"s4">: =
</span><span class=3D"s1">ca-certificates-20211016-r0 do_fetch: Bitbake Fet=
cher Error: FetchError('Unable to fetch URL from any source.', 'git://salsa=
.debian.org/debian/ca-certificates.git;protocol=3Dhttps')</span><o:p></o:p>=
</p>
<p class=3D"p4"><span class=3D"s1"><b>ERROR</b></span><span class=3D"s4">: =
</span><span class=3D"s1">Logfile of failure stored in: /home/dwatkins/work=
space/mgos/apollo17/build/tmp/work/all-poky-linux/ca-certificates/20211016-=
r0/temp/log.do_fetch.11215</span><o:p></o:p></p>
<p class=3D"p4"><span class=3D"s1"><b>ERROR</b></span><span class=3D"s4">: =
</span><span class=3D"s1">Task (/home/dwatkins/workspace/mgos/apollo17/upst=
ream/yocto/poky/meta/recipes-support/ca-certificates/ca-certificates_202110=
16.bb:do_fetch) failed with exit code '1'</span><o:p></o:p></p>
<p class=3D"p1"><span class=3D"s1"><b>NOTE</b>: Tasks Summary: Attempted 1 =
tasks of which 0 didn't need to be rerun and 1 failed.</span><o:p></o:p></p=
>
<p class=3D"p3"><o:p>&nbsp;</o:p></p>
<p class=3D"p1"><span class=3D"s1">Summary: 1 task failed:</span><o:p></o:p=
></p>
<p class=3D"p1"><span class=3D"apple-converted-space">&nbsp; </span><span c=
lass=3D"s1">/home/dwatkins/workspace/mgos/apollo17/upstream/yocto/poky/meta=
/recipes-support/ca-certificates/ca-certificates_20211016.bb:do_fetch</span=
><o:p></o:p></p>
<p class=3D"p1"><span class=3D"s1">Summary: There were 2 WARNING messages s=
hown.</span><o:p></o:p></p>
<p class=3D"p1"><span class=3D"s1">Summary: There were 2 ERROR messages sho=
wn, returning a non-zero exit code.</span><o:p></o:p></p>
<p class=3D"p1"><span class=3D"s1">dwatkins@carmd-ed-n11377-docker-dwatkins=
_apollo17:</span><span class=3D"s2">64bit</span><span class=3D"s1">
</span><span class=3D"s3">build</span><span class=3D"s1"> $</span><o:p></o:=
p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Looking in the git history, I find a recent commit=
=85<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:#AAAB25">commit 7158bf0775383eefcec148c47310b4681bfbed86<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:black">Author: Alexander Kanavin &lt;alex.kanavin@gmail.com&gt;<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:black">Date: &nbsp; Tue Oct 19 17:33:29 2021 +0200<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:black">&nbsp; &nbsp; ca-certificates: update 20210119 -&gt; 20211016<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:black">&nbsp;&nbsp; &nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:black">&nbsp; &nbsp; (From OE-Core rev: 43aa25b523b2c11ce483ea22435196df=
ca259b30)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:black">&nbsp;&nbsp; &nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:black">&nbsp; &nbsp; Signed-off-by: Alexander Kanavin &lt;alex@linutroni=
x.de&gt;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:black">&nbsp; &nbsp; Signed-off-by: Alexandre Belloni &lt;alexandre.bell=
oni@bootlin.com&gt;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:black">&nbsp; &nbsp; Signed-off-by: Richard Purdie &lt;richard.purdie@li=
nuxfoundation.org&gt;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:black">&nbsp; &nbsp; (cherry picked from commit c479b8a810d966d7267af1b4=
dac38a46f55fc547)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:black">&nbsp; &nbsp; Signed-off-by: Steve Sakoman &lt;steve@sakoman.com&=
gt;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:black">&nbsp; &nbsp; Signed-off-by: Richard Purdie &lt;richard.purdie@li=
nuxfoundation.org&gt;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I don=92t think this is necessarily the culprit as I=
 likely fetched long ago and have been using cached content since.<o:p></o:=
p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is this part of that unauthenticated GIT protocol is=
sue?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">&nbsp;</span></b><span lang=
=3D"EN-US"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">Regards,</span></b><span lan=
g=3D"EN-US"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">&nbsp;</span></b><span lang=
=3D"EN-US"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">Darcy</span></b><span lang=
=3D"EN-US"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">&nbsp;</span></b><span lang=
=3D"EN-US"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">Darcy Watkins ::&nbsp;&nbsp;=
Senior Staff Engineer, Firmware</span></b><span lang=3D"EN-US"><o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">&nbsp;</span></b><span lang=
=3D"EN-US"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"color:red">SIERRA W=
IRELESS</span></b><span lang=3D"EN-US" style=3D"color:red"><o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Direct&nbsp; +1 604 233 7989&nb=
sp; &nbsp;::&nbsp;&nbsp;Fax&nbsp;&nbsp;+1 604 231 1109&nbsp; ::&nbsp;&nbsp;=
Main&nbsp;&nbsp;+1 604 231 1100<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">13811 Wireless Way&nbsp; ::&nbs=
p;Richmond, BC Canada V6V 3A4<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">[M4]<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><a href=3D"mailto:dwatkins@sier=
rawireless.com"><span style=3D"color:#0563C1">dwatkins@sierrawireless.com</=
span></a>&nbsp;::&nbsp;<a href=3D"http://www.sierrawireless.com/"><span sty=
le=3D"color:#0563C1">www.sierrawireless.com</span></a>
</span><o:p></o:p></p>
</div>
</body>
</html>

--_000_CO6PR02MB87407C625F4A1F4A228EC9C2B28D9CO6PR02MB8740namp_--

