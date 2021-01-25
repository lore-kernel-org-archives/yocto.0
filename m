Received: from NAM02-SN1-obe.outbound.protection.outlook.com (NAM02-SN1-obe.outbound.protection.outlook.com [40.107.77.110])
 by mx.groups.io with SMTP id smtpd.web08.32359.1611550548662678919
 for <yocto@lists.yoctoproject.org>;
 Sun, 24 Jan 2021 20:55:49 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@honeywell.com header.s=selector1 header.b=T6q+w26h;
 spf=pass (domain: honeywell.com, ip: 40.107.77.110, mailfrom: sharmila.d@honeywell.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Cchps7DBteV7KiDg1f+T+3SE7IkSRH/kkFrK93IzjbP7661FopSUwdRv0N/ryYDoAu4FxnU60udP7PAXHb6eTw+6Ybyiw3/hE0z3T1teq++A8Ju/2bPxUsnjXf/y4SefkkRpeRowzvPwidvirWFj4Wxr2burztGuvA49fSOZaWNdzP9sfTL+ViAmg3PDtrdeNas/c77hF2/VnkQlojuusQSTQ7uiTH0TTBHes48CYvcNdaou7QtviwWsRLTQYxFW79IdebGbEB4+RBlaKiv0ysohhheK/xZyfnUXDeO8iy/rea1LI4Cri4p90d3mjGLOiLcqc1eWp72ThPHDUjZF3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7UIr7SlIfM57tCyGmBsYtFwmpvmZOvh5i1V24UF7oUk=;
 b=IG9a+N20SH8fCxn1T2URt+bui52z7xyq2QxFudf9lvRlzfIGTh6JpLXbEJTq96p79GZWvFz3E9ssO/q26aPdibFgz85QFqTVCuITuzzXgCUnlKr7+3cnJCfcO3UqSkyJktlgmAF1hmrHQcTe599NcMrXNvG5Xmfj+aMTDwD0eND8QCqIGyPQWYwR3yDkHNGcuNWM2xO9yUkIQKXBcmzn+Il4JFe5lEsmJWhYV8R4/9G20cEJ0HwhSQ57O2aaUx5+xyvWD7oA+7mIjjzeiA6Ggh/kt1J/qfpT1gQKnewzUU6UIjg0aQHGykC/8uy347inhxm8VmQFUzBvKkfD2pwEdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=honeywell.com; dmarc=pass action=none
 header.from=honeywell.com; dkim=pass header.d=honeywell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Honeywell.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7UIr7SlIfM57tCyGmBsYtFwmpvmZOvh5i1V24UF7oUk=;
 b=T6q+w26h+GTBYXXZFXmiW0ghu1IvC8shyafidwcrjVUKpB40AI78H1cQpVL1RkX1rJXLulvAySSsGLknHJTFGxKuPQ8py7iJy1cN2T+HZjg24jdJ4KywJaKhFUphUuqLTu3ZU+BlrMECT87BQ1xRmpOBDCej6W7L3usFRa1UcNc=
Received: from SN6PR07MB8032.namprd07.prod.outlook.com (20.177.251.139) by
 SN4PR0701MB3679.namprd07.prod.outlook.com (10.167.129.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3784.13; Mon, 25 Jan 2021 04:55:44 +0000
Received: from SN6PR07MB8032.namprd07.prod.outlook.com
 ([fe80::6570:7f4b:ddd6:5e42]) by SN6PR07MB8032.namprd07.prod.outlook.com
 ([fe80::6570:7f4b:ddd6:5e42%5]) with mapi id 15.20.3784.017; Mon, 25 Jan 2021
 04:55:44 +0000
From: sharmila.d@honeywell.com
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: FW: JFFS2 File system support
Thread-Topic: JFFS2 File system support
Thread-Index: Adby1OBHrNNgd/dISlqdDhfkPq5GngAAWp4Q
Date: Mon, 25 Jan 2021 04:55:44 +0000
Message-ID: 
 <SN6PR07MB80324179D5B354FC96A1738599BD9@SN6PR07MB8032.namprd07.prod.outlook.com>
References: 
 <SN6PR07MB803214C3C8DD818B185F349699BD9@SN6PR07MB8032.namprd07.prod.outlook.com>
In-Reply-To: 
 <SN6PR07MB803214C3C8DD818B185F349699BD9@SN6PR07MB8032.namprd07.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.0.60
dlp-reaction: no-action
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=Honeywell.com;
x-originating-ip: [2401:4900:3367:a9b6:b54e:7a12:9e0:4417]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 6de01516-bfcf-4912-fef7-08d8c0ed795b
x-ms-traffictypediagnostic: SN4PR0701MB3679:
x-microsoft-antispam-prvs: 
 <SN4PR0701MB36791B4DC9ACF1EB49C0B68299BD9@SN4PR0701MB3679.namprd07.prod.outlook.com>
x-antispam: TRUE
x-recptdomain: NotTLSDomain
x-ms-oob-tlc-oobclassifiers: OLM:2399;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 FmAPRDpd8sdqqYEYNzUHq9twJ1Pl5FA9NNRTqoJeF6uRSzh8UxDdxwQHbUEWkom9yuOrJt1J+MN5/Z4egdfcLRsWsYX5hCRt/nNojyHndwXcQpn1/cY8aHDK6n8/wjoiTQ0Qje3MKOI76GKcQ05NXyRtkYB8o7KyLBT3Xtu26zZj7uZOPgUkaA3yAAEeeseXdzFweQ0V3CasjHUJibxjxvdcYDNcdzyaOqpBEISOVyCypxJG9lzDNeCy5ymu9CtrYC7ZueeGAmzKM7WRX7zHCUzbQnmRpsb3Dmh+ePIZtQlmSN1LNEwrKiZP5Xs5LzNFGxJ5DV0dqSUsifId8nf740RDEnpXsOTYhIT1wHefzzdVKPe5yyX3yxCozXZC9z/gBB8bK01eQvowuZTkuG+5qg==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN6PR07MB8032.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(376002)(39860400002)(346002)(396003)(136003)(66616009)(186003)(2906002)(71200400001)(5660300002)(66946007)(66556008)(76116006)(6506007)(9686003)(8936002)(7696005)(55016002)(52536014)(9326002)(64756008)(4744005)(66476007)(66446008)(478600001)(83380400001)(2940100002)(33656002)(99936003)(6916009)(8676002)(316002)(86362001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: 
 =?us-ascii?Q?1XfFqbKk1qt4Uj3G+S8dbM1zKDN7cCwKDoToAen8nf6aRzsPwTAbXgfMXSOh?=
 =?us-ascii?Q?HQW+/qLTwUb2h57qwV6TQjBO3DDJrzRYsal7NANvWmbEEIqLIS0cpmMZLH4S?=
 =?us-ascii?Q?AFvEUx840CGCMRrQzIt3FxvHqsLerZTN8gnebEwRoB8XUok69T+2GQ8GjmZJ?=
 =?us-ascii?Q?Saa00sFqO62jBgi/cgaApWe78W0n7JoIQ2iaf5qP5SjysXA9ar+5MpEEBT++?=
 =?us-ascii?Q?Zu2jfbye7D/epbzbD2ekU0hRMLjQz2GgGEfEMKbKzAMaVbqxXIroThZZ1B8m?=
 =?us-ascii?Q?0ErsVfNfYGmwksfVXTpzGd9auMZ7mHLpNGQu/q6nUBGbjEjEiiWtt2JXbWry?=
 =?us-ascii?Q?s0QDt1D/ggEhKnmmmYnHkyyLBuTcvQVF6WtFD1Y2DuRUGkOpP1R1BjRjmzI9?=
 =?us-ascii?Q?6/BlV4e4Amz3JZrEWSufDT/bl16nqT/p9Cwj+Lyx4OeMKiEYAldBToB0k29N?=
 =?us-ascii?Q?U4mgB/p5dhhlWKBzst6h3u500uLsuaLBOR84RLPd1kwuFo6YDNf3jaj48COG?=
 =?us-ascii?Q?HZEADdvs5UyH9MvfNyRa6AY7gvg6AAxnoS67ZdUFiWijsEwFxsfdrW5YEXFn?=
 =?us-ascii?Q?wtjgTOpewiZ4Y0pIecKVpV7EV61X1bVuuQolebGIYefseg2KlTpkkhvKtwWx?=
 =?us-ascii?Q?JGkOZSKhXasA4PEINEbAq7eu1Vnnp64gGqheCU7dtCC/q7oezy4jeVsjYF8E?=
 =?us-ascii?Q?AdUUM3V/FCqEBel5tCNWgHJ5VxZiox5sFQ63WyxXauifLGsnxh/2NTnhdBw/?=
 =?us-ascii?Q?GTpFscnd6cIPPJY0aQUsS2IenIyFk+xq8B4/SlatoQ504fMRbaWhKoXk51cH?=
 =?us-ascii?Q?YYRcYh9R9JP5LmPKKmT0M7QTAjiRFMhsX8hgpfrBptbo0Lfw88aeN5VJ/od6?=
 =?us-ascii?Q?TbOCcYL3hvHPVA9yxmkm5NKU7AHK90aK/0INzO9SAV02pLzZYkvjaeyAr7wW?=
 =?us-ascii?Q?NJYFhKCN5EOU9d8Ecaabkz24mpKAalxx+VT5d4PDNW5Oi6WvZBc62FpsHSaS?=
 =?us-ascii?Q?Gj3vpPVOsgKYj9SQ8djyUc6Hrklo/s52g7E8C9kkbL2QlOI=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: Honeywell.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR07MB8032.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6de01516-bfcf-4912-fef7-08d8c0ed795b
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jan 2021 04:55:44.7790
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 96ece526-9c7d-48b0-8daf-8b93c90a5d18
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1IssBpRn/wll4w6BMtDsFrZ38y98Km3Mf1Nqp3euaUTViQqmhQ4/fxtel/r8ibBudCrSSEfoBU/4HRpltJyBboQQzVNwmHVM43KIQfaKj/M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN4PR0701MB3679
X-Groupsio-MsgNum: 52078
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_004_SN6PR07MB80324179D5B354FC96A1738599BD9SN6PR07MB8032namp_"

--_004_SN6PR07MB80324179D5B354FC96A1738599BD9SN6PR07MB8032namp_
Content-Type: multipart/alternative;
	boundary="_000_SN6PR07MB80324179D5B354FC96A1738599BD9SN6PR07MB8032namp_"

--_000_SN6PR07MB80324179D5B354FC96A1738599BD9SN6PR07MB8032namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Hi,
              I am using TI based processor for our custom project. We are =
using NAND as our Boot media. The type of the File system we opted is JFFS2=
.
              The following lines I have added in my machine configuration =
file for creating jffs2 root file system.

IMAGE_FSTYPES +=3D "jffs2 tar.xz"
EXTRA_IMAGECMD_jffs2 =3D "-lnp -e 0x20000 -s 2048"

The system is hanging during the boot. It is actually getting stuck in belo=
w message

systemd-journald[75]: Received request to flush runtime journal from PID 1

I have attached my dmesg log FYR.

Thank you,

With Best Regards,
Sharmila D


--_000_SN6PR07MB80324179D5B354FC96A1738599BD9SN6PR07MB8032namp_
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
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; I am using TI based processor for our custom pro=
ject. We are using NAND as our Boot media. The type of the File system we o=
pted is JFFS2.<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; The following lines I have added in my machine c=
onfiguration file for creating jffs2 root file system.<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><b>IMAGE_FSTYPES +=3D &qu=
ot;jffs2 tar.xz&quot;<o:p></o:p></b></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"><b>EXTRA_IMAGECMD_jffs2 =
=3D &quot;-lnp -e 0x20000 -s 2048&quot;<o:p></o:p></b></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"><b><o:p>&nbsp;</o:p></b><=
/p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">The system is hanging dur=
ing the boot. It is actually getting stuck in below message<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"><b>systemd-journald[75]: =
Received request to flush runtime journal from PID 1<o:p></o:p></b></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"><b><o:p>&nbsp;</o:p></b><=
/p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">I have attached my dmesg =
log FYR.<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">Thank you,<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">With Best Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Sharmila D<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"><b><o:p>&nbsp;</o:p></b><=
/p>
</div>
</body>
</html>

--_000_SN6PR07MB80324179D5B354FC96A1738599BD9SN6PR07MB8032namp_--

--_004_SN6PR07MB80324179D5B354FC96A1738599BD9SN6PR07MB8032namp_
Content-Type: text/plain; name="teraterm_log_core-image-min.txt"
Content-Description: teraterm_log_core-image-min.txt
Content-Disposition: attachment; filename="teraterm_log_core-image-min.txt";
	size=8545; creation-date="Mon, 25 Jan 2021 04:50:00 GMT";
	modification-date="Mon, 25 Jan 2021 04:51:08 GMT"
Content-Transfer-Encoding: base64

DQo9PiANCj0+IGJvb3R6IDB4YzA3MDAwMDAgLSAweGMwNjAwMDAwDQojIyBGbGF0dGVuZWQgRGV2
aWNlIFRyZWUgYmxvYiBhdCBjMDYwMDAwMA0KICAgQm9vdGluZyB1c2luZyB0aGUgZmR0IGJsb2Ig
YXQgMHhjMDYwMDAwMA0KICAgTG9hZGluZyBEZXZpY2UgVHJlZSB0byBjN2RmYTAwMCwgZW5kIGM3
ZTAxZTYyIC4uLiBPSw0KDQpTdGFydGluZyBrZXJuZWwgLi4uDQoNClVuY29tcHJlc3NpbmcgTGlu
dXguLi4gZG9uZSwgYm9vdGluZyB0aGUga2VybmVsLg0KQm9vdGluZyBMaW51eCBvbiBwaHlzaWNh
bCBDUFUgMHgwDQpMaW51eCB2ZXJzaW9uIDQuMTkuOTQgKGg0NDAyNDZAaDQ0MDI0Ni1WaXJ0dWFs
Qm94KSAoZ2NjIHZlcnNpb24gOC4zLjAgKEdOVSBUb29sY2hhaW4gZm9yIHRoZSBBLXByb2ZpbGUg
QXJjaGl0ZWN0dXJlIDguMy0yMDE5LjAzIChhcm0tcmVsLTguMzYpKSkgIzQxIFBSRUVNUFQgRnJp
IEphbiAxNSAxMjoyNTozNSBJU1QgMjAyMQ0KQ1BVOiBBUk05MjZFSi1TIFs0MTA2OTI2NV0gcmV2
aXNpb24gNSAoQVJNdjVURUopLCBjcj0wMDA1MzE3Zg0KQ1BVOiBWSVZUIGRhdGEgY2FjaGUsIFZJ
VlQgaW5zdHJ1Y3Rpb24gY2FjaGUNCk9GOiBmZHQ6IE1hY2hpbmUgbW9kZWw6IERBODUwL0FNMTgw
OC9PTUFQLUwxMzggTENESw0KZWFybHljb246IG5zMTY1NTBhMCBhdCBNTUlPMzIgMHgwMWQwZDAw
MCAob3B0aW9ucyAnMTE1MjAwbjgnKQ0KYm9vdGNvbnNvbGUgW25zMTY1NTBhMF0gZW5hYmxlZA0K
TWVtb3J5IHBvbGljeTogRGF0YSBjYWNoZSB3cml0ZWJhY2sNClJlc2VydmVkIG1lbW9yeTogY3Jl
YXRlZCBDTUEgbWVtb3J5IHBvb2wgYXQgMHhjMzAwMDAwMCwgc2l6ZSAxNiBNaUINCk9GOiByZXNl
cnZlZCBtZW06IGluaXRpYWxpemVkIG5vZGUgZHNwLW1lbW9yeUBjMzAwMDAwMCwgY29tcGF0aWJs
ZSBpZCBzaGFyZWQtZG1hLXBvb2wNCmNtYTogUmVzZXJ2ZWQgMjQgTWlCIGF0IDB4Y2U4MDAwMDAN
CkRhVmluY2kgZGE4NTAvb21hcC1sMTM4L2FtMTh4IHZhcmlhbnQgMHgxDQpyYW5kb206IGdldF9y
YW5kb21fYnl0ZXMgY2FsbGVkIGZyb20gc3RhcnRfa2VybmVsKzB4ODAvMHg0MWMgd2l0aCBjcm5n
X2luaXQ9MA0KQnVpbHQgMSB6b25lbGlzdHMsIG1vYmlsaXR5IGdyb3VwaW5nIG9uLiAgVG90YWwg
cGFnZXM6IDY0OTYwDQpLZXJuZWwgY29tbWFuZCBsaW5lOiBwYW5pYz01IG1lbW1hcD0zMk0kMHhj
M2UwMDAwMCBtZW09MjU2TSBjb25zb2xlPXR0eVMxLDExMjUwMDAwbjggZWFybHljb24gcm9vdD0v
ZGV2L210ZGJsb2NrNCBydyByb290ZnN0eXBlPWpmZnMyIGVhcmx5cHJpbnRrIGxvZ2xldmVsPTcg
aXA9b2ZmDQpEZW50cnkgY2FjaGUgaGFzaCB0YWJsZSBlbnRyaWVzOiAzMjc2OCAob3JkZXI6IDUs
IDEzMTA3MiBieXRlcykNCklub2RlLWNhY2hlIGhhc2ggdGFibGUgZW50cmllczogMTYzODQgKG9y
ZGVyOiA0LCA2NTUzNiBieXRlcykNCk1lbW9yeTogMjA2NzgwSy8yNjIxNDRLIGF2YWlsYWJsZSAo
NzE2OEsga2VybmVsIGNvZGUsIDI5NUsgcndkYXRhLCAxOTkySyByb2RhdGEsIDEwMjRLIGluaXQs
IDEyMUsgYnNzLCAxNDQwNEsgcmVzZXJ2ZWQsIDQwOTYwSyBjbWEtcmVzZXJ2ZWQpDQpWaXJ0dWFs
IGtlcm5lbCBtZW1vcnkgbGF5b3V0Og0KICAgIHZlY3RvciAgOiAweGZmZmYwMDAwIC0gMHhmZmZm
MTAwMCAgICggICA0IGtCKQ0KICAgIGZpeG1hcCAgOiAweGZmYzAwMDAwIC0gMHhmZmYwMDAwMCAg
ICgzMDcyIGtCKQ0KICAgIHZtYWxsb2MgOiAweGQwODAwMDAwIC0gMHhmZjgwMDAwMCAgICggNzUy
IE1CKQ0KICAgIGxvd21lbSAgOiAweGMwMDAwMDAwIC0gMHhkMDAwMDAwMCAgICggMjU2IE1CKQ0K
ICAgIG1vZHVsZXMgOiAweGJmMDAwMDAwIC0gMHhjMDAwMDAwMCAgICggIDE2IE1CKQ0KICAgICAg
LnRleHQgOiAweChwdHJ2YWwpIC0gMHgocHRydmFsKSAgICg4MTYwIGtCKQ0KICAgICAgLmluaXQg
OiAweChwdHJ2YWwpIC0gMHgocHRydmFsKSAgICgxMDI0IGtCKQ0KICAgICAgLmRhdGEgOiAweChw
dHJ2YWwpIC0gMHgocHRydmFsKSAgICggMjk2IGtCKQ0KICAgICAgIC5ic3MgOiAweChwdHJ2YWwp
IC0gMHgocHRydmFsKSAgICggMTIyIGtCKQ0KU0xVQjogSFdhbGlnbj0zMiwgT3JkZXI9MC0zLCBN
aW5PYmplY3RzPTAsIENQVXM9MSwgTm9kZXM9MQ0KcmN1OiBQcmVlbXB0aWJsZSBoaWVyYXJjaGlj
YWwgUkNVIGltcGxlbWVudGF0aW9uLg0KCVRhc2tzIFJDVSBlbmFibGVkLg0KTlJfSVJRUzogMjQ1
DQpjbG9ja3NvdXJjZTogdGltZXIwXzE6IG1hc2s6IDB4ZmZmZmZmZmYgbWF4X2N5Y2xlczogMHhm
ZmZmZmZmZiwgbWF4X2lkbGVfbnM6IDc5NjM1ODUxOTQ5IG5zDQpzY2hlZF9jbG9jazogMzIgYml0
cyBhdCAyNE1IeiwgcmVzb2x1dGlvbiA0MW5zLCB3cmFwcyBldmVyeSA4OTQ3ODQ4NDk3MW5zDQpD
b25zb2xlOiBjb2xvdXIgZHVtbXkgZGV2aWNlIDgweDMwDQpDYWxpYnJhdGluZyBkZWxheSBsb29w
Li4uIDE3OC41OCBCb2dvTUlQUyAobHBqPTg5MjkyOCkNCnBpZF9tYXg6IGRlZmF1bHQ6IDMyNzY4
IG1pbmltdW06IDMwMQ0KTW91bnQtY2FjaGUgaGFzaCB0YWJsZSBlbnRyaWVzOiAxMDI0IChvcmRl
cjogMCwgNDA5NiBieXRlcykNCk1vdW50cG9pbnQtY2FjaGUgaGFzaCB0YWJsZSBlbnRyaWVzOiAx
MDI0IChvcmRlcjogMCwgNDA5NiBieXRlcykNCkNQVTogVGVzdGluZyB3cml0ZSBidWZmZXIgY29o
ZXJlbmN5OiBvaw0KU2V0dGluZyB1cCBzdGF0aWMgaWRlbnRpdHkgbWFwIGZvciAweGMwMTAwMDAw
IC0gMHhjMDEwMDA1OA0KcmN1OiBIaWVyYXJjaGljYWwgU1JDVSBpbXBsZW1lbnRhdGlvbi4NCmRl
dnRtcGZzOiBpbml0aWFsaXplZA0KY2xvY2tzb3VyY2U6IGppZmZpZXM6IG1hc2s6IDB4ZmZmZmZm
ZmYgbWF4X2N5Y2xlczogMHhmZmZmZmZmZiwgbWF4X2lkbGVfbnM6IDE5MTEyNjA0NDYyNzUwMDAw
IG5zDQpmdXRleCBoYXNoIHRhYmxlIGVudHJpZXM6IDI1NiAob3JkZXI6IC0xLCAzMDcyIGJ5dGVz
KQ0KcGluY3RybCBjb3JlOiBpbml0aWFsaXplZCBwaW5jdHJsIHN1YnN5c3RlbQ0KTkVUOiBSZWdp
c3RlcmVkIHByb3RvY29sIGZhbWlseSAxNg0KRE1BOiBwcmVhbGxvY2F0ZWQgMjU2IEtpQiBwb29s
IGZvciBhdG9taWMgY29oZXJlbnQgYWxsb2NhdGlvbnMNCmNwdWlkbGU6IHVzaW5nIGdvdmVybm9y
IGxhZGRlcg0KY3B1aWRsZTogdXNpbmcgZ292ZXJub3IgbWVudQ0KZ3Bpb2NoaXBfYWRkX2RhdGFf
d2l0aF9rZXk6IEdQSU9zIDAuLjE0MyAoZGF2aW5jaV9ncGlvLjApIGZhaWxlZCB0byByZWdpc3Rl
ciwgLTUxNw0KZWRtYSAxZTMwMDAwLmVkbWE6IG1lbWNweSBpcyBkaXNhYmxlZA0KZWRtYSAxZTMw
MDAwLmVkbWE6IFRJIEVETUEgRE1BIGVuZ2luZSBkcml2ZXINCnZjY18zdjNkOiBzdXBwbGllZCBi
eSB2Y2NfNXZkDQp2Y2NfMXY4ZDogc3VwcGxpZWQgYnkgdmNjXzV2ZA0KU0NTSSBzdWJzeXN0ZW0g
aW5pdGlhbGl6ZWQNCm1lZGlhOiBMaW51eCBtZWRpYSBpbnRlcmZhY2U6IHYwLjEwDQp2aWRlb2Rl
djogTGludXggdmlkZW8gY2FwdHVyZSBpbnRlcmZhY2U6IHYyLjAwDQpwcHNfY29yZTogTGludXhQ
UFMgQVBJIHZlci4gMSByZWdpc3RlcmVkDQpwcHNfY29yZTogU29mdHdhcmUgdmVyLiA1LjMuNiAt
IENvcHlyaWdodCAyMDA1LTIwMDcgUm9kb2xmbyBHaW9tZXR0aSA8Z2lvbWV0dGlAbGludXguaXQ+
DQpQVFAgY2xvY2sgc3VwcG9ydCByZWdpc3RlcmVkDQpBZHZhbmNlZCBMaW51eCBTb3VuZCBBcmNo
aXRlY3R1cmUgRHJpdmVyIEluaXRpYWxpemVkLg0KY2xvY2tzb3VyY2U6IFN3aXRjaGVkIHRvIGNs
b2Nrc291cmNlIHRpbWVyMF8xDQpORVQ6IFJlZ2lzdGVyZWQgcHJvdG9jb2wgZmFtaWx5IDINCnRj
cF9saXN0ZW5fcG9ydGFkZHJfaGFzaCBoYXNoIHRhYmxlIGVudHJpZXM6IDUxMiAob3JkZXI6IDAs
IDQwOTYgYnl0ZXMpDQpUQ1AgZXN0YWJsaXNoZWQgaGFzaCB0YWJsZSBlbnRyaWVzOiAyMDQ4IChv
cmRlcjogMSwgODE5MiBieXRlcykNClRDUCBiaW5kIGhhc2ggdGFibGUgZW50cmllczogMjA0OCAo
b3JkZXI6IDEsIDgxOTIgYnl0ZXMpDQpUQ1A6IEhhc2ggdGFibGVzIGNvbmZpZ3VyZWQgKGVzdGFi
bGlzaGVkIDIwNDggYmluZCAyMDQ4KQ0KVURQIGhhc2ggdGFibGUgZW50cmllczogMjU2IChvcmRl
cjogMCwgNDA5NiBieXRlcykNClVEUC1MaXRlIGhhc2ggdGFibGUgZW50cmllczogMjU2IChvcmRl
cjogMCwgNDA5NiBieXRlcykNCk5FVDogUmVnaXN0ZXJlZCBwcm90b2NvbCBmYW1pbHkgMQ0KUlBD
OiBSZWdpc3RlcmVkIG5hbWVkIFVOSVggc29ja2V0IHRyYW5zcG9ydCBtb2R1bGUuDQpSUEM6IFJl
Z2lzdGVyZWQgdWRwIHRyYW5zcG9ydCBtb2R1bGUuDQpSUEM6IFJlZ2lzdGVyZWQgdGNwIHRyYW5z
cG9ydCBtb2R1bGUuDQpSUEM6IFJlZ2lzdGVyZWQgdGNwIE5GU3Y0LjEgYmFja2NoYW5uZWwgdHJh
bnNwb3J0IG1vZHVsZS4NCkVNQUM6IE1JSSBQSFkgY29uZmlndXJlZCwgUk1JSSBQSFkgd2lsbCBu
b3QgYmUgZnVuY3Rpb25hbA0KQ2Fubm90IG9wZW4gR1BJTyAzOA0Kd29ya2luZ3NldDogdGltZXN0
YW1wX2JpdHM9MTQgbWF4X29yZGVyPTE2IGJ1Y2tldF9vcmRlcj0yDQpqZmZzMjogdmVyc2lvbiAy
LjIuIChOQU5EKSCpIDIwMDEtMjAwNiBSZWQgSGF0LCBJbmMuDQpKRlM6IG5UeEJsb2NrID0gMTkz
NSwgblR4TG9jayA9IDE1NDgzDQpCbG9jayBsYXllciBTQ1NJIGdlbmVyaWMgKGJzZykgZHJpdmVy
IHZlcnNpb24gMC40IGxvYWRlZCAobWFqb3IgMjQ4KQ0KaW8gc2NoZWR1bGVyIG5vb3AgcmVnaXN0
ZXJlZCAoZGVmYXVsdCkNCmlvIHNjaGVkdWxlciBtcS1kZWFkbGluZSByZWdpc3RlcmVkDQppbyBz
Y2hlZHVsZXIga3liZXIgcmVnaXN0ZXJlZA0KcGluY3RybC1zaW5nbGUgMWMxNDEyMC5waW5tdXg6
IDE2MCBwaW5zLCBzaXplIDgwDQpTZXJpYWw6IDgyNTAvMTY1NTAgZHJpdmVyLCAxMCBwb3J0cywg
SVJRIHNoYXJpbmcgZGlzYWJsZWQNCjFkMGQwMDAuc2VyaWFsOiB0dHlTMiBhdCBNTUlPIDB4MWQw
ZDAwMCAoaXJxID0gNjEsIGJhc2VfYmF1ZCA9IDExMjUwMDAwKSBpcyBhIFRJIERBOHh4LzY2QUsy
eA0KYnJkOiBtb2R1bGUgbG9hZGVkDQpsb29wOiBtb2R1bGUgbG9hZGVkDQpTU0ZEQyByZWFkLW9u
bHkgRmxhc2ggVHJhbnNsYXRpb24gbGF5ZXINCmxpYnBoeTogRml4ZWQgTURJTyBCdXM6IHByb2Jl
ZA0KaTJjIC9kZXYgZW50cmllcyBkcml2ZXINCnRpLWFlbWlmIDY4MDAwMDAwLmFlbWlmOiBjYW5u
b3QgZ2V0IGNsb2NrICdhZW1pZicNCk5FVDogUmVnaXN0ZXJlZCBwcm90b2NvbCBmYW1pbHkgMTAN
ClNlZ21lbnQgUm91dGluZyB3aXRoIElQdjYNCnNpdDogSVB2NiwgSVB2NCBhbmQgTVBMUyBvdmVy
IElQdjQgdHVubmVsaW5nIGRyaXZlcg0KTkVUOiBSZWdpc3RlcmVkIHByb3RvY29sIGZhbWlseSAx
Nw0KZWRtYSAxYzAwMDAwLmVkbWE6IG1lbWNweSBpcyBkaXNhYmxlZA0KZWRtYSAxYzAwMDAwLmVk
bWE6IFRJIEVETUEgRE1BIGVuZ2luZSBkcml2ZXINCiMjI0RBODUwX05BTkRfV1BfUElOLC4uDQoj
IyNuYW5kX3NjYW5faWRlbnQuLg0KIyMjIyNtYWZfaWQgOjJjIGRldl9pZDpmMQ0KIyMjZGV2aWNl
IGZvdW5kLCBNYW51ZmFjdHVyZXIgSUQ6IDB4MmMsIENoaXAgSUQ6IDB4ZjENCm5hbmQ6IE1pY3Jv
biBNVDI5RjFHMDhBQkFEQVdQDQpuYW5kOiAxMjggTWlCLCBTTEMsIGVyYXNlIHNpemU6IDEyOCBL
aUIsIHBhZ2Ugc2l6ZTogMjA0OCwgT09CIHNpemU6IDY0DQojIyMjIyMjIyMjIyMjbmFuZF9tYWZf
aWQgPSAyYyBuYW5kX2Rldl9pZCA9IGYxDQojIyNOQU5EX0VDQ19IV19PT0JfRklSU1QuLg0KQmFk
IGJsb2NrIHRhYmxlIGZvdW5kIGF0IHBhZ2UgNjU0NzIsIHZlcnNpb24gMHgwMQ0KQmFkIGJsb2Nr
IHRhYmxlIGZvdW5kIGF0IHBhZ2UgNjU0MDgsIHZlcnNpb24gMHgwMQ0KNSBmaXhlZC1wYXJ0aXRp
b25zIHBhcnRpdGlvbnMgZm91bmQgb24gTVREIGRldmljZSA2MjAwMDAwMC5uYW5kDQpDcmVhdGlu
ZyA1IE1URCBwYXJ0aXRpb25zIG9uICI2MjAwMDAwMC5uYW5kIjoNCjB4MDAwMDAwMDAwMDAwLTB4
MDAwMDAwMDIwMDAwIDogInUtYm9vdCBlbnYiDQoweDAwMDAwMDAyMDAwMC0weDAwMDAwMDBhMDAw
MCA6ICJ1LWJvb3QiDQoweDAwMDAwMDBhMDAwMC0weDAwMDAwMDRhMDAwMCA6ICJrZXJuZWwiDQow
eDAwMDAwMDRhMDAwMC0weDAwMDAwMDUyMDAwMCA6ICJmZHQiDQoweDAwMDAwMDUyMDAwMC0weDAw
MDAwNjUyMDAwMCA6ICJmaWxlc3lzdGVtIg0KZGF2aW5jaV9uYW5kIDYyMDAwMDAwLm5hbmQ6IGNv
bnRyb2xsZXIgcmV2LiAyLjUNCmNvbnNvbGUgW25ldGNvbjBdIGVuYWJsZWQNCm5ldGNvbnNvbGU6
IG5ldHdvcmsgbG9nZ2luZyBzdGFydGVkDQppbnB1dDogZ3Bpby1rZXlzIGFzIC9kZXZpY2VzL3Bs
YXRmb3JtL2dwaW8ta2V5cy9pbnB1dC9pbnB1dDANCmhjdG9zeXM6IHVuYWJsZSB0byBvcGVuIHJ0
YyBkZXZpY2UgKHJ0YzApDQpBTFNBIGRldmljZSBsaXN0Og0KICBObyBzb3VuZGNhcmRzIGZvdW5k
Lg0KV2FybmluZzogdW5hYmxlIHRvIG9wZW4gYW4gaW5pdGlhbCBjb25zb2xlLg0KcmFuZG9tOiBm
YXN0IGluaXQgZG9uZQ0KVkZTOiBNb3VudGVkIHJvb3QgKGpmZnMyIGZpbGVzeXN0ZW0pIG9uIGRl
dmljZSAzMTo0Lg0KZGV2dG1wZnM6IG1vdW50ZWQNCkZyZWVpbmcgdW51c2VkIGtlcm5lbCBtZW1v
cnk6IDEwMjRLDQpSdW4gL3NiaW4vaW5pdCBhcyBpbml0IHByb2Nlc3MNCnN5c3RlbWRbMV06IFN5
c3RlbSB0aW1lIGJlZm9yZSBidWlsZCB0aW1lLCBhZHZhbmNpbmcgY2xvY2suDQpzeXN0ZW1kWzFd
OiBzeXN0ZW1kIDIzOSBydW5uaW5nIGluIHN5c3RlbSBtb2RlLiAoK1BBTSAtQVVESVQgLVNFTElO
VVggK0lNQSAtQVBQQVJNT1IgK1NNQUNLICtTWVNWSU5JVCArVVRNUCAtTElCQ1JZUFRTRVRVUCAt
R0NSWVBUIC1HTlVUTFMgK0FDTCArWFogLUxaNCAtU0VDQ09NUCArQkxLSUQgLUVMRlVUSUxTICtL
TU9EIC1JRE4yIC1JRE4gLVBDUkUyIGRlZmF1bHQtaGllcmFyY2h5PWh5YnJpZCkNCnN5c3RlbWRb
MV06IERldGVjdGVkIGFyY2hpdGVjdHVyZSBhcm0uDQpzeXN0ZW1kWzFdOiBTZXQgaG9zdG5hbWUg
dG8gPG9tYXBsMTM4LWxjZGs+Lg0KcmFuZG9tOiBzeXN0ZW1kOiB1bmluaXRpYWxpemVkIHVyYW5k
b20gcmVhZCAoMTYgYnl0ZXMgcmVhZCkNCnN5c3RlbWRbMV06IEluaXRpYWxpemluZyBtYWNoaW5l
IElEIGZyb20gcmFuZG9tIGdlbmVyYXRvci4NCnN5c3RlbWRbMV06IEZpbGUgL2xpYi9zeXN0ZW1k
L3N5c3RlbS9zeXN0ZW1kLWpvdXJuYWxkLnNlcnZpY2U6MzYgY29uZmlndXJlcyBhbiBJUCBmaXJl
d2FsbCAoSVBBZGRyZXNzRGVueT1hbnkpLCBidXQgdGhlIGxvY2FsIHN5c3RlbSBkb2VzIG5vdCBz
dXBwb3J0IEJQRi9jZ3JvdXAgYmFzZWQgZmlyZXdhbGxpbmcuDQpzeXN0ZW1kWzFdOiBQcm9jZWVk
aW5nIFdJVEhPVVQgZmlyZXdhbGxpbmcgaW4gZWZmZWN0ISAoVGhpcyB3YXJuaW5nIGlzIG9ubHkg
c2hvd24gZm9yIHRoZSBmaXJzdCBsb2FkZWQgdW5pdCB1c2luZyBJUCBmaXJld2FsbGluZy4pDQpy
YW5kb206IHN5c3RlbWQ6IHVuaW5pdGlhbGl6ZWQgdXJhbmRvbSByZWFkICgxNiBieXRlcyByZWFk
KQ0Kc3lzdGVtZFsxXTogTGlzdGVuaW5nIG9uIHVkZXYgQ29udHJvbCBTb2NrZXQuDQpyYW5kb206
IHN5c3RlbWQ6IHVuaW5pdGlhbGl6ZWQgdXJhbmRvbSByZWFkICgxNiBieXRlcyByZWFkKQ0Kc3lz
dGVtZFsxXTogU3RhcnRlZCBEaXNwYXRjaCBQYXNzd29yZCBSZXF1ZXN0cyB0byBDb25zb2xlIERp
cmVjdG9yeSBXYXRjaC4NCnJhbmRvbTogc3lzdGVtZDogdW5pbml0aWFsaXplZCB1cmFuZG9tIHJl
YWQgKDE2IGJ5dGVzIHJlYWQpDQpzeXN0ZW1kWzFdOiBSZWFjaGVkIHRhcmdldCBTd2FwLg0Kc3lz
dGVtZFsxXTogTGlzdGVuaW5nIG9uIHVkZXYgS2VybmVsIFNvY2tldC4NCnN5c3RlbWRbMV06IExp
c3RlbmluZyBvbiBOZXR3b3JrIFNlcnZpY2UgTmV0bGluayBTb2NrZXQuDQpzeXN0ZW1kWzFdOiBT
dGFydGVkIEZvcndhcmQgUGFzc3dvcmQgUmVxdWVzdHMgdG8gV2FsbCBEaXJlY3RvcnkgV2F0Y2gu
DQpzeXN0ZW1kWzFdOiBSZWFjaGVkIHRhcmdldCBQYXRocy4NCnN5c3RlbWRbMV06IFN0YXJ0aW5n
IFJlbW91bnQgUm9vdCBhbmQgS2VybmVsIEZpbGUgU3lzdGVtcy4uLg0Kc3lzdGVtZFsxXTogU3Rh
cnRlZCBBcHBseSBLZXJuZWwgVmFyaWFibGVzLg0Kc3lzdGVtZFsxXTogTW91bnRlZCBLZXJuZWwg
Q29uZmlndXJhdGlvbiBGaWxlIFN5c3RlbS4NCnN5c3RlbWRbMV06IE1vdW50ZWQgUE9TSVggTWVz
c2FnZSBRdWV1ZSBGaWxlIFN5c3RlbS4NCnN5c3RlbWRbMV06IE1vdW50ZWQgS2VybmVsIERlYnVn
IEZpbGUgU3lzdGVtLg0Kc3lzdGVtZFsxXTogTW91bnRlZCBUZW1wb3JhcnkgRGlyZWN0b3J5ICgv
dG1wKS4NCnN5c3RlbWRbMV06IFN0YXJ0ZWQgUmVtb3VudCBSb290IGFuZCBLZXJuZWwgRmlsZSBT
eXN0ZW1zLg0Kc3lzdGVtZC1qb3VybmFsZFs2N106IFJlY2VpdmVkIHJlcXVlc3QgdG8gZmx1c2gg
cnVudGltZSBqb3VybmFsIGZyb20gUElEIDENCnJhbmRvbTogY3JuZyBpbml0IGRvbmUNCnJhbmRv
bTogNiB1cmFuZG9tIHdhcm5pbmcocykgbWlzc2VkIGR1ZSB0byByYXRlbGltaXRpbmcNCg==

--_004_SN6PR07MB80324179D5B354FC96A1738599BD9SN6PR07MB8032namp_--
