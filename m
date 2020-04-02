Received: from EUR03-AM5-obe.outbound.protection.outlook.com (EUR03-AM5-obe.outbound.protection.outlook.com [40.107.3.136])
 by mx.groups.io with SMTP id smtpd.web11.1750.1585814105495397285
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Apr 2020 00:55:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@lutrons365.onmicrosoft.com header.s=selector2-lutrons365-onmicrosoft-com header.b=B8BkOzIc;
 spf=pass (domain: lutrons.com, ip: 40.107.3.136, mailfrom: rob.haycock@lutrons.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=liQgEqk1GC7NcOM+VNbwqKBeNZafmkEbslW93Wu/MHlNnBXGw9OOlg+pJw8jlbbAr+VwM1f/whvRrbiUUWBUqF6Q076jjKd76BTy5293SPddr2t37qsF7noWZeBrMugXxGbYYtsNxYpPelVbPVaOUeduM07mPSEg7vDui+DWBL7WbuHSmJA6Fo+k5p4EUVeZDoTRIyy6xgrYPPu1AFbblPNS4FNn+zejf/rnteckrMpLoPVrvnUQhtQxm7ff3ByOayzllNLe62t1sNt4VhEbtEKYAu7GZCHNx3tHavMjRSlU3LU0fS7SSw2kI4dA+pAXJOzNso9ryKCRz8uPg5TMBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NhPwJlXAK5s9iukuXM+RWW9pYNKJs4+nSbrqzEKAkzg=;
 b=nssCK4yzRV7UzrAcm2rcTuCX+qBMc1pO9pZADM4gKJMrS/rbmuTNul7VpKOeEY2s9DtsAcRCUul/Ac9uw1g2CYikVXm+Q1b1Xi2XPBaFUieGMEl1UR3bE6Mn8TCJ4vBvdTQp7zobEzoe69iWi2yjnwsDVrYFz8E41tc5C/UcqbuXQzLJXCkZcSHKbfqhq2NApRAIZoJeeS/XNgUHN+1lvoAHm7HBArb3MctfVn2rnh6QfiBgIQmA2UC2/FyaTJZlExH1xRMszfYhXQGjaIRSv5SV8xMA4/ycOQleDlj1MEpyUzmnz/CwaQCW3RD9+YM6jKv9Sa9yHBSNpJtLcJEgIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=lutrons.com; dmarc=pass action=none header.from=lutrons.com;
 dkim=pass header.d=lutrons.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lutrons365.onmicrosoft.com; s=selector2-lutrons365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NhPwJlXAK5s9iukuXM+RWW9pYNKJs4+nSbrqzEKAkzg=;
 b=B8BkOzIcYY0V3Nhz9fqtQ9OwNgD1Gp+YuH7F4M5o/6k7BArgZk/k8Q5T0cE1RXH1hOjqngxz4cOxvGvir60bjy2EdtcXx7KV+J7W9+Y19dRUfPstwUEUuSu4yWb9VLEspJNmYDk/RK6OevbhflRUn+J/qCdwL1R+xbi5qP5pzF4=
Received: from AM6PR0502MB3845.eurprd05.prod.outlook.com (52.133.23.18) by
 AM6PR0502MB4086.eurprd05.prod.outlook.com (52.133.30.161) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2878.16; Thu, 2 Apr 2020 07:55:02 +0000
Received: from AM6PR0502MB3845.eurprd05.prod.outlook.com
 ([fe80::d448:d045:f6b3:514f]) by AM6PR0502MB3845.eurprd05.prod.outlook.com
 ([fe80::d448:d045:f6b3:514f%7]) with mapi id 15.20.2856.019; Thu, 2 Apr 2020
 07:55:02 +0000
From: rob.haycock@lutrons.com
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: post-install - how to "reset" an image
Thread-Topic: post-install - how to "reset" an image
Thread-Index: AdYIxAJ4n0yjxjxgTo+gPwHL7P0GVg==
Date: Thu, 2 Apr 2020 07:55:02 +0000
Message-ID: 
 <AM6PR0502MB384500DF47B080D1B2E849F8FDC60@AM6PR0502MB3845.eurprd05.prod.outlook.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=rob.haycock@lutrons.com; 
x-originating-ip: [213.121.93.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 103b6c4b-2cdf-4a4a-c6c0-08d7d6db265a
x-ms-traffictypediagnostic: AM6PR0502MB4086:
x-microsoft-antispam-prvs: 
 <AM6PR0502MB4086D76290A6848BEA52238CFDC60@AM6PR0502MB4086.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0361212EA8
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR0502MB3845.eurprd05.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(10019020)(376002)(346002)(136003)(366004)(396003)(39830400003)(33656002)(508600001)(5660300002)(2906002)(52536014)(186003)(26005)(316002)(71200400001)(6916009)(81156014)(9686003)(9326002)(8676002)(76116006)(66446008)(6506007)(8936002)(86362001)(4744005)(44832011)(81166006)(66476007)(64756008)(66556008)(66946007)(7696005)(55016002);DIR:OUT;SFP:1102;
received-spf: None (protection.outlook.com: lutrons.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 IaL5xtpKqrrvgKybmlqu8H/qF/kz/t1zlPiNHLXuvUNi7vhDHQFZxxehG/wrnwuN213O4lKRXGX1UOxiijFnfhA81ljOaN09PJIOhlaPKNxj83sdO82OoeoWl3uyU2gEvdTlJ4/bI4WkYpH0fAb07wMHFanGlDleknBSBjXEVYFpy9OeuZt2lROyChGdfFPawpTddB+SxjCH7UrQ3cww/YOcCE7trphPC4u1yJlN4WGP6z7yvZk23UMcCJrs4SAZag37UskE5yOtBYhXddd08AcivI4cyxyW/GmMO2cfZLS4T6Mdr9wPiLZGbv1RpBCfgvJoioR/A5LXJ6JRsP4Wr2JQ+NIKddfCASABLr2XOzq6GxIJ/AJvCOz5eRL7Gbbp993VdwWhN1JYwA1KX8Ot4kRygKb3rmJGrfTKe18B+P/KgLXPV3lErwd2nS1ej/MY
x-ms-exchange-antispam-messagedata: 
 5Owi+/xHPNM8Z+LRhdV3IhW4OPKBkY7+NnUN2rUysQVFRwgHl1ZOOi7biGLh+/FjtSHlK6r4c1Lur+MzUZu3MhO4VKp+XyINJz3V1kbyWf7Pp9IwVKWsbXfxqaWh+9uw2n8f6QlZKWLnp3OZZ2eWlQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: lutrons.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 103b6c4b-2cdf-4a4a-c6c0-08d7d6db265a
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Apr 2020 07:55:02.3071
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cc0d2468-ebfe-4e90-90bd-fdc8a65ec31a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Y0p3dOWtGSRihOeqpkH9GkiFTR5bSVe8CA2vHGQlfREVcAmI+jtG31w34hXLMWHSrBsnD6B6M73JVNdXthuzbg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0502MB4086
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_AM6PR0502MB384500DF47B080D1B2E849F8FDC60AM6PR0502MB3845_"

--_000_AM6PR0502MB384500DF47B080D1B2E849F8FDC60AM6PR0502MB3845_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

Newbie here.

I've been handed a PCB with a Yocto image running on it. I'm reading up on =
Yocto to get a better understanding but in the meantime I would appreciate =
help with a, hopefully, quick question.

I know the image has post-install actions (that talk to other peripherals) =
and I'm assuming there is flag somewhere that I can reset to make the post-=
install actions run again?

My understanding is, the long way round would be to get a build host and bu=
ild the image again. I'm currently waiting for a build host to be made avai=
lable so I can try this out. I'm hoping for a quick resolution in the meant=
ime.

Thanks,
Rob


--_000_AM6PR0502MB384500DF47B080D1B2E849F8FDC60AM6PR0502MB3845_
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
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
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
<body lang=3D"EN-GB" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Newbie here.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;ve been handed a PCB with a Yocto image runn=
ing on it. I&#8217;m reading up on Yocto to get a better understanding but =
in the meantime I would appreciate help with a, hopefully, quick question.<=
o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I know the image has post-install actions (that talk=
 to other peripherals) and I&#8217;m assuming there is flag somewhere that =
I can reset to make the post-install actions run again?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">My understanding is, the long way round would be to =
get a build host and build the image again. I&#8217;m currently waiting for=
 a build host to be made available so I can try this out. I&#8217;m hoping =
for a quick resolution in the meantime.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Rob<span style=3D"mso-fareast-language:EN-GB"><o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_AM6PR0502MB384500DF47B080D1B2E849F8FDC60AM6PR0502MB3845_--
