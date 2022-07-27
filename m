Return-Path: <gwilson@sakuraus.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9D0DC04A68
	for <webhook@archiver.kernel.org>; Wed, 27 Jul 2022 17:24:21 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (NAM10-DM6-obe.outbound.protection.outlook.com [40.107.93.103])
 by mx.groups.io with SMTP id smtpd.web12.22494.1658942656175944010
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Jul 2022 10:24:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakuraus0.onmicrosoft.com
 header.s=selector1-sakuraus0-onmicrosoft-com header.b=aMHoFNC9;
 spf=pass (domain: sakuraus.com, ip: 40.107.93.103,
 mailfrom: gwilson@sakuraus.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ax0SW1vf3LWg6HEneOmwpV6tbgfkstvP/PmTECU93UI4Av4/hAhLczKKwji7N1dmoJ1WkheVtP396/8ia3thebJWP6c6xsBcjsyI+Hlk0Zlv3yLMdHdu0Fm6NAidxunQuSRcISYYN3H9N+dASDCbcAW8OXril/yY4+q6Que/vdyHqC+FMWjsRcLsaErIAgXgqagaUEd31Rwu8sVOngsXjGG51FWVX+UreseAEpvEwXq2QzBs7S/wChEgK62tPndwD3Xgt/5rr519qlnC54NFC2ZKORtQHsFDhxM0ZppiFZJJABL/9qUKTCzvEcbQx00M1V5YJOSCEf8dwb+hAFdseA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VdckI5i2DKL0HkPQCv8W7CaNwLIR+OP52LNWqs996XA=;
 b=QJCE2Wlg8yS344xh1xsQRddukp5pIolNoaVr751yVcO4eVYxuOTDAcsO4pyS8CIxxW93kl9tdvuPAY74qh0JUyU0BXbqDBuzguMr/9ZQknl4ArUeVxQXCA1AHi5tC0jZwhsYgUZVthdBeblxOhsfV8edYwRM4tjH2D5HIj3OUDx0b5gXKajT4MUQB3WUsNPD1MmnvgziBrKuJ74BXdTHyxyxtngVMqDcyoLK33gOpfEAAXoYRwVpaK6QKcVNMXiFaUYV8EfdCfCagglj7TR0f0JI2rnkRDjaNYretOsXt9PXNrU69jL2tHdAUIIIolWqJdRYxKFQxhpFIoUZ3s/2DQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sakuraus.com; dmarc=pass action=none header.from=sakuraus.com;
 dkim=pass header.d=sakuraus.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sakuraus0.onmicrosoft.com; s=selector1-sakuraus0-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VdckI5i2DKL0HkPQCv8W7CaNwLIR+OP52LNWqs996XA=;
 b=aMHoFNC96o2DLEIjVoJPu42O0hlWeCS8al8pJWaa63Sazdzkit0rCCw0emJ2yN3frT73i5nXSgGLJWpK0MlQq2cON1IiiuT17j/b4A3DuhwygAjcUYL1GqNzcK8hmoh7yv9H2yFugucn1aHRmg1872PcdS4/EJAlhIfJcuxC8MY=
Received: from PH0PR15MB5055.namprd15.prod.outlook.com (2603:10b6:510:c2::23)
 by MW3PR15MB4010.namprd15.prod.outlook.com (2603:10b6:303:48::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.25; Wed, 27 Jul
 2022 17:24:12 +0000
Received: from PH0PR15MB5055.namprd15.prod.outlook.com
 ([fe80::2090:cc5c:676f:79be]) by PH0PR15MB5055.namprd15.prod.outlook.com
 ([fe80::2090:cc5c:676f:79be%6]) with mapi id 15.20.5458.025; Wed, 27 Jul 2022
 17:24:12 +0000
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: RE: Getting error for allarch dynamically renamed package
Thread-Topic: Getting error for allarch dynamically renamed package
Thread-Index: AQHYoS+vnKQc5gG+wUW9brnuOB6qqa2Sb56ggAAIuoA=
Date: Wed, 27 Jul 2022 17:24:12 +0000
Message-ID: 
 <PH0PR15MB5055EF7B8EA8AFCEC50971D2CB979@PH0PR15MB5055.namprd15.prod.outlook.com>
References: 
 <PH0PR15MB5055B2211917B31D298918B1CB949@PH0PR15MB5055.namprd15.prod.outlook.com>
 <PH0PR15MB5055A68BB57B1F94BA441B2ACB979@PH0PR15MB5055.namprd15.prod.outlook.com>
In-Reply-To: 
 <PH0PR15MB5055A68BB57B1F94BA441B2ACB979@PH0PR15MB5055.namprd15.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=sakuraus.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: aaed0a15-8a36-43d2-9f14-08da6ff4d2c3
x-ms-traffictypediagnostic: MW3PR15MB4010:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Nnt5UVrQyu8Tr7Qf3InTcww5pX7u+QsLwrTlSkXJtw9Ud6Nki1n5OoIfDzG0igF07NzglYUrxlw1OdStp9ev/yF1m/AwDoqhOJOfgo/n6G8eolDeX6zMQeR6Chee77SczamAZYCjQkfYioXVlZDYcO6uzsEJa0mhko6DoZoeKJpn3blCD5prBz4sGFhEB9AfPr6DwBdCmg/UIO8ENjOSjKZXsvcBDm5DZ5NHitpDTrLI58+eFqPs9dmPriuHIn/bts3WCnV0Dd0oWV7u1krqOCJQWppKPWDDz9OlT0fqLw+5koVCUqSuA1vG9OnYSdNFdJxPQQOVl59rYVcvYLPTHZwa2wXzWq1+kFOQI7P2BzRW0wKOBF+9n5SdzHFQC7odbFsBZWlBD+QvYQALt+Epr8yrohbf6J+Fs73kWjOUG0faR4Hpv/KAGFK25sG1qefqUEWh/e0C1vLX1ntnMsf6moIq+C521UtNkFUUOJoSgFbCmyy/ttBXcnk41HAlrQkCE+fvp7w5qxQarDZjs37AIZ71Woe+a6EIkcTWmiEBvf6NNfeb9RXoDQszvCHTQTN86pUaGmFzZW4djDH2Je2Ltsfs9ugde3gt6w0/BcnMdLF9xsZAyTjzAK8ZTu9DCjhYIZPAm5gdyrvZHQsMOmmN1IDCPWn9bht62Whwp0x9hJNDYdz4Z8UaK9wbS1zaFBl34gPy9ZH37H/5eheezw0/UFw4HcOfm4lUYeYRapxseFI2Fo42M1qQd70mZpCXIdi57X80RBoIvluNgVWK157tw1gtpeXDZZsIELb+oTH3+8DbPRF2nA2JWN9qn5C+PdMajStEBs7zuyC8GyDqH8414g==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR15MB5055.namprd15.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(366004)(39840400004)(136003)(376002)(396003)(346002)(2940100002)(5660300002)(316002)(55016003)(122000001)(38070700005)(83380400001)(6916009)(86362001)(38100700002)(8676002)(71200400001)(66556008)(66446008)(186003)(66476007)(76116006)(66946007)(64756008)(33656002)(52536014)(166002)(8936002)(478600001)(41300700001)(2906002)(7696005)(9686003)(26005)(53546011)(6506007);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?AMhZGTKk1ktbjJtj/Fxy4MBEngh1IG5BwIvZs4kzEIa5NpH7k6t1euHESZ71?=
 =?us-ascii?Q?oPbhVZxrUm9GiCLA991hNsz2rELG1JhN/fuvoWDGVmYhqnazPctheX1G0chA?=
 =?us-ascii?Q?Ao7R0VDFDdGHivWHDHX5e/Nnm3FQ3rplAXlhgMurwoIwDp8pnMu1h14ml2h5?=
 =?us-ascii?Q?mivQ1C5UreDo8KpWWi7yT7t4aR0wmFiP4pfFgH6vbDJM17WcOp+F9cvbwVaS?=
 =?us-ascii?Q?OA6ijggyXUd+G80uhymBo67pYo7ER+ROTbA95dyDL2B5qid3RO/ifcb+d43F?=
 =?us-ascii?Q?V/N6rYFVuNQQiYqBiyBiF1YWX67f2R91jgdLheC8kpdVLUoHoPbvfSNad1aT?=
 =?us-ascii?Q?VOhDTGzesAIURiBw9POfB91nrKE0DJhEHt8aDHPsqWSbvswdntBvZoJ1swQM?=
 =?us-ascii?Q?vR5ty2oULnqFIUUIdXJTU8oJIm+uCDn1d2yRTeuyJU4VSS0qNzh/GlcZKZRo?=
 =?us-ascii?Q?X1KKEo+C/w8tUEu/QaA4clUUrnytxb2dm1UWuqW/xl4iRjrnHX7NkD70sFCn?=
 =?us-ascii?Q?aiXanS4Yij3kWjpROIeZG162yN9HbDKtR3RB2rZezWzwXqp+1PeAzJZHtgEN?=
 =?us-ascii?Q?5J95i0XsTLUs788AniOErCkZngAEIiSrp+kq/71ZxktothT/RSEn874SycG6?=
 =?us-ascii?Q?DI6VH3XgTdTYeWYUXsKuREyyycdD4S1o0sBSniI9yda6j/4RxdGQkJwGZSxG?=
 =?us-ascii?Q?Ue3Vxllq6Puww0gPam99oncnIyreRHLAUo36v1MIf7fthpV4I5TYuzxd0Rmn?=
 =?us-ascii?Q?LaDLeExnX1Gd9Z5cHYfxWcQAriZiqzS9WRtLAjuR+0fYjCBgcp0premu5r9q?=
 =?us-ascii?Q?WJYFAGJXGxZiZBHJ3hBj8r3+BkJy+4ptZ4XGz3rANkz2pDaAQNqHAH56lb2Z?=
 =?us-ascii?Q?av9QAYHhmNyKYYHnkcQf6p1zMEHoey0SwJhHp36yNaw8TWGiOCd6pAbogucM?=
 =?us-ascii?Q?G5IrvdID2Dft4XAcEzXEeLdvuYep1aVcc7faWvaKPYgqadwwmz+tmA4cx0Rc?=
 =?us-ascii?Q?onHhh0fFtYncrh1ByWg+FByJMTz/3Wfu7HytW8MFT7FXPq1OUEx/1AK5/kmL?=
 =?us-ascii?Q?8RYT8iL11s8xpA6CV7uQBWc+44XHv2EOTpMgNMkmQ7+OfIdIlP7Y2Dpm1sYe?=
 =?us-ascii?Q?GOBn+uZ3yWb4o3LkaYMjA/pDunrzSOpoCaopnHUhUdWBGYbpJbF2DX7HtYl/?=
 =?us-ascii?Q?SyyM6xXYIJtDo36JjRS8G83tEv/qf03KxVOpTFvHYYhWm+ZXtZ7LswTaIdAz?=
 =?us-ascii?Q?D0zs16xhMav14Og2YDz7b7e6BtyzqysDQL0/OfOw8F2ZdVy4MioIEsVa/KIi?=
 =?us-ascii?Q?V7Af9wdYOQiNJ5+2ELUZP8jtyF/Fhi7GCVjCda2FN57/RUBAUtFqyxaKw9S7?=
 =?us-ascii?Q?wm7nwfMDQ+E7a4r52nGFfuM1l0tHGU8X2QZ1MK5WRyoqZhf8ZW+TJhDY+a4g?=
 =?us-ascii?Q?Y2bAHXajjlpwHPwHdMdDvPttNmhksvseGSC74xLsqjM2fGyTK1zoNkurR1LQ?=
 =?us-ascii?Q?uZxbLrHiky01EZwOXo75j5qm5VfgSoF/rhQ2b/B8rPNwNmlZzsQVpFcimjsi?=
 =?us-ascii?Q?9iRQFD6lE4WgOI/DFi3x1FE3HPFYNK6NlnUBrRh7?=
Content-Type: multipart/alternative;
	boundary="_000_PH0PR15MB5055EF7B8EA8AFCEC50971D2CB979PH0PR15MB5055namp_"
MIME-Version: 1.0
X-OriginatorOrg: sakuraus.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR15MB5055.namprd15.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 aaed0a15-8a36-43d2-9f14-08da6ff4d2c3
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jul 2022 17:24:12.4773
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 37ffe720-0c78-4d79-baff-87ee7fde7c3d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 9WlYqE8MpdFsbuu89b8+6GCWKz5zfKmTfm4DEUvG+qTyZhH3UbUN6rJGj93ScSQtnMgXQE2vfH+Rbm+VcY00Xg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR15MB4010
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 27 Jul 2022 17:24:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57657

--_000_PH0PR15MB5055EF7B8EA8AFCEC50971D2CB979PH0PR15MB5055namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

It keeps getting weirder and weirder, I ran -c cleansstate and rebuilt the =
sdk and I didn't get an error. I then added something else into the sdk bui=
ld and now I get the 'dynamically renamed' error for zint.

From: Greg Wilson-Lindberg
Sent: Wednesday, July 27, 2022 9:54 AM
To: yocto@lists.yoctoproject.org
Subject: RE: Getting error for allarch dynamically renamed package

Hello list,
I changed the license on the recipe below to 'GPL-3.0-or-later' and the pro=
blem went away.

Can anyone explain what is going on? I don't understand how the package nam=
e was being changed in the first place, and I certainly don't understand wh=
y changing the license should change that behavior.

Regards,
Greg

From: Greg Wilson-Lindberg <GWilson@sakuraus.com<mailto:GWilson@sakuraus.co=
m>>
Sent: Tuesday, July 26, 2022 1:45 PM
To: yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org>
Subject: Getting error for allarch dynamically renamed package

Hello list,
I'm getting the following error message:
do_package_write_ipk: An allarch packagegroup shouldn't depend on packages =
which are dynamically renamed (zint to libzint2.11)

The zint_2.11.0.bb recipe is below:

# Recipe created by recipetool

# This is the basis of a recipe and may need further editing in order to be=
 fully functional.

# (Feel free to remove these comments when editing.)



SUMMARY =3D "A barcode generator and library"

# WARNING: the following LICENSE and LIC_FILES_CHKSUM values are best guess=
es - it is

# your responsibility to verify that the values are complete and correct.

#

# NOTE: multiple licenses have been detected; if that is correct you should=
 separate

# these in the LICENSE value using & if the multiple licenses all apply, or=
 | if there

# is a choice between the multiple licenses. If in doubt, check the accompa=
nying

# documentation to determine which situation is applicable.

#

# The following license files were not able to be identified and are

# represented as "Unknown" below, you will need to check them yourself:

#   backend/LICENSE

#   debian/copyright

#

# NOTE: spec file indicates the license may be "GPLv3+"

LICENSE =3D "GPL-3.0-only"

LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Dd32239bcb673463ab874e80d47fae504=
 \

                    file://backend/LICENSE;md5=3D7a60e5da828a98fbdf48c9a327=
c7cdfa \

                    file://debian/copyright;md5=3D7d98b171c0e673a4b0bde1a85=
829586e"



SRC_URI =3D "https://sourceforge.net/projects/zint/files/zint/${PV}/zint-${=
PV}-src.tar.gz<https://sourceforge.net/projects/zint/files/zint/$%7bPV%7d/z=
int-$%7bPV%7d-src.tar.gz>"

#SRC_URI[md5sum] =3D "00511707a3b80023b97a6a79c9b145f0"  v2.9.1

SRC_URI[sha256sum] =3D "4e9d4d7dbcf41bfd63b70eca296c564f7c1a9b9d1c70c60e820=
dbe23f216aa09"



S =3D "${WORKDIR}/${BPN}-${PV}-src"



DEPENDS =3D "qttools qtbase libpng"



inherit cmake

# cmake_qt5



# Specify any options you want to pass to cmake using EXTRA_OECMAKE:

EXTRA_OECMAKE =3D "-DCMAKE_SKIP_RPATH=3DTRUE"



do_install:append() {

    rm -rf ${D}/usr/bin

}



FILES:${PN}-dev =3D "/usr/share/apps/cmake/modules/FindZint.cmake"

FILES:${PN} =3D "/usr/lib/lib*.so* /usr/include/*.h"



INSANE_SKIP:${PN} +=3D "dev-so"

The recipe doesn't contain anything that indicates that it is 'dynamically'=
 renaming anything.

Can anybody tell help me understand what is going on and what I need to do =
to get past this?

This has popped up in the process of going from hardknot to kirkstone.

Regards,
Greg


--_000_PH0PR15MB5055EF7B8EA8AFCEC50971D2CB979PH0PR15MB5055namp_
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
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:Consolas;}
span.EmailStyle22
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">It keeps getting weirder and weirder, I ran -c clean=
sstate and rebuilt the sdk and I didn&#8217;t get an error. I then added so=
mething else into the sdk build and now I get the &#8216;dynamically rename=
d&#8217; error for zint.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> Greg Wilson-Lindberg <br>
<b>Sent:</b> Wednesday, July 27, 2022 9:54 AM<br>
<b>To:</b> yocto@lists.yoctoproject.org<br>
<b>Subject:</b> RE: Getting error for allarch dynamically renamed package<o=
:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hello list,<o:p></o:p></p>
<p class=3D"MsoNormal">I changed the license on the recipe below to &#8216;=
GPL-3.0-or-later&#8217; and the problem went away.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Can anyone explain what is going on? I don&#8217;t u=
nderstand how the package name was being changed in the first place, and I =
certainly don&#8217;t understand why changing the license should change tha=
t behavior.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Greg<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> Greg Wilson-Lindberg &lt;<a href=3D"mai=
lto:GWilson@sakuraus.com">GWilson@sakuraus.com</a>&gt;
<br>
<b>Sent:</b> Tuesday, July 26, 2022 1:45 PM<br>
<b>To:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org">yocto@lists.yoct=
oproject.org</a><br>
<b>Subject:</b> Getting error for allarch dynamically renamed package<o:p><=
/o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Hello l=
ist,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">I'm get=
ting the following error&nbsp;message:<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">do_pack=
age_write_ipk: An allarch packagegroup shouldn't depend on packages which a=
re dynamically renamed (zint to libzint2.11)<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">The zin=
t_2.11.0.bb recipe is below:<o:p></o:p></span></p>
</div>
<div>
<div>
<pre style=3D"background:white"><span style=3D"color:black"># Recipe create=
d by recipetool<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black"># This is the b=
asis of a recipe and may need further editing in order to be fully function=
al.<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black"># (Feel free to=
 remove these comments when editing.)<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black"><o:p>&nbsp;</o:=
p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">SUMMARY =3D &qu=
ot;A barcode generator and library&quot;<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black"># WARNING: the =
following LICENSE and LIC_FILES_CHKSUM values are best guesses - it is<o:p>=
</o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black"># your responsi=
bility to verify that the values are complete and correct.<o:p></o:p></span=
></pre>
<pre style=3D"background:white"><span style=3D"color:black">#<o:p></o:p></s=
pan></pre>
<pre style=3D"background:white"><span style=3D"color:black"># NOTE: multipl=
e licenses have been detected; if that is correct you should separate<o:p><=
/o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black"># these in the =
LICENSE value using &amp; if the multiple licenses all apply, or | if there=
<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black"># is a choice b=
etween the multiple licenses. If in doubt, check the accompanying<o:p></o:p=
></span></pre>
<pre style=3D"background:white"><span style=3D"color:black"># documentation=
 to determine which situation is applicable.<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">#<o:p></o:p></s=
pan></pre>
<pre style=3D"background:white"><span style=3D"color:black"># The following=
 license files were not able to be identified and are<o:p></o:p></span></pr=
e>
<pre style=3D"background:white"><span style=3D"color:black"># represented a=
s &quot;Unknown&quot; below, you will need to check them yourself:<o:p></o:=
p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black"># &nbsp; backen=
d/LICENSE<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black"># &nbsp; debian=
/copyright<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">#<o:p></o:p></s=
pan></pre>
<pre style=3D"background:white"><span style=3D"color:black"># NOTE: spec fi=
le indicates the license may be &quot;GPLv3+&quot;<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">LICENSE =3D &qu=
ot;GPL-3.0-only&quot;<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">LIC_FILES_CHKSU=
M =3D &quot;file://COPYING;md5=3Dd32239bcb673463ab874e80d47fae504 \<o:p></o=
:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <a href=3D"file://ba=
ckend/LICENSE;md5=3D7a60e5da828a98fbdf48c9a327c7cdfa">file://backend/LICENS=
E;md5=3D7a60e5da828a98fbdf48c9a327c7cdfa</a> \<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <a href=3D"file://de=
bian/copyright;md5=3D7d98b171c0e673a4b0bde1a85829586e">file://debian/copyri=
ght;md5=3D7d98b171c0e673a4b0bde1a85829586e</a>&quot;<o:p></o:p></span></pre=
>
<pre style=3D"background:white"><span style=3D"color:black"><o:p>&nbsp;</o:=
p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">SRC_URI =3D &qu=
ot;<a href=3D"https://sourceforge.net/projects/zint/files/zint/$%7bPV%7d/zi=
nt-$%7bPV%7d-src.tar.gz">https://sourceforge.net/projects/zint/files/zint/$=
{PV}/zint-${PV}-src.tar.gz</a>&quot;<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">#SRC_URI[md5sum=
] =3D &quot;00511707a3b80023b97a6a79c9b145f0&quot; &nbsp;v2.9.1<o:p></o:p><=
/span></pre>
<pre style=3D"background:white"><span style=3D"color:black">SRC_URI[sha256s=
um] =3D &quot;4e9d4d7dbcf41bfd63b70eca296c564f7c1a9b9d1c70c60e820dbe23f216a=
a09&quot;<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black"><o:p>&nbsp;</o:=
p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">S =3D &quot;${W=
ORKDIR}/${BPN}-${PV}-src&quot;<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black"><o:p>&nbsp;</o:=
p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">DEPENDS =3D &qu=
ot;qttools qtbase libpng&quot;<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black"><o:p>&nbsp;</o:=
p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">inherit cmake<o=
:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black"># cmake_qt5<o:p=
></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black"><o:p>&nbsp;</o:=
p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black"># Specify any o=
ptions you want to pass to cmake using EXTRA_OECMAKE:<o:p></o:p></span></pr=
e>
<pre style=3D"background:white"><span style=3D"color:black">EXTRA_OECMAKE =
=3D &quot;-DCMAKE_SKIP_RPATH=3DTRUE&quot;<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black"><o:p>&nbsp;</o:=
p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">do_install:appe=
nd() {<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">&nbsp; &nbsp; r=
m -rf ${D}/usr/bin<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">}<o:p></o:p></s=
pan></pre>
<pre style=3D"background:white"><span style=3D"color:black"><o:p>&nbsp;</o:=
p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">FILES:${PN}-dev=
 =3D &quot;/usr/share/apps/cmake/modules/FindZint.cmake&quot;<o:p></o:p></s=
pan></pre>
<pre style=3D"background:white"><span style=3D"color:black">FILES:${PN} =3D=
 &quot;/usr/lib/lib*.so* /usr/include/*.h&quot;<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black"><o:p>&nbsp;</o:=
p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">INSANE_SKIP:${P=
N} +=3D &quot;dev-so&quot;<o:p></o:p></span></pre>
</div>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">The rec=
ipe doesn't contain anything that indicates that it is 'dynamically' renami=
ng anything.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Can any=
body tell help me understand what is going&nbsp;on and what I need to do to=
 get past this?<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">This ha=
s popped up in the process of going from hardknot to kirkstone.<o:p></o:p><=
/span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Regards=
,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Greg<o:=
p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_PH0PR15MB5055EF7B8EA8AFCEC50971D2CB979PH0PR15MB5055namp_--

