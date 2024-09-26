Return-Path: <lewis.muhlenkamp@stryker.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 761F2CF58C8
	for <webhook@archiver.kernel.org>; Thu, 26 Sep 2024 12:29:36 +0000 (UTC)
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (NAM11-DM6-obe.outbound.protection.outlook.com [40.107.223.59])
 by mx.groups.io with SMTP id smtpd.web10.41221.1727353774631638898
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 Sep 2024 05:29:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@stryker.com header.s=selector1 header.b=MHniLK+f;
 spf=pass (domain: stryker.com, ip: 40.107.223.59, mailfrom: lewis.muhlenkamp@stryker.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=S7XaV4guK4C7310pdFp0i9gDKtJK3jNv3sBmgvvj+nSM/CacNyXuJXKjyU+GOPGmWa7mhJ/eczNDJFFH28kX4r+mjcAaoYla/nCQFtcTZsdxEReoMxLGMLuem6+8SpEmShGReu+GORuILM6P0EumyYZzEdFUBqi0p/8vveadAKfCnuEoT59VOgsz/GSUmO+BnGjGtCSOZVjizk2hLFNDHFcALmwF68o66dkczFFkTxF9CUJfv4LYwhtBDK93nW3d9xpJet9i0sECuSVdSv1aAdua+ig1spYR7LG3HkDly3aYVC1bZSqcKRmN/con2z0yOQV4ku3uehiyK+6FIXMFfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=E1Ys4rk8aD+zwwMifqLLtXbxDYPxt5haIqm3hLirRRU=;
 b=EKLrrkJQEN8/X1a+sjO4A7EpW8HYz38gHYnTASV5EHT7s5Mz9E4wBNVcpj59azAKkZzYC0dvL0VD/T2bZElgXY+G8RM0IAWH5kn/KOo3TM/9juAm9j+BwVaAhrjVUeQrCIcc9AmpBcbAAJTJmtAb6m67kn1QicSGseFcxjSkLI+VhfxFAplTzNUk4pY7am4dcn28QG4M05EkIZnWsB16P+CZXhwJi1fTde21fv4YB0uX9RCKR5G0upEAi2ATspjnlXyE+qTAbt4kupxW1An2QQKTsc2+P84JTxy5l+QYREwCGAHLz9NsQ07GsktaZKd+6mLJE0ZeYVSa4TAA4wXQ8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=stryker.com; dmarc=pass action=none header.from=stryker.com;
 dkim=pass header.d=stryker.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stryker.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E1Ys4rk8aD+zwwMifqLLtXbxDYPxt5haIqm3hLirRRU=;
 b=MHniLK+fftxpQIJ3S99Eb3z/7hMLFyJBxAczsod5EoMV8fSZoYMPj+90U83G8feZKJoORKyw/lz5KrALuZL2SY6q/SLQz+xOpnie21plVAWcRUfoCsDreZiXaumzv6geVedMZGYpyjLVGVvhI0UeSgBs40nhKRqJW7SBliXpsFV3OTI/yjhBOKO8rr8Qm4jnwsNU++vz15+ZWvS9zvaSJ3/wOx5cn78mYtzrC58h0rC9tl5rGEuCZ0rPnYB0O1V9xofzMGw+0mSatzv0TPXtqqVfr7dxMZlRKH5IP7E+rfDyKcCipUqb9XqS2mqLp8w0wM1PaoH0P0HHjaMrQLPF/A==
Received: from DM4PR01MB7833.prod.exchangelabs.com (2603:10b6:8:69::19) by
 CH7PR01MB8857.prod.exchangelabs.com (2603:10b6:610:249::10) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7982.27; Thu, 26 Sep 2024 12:29:32 +0000
Received: from DM4PR01MB7833.prod.exchangelabs.com
 ([fe80::2242:f2e7:460e:6aaa]) by DM4PR01MB7833.prod.exchangelabs.com
 ([fe80::2242:f2e7:460e:6aaa%5]) with mapi id 15.20.7982.022; Thu, 26 Sep 2024
 12:29:32 +0000
From: "Muhlenkamp, Lewis" <lewis.muhlenkamp@stryker.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Cannot get efivarfs working in initramfs (kirkstone)
Thread-Topic: Cannot get efivarfs working in initramfs (kirkstone)
Thread-Index: AdsPTe6Es0w38x/TTaiDCYIeyP83tg==
Date: Thu, 26 Sep 2024 12:29:32 +0000
Message-ID: 
 <DM4PR01MB783375D66FBAF50B4D152D2C8F6A2@DM4PR01MB7833.prod.exchangelabs.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=stryker.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR01MB7833:EE_|CH7PR01MB8857:EE_
x-ms-office365-filtering-correlation-id: 83dd5e52-9db0-4b06-51f1-08dcde26dfd5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|10070799003|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?64uIEHY99pApIKgC6BykubbMLFTR3zOgO4zVZOpE8gGIJ/1fUKNzJibT+Cg7?=
 =?us-ascii?Q?MXBGO2TFVbrVA4qomaiQEelI7EotnXzjTcl1JfFgtTiguf/qrFcPQTwRwPrn?=
 =?us-ascii?Q?n5LPJuVJh32NKIHyWd34Ey7DHis4C8pJkZji8A77/3yb6OlBVgITwJTMUlxp?=
 =?us-ascii?Q?ofTl2DqYRluWBVz9bChB3XNWHwPVyBAvlkdTUnz1iCHemED8yu2PwajgwolN?=
 =?us-ascii?Q?PTkp1ahW2eMSi1ocgND/id+Ty8MyIXM+i6GkiPF14+gomgIkX1BjCxwQ17/1?=
 =?us-ascii?Q?gb5/aOV9+ezIFnJEwydpr01INsps8Du9uEEjrC1g2OgWdwNpUo1qAHgD6ti+?=
 =?us-ascii?Q?SpN6RPsgrr4R+dNKa78wOHRKtK20Z/WksTWhYTx2MnR3V6NZ1xFaUxIti8ge?=
 =?us-ascii?Q?rHV5QB72MA9Qewoa1f+kTfd7DkuDnlBtVdnndUAE3B2lCKl33NIZV0n8/rld?=
 =?us-ascii?Q?moXLL6rRJuv63ks9Sbq6ZHHavqn/XAACYzKH5M17XibTV1cHiUNZCrAgkoE4?=
 =?us-ascii?Q?xM3DIIw/l+t57cQTNUo6kYX2bP7yGN4x9uUYzeZnNkdEURCsGu2+BT6KhloE?=
 =?us-ascii?Q?1nnaIUer5nvOsHIV44NBIBke+y3L5elanHMGJ2oOcljF7ekwBEizUyqpg4gT?=
 =?us-ascii?Q?u1A3Dpk/ZonX/ml+s7XtKIvzUelDcbzLIBmzmCDI2czKpYTKkxgxqx5zsGlw?=
 =?us-ascii?Q?2pa3UNruHO5EpqoD4BLB6Om3FN29Y3iJ9LwKet3dktEL5HV2t94r+c1moVIl?=
 =?us-ascii?Q?VpIhxiWsOL4hZ0lSFRiOac2rViDOejyHLLgV0QxlLTqJnWkfpZnDFEurUhfH?=
 =?us-ascii?Q?5/hsPFExv+m6OC2CD72FvKUUwfH2Lxl1EAT1Qy8Dfm+DLkvH9LpFXXNejcP7?=
 =?us-ascii?Q?CFL/1SzKp+lL+cIpMrPjyBVmdak+Xwx7m7a9AxreNVITu0OD8jkFfjMlqb2V?=
 =?us-ascii?Q?Qwg7CBTo2cuobe1KTJfm2Urqu+Siy0Wj38YtazIqIOed28XFItWSixIdlLMi?=
 =?us-ascii?Q?J5Wi/YF2mpPHdP+FccEl0TZicN9SfwpWJhhrFBQwPmfNBIjUlPDbGwGweM3p?=
 =?us-ascii?Q?cGfSPEBhtPx+PIkQiU5EfMwUgYbwSqr5NcvlKiG3EAEpcxrViR8xgZ2hu1k+?=
 =?us-ascii?Q?exHoyeeRx2A4VpPrcRQxXb3BA6BpHmj6fbOJNVM4/QADmu6yb6dTLiINkfAd?=
 =?us-ascii?Q?D1ftrXGcna88xmInT5aLRdwUa82P3n4Sm129KjgXzolo2S4CngcGNkg8Jfv3?=
 =?us-ascii?Q?GoSAuANUvpn1pHJq2s0VULIlUB1I1oOVMGGt9F80nPvCzTcn0UFA2FytFwZ1?=
 =?us-ascii?Q?bMpV7oAT8EuNB+mt25LKDZw0kHXSJe0CwGFNLzpGOHaSVg=3D=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM4PR01MB7833.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230040)(10070799003)(1800799024)(376014)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?LFSdgmJxMzNO23xykXEgR2yaaV4PRGVvBAq+wbFDn3TpBltS2wcTpXkFx/76?=
 =?us-ascii?Q?K0h9U5cvJwcgASrdxJGL1vUPQR8MQIHQFdkybFeHFbY6dR6j+MHr5SrYdo42?=
 =?us-ascii?Q?OurQcSUkNZNBTLqdpFqR0bEgflJvvdhbGa16DJeiYvpO1YYvJ1tDU7dUAlu3?=
 =?us-ascii?Q?DwYcJYTDadiIktoxp7nL4G2E42cPQ6/9IS8ZIJNkpxj5mES9rwJf5BL/AOwG?=
 =?us-ascii?Q?VXLVPOLdNKtKyUBanscLXFnJ1T0pjr/W5qp0EEYOgBe0EEjgkyQHCQ7HO9O2?=
 =?us-ascii?Q?jbQoPH3/xihjc/ZjX8kzq7CDiDZTyk6YpMWV9byM4xseGXU77VkmUgAe0Fef?=
 =?us-ascii?Q?WUaM+EuGHm+o/1yhzX2suvvHVVZ/T8JGYwbCW/f3Uba6JQNLBV8eJvHiCYGG?=
 =?us-ascii?Q?0jxDeOdHhS5xhEpxk2hsNASMKFdPBNSFc3U+7W1ybjice011OXuB9aqnYuUa?=
 =?us-ascii?Q?PE9peXOi1ol1JCDKv4iuVX6gqarv77QqPJnI1b/uyAf6HD5Jawyrx0k5UMGj?=
 =?us-ascii?Q?9xYmNXNdGHbqwqLEDaQ9XLku3fpQJNXfllPF0HwwhiNCuy1UdCDWXamUXY3v?=
 =?us-ascii?Q?3LGRqIgbRYux3jX1LlQ4XYeTYL0PST5Im+XUrHsWaYhCGLG+m5YrJJ1lKDQ/?=
 =?us-ascii?Q?L4QRJYoY4+IA4Z1IC6UzMyj/qumP3CRMBzmDoKstsx7wYH8d/AsBvSAE/hrf?=
 =?us-ascii?Q?se/GxAbKaMieiwBfMfqKNGqxy+XDHbAP2bkd3Z4kjvhRDrRQNboQwSdwpDxK?=
 =?us-ascii?Q?bbOqE/KzWs6WXVj6DnQJu20Pc71f/j76XRrDcbQmZtO3pACzCUl6BkGrKtN/?=
 =?us-ascii?Q?ZQvvwgNrAWgsDMisIZEXVLdZVM1hQUQ3oRoWpbGGS95Bzeb2/qRiakCaUyO/?=
 =?us-ascii?Q?/WvYJqM1YW6WuV59STwGzd1YIwG5I1ygNKqbPf88fUvDqyh35xWgEbGVlop3?=
 =?us-ascii?Q?3Lwa4sYA+cVT6sXMbGV5tEh+KCCbwi53D6uROEsWCLyDb3708dGOOfA19aqW?=
 =?us-ascii?Q?u7gRM6AYaNr8owTwGFJiKwQ5LgNpT0afagjMLobwlKxxMxarHAySGknj19p8?=
 =?us-ascii?Q?e1MSdMAFsoYwTnnkTQLPiv0IkTixDdNe8uYB2erDuHMWmXsQqrsFVru2MVP0?=
 =?us-ascii?Q?eIKsK0uXRrE6FNaLZgCUWDV8zS82HjrecIJQHDFHIdFsbIGJbIvLcyYWxwSA?=
 =?us-ascii?Q?Uv7OSX30UBwatCU1PCLA9hVkAWxjdBhlpyIEdjY3H9e3ZExXdSZSvPuiDHLx?=
 =?us-ascii?Q?ZgmcshcQirT/fPHJzNfH5rJLnA0DEVKqcw+NI+d/LOi3Oc+VJXYf/+NSJpry?=
 =?us-ascii?Q?OBNTu6tGmmbJqN5bvVhnLctSu7n3mn0uyWyenulNY2LxS44W+z4tixUPGivl?=
 =?us-ascii?Q?VK/9yLyHB2uUVBq0wllErnk/ZJJIXqDFMnU6FDqIzmnNxuhzZLyl9v77l+5q?=
 =?us-ascii?Q?z6MNIrFc+7ZYIJfFDsZ4FEgAXUil8qa/gWEVz2LC/YJA4xW3mSb+OXurJnTA?=
 =?us-ascii?Q?rtJ1gjbWQ1AMT/SxDOfwaefzvuYPhGORedA2xbStxf9RXEajHtyKtgya83LA?=
 =?us-ascii?Q?o+3s0goUa1z0dnbqpQRNimUsyZq7gFnP8UU6tiOXnlCwn1siRPjpkIm6iknL?=
 =?us-ascii?Q?xtTWVW3yH7zxfODKOqQymcwSIFyzDif/cD+BGeTHpmWYUSu+gJYdqdMSUtph?=
 =?us-ascii?Q?rY57BQ=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_DM4PR01MB783375D66FBAF50B4D152D2C8F6A2DM4PR01MB7833prod_"
MIME-Version: 1.0
X-OriginatorOrg: stryker.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR01MB7833.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 83dd5e52-9db0-4b06-51f1-08dcde26dfd5
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Sep 2024 12:29:32.4830
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4e9dbbfb-394a-4583-8810-53f81f819e3b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: N9g9kpvuy+x722G4/knWstcqRe9YDio9acB97LRqaSmdgFgUioOMG7BnGt4y4p45YfWnEZ6iy519+AIFf6iAmuTVi6lBeOrmejXqWKVZULw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH7PR01MB8857
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 26 Sep 2024 12:29:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63894

--_000_DM4PR01MB783375D66FBAF50B4D152D2C8F6A2DM4PR01MB7833prod_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I've looked online in various places for an answer to this question, but ha=
ve not found anything that works.  If this has been addressed, please feel =
free to point me to the correct URL.

I am creating a custom installer to install the OS.  I am modifying the ini=
t-install-efi.sh script to include efibootmgr.  I have a bbappend for core-=
image-minimal-initramfs that has

PACKAGE_INSTALL:append =3D " efibootmgr efivar "

When I run my installer and it tries running the efibootmgr command, I get

EFI variables are not supported on this system.

It looks like the kernel-module-efivarfs is not included in the initramfs i=
mage.  If I try to add it as a PACKAGE_INSTALL:append or RDEPENDS:${PN}:app=
end statement or similar, the build fails with dnf error message of not bei=
ng able to find the kernel-module-efivarfs package.

The output of "zcat /proc/config.gz | grep EFI" when the install-efi.sh scr=
ipt is running is as follows:
CONFIG_EFI=3Dy
CONFIG_EFI_STUB=3Dy
# CONFIG_EFI_MIXED is not set
CONFIG_EFI_PARTITION=3Dy
CONFIG_DMI_SCAN_MACHINE_NON_EFI_FALLBACK=3Dy
# EFI (Extensible Firmware Interface) Support
CONFIG_EFI_VARS=3Dm
CONFIG_EFI_ESRT=3Dy
CONFIG_EFI_RUNTIME_MAP=3Dy
# CONFIG_EFI_FAKE_MEMMAP is not set
CONFIG_EFI_RUNTIME_WRAPPERS=3Dy
CONFIG_EFI_GENERIC_STUB_INITRD_CMDLINE_LOADER=3Dy
# CONFIG_EFI_BOOTLOADER_CONTROL is not set
# CONFIG_EFI_CAPSULE_LOADER is not set
# CONFIG_EFI_TEST is not set
# CONFIG_EFI_RCI2_TABLE is not set
# CONFIG_EFI_DISABLE_PCI_DMA is not set
# end of EFI (Extensible Firmware Interface) Support
CONFIG_EFI_EARLYCON=3Dy
CONFIG_EFI_CUSTOM_SSDT_OVERLAYS=3Dy
# CONFIG_PINCTRL_LAKEFIELD is not set
CONFIG_FB_EFI=3Dy
CONFIG_EFIVAR_FS=3Dy
# CONFIG_EFI_PGT_DUMP is not set


I have the following layers in the following order in my bblayers.conf file=
:

  *   poky/meta
  *   poky/meta-poky
  *   meta-intel
  *   meta-lewism
  *   meta-openembedded/meta-oe
  *   poky/meta-yocto-bsp

I am not doing anything with meta-secure-core at this time, but if that is =
needed, I can add it.

In my local.conf file I have the following:

MACHINE =3D "intel-corei7-64"
MACHINE_FEATURES:append =3D " efi "
MACHINE_FEATURES_NATIVE:append =3D " efi "
DISTRO =3D "mydistro"
INITRAMFS_IMAGE =3D "core-image-minimal-initramfs"
IMAGE_FSTYPES =3D "live"

I have also added the following to my initramfs-module-install-efi_%.bbappe=
nd file:
DEPENDS:append =3D " efibootmgr efivar "
RDEPENDED:${PN}:append =3D " efibootmgr efivar "

So, how do I get just kernel-module-efivarfs into my initramfs?

TIA,

Lewis Muhlenkamp

Follow this link to read our Privacy Statement<https://www.stryker.com/cont=
ent/stryker/gb/en/legal/global-policy-statement.html/>

--_000_DM4PR01MB783375D66FBAF50B4D152D2C8F6A2DM4PR01MB7833prod_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Aptos;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Aptos",sans-serif;
	mso-ligatures:standardcontextual;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	font-size:11.0pt;
	font-family:"Aptos",sans-serif;
	mso-ligatures:standardcontextual;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Aptos",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:11.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:805047198;
	mso-list-type:hybrid;
	mso-list-template-ids:-1127602006 1387925114 67698691 67698693 67698689 67=
698691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Aptos",sans-serif;
	mso-fareast-font-family:Aptos;
	mso-bidi-font-family:"Times New Roman";}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#467886" vlink=3D"#96607D" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;ve looked online in various places for an an=
swer to this question, but have not found anything that works.&nbsp; If thi=
s has been addressed, please feel free to point me to the correct URL.<o:p>=
</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am creating a custom installer to install the OS.&=
nbsp; I am modifying the init-install-efi.sh script to include efibootmgr.&=
nbsp; I have a bbappend for core-image-minimal-initramfs that has<o:p></o:p=
></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">PACKAGE_INSTALL:append =
=3D &#8220; efibootmgr efivar &#8221;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">When I run my installer and it tries running the efi=
bootmgr command, I get<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">EFI variables are not sup=
ported on this system.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">It looks like the kernel-module-efivarfs is not incl=
uded in the initramfs image.&nbsp; If I try to add it as a PACKAGE_INSTALL:=
append or RDEPENDS:${PN}:append statement or similar, the build fails with =
dnf error message of not being able to
 find the kernel-module-efivarfs package.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The output of &#8220;zcat /proc/config.gz | grep EFI=
&#8221; when the install-efi.sh script is running is as follows:<o:p></o:p>=
</p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">CONFIG_EFI=3Dy<o:p></o:p>=
</p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">CONFIG_EFI_STUB=3Dy<o:p><=
/o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"># CONFIG_EFI_MIXED is not=
 set<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">CONFIG_EFI_PARTITION=3Dy<=
o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">CONFIG_DMI_SCAN_MACHINE_N=
ON_EFI_FALLBACK=3Dy<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"># EFI (Extensible Firmwar=
e Interface) Support<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">CONFIG_EFI_VARS=3Dm<o:p><=
/o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">CONFIG_EFI_ESRT=3Dy<o:p><=
/o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">CONFIG_EFI_RUNTIME_MAP=3D=
y<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"># CONFIG_EFI_FAKE_MEMMAP =
is not set<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">CONFIG_EFI_RUNTIME_WRAPPE=
RS=3Dy<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">CONFIG_EFI_GENERIC_STUB_I=
NITRD_CMDLINE_LOADER=3Dy<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"># CONFIG_EFI_BOOTLOADER_C=
ONTROL is not set<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"># CONFIG_EFI_CAPSULE_LOAD=
ER is not set<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"># CONFIG_EFI_TEST is not =
set<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"># CONFIG_EFI_RCI2_TABLE i=
s not set<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"># CONFIG_EFI_DISABLE_PCI_=
DMA is not set<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"># end of EFI (Extensible =
Firmware Interface) Support<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">CONFIG_EFI_EARLYCON=3Dy<o=
:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">CONFIG_EFI_CUSTOM_SSDT_OV=
ERLAYS=3Dy<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"># CONFIG_PINCTRL_LAKEFIEL=
D is not set<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">CONFIG_FB_EFI=3Dy<o:p></o=
:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">CONFIG_EFIVAR_FS=3Dy<o:p>=
</o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"># CONFIG_EFI_PGT_DUMP is =
not set<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have the following layers in the following order i=
n my bblayers.conf file:<o:p></o:p></p>
<ul style=3D"margin-top:0in" type=3D"disc">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l0 level1 =
lfo1">poky/meta<o:p></o:p></li><li class=3D"MsoListParagraph" style=3D"marg=
in-left:0in;mso-list:l0 level1 lfo1">poky/meta-poky<o:p></o:p></li><li clas=
s=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l0 level1 lfo1">me=
ta-intel<o:p></o:p></li><li class=3D"MsoListParagraph" style=3D"margin-left=
:0in;mso-list:l0 level1 lfo1">meta-lewism<o:p></o:p></li><li class=3D"MsoLi=
stParagraph" style=3D"margin-left:0in;mso-list:l0 level1 lfo1">meta-openemb=
edded/meta-oe<o:p></o:p></li><li class=3D"MsoListParagraph" style=3D"margin=
-left:0in;mso-list:l0 level1 lfo1">poky/meta-yocto-bsp<o:p></o:p></li></ul>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am not doing anything with meta-secure-core at thi=
s time, but if that is needed, I can add it.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">In my local.conf file I have the following:<o:p></o:=
p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">MACHINE =3D &quot;intel-c=
orei7-64&quot;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">MACHINE_FEATURES:append =
=3D &quot; efi &quot;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">MACHINE_FEATURES_NATIVE:a=
ppend =3D &quot; efi &quot;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">DISTRO =3D &quot;mydistro=
&quot;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">INITRAMFS_IMAGE =3D &quot=
;core-image-minimal-initramfs&quot;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">IMAGE_FSTYPES =3D &quot;l=
ive&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have also added the following to my initramfs-modu=
le-install-efi_%.bbappend file:<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">DEPENDS:append =3D &#8220=
; efibootmgr efivar &#8220;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">RDEPENDED:${PN}:append =
=3D &#8220; efibootmgr efivar &#8220;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">So, how do I get just kernel-module-efivarfs into my=
 initramfs?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">TIA,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Lewis Muhlenkamp<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
Follow this link to read our <a href=3D"https://www.stryker.com/content/str=
yker/gb/en/legal/global-policy-statement.html/">
Privacy Statement</a>
</body>
</html>

--_000_DM4PR01MB783375D66FBAF50B4D152D2C8F6A2DM4PR01MB7833prod_--

