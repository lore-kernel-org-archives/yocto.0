Return-Path: <joerg.sommer@navimatix.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AC52C48BF6
	for <webhook@archiver.kernel.org>; Mon,  4 Mar 2024 19:46:59 +0000 (UTC)
Received: from EUR01-VE1-obe.outbound.protection.outlook.com (EUR01-VE1-obe.outbound.protection.outlook.com [40.107.14.120])
 by mx.groups.io with SMTP id smtpd.web11.1280.1709581614586494099
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Mar 2024 11:46:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@navimatix.de header.s=selector1 header.b=yeV+xRfz;
 spf=pass (domain: navimatix.de, ip: 40.107.14.120, mailfrom: joerg.sommer@navimatix.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l2tz1Z6+iOPIaHECtqq6jKTNGx7f78azgEFXS3a/Gy/gtXMtXvjvVsi2g+QyufyjeLWdvl/+Klc2KIZcv92xQVcIKXeUSvwTxWiZDHQqOahgPmKD71NZ21BC5sRjvdsT+moC4yBdIaG9bEeqchQxqmMFEQA7TyS1sRKJBLMAvY90diUafpaVpuvMNi0Es+hWiLnx6LYHEfiF/GbFAYhFATBaKaIEyJSg18yHMhmF5fE35dtmev/cBDSi2iRBOlSzkA3M9YN9hmQ/Pu7IziPuO3/6rPXHkMHoDV3dSdcZLjX3QbLzrfktzccuaaFYw6R4ZzQFvIrztwdQgiK1SNiH+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4m1MxcsSniS5myY0eso9KA700UXsEjzieD/7F3UHwJs=;
 b=gWjYC7YQ2kMDQ8QwbdHShUA5Xw221FnCPpZJHDcScSJe+pkTLWoD8dJ69CxIk1swnqLmi947prLMYXC7NDf+Afk7tWGWy4A0b4Ljy/LalxAo8oD8+i6eHU+IA6TLgPPyC5b1SkFdGHaw2o+WSKNbM5+u1EvcwhMYzGBZHCOob5ewtRP937tOaAvJh42OFHl5UWRmwDow2LtjRrmTgN+ueAb7mI4D+KjrkX2VaQs1h/gMQo77QJ0GHPRSGBoYLCVXHYgTjKtD8FtCCmOy25MfpifZMmUwV5ou3eBX1l2Mw2K0ufPkpjlg45upEetpXlYMF0XtGfF33RxkkDC8uA7Yhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=navimatix.de; dmarc=pass action=none header.from=navimatix.de;
 dkim=pass header.d=navimatix.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=navimatix.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4m1MxcsSniS5myY0eso9KA700UXsEjzieD/7F3UHwJs=;
 b=yeV+xRfzfn1sp2mKeN80yy5LkGYcvBd2KDsxfvBsTv9xJQkVefoXEgjWKn0NGWjvwBIHgWHoP/N99G0pxqBNxsTdjKzh+1Ocl9CW5xOOYsFG8f37bbh9/Y1ej+ciOF5DbS0Q875Yo7iLSJDg78YJ9zCDzgoCv2b/XlJpQVZXteo=
Received: from DB3PR0102MB3658.eurprd01.prod.exchangelabs.com
 (2603:10a6:8:7::20) by AM7PR01MB6881.eurprd01.prod.exchangelabs.com
 (2603:10a6:20b:1c0::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.38; Mon, 4 Mar
 2024 19:46:50 +0000
Received: from DB3PR0102MB3658.eurprd01.prod.exchangelabs.com
 ([fe80::25b0:e60e:c5dc:54f5]) by
 DB3PR0102MB3658.eurprd01.prod.exchangelabs.com
 ([fe80::25b0:e60e:c5dc:54f5%6]) with mapi id 15.20.7339.035; Mon, 4 Mar 2024
 19:46:50 +0000
From: =?Windows-1252?Q?J=F6rg_Sommer?= <joerg.sommer@navimatix.de>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"luiz.balloti@timpelmedical.com" <luiz.balloti@timpelmedical.com>,
	"yocto-security@lists.yoctoproject.org"
	<yocto-security@lists.yoctoproject.org>
Subject: Re: [yocto] Using SBOM/spdx with DependencyTrack/CyclonDX
Thread-Topic: [yocto] Using SBOM/spdx with DependencyTrack/CyclonDX
Thread-Index: AQHabU84Kwd5Cn8kKkyrsNU1E5NI0rEnWpWAgABFiICAAE90XA==
Date: Mon, 4 Mar 2024 19:46:50 +0000
Message-ID: 
 <DB3PR0102MB36585CEBB7B57C7DC9C48031FC232@DB3PR0102MB3658.eurprd01.prod.exchangelabs.com>
References: 
 <DB3PR0102MB3658E433CD17D9A27297B8E5FC5C2@DB3PR0102MB3658.eurprd01.prod.exchangelabs.com>
 <D3FB0380-6404-4015-9FFB-C29944612056@arm.com>
 <CAPtt3O9NoyHLmeFRPThdunx3X9TLfWE42qj4m3EvQ51A7Z=j2A@mail.gmail.com>
In-Reply-To: 
 <CAPtt3O9NoyHLmeFRPThdunx3X9TLfWE42qj4m3EvQ51A7Z=j2A@mail.gmail.com>
Accept-Language: en-DE, de-DE, en-US
Content-Language: aa
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=navimatix.de;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB3PR0102MB3658:EE_|AM7PR01MB6881:EE_
x-ms-office365-filtering-correlation-id: 666e0306-d92c-4fe1-9149-08dc3c83d5c1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 z8eqaFUEuM4BeK/GlmloM29Fp/lAYm1gmUHWkfRxFz0TKKfs3gZrQ2sI87OlhlNs8rIp98qVbO7qLXp1Lf/a+JiHgXBo7h705Ipkmsv1sFkNBZfin/x6++idtH3i8yRbhLNxySSrv8coLhIIwTj3IGnRaUlfoP6VsAj7P8Uhj57FTqWrfCLRKYxjR1wlD8YUHvdWMgwX4rvVC7ALDLGSm9ZHvMazgraeEE5Rgqqg4AauaR+iHVRI7bzZiAY6jigubQh9hejrM5EL3Yx6PT46D9CW8nim+oH0vl5ruygl6zk7UbO+PBD7y8lpjBSZt862OahGPiMuHE1zHnBPB7lfPHFwJ+gqvwG9XgOJ2aqYgf5uB73M79JuOnYQujEPvzOJqAoZjb99glF8eP3cf/x+6LcllCHNdrSVqRLBqf5raonEB66c7MvMc9tKzJILB15FcElIEw0Lw+JFbQoZOqUNUgwcr0UWagZ04R8EooE7wI+bpbzY+rzbHXlxTVczxlSXXeVu+SXKmDgqidXyKq7OI8k2/ck7qRE/21vWfb9+CYnkylpZqfLrvLswElTEtDyJhOgIhm5VXypjVYqQwZLNdVv2Ob+b67Lu9W18ihug0p2iHGZnlbYn6YWHM7/qSDlo5gAIItx+Ck8ABe8wqz7SyURenvXYcONdS+c3T+ebJ8w=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB3PR0102MB3658.eurprd01.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(38070700009);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?Uw1EUWKOOP8PZZ54O+0KxJeSX4sByncQ8Sozih3ZnngEiwStFOnVHCe2?=
 =?Windows-1252?Q?Ov4YW8lcWP9OHOwh+4ZrNETXdrB1fVM4XKbDj+5nQi9x90oekyVv2ujD?=
 =?Windows-1252?Q?/sPq65Zd/i4ECf61VvT/FPrMWSKLiSrQLeV2+YcBDRXvFj4nloH14QpE?=
 =?Windows-1252?Q?AZoCdfCGj52gKyJjEsYuN8LdBvN2MgEa5p4DlC+VboCGwkCMD4f9rcRS?=
 =?Windows-1252?Q?1hLb7Z46/4abf/j3NvqOS5nYcu2ufTU1ES4IwzRCbEmufz0T5oVpe01s?=
 =?Windows-1252?Q?uD4O98fwZDDcrHpixHlAmuR5N2BDmFFCLP2qRDeRPkNs+NggQms5ftSZ?=
 =?Windows-1252?Q?d+rCqXPLXvXDXqwKFGo5lL+SU+ou/xUo3nKhwY0mcXplsc6spD7xCUb7?=
 =?Windows-1252?Q?G1Ot5Tezx2uONAuAE29NphYjxp+cftHuNflpNS8OXkvSiLJy7nKwkhkQ?=
 =?Windows-1252?Q?cHxXHCPJIve71d1vuyBLzLgVXfLn4jBN1qN1VrqYsvrJebimsmSS2tAG?=
 =?Windows-1252?Q?uPy3HFwujoxrUIVCtdGv03FAhiv+vxqhnGA/PpgAcpV90/c2lCgG2U+O?=
 =?Windows-1252?Q?nURJD7ctjL79AWUFyl3xt2sIUFE5TO2F9GESPgNbnQCO3oeXs28vR0yN?=
 =?Windows-1252?Q?pvj2zIkw4ycT9b2tkEJm6gHYOhFjZj/tk47FQhODoi71pkLPDfbzkHmi?=
 =?Windows-1252?Q?Lm7rj0gMeNnJf0hEouegBdoQAzvBiNXUHAMtRz9V1F7fPnmI0j7iBq7/?=
 =?Windows-1252?Q?zHddMsQ6rsMoN46i+V6cZOFtSYLS5JXfeo9EmU8c8PGAaE1AydRkZ+in?=
 =?Windows-1252?Q?/hhK2g7qpRco852ibZnZfz3uNGOiUtF/PbjKHPL00djYVBxA7LWUhk6w?=
 =?Windows-1252?Q?oqGUVucz6Rj7PwKFB8hCgext2RCsyixLLhSuL/PT65e0FWudIin7ezzs?=
 =?Windows-1252?Q?tt/2+Z5bf3snbF6Ny/HH2jOUIVlGRxFBP0U0+p6THJEOrGT1Qixffb2x?=
 =?Windows-1252?Q?RhW/zxeetvrvsYOMEiHVDTDtxXgL/zjBP3WnzwNHfs2H8y/567UnkHhf?=
 =?Windows-1252?Q?JaXU1TNWM7HPiiqVcwlJTzcMfmBVeVp55fAuO3vwznr8iGbmR7WIGVdf?=
 =?Windows-1252?Q?y8byDn3P5CFz5cAgiGAUCai1WypkHRXPGei/qaL6XKuTs0ZIQi/vuKtL?=
 =?Windows-1252?Q?NiDN8sQHgNDI5fPpPsf6ugT989ghULJuwiyWieciJHNIAThXZvS1DSd8?=
 =?Windows-1252?Q?BSyQa1mEjYujX3Oh3wsb116vBBS4QQGbBkURQO/92NtbDifE5k9+8zE3?=
 =?Windows-1252?Q?ewq+OKCf0rfiBPPS31Rcp0cbN+xRWji+tpw2NzzACsFaYXjvMTHLTi6m?=
 =?Windows-1252?Q?YpQvcXy48Yc2R2vwk+2ZELx03QS9YjTevTzwVNfDDREkfiCGvx+sQOim?=
 =?Windows-1252?Q?1jpmHFEgxN1eg6wb2MOGVV5oPBmLh3/DVnfCCy4ckCe9CiyUT8hX715N?=
 =?Windows-1252?Q?BAXoBMIw2uhKGc/VAzriJqblIjxxjQFB91UTxPDpuSuO8KBMqdrHIXzn?=
 =?Windows-1252?Q?erUv8tVsIw4W9hPy6pHqlcu/ICwLPR7w7nCrkMlF2GkBaZManVtfTwwr?=
 =?Windows-1252?Q?Kgl62QE98C/sVwCOs6iifd/56mC/VHqOMhxiw0kiK+362LhorRb6nCtY?=
 =?Windows-1252?Q?LyaI3rD+jBbnRTj2/6gDT94cPirxVZhhU5J0HSgDMKoaDEude2mCemCa?=
 =?Windows-1252?Q?2qdu2s8dhun+7ZORQWVxde9jMge7Vb3x3/nyvhIC?=
Content-Type: multipart/mixed;
	boundary="_004_DB3PR0102MB36585CEBB7B57C7DC9C48031FC232DB3PR0102MB3658_"
MIME-Version: 1.0
X-OriginatorOrg: navimatix.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB3PR0102MB3658.eurprd01.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 666e0306-d92c-4fe1-9149-08dc3c83d5c1
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2024 19:46:50.4171
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c87b4f54-b992-4813-8f3f-4a876324197f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lun4Wt8JetE51/ZzEfz6e3EjiUNX/1Qa/Md0QlIHZLscvixqQOvRzVQuv7Tt2cg9TvZMDRhqArjPLNV/FmNPGlbbbxIYhNNYUbrMRn+B7TU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR01MB6881
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Mar 2024 19:46:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62675

--_004_DB3PR0102MB36585CEBB7B57C7DC9C48031FC232DB3PR0102MB3658_
Content-Type: multipart/alternative;
	boundary="_000_DB3PR0102MB36585CEBB7B57C7DC9C48031FC232DB3PR0102MB3658_"

--_000_DB3PR0102MB36585CEBB7B57C7DC9C48031FC232DB3PR0102MB3658_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Thanks for the hint about the timing. My script worked, but because of the =
required wait before VEX upload it showed bad and inconsistent results.

Here is the new version.

Regards, J=F6rg
--


Navimatix GmbH

Tatzendpromenade 2

07745 Jena

T: 03641 - 327 99 0

F: 03641 - 526 306

M: joerg.sommer@navimatix.de

www.navimatix.de<http://www.navimatix.de/>



Gesch=E4ftsf=FChrer: Steffen Sp=E4the, Jan Rommeley

Registergericht: Amtsgericht Jena, HRB 501480

________________________________
From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> on behalf=
 of Luiz Balloti via lists.yoctoproject.org <luiz.balloti=3Dtimpelmedical.c=
om@lists.yoctoproject.org>
Sent: Monday, 4 March 2024 15:08
To: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Using SBOM/spdx with DependencyTrack/CyclonDX

J=F6rg, fixed CVEs should be encoded in a "vulnerabilities" section in a Cy=
cloneDX SBOM, or in an ancillary VEX document which references SBOM compone=
nts. Unfortunately, Dependency-Track currently ignores the vulnerabilities =
section of uploaded SBOMs, so the only way is to upload the SBOM, wait unti=
l it is processed by the Dependency-Track instance and then upload the VEX =
document.

Regards,

Luiz

Em seg., 4 de mar. de 2024 =E0s 06:59, Ross Burton <ross.burton@arm.com<mai=
lto:ross.burton@arm.com>> escreveu:
On 3 Mar 2024, at 10:09, J=F6rg Sommer via lists.yoctoproject.org<http://li=
sts.yoctoproject.org> <joerg.sommer=3Dnavimatix.de@lists.yoctoproject.org<m=
ailto:navimatix.de@lists.yoctoproject.org>> wrote:
> does anyone use DependencyTrack https://dependencytrack.org/ to analyse C=
VE vulnerabilities? I've created a script to convert the spdx.tar.zst to a =
CycloneDX JSON and upload this to DependencyTrack. But I'm having the probl=
em that CVEs fixed in Yocto by patches are not reflected in the spdx. There=
 is the sourceInfo field that lists fixed CVEs, but I don't know how to enc=
ode this in CycloneDX. How is this done with SDPX? Does anyone do CVE analy=
sis with SPDX?

This is something that=92s being actively worked on.  In the mean time, if =
you=92re transforming the SPDX into CycloneDX then I suggest that you also =
read the cve-checker JSON output too, that contains information about what =
CVEs have been resolved via patches.

Ross



--_000_DB3PR0102MB36585CEBB7B57C7DC9C48031FC232DB3PR0102MB3658_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Thanks for the hint about the timing. My script worked, but because of the =
required wait before VEX upload it showed bad and inconsistent results.</di=
v>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Here is the new version.<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature" data-lt-sig-active=3D"">
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontSer=
vice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(64, 64, 6=
4);">Regards,
</span><span style=3D"font-family: &quot;Calibri&quot;, serif; font-size: 1=
2pt; color: rgb(64, 64, 64);">J=F6rg</span></div>
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(64, 64, 64);">=
--<br>
</span>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontSer=
vice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(64, 64, 6=
4);"><br>
</span></div>
<table id=3D"tableSelected0" style=3D"width: 586px;">
<tbody>
<tr>
<td style=3D"border-width: medium; border-style: none; border-color: curren=
tcolor; padding: 0in; vertical-align: top; width: 184px;">
<p style=3D"line-height: 115%; margin-right: -0.17in; margin-bottom: 0in; f=
ont-family: &quot;Calibri&quot;, serif;">
<span style=3D"font-size: 10pt; color: rgb(64, 64, 64);">Navimatix GmbH</sp=
an></p>
<p style=3D"line-height: 115%; margin-right: -0.07in; margin-bottom: 0in; f=
ont-family: &quot;Calibri&quot;, serif;">
<span style=3D"font-size: 10pt; color: rgb(64, 64, 64);">Tatzendpromenade 2=
</span></p>
<p style=3D"line-height: 115%; margin-bottom: 0.1in; font-family: &quot;Cal=
ibri&quot;, serif;">
<span style=3D"font-size: 10pt; color: rgb(64, 64, 64);">07745 Jena</span><=
span style=3D"font-size: 9pt; color: rgb(64, 64, 64);"> &nbsp;</span></p>
</td>
<td style=3D"border-width: medium; border-style: none; border-color: curren=
tcolor; padding: 0in; vertical-align: top; width: 220px;">
<p style=3D"line-height: 115%; margin-bottom: 0in; font-family: &quot;Calib=
ri&quot;, serif;">
<span style=3D"font-size: 10pt; color: rgb(64, 64, 64);">T: 03641 - 327 99 =
0</span></p>
<p style=3D"line-height: 115%; margin-bottom: 0in; font-family: &quot;Calib=
ri&quot;, serif;">
<span style=3D"font-size: 10pt; color: rgb(64, 64, 64);">F: 03641 - 526 306=
</span></p>
<p style=3D"line-height: 115%; margin-bottom: 0in; font-family: &quot;Calib=
ri&quot;, serif;">
<span style=3D"font-size: 10pt; color: rgb(64, 64, 64);">M: </span><span st=
yle=3D"font-size: 10pt; color: rgb(5, 99, 193);"><u>joerg.sommer@navimatix.=
de</u></span></p>
<p style=3D"line-height: 115%; margin-bottom: 0in; font-family: &quot;Calib=
ri&quot;, serif;">
<span style=3D"font-size: 10pt; color: rgb(5, 99, 193);"><u><a href=3D"http=
://www.navimatix.de/" id=3D"OWAadba7551-0117-714f-ff10-1c57ba70aaf8" class=
=3D"OWAAutoLink" style=3D"margin-top: 0px; margin-bottom: 0px;" data-loopst=
yle=3D"linkonly" data-lt-sig=3D"">www.navimatix.de</a></u></span></p>
</td>
<td style=3D"border-width: medium; border-style: none; border-color: curren=
tcolor; padding: 0in; width: 139px;">
<p style=3D"line-height: 115%; margin-bottom: 0.1in; font-family: &quot;Cal=
ibri&quot;, serif;">
<span style=3D"font-size: 12pt; color: rgb(0, 0, 0);"><br>
</span></p>
</td>
</tr>
</tbody>
</table>
<p style=3D"line-height: 115%; margin-right: -0.17in; margin-bottom: 0in; f=
ont-family: &quot;Calibri&quot;, serif;">
<span style=3D"font-size: 12pt; color: rgb(0, 0, 0);"><br>
</span></p>
<p style=3D"line-height: 115%; margin-right: -0.17in; margin-bottom: 0in; f=
ont-family: &quot;Calibri&quot;, serif;">
<span style=3D"font-size: 10pt; color: rgb(64, 64, 64);">Gesch=E4ftsf=FChre=
r: Steffen Sp=E4the, Jan Rommeley</span></p>
<p style=3D"line-height: 115%; margin-right: -0.17in; margin-bottom: 0in; f=
ont-family: &quot;Calibri&quot;, serif;">
<span style=3D"font-size: 10pt; color: rgb(64, 64, 64);">Registergericht: A=
mtsgericht Jena, HRB 501480</span></p>
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);"><br=
>
</span></div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> yocto@lists.yoctoproj=
ect.org &lt;yocto@lists.yoctoproject.org&gt; on behalf of Luiz Balloti via =
lists.yoctoproject.org &lt;luiz.balloti=3Dtimpelmedical.com@lists.yoctoproj=
ect.org&gt;<br>
<b>Sent:</b> Monday, 4 March 2024 15:08<br>
<b>To:</b> yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt=
;<br>
<b>Subject:</b> Re: [yocto] Using SBOM/spdx with DependencyTrack/CyclonDX</=
font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">J=F6rg, fixed CVEs should be encoded in a &quot;vulnerabil=
ities&quot; section in a CycloneDX SBOM, or in an ancillary VEX document wh=
ich references SBOM components. Unfortunately, Dependency-Track currently i=
gnores the vulnerabilities section of uploaded
 SBOMs, so the only way is to upload the SBOM, wait until it is processed b=
y the Dependency-Track instance and then upload the VEX document.
<div><br>
</div>
<div>Regards,</div>
<div><br>
</div>
<div>Luiz</div>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">Em seg., 4 de mar. de 2024 =E0s 06:=
59, Ross Burton &lt;<a href=3D"mailto:ross.burton@arm.com">ross.burton@arm.=
com</a>&gt; escreveu:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
On 3 Mar 2024, at 10:09, J=F6rg Sommer via <a href=3D"http://lists.yoctopro=
ject.org" rel=3D"noreferrer" target=3D"_blank">
lists.yoctoproject.org</a> &lt;joerg.sommer=3D<a href=3D"mailto:navimatix.d=
e@lists.yoctoproject.org" target=3D"_blank">navimatix.de@lists.yoctoproject=
.org</a>&gt; wrote:<br>
&gt; does anyone use DependencyTrack <a href=3D"https://dependencytrack.org=
/" rel=3D"noreferrer" target=3D"_blank">
https://dependencytrack.org/</a> to analyse CVE vulnerabilities? I've creat=
ed a script to convert the spdx.tar.zst to a CycloneDX JSON and upload this=
 to DependencyTrack. But I'm having the problem that CVEs fixed in Yocto by=
 patches are not reflected in the
 spdx. There is the sourceInfo field that lists fixed CVEs, but I don't kno=
w how to encode this in CycloneDX. How is this done with SDPX? Does anyone =
do CVE analysis with SPDX?<br>
<br>
This is something that=92s being actively worked on.&nbsp; In the mean time=
, if you=92re transforming the SPDX into CycloneDX then I suggest that you =
also read the cve-checker JSON output too, that contains information about =
what CVEs have been resolved via patches.<br>
<br>
Ross<br>
<br>
<br>
</blockquote>
</div>
</div>
</body>
</html>

--_000_DB3PR0102MB36585CEBB7B57C7DC9C48031FC232DB3PR0102MB3658_--

--_004_DB3PR0102MB36585CEBB7B57C7DC9C48031FC232DB3PR0102MB3658_
Content-Type: application/x-shellscript; name="deptrack-spdx-upload.sh"
Content-Description: deptrack-spdx-upload.sh
Content-Disposition: attachment; filename="deptrack-spdx-upload.sh";
	size=4772; creation-date="Mon, 04 Mar 2024 19:46:43 GMT";
	modification-date="Mon, 04 Mar 2024 19:46:50 GMT"
Content-Transfer-Encoding: base64

IyEvYmluL3NoCgpzZXQgLWUgLXUgLUMKCm5vX3VwbG9hZD1mYWxzZQpyY3B0X2ZpbHRlcj1cKgpz
a2lwX3Nib209ZmFsc2UKc2tpcF92ZXg9ZmFsc2UKCndoaWxlIFsgJCMgLWd0IDAgXQpkbwogICAg
Y2FzZSAiJDEiIGluCiAgICAtLW5vLXVwbG9hZCkgbm9fdXBsb2FkPXRydWU7OwogICAgLS1za2lw
LXNib20pIHNraXBfc2JvbT10cnVlOzsKICAgIC0tc2tpcC12ZXgpIHNraXBfdmV4PXRydWU7Owog
ICAgLS1yY3B0LWZpbHRlcikKICAgICAgICBzaGlmdAogICAgICAgIHJjcHRfZmlsdGVyPSR7MTo/
QXJndW1lbnQgZm9yIC0tcmNwdC1maWx0ZXIgbWlzc2luZ30KICAgICAgICA7OwogICAgKikgYnJl
YWs7OwogICAgZXNhYwoKICAgIHNoaWZ0CmRvbmUKCmlmICEgJG5vX3VwbG9hZCAmJiBbIC16ICIk
e0RUX0FQSV9LRVk6LX0iIF0KdGhlbgogICAgZWNobyAnRW52aXJvbm1lbnQgdmFyaWFibGUgRFRf
QVBJX0tFWSBub3Qgc2V0JyA+JjIKICAgIGV4aXQgMQpmaQoKaWYgWyAkIyAtbmUgNCBdCnRoZW4K
ICAgIGVjaG8gIlVzYWdlOiAkMCBbT1BUSU9OU10gSE9TVF9VUkwgUFJPSkVDVF9OQU1FIFNQRFhf
VEFSX1pTVCBQUk9KRUNUX1ZFUlNJT04iID4mMgogICAgZWNobyA+JjIKICAgIGVjaG8gJ09QVElP
TlM6JyA+JjIKICAgIGVjaG8gJyAgICAtLW5vLXVwbG9hZCAgICAgICAgICAgICAgICBkbyBub3Qg
dXBsb2FkLCBidXQgcHJpbnQgdG8gc3Rkb3V0JyA+JjIKICAgIGVjaG8gJyAgICAtLXJjcHQtZmls
dGVyIEZJTFRFUiAgICAgICBvbmx5IHByb2Nlc3MgcmVjaXBlcyBtYXRjaGVkIGJ5IHdpbGRjYXJk
IEZJTFRFUicgPiYyCiAgICBlY2hvICcgICAgLS1za2lwLXNib20gICAgICAgICAgICAgICAgZG8g
bm90IGdlbmVyYXRlIHRoZSBTQk9NJyA+JjIKICAgIGVjaG8gJyAgICAtLXNraXAtdmV4ICAgICAg
ICAgICAgICAgICBkbyBub3QgZ2VuZXJhdGUgdGhlIFZFWCcgPiYyCiAgICBleGl0IDEKZmkKCmR0
X2hvc3RfdXJsPSQxCmR0X3Byb2plY3Q9JDIKc3BkeF90YXI9JDMKZHRfdmVyc2lvbj0kNAoKaWYg
ISAkc2tpcF9zYm9tCnRoZW4KICAgICMgaHR0cHM6Ly9naXRodWIuY29tL0N5Y2xvbmVEWC9zcGVj
aWZpY2F0aW9uL2Jsb2IvMS41L3NjaGVtYS9ib20tMS41LnNjaGVtYS5qc29uCiAgICAjIGh0dHBz
Oi8vZG9jcy5kZXBlbmRlbmN5dHJhY2sub3JnL3VzYWdlL2NpY2QvCgogICAgdGFyIC14IC1mICIk
c3BkeF90YXIiIC0tdG8tc3Rkb3V0IC0td2lsZGNhcmRzIHJlY2lwZS0iJHJjcHRfZmlsdGVyIi5z
cGR4Lmpzb24gfCBcCiAgICAgICAganEgLS1zbHVycCAnbWFwKC5wYWNrYWdlcykgfGZsYXR0ZW4K
ICAgICAgICB8bWFwKHNlbGVjdCgubmFtZSB8c3RhcnRzd2l0aCgicGFja2FnZWdyb3VwLSIpIHxu
b3QpKSB8IHsKICAgICAgICAgICAgYm9tRm9ybWF0OiAiQ3ljbG9uZURYIiwKICAgICAgICAgICAg
c3BlY1ZlcnNpb246ICIxLjUiLAogICAgICAgICAgICBzZXJpYWxOdW1iZXI6ICJ1cm46dXVpZDon
IiQodXVpZGdlbikiJyIsCiAgICAgICAgICAgIHZlcnNpb246IDEsCgogICAgICAgICAgICBtZXRh
ZGF0YTogewogICAgICAgICAgICAgICAgdGltZXN0YW1wOiAiJyIkKGRhdGUgLS1pc28tODYwMT1z
ZWNvbmRzKSInIiwKICAgICAgICAgICAgICAgIGNvbXBvbmVudDogewogICAgICAgICAgICAgICAg
ICAgIG5hbWU6ICInIiRkdF9wcm9qZWN0IiciLAogICAgICAgICAgICAgICAgICAgIHZlcnNpb246
ICInIiRkdF92ZXJzaW9uIiciLAogICAgICAgICAgICAgICAgICAgIHR5cGU6ICJvcGVyYXRpbmct
c3lzdGVtIiwKICAgICAgICAgICAgICAgIH0sCiAgICAgICAgICAgIH0sCgogICAgICAgICAgICBj
b21wb25lbnRzOiBtYXAoewogICAgICAgICAgICAgICAgdHlwZTogImFwcGxpY2F0aW9uIiwKICAg
ICAgICAgICAgICAgIG5hbWUsCiAgICAgICAgICAgICAgICAiYm9tLXJlZiI6IC5uYW1lLAogICAg
ICAgICAgICAgICAgc3VwcGxpZXI6IHsgbmFtZTogLnN1cHBsaWVyIH0sCiAgICAgICAgICAgICAg
ICB2ZXJzaW9uOiAudmVyc2lvbkluZm8sCiAgICAgICAgICAgICAgICBkZXNjcmlwdGlvbiwKICAg
ICAgICAgICAgICAgIGxpY2Vuc2VzOiBbewogICAgICAgICAgICAgICAgICAgIGV4cHJlc3Npb246
IC5saWNlbnNlRGVjbGFyZWQsCiAgICAgICAgICAgICAgICB9XSwKICAgICAgICAgICAgICAgIGV4
dGVybmFsUmVmZXJlbmNlczogKFsKICAgICAgICAgICAgICAgICAgICB7IHR5cGU6ICJ2Y3MiLCB1
cmw6IC5kb3dubG9hZExvY2F0aW9uIH0sCiAgICAgICAgICAgICAgICAgICAgeyB0eXBlOiAid2Vi
c2l0ZSIsIHVybDogLmhvbWVwYWdlIH0KICAgICAgICAgICAgICAgIF0gfG1hcChzZWxlY3QoLnVy
bCAhPSBudWxsIGFuZCAudXJsICE9ICJOT0FTU0VSVElPTiIpKSksCiAgICAgICAgICAgIH0gKyAo
CiAgICAgICAgICAgICAgICAuZXh0ZXJuYWxSZWZzWzBdLnJlZmVyZW5jZUxvY2F0b3IKICAgICAg
ICAgICAgICAgIHwgaWYgLiAhPSBudWxsIHRoZW4geyBjcGU6IC4gfSBlbHNlIHsgfSBlbmQKICAg
ICAgICAgICAgKSksCiAgICAgICAgfScgXAogICAgICAgIHwgaWYgJG5vX3VwbG9hZDsgdGhlbiBj
YXQ7IGVsc2UgY3VybCAtLW5vLXByb2dyZXNzLW1ldGVyIC0tZmFpbC13aXRoLWJvZHkgXAogICAg
ICAgICAgICAtSCAiWC1BcGktS2V5OiAkRFRfQVBJX0tFWSIgXAogICAgICAgICAgICAtRiAnYXV0
b0NyZWF0ZT10cnVlJyBcCiAgICAgICAgICAgIC1GICJwcm9qZWN0TmFtZT0kZHRfcHJvamVjdCIg
XAogICAgICAgICAgICAtRiAicHJvamVjdFZlcnNpb249JGR0X3ZlcnNpb24iIFwKICAgICAgICAg
ICAgLUYgJ2JvbT1ALScgIiRkdF9ob3N0X3VybC9hcGkvdjEvYm9tIjsgZmkKCiAgICBlY2hvCmZp
CgppZiAhICRza2lwX3ZleAp0aGVuCiAgICBpZiAhICRza2lwX3Nib20gJiYgISAkbm9fdXBsb2Fk
CiAgICB0aGVuCiAgICAgICAgZWNobyAnV2FpdGluZyBmb3IgU0JPTSBnZXR0aW5nIHByb2Nlc3Nl
ZCcKICAgICAgICBzbGVlcCAxMAogICAgZmkKCiAgICAjIGh0dHBzOi8vZ2l0aHViLmNvbS9DeWNs
b25lRFgvYm9tLWV4YW1wbGVzL2Jsb2IvbWFzdGVyL1ZFWC92ZXguanNvbgoKICAgIHRhciAteCAt
ZiAiJHNwZHhfdGFyIiAtLXRvLXN0ZG91dCAtLXdpbGRjYXJkcyByZWNpcGUtIiRyY3B0X2ZpbHRl
ciIuc3BkeC5qc29uIHwgXAogICAgICAgIGpxIC0tc2x1cnAgJ21hcCgucGFja2FnZXMpIHxmbGF0
dGVuCiAgICAgICAgfG1hcChzZWxlY3QoLm5hbWUgfHN0YXJ0c3dpdGgoInBhY2thZ2Vncm91cC0i
KSB8bm90KSkKICAgICAgICB8bWFwKHNlbGVjdCguc291cmNlSW5mbyAhPSBudWxsKSkgfCB7CiAg
ICAgICAgICAgIGJvbUZvcm1hdDogIkN5Y2xvbmVEWCIsCiAgICAgICAgICAgIHNwZWNWZXJzaW9u
OiAiMS41IiwKICAgICAgICAgICAgc2VyaWFsTnVtYmVyOiAidXJuOnV1aWQ6JyIkKHV1aWRnZW4p
IiciLAogICAgICAgICAgICB2ZXJzaW9uOiAxLAogICAgICAgICAgICBtZXRhZGF0YTogewogICAg
ICAgICAgICAgICAgdGltZXN0YW1wOiAiJyIkKGRhdGUgLS1pc28tODYwMT1zZWNvbmRzKSInIiwK
ICAgICAgICAgICAgfSwKCiAgICAgICAgICAgIGNvbXBvbmVudHM6IG1hcCh7CiAgICAgICAgICAg
ICAgICBuYW1lLAogICAgICAgICAgICAgICAgImJvbS1yZWYiOiAubmFtZSwKICAgICAgICAgICAg
ICAgIHZlcnNpb246IC52ZXJzaW9uSW5mbywKICAgICAgICAgICAgfSArICgKICAgICAgICAgICAg
ICAgIC5leHRlcm5hbFJlZnNbMF0ucmVmZXJlbmNlTG9jYXRvcgogICAgICAgICAgICAgICAgfCBp
ZiAuICE9IG51bGwgdGhlbiB7IGNwZTogLiB9IGVsc2UgeyB9IGVuZAogICAgICAgICAgICApKSwK
CiAgICAgICAgICAgIHZ1bG5lcmFiaWxpdGllczogbWFwKC4gYXMgeyBuYW1lOiAkbmFtZSwgdmVy
c2lvbkluZm86ICR2ZXJzaW9uIH0KICAgICAgICAgICAgfCAuc291cmNlSW5mbyB8bWF0Y2goIkNW
RS1cXFMrIjsgImciKSB8IC5zdHJpbmcKICAgICAgICAgICAgfCB7CiAgICAgICAgICAgICAgICBp
ZDogLiwKICAgICAgICAgICAgICAgIHNvdXJjZSA6IHsgbmFtZTogIk5WRCIsIHVybDogImh0dHBz
Oi8vbnZkLm5pc3QuZ292LyIgfSwKICAgICAgICAgICAgICAgIGFmZmVjdHM6IFt7CiAgICAgICAg
ICAgICAgICAgICByZWY6ICRuYW1lLAogICAgICAgICAgICAgICAgICAgdmVyc2lvbnM6IFt7IHZl
cnNpb246ICR2ZXJzaW9uIH1dLAogICAgICAgICAgICAgICAgfV0sCiAgICAgICAgICAgICAgICBh
bmFseXNpczogewogICAgICAgICAgICAgICAgICAgIHN0YXRlOiAicmVzb2x2ZWQiLAogICAgICAg
ICAgICAgICAgICAgIGRldGFpbDogIkZpeGVkIGJ5IHBhdGNoIGFwcGxpZWQgYnkgWW9jdG8gcmVj
aXBlIiwKICAgICAgICAgICAgICAgIH0sCiAgICAgICAgICAgIH0pLAogICAgICAgIH0nIFwKICAg
ICAgICB8IGlmICRub191cGxvYWQ7IHRoZW4gY2F0OyBlbHNlIGN1cmwgLS1uby1wcm9ncmVzcy1t
ZXRlciAtLWZhaWwtd2l0aC1ib2R5IFwKICAgICAgICAgICAgLUggIlgtQXBpLUtleTogJERUX0FQ
SV9LRVkiIFwKICAgICAgICAgICAgLUYgInByb2plY3ROYW1lPSRkdF9wcm9qZWN0IiBcCiAgICAg
ICAgICAgIC1GICJwcm9qZWN0VmVyc2lvbj0kZHRfdmVyc2lvbiIgXAogICAgICAgICAgICAtRiAn
dmV4PUAtJyAiJGR0X2hvc3RfdXJsL2FwaS92MS92ZXgiOyBlY2hvOyBmaQoKICAgICMgVE9ETyBj
b21wYXJlIHdpdGggaHR0cHM6Ly9hdXRvYnVpbGRlci55b2N0by5pby9wdWIvbm9uLXJlbGVhc2Uv
cGF0Y2htZXRyaWNzL2N2ZS1zdGF0dXMta2lya3N0b25lLnR4dApmaQo=

--_004_DB3PR0102MB36585CEBB7B57C7DC9C48031FC232DB3PR0102MB3658_--

