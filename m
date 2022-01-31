Return-Path: <gary@missionsecure.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E485DC433EF
	for <webhook@archiver.kernel.org>; Mon, 31 Jan 2022 13:52:57 +0000 (UTC)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (NAM11-CO1-obe.outbound.protection.outlook.com [40.107.220.40])
 by mx.groups.io with SMTP id smtpd.web10.32610.1643637176595008769
 for <yocto@lists.yoctoproject.org>;
 Mon, 31 Jan 2022 05:52:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@missionsecure.com header.s=selector2 header.b=vo7ynXKi;
 spf=pass (domain: missionsecure.com, ip: 40.107.220.40,
 mailfrom: gary@missionsecure.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V7XIMIJr9kdQPEip1ZTz3nKx+CbwEJwB29ZDmenn5S2pGKu1wSOPVn1Chzoa3Z3TfpPab/v9krbU+FXm7mjESV7OmtlhuDMoVAytSqAOse1tPv+hTwPtUT2iBHhjnbZWoQuhrw1bshkat5Bf3yW+mgh8wKongENauUuCK0tqfVc2M/4ucYX2GOWMvskdLb2i/89xQEoiqzmqpeSU7vhIjsbHNyg5DmNtsEWPkoc1opJpscePa3HyucO/0Bzm5mdwMGu8/wQ1pw9FyJhlU4opxugLnhnza4IKaBjRbwYIFtUevDSpTGaRUkU5UaP/73N2ed173pc7jXQuEZePJT4qLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oAMR0rya+WW+uWNpBJjKoX3dlLvyeu9ebPZfAzOVSfQ=;
 b=G7JqF7fkNb0jIuhe50leWhCP+WF+MdFq3xthoL5+3Qj8ji6h7nhh4lKlWfZO+cwGzXTupn9oqegmjKbnL0gL472agdm3ykf79PS8QnamgiZikFF3cL24GyVl5wj8gJWEfeJJrR6/vcL+/6YOQHFrybLrKZYmmKWuZjAsOKrFWM0DH1MRZI6xTzjyJPlH0YZfP2t0EVIAuAtuQUQpp74dgYPrWSMJZ9g5V4/m3Ko1P+iytA+ypjMYZpDeJyjlQEl4mFPP+C6YJCi0ISxFBKKbPn5veevtIgOaFrferQW7J/KlP86RQV+itZPe6FNrjUsrSAeiFEYWNnSEqmTYdVlY/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=MissionSecure.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oAMR0rya+WW+uWNpBJjKoX3dlLvyeu9ebPZfAzOVSfQ=;
 b=vo7ynXKilYTfnsDihEFUK/lgTv7sTg/PbIct1cxtLnfRyqAzxe09nE0V83z4twr9rHhklW0eskF3XsROhJgcaeK5ah+y5kImwXuVC6cXohDSCAtZY6qbhHgzlMArhFmS+NmoT5WOu+xV4T/T4NMa+1zna4wuH/BVRGTYIDMHjj8=
Received: from MN2PR17MB3903.namprd17.prod.outlook.com (2603:10b6:208:20f::14)
 by BYAPR17MB2311.namprd17.prod.outlook.com (2603:10b6:a02:b3::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4930.21; Mon, 31 Jan
 2022 13:52:52 +0000
Received: from MN2PR17MB3903.namprd17.prod.outlook.com
 ([fe80::f0a0:5033:834d:99f6]) by MN2PR17MB3903.namprd17.prod.outlook.com
 ([fe80::f0a0:5033:834d:99f6%5]) with mapi id 15.20.4930.022; Mon, 31 Jan 2022
 13:52:52 +0000
From: Gary Huband <Gary@MissionSecure.com>
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>, "ivriabtsov@gmail.com"
	<ivriabtsov@gmail.com>
Subject: Re: [yocto] boot script for barebox in
 build/deploy/images/$IMAGE_NAME/ directory
Thread-Topic: [yocto] boot script for barebox in
 build/deploy/images/$IMAGE_NAME/ directory
Thread-Index: AQHYFYwzZ1R1PB4sjk+9vlPdq47ueax9J9jt
Date: Mon, 31 Jan 2022 13:52:51 +0000
Message-ID: 
 <MN2PR17MB39034EE41078C266F60FA718C3259@MN2PR17MB3903.namprd17.prod.outlook.com>
References: 
 <CAKAnv4Ej0MW6-tMKZgfxN7TESCQPzPTPTqJNCSeCWSpB+cMaxg@mail.gmail.com>
In-Reply-To: 
 <CAKAnv4Ej0MW6-tMKZgfxN7TESCQPzPTPTqJNCSeCWSpB+cMaxg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: 91b73d4e-ed70-b98b-8d2c-65cbbd9b5508
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=MissionSecure.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ca0a445d-a6af-47b8-883f-08d9e4c0f97b
x-ms-traffictypediagnostic: BYAPR17MB2311:EE_
x-microsoft-antispam-prvs: 
 <BYAPR17MB23110AE813B6062A96C97C02C3259@BYAPR17MB2311.namprd17.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 TbF8Ddn4PbHgqGiWHufWjdRinBUsfcwesWtmqmCKAmgj/eIWzb9vEs6J0nSwXEoub2a+boFDvGdOvHk58Jyiv5O6HLf1YZj2HmNGulJW92T6LLU2Uu7wTLGqdiMvhp3fgkna3na5cWq99OdgiiR0vca/R3iBz0ZicuDtydK0b/9d8IngJyVL+XGXj7Z+SsTnrS4916ru8muY4RJNT1jDt/+jGksKdlFq4aV+o06S3k88YFYTJBaegfhcfa9whqF6KO1MN6ZXhgDVI48Ph1pz62kaKrjVip1SKxYJucoYBUUNpZ9hpm9Hwf8PYMLAFrmUJsj1KV7cVdX/UpEx+Mjl9dc5ggJ0CjCVL4/uA2A8Yyym427E7sq48KL7Qre9mn3ZFmT+FQr6ti3PEbErlvts3sVEI8xyuuc13XGfrYTk1NkNSzCUQm5GAzETxXhGT9uiv3fd31jFh+7NOXGcej//Ok/5IDThri9uNq9rm2PCpIqt9l6vD1h/qku4H6BJ0oVpyaR8ztqLNBLmN1K2yiA0T+Ams7w+gmCQ8hzhyf2zmocjdUzEfIUsSHZjsf679fc7dKBpLC53vZVpm1Xq7kmJmepkFshmfaYko/FcQ2rcGert0F1J2ywhQVhtzlRwENbVcK/2/uDciLXfedM6QBvzhLJsEk76EqReh1/HZG/NtEIFZbx3p3Lwafyh49Kx6WNBzAr2TmpJnaANCVgmkpoB4M64itrlG/hvEZRjALPZh8SaNsrrIaD5Lm4QKgHy0dXz
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR17MB3903.namprd17.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(346002)(376002)(366004)(136003)(396003)(39830400003)(26005)(55016003)(186003)(122000001)(2906002)(38100700002)(83380400001)(45080400002)(66946007)(76116006)(64756008)(66446008)(66476007)(66556008)(110136005)(33656002)(38070700005)(166002)(9686003)(7696005)(6506007)(71200400001)(8676002)(19627405001)(86362001)(316002)(508600001)(52536014)(5660300002)(8936002)(40140700001)(85282002)(139555002)(20210929001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?1hp2T6wfWhNKtrrwEn+6g1rd9k32r7vR0AeaNDgCWKxRiZEGbmqBwt8u48?=
 =?iso-8859-1?Q?vHynDXacYLIKPQfoj6k6VA/VliHsbrJ09/O01KhRZcBvS3PQn/XM0dSffa?=
 =?iso-8859-1?Q?UBVJwb5dZXtW7g1H2+wbvQE4OATaICnoFM7zUEXp31Qz5Vhm0WLtEgZ9An?=
 =?iso-8859-1?Q?UzNZfCvYW3YNyoHsR0c6i+JnI52xXhsu+PPaZHRKm+O/bqVvltzIroBvYH?=
 =?iso-8859-1?Q?UMU3H/3DQKuFptF2RMMcyfNpt+BA5kOnpSlUuvgPtLeTocWJyQW72EwORC?=
 =?iso-8859-1?Q?6MrMNQM3FT/XGLrKKsbxwC5pUCENh2YxfDW41rwTlGT+dhJSBh+A6HZKAH?=
 =?iso-8859-1?Q?fe9Ui7ZXXjpm8L+0vEqb9gq30hmQBpRzvyDYgH37uOyE1OdG970EN8pjWp?=
 =?iso-8859-1?Q?SzyTpPhNUnCZ1SeeClqMVvMOavhucn47QI2rC2+WsggwkLjUrmq2PLRExn?=
 =?iso-8859-1?Q?gRywUyXIj3IxbkBRjOcBmCYLazgH9c1JgWpmWCnEdO5dwmGwj+DWowNl9z?=
 =?iso-8859-1?Q?ZjCDuJMFxhcQhd9ptKq8JwTb/OAa39TxmyPMT+ko7uBDP7MO5ZI0YYZ8XC?=
 =?iso-8859-1?Q?F7gmqBQW76BmVgHDoRJyoI/9KybBlUERGd48FK1gtJ3Eye2sOum4uc+sWk?=
 =?iso-8859-1?Q?G/K+PFrEP1zoDNfLQbyKKuD7PUN3JVIF85EtMmZp591EqDrxeZs2FhzW+A?=
 =?iso-8859-1?Q?7BmUUxFcATuK8sbKwrvQkiN8vlDjEgkdGQDs4Jtl8n7bjqDKu7wZNU7Y6c?=
 =?iso-8859-1?Q?pvgXSLkbN6Gc1ldKm7dsO5K6LSI9HiCHfdPUtWHNSUuhJRfZ0vV9QK4kuA?=
 =?iso-8859-1?Q?TxlzEkkzoePzAvJm27MIsY12dYMABlpRFcvz15fKlc8s5uLtQHYLY4ep6E?=
 =?iso-8859-1?Q?Dta3FytkK7pUKDpAfOLilWdLrBbEiEaR23O16lZrzqFj9IJSHd4ZZCTHa6?=
 =?iso-8859-1?Q?lu7LX3Igia+pU/XAYs2X6u7dzQVqj9DtifGRTDWjm6zexxfMoVSAzKqqQW?=
 =?iso-8859-1?Q?W1XUkKh/tmHUVJsaKCM3KCLxZ+99+NlLhS7d/kbnGXI+B02JW1QvIFI9Ht?=
 =?iso-8859-1?Q?M0jL1XCqAcFYD5FRGgI8d7HVuXi66u/jlqdcODK+mkgg4zDMZ4D4Mszw9e?=
 =?iso-8859-1?Q?HOzhlpwXChW3zdqE2Vj1rXxQtuOCFFewUkkuSfOcWCmjvNXpTZ3S2nC39Y?=
 =?iso-8859-1?Q?jbfoppbs246vXFNQ5qNfOZbQ3TQVcK9ugNXPfO0Tt0baYXYmiTqX45LeQ/?=
 =?iso-8859-1?Q?p7y25cKzGzBdxcHhujwHCWO49jp8acZ5PSUsfRcaOPUC4V0LlM3pL3GHjA?=
 =?iso-8859-1?Q?grYXcpJfkVB+dWwtzhTuA9pBXP3rkFUfW/7zHIq99/DO9cEs3Bq5Fcmy6h?=
 =?iso-8859-1?Q?WinpV2Y/kPLfdDUxKEoa1hDJg3dMXdTRAUn0FQqY2oinJgLGJnOXqnbVwg?=
 =?iso-8859-1?Q?Slapoq4kTZANFQVC3l7/5WQePo4bH8zIkpm8H9J06sbKoNeHX8etdlGsT+?=
 =?iso-8859-1?Q?vqoa/5nyjKnY33KGlk9XEggl9dEmI8ayxMDvE0SEcvE9wz3e6KCCqt7l9I?=
 =?iso-8859-1?Q?ZQsKH2cY/3tXuxI117oWj4aOF3ydIXVIAMRQJvBxgVtDmZjq6kxRcaIum3?=
 =?iso-8859-1?Q?AqlPeXh8HrM4xRutk+QUvXSF/EZ69zTpqMOGyVXgrbwbZmgRnQKOn3Ow?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_MN2PR17MB39034EE41078C266F60FA718C3259MN2PR17MB3903namp_"
MIME-Version: 1.0
X-OriginatorOrg: MissionSecure.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR17MB3903.namprd17.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 ca0a445d-a6af-47b8-883f-08d9e4c0f97b
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jan 2022 13:52:51.9487
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f0ca9611-f13f-4dc9-8e1b-119172b8ec5d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 5Z7UOkKbO8LGZ0CpgmI5p4/b2TE4KS97GzycNqUNtCn1NRZQ7xRhS8sTBm8F/Iveiw/A8/GjlTBTVzC0gGpusw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR17MB2311
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 31 Jan 2022 13:52:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56029

--_000_MN2PR17MB39034EE41078C266F60FA718C3259MN2PR17MB3903namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

In Zeus I have a recipe that installs the file (a u-boot boot.scr for me):

install -m 0644 boot.scr ${DEPLOYDIR}

Make sure the recipe is included in your image.  Then in my machine conf:

IMAGE_BOOT_FILES =3D "zImage oftree imx7d-phyboard-zeta-004.dtb imx7d-phybo=
ard-zeta-004-m4.dtb boot.scr"

Gary

________________________________
From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> on behalf=
 of Ivan Riabtsov via lists.yoctoproject.org <ivriabtsov=3Dgmail.com@lists.=
yoctoproject.org>
Sent: Saturday, January 29, 2022 10:47 PM
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: [yocto] boot script for barebox in build/deploy/images/$IMAGE_NAME=
/ directory

Hello everyone, I need to put the boot.sh file in the
build/deploy/images/$IMAGE_NAME/ directory during the build, how can I
do this using the yocto build system?

Gary Huband
Sr. Software and Systems Engineer

Office: 434.284.8071 x720
Direct: 434.260.4995
Gary@MissionSecure.com

Follow Us!
LinkedIn<https://www.linkedin.com/company/mission-secure-inc->  |  Blog<htt=
ps://www.missionsecure.com/blog?utm_source=3Demail-signature&utm_medium=3De=
mail&utm_campaign=3Dblog-email-sig>  |  Website<https://www.missionsecure.c=
om/?utm_source=3Demail-signature&utm_medium=3Demail&utm_campaign=3Dweb-emai=
l-sig>

: : : : : : : : : : : : : : : : : : : : : : : : : : :

[MSi]

This email and any files transmitted with it are confidential and proprieta=
ry and intended solely for the use of the individual or entity to whom they=
 are addressed. Any dissemination, distribution or copying of this communic=
ation is strictly prohibited without our prior permission. If you received =
this in error, please contact the sender and delete the material from any c=
omputer.


--_000_MN2PR17MB39034EE41078C266F60FA718C3259MN2PR17MB3903namp_
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
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
In Zeus I have a recipe that installs the file (a u-boot boot.scr for me):<=
/div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
install -m 0644 boot.scr ${DEPLOYDIR}<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
Make sure the recipe is included in your image.&nbsp; Then in my machine co=
nf:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
IMAGE_BOOT_FILES =3D &quot;zImage oftree imx7d-phyboard-zeta-004.dtb imx7d-=
phyboard-zeta-004-m4.dtb boot.scr&quot;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
Gary<br>
</div>
<div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size: 11pt;" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> yocto@lists.yoctopr=
oject.org &lt;yocto@lists.yoctoproject.org&gt; on behalf of Ivan Riabtsov v=
ia lists.yoctoproject.org &lt;ivriabtsov=3Dgmail.com@lists.yoctoproject.org=
&gt;<br>
<b>Sent:</b> Saturday, January 29, 2022 10:47 PM<br>
<b>To:</b> Yocto-mailing-list &lt;yocto@lists.yoctoproject.org&gt;<br>
<b>Subject:</b> [yocto] boot script for barebox in build/deploy/images/$IMA=
GE_NAME/ directory</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt"=
>
<div class=3D"PlainText">Hello everyone, I need to put the boot.sh file in =
the<br>
build/deploy/images/$IMAGE_NAME/ directory during the build, how can I<br>
do this using the yocto build system?<br>
</div>
</span></font></div>
</div>
<br>
<div style=3D"font-family: Arial; font-size: 12px; font-style: normal; text=
-transform: uppercase;">
<font color=3D"#595458"><b>Gary Huband</b></font></div>
<div style=3D"font-family: Arial; font-size: 11px; font-style: normal;"><fo=
nt color=3D"#595458"><i>Sr. Software and Systems Engineer</i><br>
<br>
Office: 434.284.8071 x720 <br>
Direct: 434.260.4995 <br>
Gary@MissionSecure.com<br>
</font></div>
<br>
<div style=3D"font-family: Arial; font-size: 12px; font-style: normal;"><fo=
nt color=3D"#595458"><b>Follow Us!</b>
<br>
<a href=3D"https://www.linkedin.com/company/mission-secure-inc-">LinkedIn</=
a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href=3D"https://www.missionsecure.com/blog?ut=
m_source=3Demail-signature&amp;utm_medium=3Demail&amp;utm_campaign=3Dblog-e=
mail-sig">Blog</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href=3D"https://www.missionse=
cure.com/?utm_source=3Demail-signature&amp;utm_medium=3Demail&amp;utm_campa=
ign=3Dweb-email-sig">Website</a>
</font></div>
<br>
<div style=3D"color: rgb(0, 0, 0); font-family: Helvetica; font-size: 12px;=
 font-style: normal; font-variant: normal; font-weight: normal; letter-spac=
ing: normal; line-height: normal; orphans: auto; text-align: start; text-in=
dent: 0px; text-transform: none; white-space: normal; widows: auto; word-sp=
acing: 0px; -webkit-text-stroke-width: 0px;" class=3D"">
: : : : : : : : : : : : : : : : : : : : : : : : : : : <br>
</div>
<br>
<div><img height=3D"44" width=3D"115" alt=3D"MSi" src=3D"http://www.mission=
secure.com/images/MSi_Logo_email.png"></div>
<br>
<div style=3D"font-family: Arial; font-size: 11px; font-style: normal;"><fo=
nt color=3D"#595458">This email and any files transmitted with it are confi=
dential and proprietary and intended solely for the use of the individual o=
r entity to whom they are addressed.
 Any dissemination, distribution or copying of this communication is strict=
ly prohibited without our prior permission. If you received this in error, =
please contact the sender and delete the material from any computer.</font>=
</div>
<br>
</body>
</html>

--_000_MN2PR17MB39034EE41078C266F60FA718C3259MN2PR17MB3903namp_--

