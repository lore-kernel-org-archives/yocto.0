Return-Path: <joerg.sommer@navimatix.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F3E10C48BF6
	for <webhook@archiver.kernel.org>; Sun,  3 Mar 2024 10:10:01 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.136])
 by mx.groups.io with SMTP id smtpd.web11.70622.1709460599457978616
 for <yocto@lists.yoctoproject.org>;
 Sun, 03 Mar 2024 02:10:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@navimatix.de header.s=selector1 header.b=JQSuxf4H;
 spf=pass (domain: navimatix.de, ip: 40.107.21.136, mailfrom: joerg.sommer@navimatix.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=niyYSoE06PnnXc5HFDU3MBBkFnvDBYismWF6cAWCH2VAXUk2zTTdACXgxicvQVIEraeXm/bleoEXNjic2NcGAarRlq6KC2gTHfrG/cjJ5qLxGapBkXcmvAUnUQDCzfYRBwMzICEDbxM0eBSfpa4dMNVMv+KhHxAp73aZCOvM7gjCOZtrbeCbuqk7WAHTE1s4cA29QQtQq4MK6aVlk1KEATlY2LaMCqhNjReomJG/DqXWMEvdzzqCgglvxfFBmLd9T7f+cKwfumOIU3vmEs+66M4KN7Wyd54rxAvQ9iZAkeLpJuoSUQSc9/acgcUcaE+XYyMAWy3p3/XObihNsb5bbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2e7Wh/3pjShIksLrnau9eafeNLmBYhBbtOgZdIf9PD0=;
 b=cotHAiPqROrIIacEyIxzv+F7wmGIfxK4cfibJ1Lpd1/6XLd9Yl94TBAH0fQ97a0HzxYevn+9tCfPqIAGFavObNxluNBVN6Gp32gKKZpql67bY0wNpOhtXBssqko2mr+iH1fm2agU/T0m4UhTEWgZiLB9Bdb2TIAa5Z0iYxFcRZNffHg+OGsOqg4mUEO615AvI9l0uQO1KLtbsMNUAS4U+A0Idpaep4D1cOPHDhm1R7jqs0aiA2eU2a0z3G9klwjFptclpv/3/PRIineWZ5KmOnyCEtlLSlK0KjY7G5m/hhgStFmdAT5O9yghLkG0zhJ9IF21P3yD4F2YXMQSRfweCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=navimatix.de; dmarc=pass action=none header.from=navimatix.de;
 dkim=pass header.d=navimatix.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=navimatix.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2e7Wh/3pjShIksLrnau9eafeNLmBYhBbtOgZdIf9PD0=;
 b=JQSuxf4H8hMG2JRRbpcdp3skE6MD6e3Fc2J2VkoX25e6mzOk/DwoAcincmNDUa9UsJhH8kneNxd0dinHdh+ST6OxRKyDVTTzCLBLS/Qiz4V6lT9UPvECpq/kaI2pzE434Znt4CYC+xmLbkUQNkO73INGvZ0sUiixRzSVD0eKSEE=
Received: from DB3PR0102MB3658.eurprd01.prod.exchangelabs.com
 (2603:10a6:8:7::20) by DB9PR01MB9056.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:368::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.38; Sun, 3 Mar
 2024 10:09:55 +0000
Received: from DB3PR0102MB3658.eurprd01.prod.exchangelabs.com
 ([fe80::25b0:e60e:c5dc:54f5]) by
 DB3PR0102MB3658.eurprd01.prod.exchangelabs.com
 ([fe80::25b0:e60e:c5dc:54f5%6]) with mapi id 15.20.7339.035; Sun, 3 Mar 2024
 10:09:55 +0000
From: =?iso-8859-1?Q?J=F6rg_Sommer?= <joerg.sommer@navimatix.de>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"yocto-security@lists.yoctoproject.org"
	<yocto-security@lists.yoctoproject.org>
Subject: Using SBOM/spdx with DependencyTrack/CyclonDX
Thread-Topic: Using SBOM/spdx with DependencyTrack/CyclonDX
Thread-Index: AQHabU84Kwd5Cn8kKkyrsNU1E5NI0g==
Date: Sun, 3 Mar 2024 10:09:55 +0000
Message-ID: 
 <DB3PR0102MB3658E433CD17D9A27297B8E5FC5C2@DB3PR0102MB3658.eurprd01.prod.exchangelabs.com>
Accept-Language: en-DE, de-DE, en-US
Content-Language: aa
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=navimatix.de;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB3PR0102MB3658:EE_|DB9PR01MB9056:EE_
x-ms-office365-filtering-correlation-id: 988d57ce-4399-485b-aa0f-08dc3b6a1317
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 nN1Sq1QZz/AkC8aKeD6YfMrbCwLHnfr+IDJ5ziZHKF1wP+dccvAU6H5iJnC7bfXSeVF6UkuemKJkp4/vaq07qgzVOwVMJA1crOtfIJbCnSZh8w7ZGlKCL5VfdtnMqosF4Ssr0F+C7hfHVEDyb2q68853m5Gd5FI0cxifqVqExirCQ/LYIGhvs/3yIZJbJi86m171fbKv1kHBuA91DJ61ALz4/jTi2K4fK4mRKGTTFQLVFbXi/XKeahmvLdWjxsAwIJ3vyrsRtGBv7STitoZVi4nbriIbumjH+Uuo7ABuKzOydRpjELVTyF+GdPMYCt7ttIGran1HEVEV5j8Ux78Was3dQzrzcsMX+12sV3e7IpD8lXRQdwpGDjQxeDTzck7sxGPs2LyzSs5nl2eBwGezYrWTjJ/o0wRj7gV+Hi/71LUzsTaBUXAkI5Mho4IPgMa9Aio3VpQqVm0k+76E3Hm2/a0+II+uyKutfPdmgkj1EYoKejqzC7BanmJHuBI7QUL7dyMP7vF5rblI86IMlIxhjEiRhGsTN6PD4BFnHW/42A2F/Dy+1PfH0aGmRzv2mw+jCX096kSsbzEpRMN0zbT0peKoVRUQXBp+Hw1iXydKFDaCOGOM9biIeohL+nlIe4iMoL+oOS4Coi+cCLpSD2GU1etXXxgl/T5A0BXIFXIoTa4=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB3PR0102MB3658.eurprd01.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(38070700009);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?g64RT5f5m68pHFDXPMdg0uh60G2DsI7Kt1BiWYVHf9vRwBCR2BX0Nw5Bl8?=
 =?iso-8859-1?Q?jARp8voSYE5ESc2XHs3/f5b/O6LsgwnmQRLlfRy3GPcNBkA+kn74z6/sdr?=
 =?iso-8859-1?Q?g6ox1xeP0qmQMatqVrfMyZHAv/X+EGTgplvkm5TTwbCY8lsNKfjo5hVdaa?=
 =?iso-8859-1?Q?R3O83PFmhFwitSDcub/ujN2/qiRAXodbhiUo3SPRP8LghYCekhmlUDjeez?=
 =?iso-8859-1?Q?Ia6SQ6tJIficyJKys1QP/I5xnnJ9bZdWGwNdNSoVKuOUWQx9pg8n7xAkD3?=
 =?iso-8859-1?Q?B9/AEAnsf4XE05JiAyCTFgbelR08HHUb/lcwrZJ8T9wcKOhPB5BaAEJ1tE?=
 =?iso-8859-1?Q?GOvJlBBrQco/9o8odkeItM/cd0cV4vdG+0/tTpgqDBrOGXRXynx5Mr1xCP?=
 =?iso-8859-1?Q?U0HR1vcMEPp6a7k3YSIB/cRg23pQoGUsOh8WZxyrGSd6AKr9Xl0DWZhJsu?=
 =?iso-8859-1?Q?XuO3Mkgvr7owUD3u/JBo/d/LTDWHzhRzLEGpnTypH4pCkzUZCsECcZkKzu?=
 =?iso-8859-1?Q?C02uOo7EiaaS+0iYjdA/57tkmF3aCgbSxuzrnBOfO8TryxdlJO0DIR5Ckw?=
 =?iso-8859-1?Q?EGtQk5dmODnVQQNkJPAXJ7HsCoGaN2C2Oy0p8by8phFO2KVdWQi/hGBu9s?=
 =?iso-8859-1?Q?IAVgEHp0AjYHAf9jQeoy7bm9WRB6fs3YovxyZnmoMUpoWW7sIfC2/hxG92?=
 =?iso-8859-1?Q?P623dYc4K3uKrTa/wa2AWiJjuQJAZUwTclhmg1fHclHKQ01eBXV1Gz7kB7?=
 =?iso-8859-1?Q?8P0tUHxCPyz6vcUrxV60ezIULCdB7sJ6MtOkP2v/tdtjJS3ZgqTBf9d2HH?=
 =?iso-8859-1?Q?yOo9KaxSLRpBfpLHgX4RX6UAWMRIcU//jB9wGLWM2Mwk1EZSEK6hRgnh5x?=
 =?iso-8859-1?Q?3HskTKHk5xCbWRn77SFty9l5rqGXX4GUwzTnKbmJgT8cBYgFDC2s/IlLjr?=
 =?iso-8859-1?Q?wFM0403ubijs11i+yaXrlQcaOnpx+oJ86XT05k+GifWeLwjg9WeUbPPbrn?=
 =?iso-8859-1?Q?3Erx3jIwoTSYY6oKZyH+FEkX63RM6tc2OTqjCGPHm3U7z8XVezpf8AxRez?=
 =?iso-8859-1?Q?Px30+ifs8saX0SurIxyuBblR2+SSLhlZg5NHjVGuowjEgGLbUjiSgew9QO?=
 =?iso-8859-1?Q?MiKerYud04i/SQ9guyYLHYblS5GmQRn7MEExFrh1UTV/u2ToJwSSeDYwkL?=
 =?iso-8859-1?Q?bkmALiMgxMXKpgCXKMYi4m1AG1LoGQKa0r9/kAqLsz/JzxQoKVvQCVETVp?=
 =?iso-8859-1?Q?t+EBAJx1Mz9orokDgY9anqySHUUFyiw2m0+JbcDtTfmTIkcz8E1XZa2S/v?=
 =?iso-8859-1?Q?6TsfTJrEGvWAcyhXH3sRRubDFjlNgDsA/At9MvSIJpl7/FRv/mKduA3hPg?=
 =?iso-8859-1?Q?BOwvNnkCWqEyhc01rTm2+Xzk1mf4R1kmOfXDG3LI6JmNsfAhSbzrz8l1ZG?=
 =?iso-8859-1?Q?UZ6AllzmMnhy2PgegwGrR3LkizUVNsDF2UfvY65/NX0AKVbXbmxOBIxDxz?=
 =?iso-8859-1?Q?v04D2zFNQw7it4qzU29C8e/NGHyqLAQkq12C0vHIZmyyfv8+FiLqIPa5cX?=
 =?iso-8859-1?Q?7FNM2YdOCm7Kzb2iVAJ+xFXg2StLIGKScUsShD7c2WNK3o2Zgxlblcr/AT?=
 =?iso-8859-1?Q?LIQk5pYxNkJj372Kq27jeuxFMC1CjPErguYyuju7uZT+5CHczpWKZc1+ci?=
 =?iso-8859-1?Q?g8p5nzJ3lzdgtT6Di2zmV2oDKQvTSZjC8RbEV+uu?=
Content-Type: multipart/mixed;
	boundary="_004_DB3PR0102MB3658E433CD17D9A27297B8E5FC5C2DB3PR0102MB3658_"
MIME-Version: 1.0
X-OriginatorOrg: navimatix.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB3PR0102MB3658.eurprd01.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 988d57ce-4399-485b-aa0f-08dc3b6a1317
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Mar 2024 10:09:55.2599
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c87b4f54-b992-4813-8f3f-4a876324197f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jm+5te07JQQk5Pq1zBszgoA/pNHMH6BkrSh2781Ps2XjpSObG/sXfLu80pfHjdMa8gFpy61nQ+tPL2dsZy3O5QvJxkvzfpGOTortLHyJbEc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR01MB9056
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 03 Mar 2024 10:10:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62652

--_004_DB3PR0102MB3658E433CD17D9A27297B8E5FC5C2DB3PR0102MB3658_
Content-Type: multipart/alternative;
	boundary="_000_DB3PR0102MB3658E433CD17D9A27297B8E5FC5C2DB3PR0102MB3658_"

--_000_DB3PR0102MB3658E433CD17D9A27297B8E5FC5C2DB3PR0102MB3658_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

does anyone use DependencyTrack https://dependencytrack.org/ to analyse CVE=
 vulnerabilities? I've created a script to convert the spdx.tar.zst to a Cy=
cloneDX JSON and upload this to DependencyTrack. But I'm having the problem=
 that CVEs fixed in Yocto by patches are not reflected in the spdx. There i=
s the sourceInfo field that lists fixed CVEs, but I don't know how to encod=
e this in CycloneDX. How is this done with SDPX? Does anyone do CVE analysi=
s with SPDX?

Regards J=F6rg


--_000_DB3PR0102MB3658E433CD17D9A27297B8E5FC5C2DB3PR0102MB3658_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Hi,</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof"><span style=3D"font-family: Aptos, Aptos_Embe=
ddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 1=
2pt; color: rgb(0, 0, 0);">does anyone use DependencyTrack
<a href=3D"https://dependencytrack.org/" id=3D"LPlnk" class=3D"OWAAutoLink"=
>https://dependencytrack.org/</a>
</span>to analyse CVE vulnerabilities? I've created a script to convert the=
 spdx.tar.zst to a CycloneDX JSON and upload this to DependencyTrack. But I=
'm having the problem that CVEs fixed in Yocto by patches are not reflected=
 in the spdx. There is the
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
sourceInfo field that lists fixed CVEs, but I don't know how to encode this=
 in CycloneDX. How is this done with SDPX? Does anyone do CVE analysis with=
 SPDX?</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Aptos, Aptos_Embe=
ddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 1=
2pt; color: rgb(0, 0, 0);"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Aptos, Aptos_Embe=
ddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 1=
2pt; color: rgb(0, 0, 0);">Regards J=F6rg<br>
</span></div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
</body>
</html>

--_000_DB3PR0102MB3658E433CD17D9A27297B8E5FC5C2DB3PR0102MB3658_--

--_004_DB3PR0102MB3658E433CD17D9A27297B8E5FC5C2DB3PR0102MB3658_
Content-Type: application/octet-stream; name="deptrack-spdx-upoad"
Content-Description: deptrack-spdx-upoad
Content-Disposition: attachment; filename="deptrack-spdx-upoad"; size=1641;
	creation-date="Sun, 03 Mar 2024 10:09:24 GMT";
	modification-date="Sun, 03 Mar 2024 10:09:55 GMT"
Content-Transfer-Encoding: base64

IyEvYmluL3NoCgpzZXQgLWUgLXUgLUMKCmlmIFsgLXogIiR7RFRfQVBJX0tFWTotfSIgXQp0aGVu
CiAgICBlY2hvICdFbnZpcm9ubWVudCB2YXJpYWJsZSBEVF9BUElfS0VZIG5vdCBzZXQnID4mMgog
ICAgZXhpdCAxCmZpCgppZiBbICQjIC1uZSA0IF0KdGhlbgogICAgZWNobyAiVXNhZ2U6ICQwIEhP
U1RfVVJMIFBST0pFQ1RfTkFNRSBTUERYX1RBUl9aU1QgUFJPSkVDVF9WRVJTSU9OIiA+JjIKICAg
IGV4aXQgMQpmaQoKZHRfaG9zdF91cmw9JDEKZHRfcHJvamVjdD0kMgpzcGR4X3Rhcj0kMwpkdF92
ZXJzaW9uPSQ0CgojIGh0dHBzOi8vZ2l0aHViLmNvbS9DeWNsb25lRFgvc3BlY2lmaWNhdGlvbi9i
bG9iLzEuNS9zY2hlbWEvYm9tLTEuNS5zY2hlbWEuanNvbgojIGh0dHBzOi8vZG9jcy5kZXBlbmRl
bmN5dHJhY2sub3JnL3VzYWdlL2NpY2QvCgp0YXIgLXggLWYgIiRzcGR4X3RhciIgLS10by1zdGRv
dXQgLS13aWxkY2FyZHMgcmVjaXBlLVwqIHwgXAogICAganEgLS1zbHVycCAnbWFwKC5wYWNrYWdl
cykgfGZsYXR0ZW4KICAgICAgfG1hcChzZWxlY3QoLm5hbWUgfHN0YXJ0c3dpdGgoInBhY2thZ2Vn
cm91cC0iKSB8bm90KSkgfCB7CiAgICAgICJib21Gb3JtYXQiOiAiQ3ljbG9uZURYIiwKICAgICAg
InNwZWNWZXJzaW9uIjogIjEuNSIsCiAgICAgICJzZXJpYWxOdW1iZXIiOiAidXJuOnV1aWQ6JyIk
KHV1aWRnZW4pIiciLAogICAgICAidmVyc2lvbiI6IDEsCiAgICAgICJtZXRhZGF0YSI6IHsKICAg
ICAgICAidGltZXN0YW1wIjogIiciJChkYXRlIC0taXNvLTg2MDE9c2Vjb25kcykiJyIsCiAgICAg
IH0sCiAgICAgICJjb21wb25lbnRzIjogbWFwKHsKICAgICAgICAidHlwZSI6ICJhcHBsaWNhdGlv
biIsCiAgICAgICAgIm5hbWUiOiAubmFtZSwKICAgICAgICAic3VwcGxpZXIiOiAuc3VwcGxpZXIs
CiAgICAgICAgInZlcnNpb24iOiAudmVyc2lvbkluZm8sCiAgICAgICAgImRlc2NyaXB0aW9uIjog
LmRlc2NyaXB0aW9uLAogICAgICAgICJsaWNlbnNlcyI6IFt7CiAgICAgICAgICAgICJleHByZXNz
aW9uIjogLmxpY2Vuc2VEZWNsYXJlZCwKICAgICAgICB9XSwKICAgICAgICAiY3BlIjogLmV4dGVy
bmFsUmVmc1swXS5yZWZlcmVuY2VMb2NhdG9yLAogICAgICAgICJleHRlcm5hbFJlZmVyZW5jZXMi
OiAoWwogICAgICAgICAgewogICAgICAgICAgICAidHlwZSI6ICJ2Y3MiLAogICAgICAgICAgICAi
dXJsIjogLmRvd25sb2FkTG9jYXRpb24KICAgICAgICAgIH0sCiAgICAgICAgICB7CiAgICAgICAg
ICAgICJ0eXBlIjogIndlYnNpdGUiLAogICAgICAgICAgICAidXJsIjogLmhvbWVwYWdlCiAgICAg
ICAgICB9CiAgICAgICAgXSB8bWFwKHNlbGVjdCgudXJsICE9IG51bGwgYW5kIC51cmwgIT0gIk5P
QVNTRVJUSU9OIikpKQogICAgICB9KQogICAgfScgXAogICAgfGN1cmwgLS1uby1wcm9ncmVzcy1t
ZXRlciAtLWZhaWwtd2l0aC1ib2R5IFwKICAgICAgLUggIlgtQXBpLUtleTogJERUX0FQSV9LRVki
IFwKICAgICAgLUYgJ2F1dG9DcmVhdGU9dHJ1ZScgXAogICAgICAtRiAicHJvamVjdE5hbWU9JGR0
X3Byb2plY3QiIFwKICAgICAgLUYgInByb2plY3RWZXJzaW9uPSRkdF92ZXJzaW9uIiBcCiAgICAg
IC1GICdib209QC0nICIkZHRfaG9zdF91cmwvYXBpL3YxL2JvbSIKCmVjaG8K

--_004_DB3PR0102MB3658E433CD17D9A27297B8E5FC5C2DB3PR0102MB3658_--

