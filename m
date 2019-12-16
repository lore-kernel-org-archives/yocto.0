Received: from NAM12-MW2-obe.outbound.protection.outlook.com (NAM12-MW2-obe.outbound.protection.outlook.com [40.107.244.79])
 by mx.groups.io with SMTP id smtpd.web10.3520.1576477984724010122
 for <yocto@lists.yoctoproject.org>;
 Sun, 15 Dec 2019 22:33:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@actuant.onmicrosoft.com header.s=selector2-actuant-onmicrosoft-com header.b=CI/aZlD7;
 spf=pass (domain: crosscontrol.com, ip: 40.107.244.79, mailfrom: tuomas.huuki@crosscontrol.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SoGJSK88wy+AU0BMVdx2TEa5JsIECXawcD0qVzcAfDEXU/Erq+6oQ15i9RdntCJhQKdcft33HCC8AHtyMGXGqJaXfpo269/cI9bEi+qiCgehP6ghoWULaXQbAfUtjlac0xQ/1Z/bdKGFIO1UNoOf2G2MMuF3dQ4OgnmUv6TWozHUoIA7zYZtmBiOuApRZFE4NJuekTvARqfiNlh1vQiGchkyvEPytxZzNeLZAiKVPIO9k5SOPo+58xyZzPiX1rbQLf3H0bf7oqEAwRhiEtnKndJcsp22PzMjOmRLzfiG0zsfS8GO9wC5NtZ5cSZ/Pf48eFlaZS3ZcXL+1RETeu8lyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b+GQc8dyJi65ZVrHpYTbaLnjZ7iNgYDbiITC+9V0CiE=;
 b=D/g1o0yKXFBVVela0WVJxeRwJl5luizYa87kM538ZpA1H6JCuoY0qeMxK4eDRm2qlJZqL6YDoFIq84cuGcQ4VcGpvhlirUWdWbQWVqZ6M8ZU2cVRzNQIir4wwvWyrEScbq3hMVEzaVL2+i37qh9UgkPJcYtAYmWX4RqluTVn/OWEEisAWuf1nbYKIEd3+ypYHlJM5uGwTX1gLkpHYu9z5yl4f0RnSA+Wyiu1PMZoutRvdpFxlDEvl8ZI3HzvLpyM1SC3hZs7Kl6OgkRiL3mNEk/Wvc3ZMSeXNHVsbsfghT9Et6tq6gS90lvkEx89jS1s0A/VG0LaL9WmlvNkauyffA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=crosscontrol.com; dmarc=pass action=none
 header.from=crosscontrol.com; dkim=pass header.d=crosscontrol.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=actuant.onmicrosoft.com; s=selector2-actuant-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b+GQc8dyJi65ZVrHpYTbaLnjZ7iNgYDbiITC+9V0CiE=;
 b=CI/aZlD7qEgGAR/pP0IxMoUjQLF3PbSjZ5A2yJ3X+yIC4Xb0IWZEBsttQV4PUR+PN89xi9Ai3NWdnoFmOVIrI1DQizzERsyY2RTyKj1OeSnipNZl5IC+QvJcGhSerbe62oGnC28FXrOnYAXifmhNdaB6If0tHg4TVUhd/Sqe55c=
Received: from BYAPR18MB2598.namprd18.prod.outlook.com (20.179.92.81) by
 BYAPR18MB3079.namprd18.prod.outlook.com (20.179.59.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.15; Mon, 16 Dec 2019 06:33:02 +0000
Received: from BYAPR18MB2598.namprd18.prod.outlook.com
 ([fe80::d55e:8572:7053:3c3]) by BYAPR18MB2598.namprd18.prod.outlook.com
 ([fe80::d55e:8572:7053:3c3%5]) with mapi id 15.20.2538.019; Mon, 16 Dec 2019
 06:33:02 +0000
From: "Tuomas Huuki" <tuomas.huuki@crosscontrol.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Appending to recipe created by BBCLASSEXTEND
Thread-Topic: Appending to recipe created by BBCLASSEXTEND 
Thread-Index: AdWz2g2p4cSkWCzoSGK9zocXjvSMrA==
Date: Mon, 16 Dec 2019 06:33:02 +0000
Message-ID: 
 <BYAPR18MB2598D7FF6A015A96AD31EA28F9510@BYAPR18MB2598.namprd18.prod.outlook.com>
Accept-Language: fi-FI, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=tuomas.huuki@crosscontrol.com; 
x-originating-ip: [81.19.113.93]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9d724b58-a477-45d6-87df-08d781f1cd01
x-ms-traffictypediagnostic: BYAPR18MB3079:
x-microsoft-antispam-prvs: 
 <BYAPR18MB3079463519986CBB0510A136F9510@BYAPR18MB3079.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 02530BD3AA
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10009020)(4636009)(136003)(396003)(39850400004)(366004)(376002)(346002)(199004)(189003)(478600001)(71200400001)(316002)(33656002)(81156014)(81166006)(4743002)(52536014)(8676002)(9686003)(6506007)(76116006)(55016002)(86362001)(186003)(2906002)(5660300002)(7696005)(26005)(66556008)(66446008)(64756008)(66946007)(66476007)(6916009)(8936002)(180763001);DIR:OUT;SFP:1101;SCL:1;SRVR:BYAPR18MB3079;H:BYAPR18MB2598.namprd18.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: crosscontrol.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 s7Gri4a20Xk0kfJH/SdGN2My4VS9gzYTaYoLHeIepbZ+/ENfYKWr5CWa3DKmcuE5egvHQxepyKO5A4RUMWMIsfTxeMYlQWpBDoxQI/j7NS8rzvl0DibCt6hjzU2+UXSKWaJioHsmES/d1dU9EJUTWwX01yzKPkH7TrkACfm+8Fb/eCEgIuXSNvYwqbOKD14wo664OzmJh63ovwlonoP41vE9OQPPS0/eq4KWE45uEhdlKOpFQDh7lbhgOm0idFf/HCP7gXYOHfUTPGEBGK8QUShEpgjomchfrbTmgkxLnlTITu71RIRSf/mAWrnjIlWOxM9HAjqwssZuxcwRYBHQGd5iFWFOh9Wdo9/3DRXM0JbxTlULWj1+O6Z+ytp//PY9oIAtj+0hW1dd9rHxRvSXcN68kCa2PzNxeeQUq87gLlfj13RuxTQxU46ySFcFVw2vo1LzsUbBlts8Rbp02PWhh5SfKxVMBRqLYZGMzDRiNs320Bx1aoilZjRC5MEwNYav
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: crosscontrol.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d724b58-a477-45d6-87df-08d781f1cd01
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Dec 2019 06:33:02.1436
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1602ae82-0266-40d6-910b-11680fe0f6a5
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WDAwJdxQJdlFUYLVkwuNMR97s6+LdMO+SrWZ/tlzbVG91qbeCdrlYsph7wuwwyR0Anrwp0ZCokQ4axh2gyUekYvMsCYtobf9qkQRRxMJPY8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR18MB3079
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BYAPR18MB2598D7FF6A015A96AD31EA28F9510BYAPR18MB2598namp_"

--_000_BYAPR18MB2598D7FF6A015A96AD31EA28F9510BYAPR18MB2598namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,
I'm using yocto warrior and have a recipe that is extended via BBCLASSEXTEN=
D in to -native and -nativesdk. I also need an append for this recipe, incl=
uding the "unextended" recipe. For example:
my-recipe_1.0.0.bb includes BBCLASSEXTEND =3D "native" and thus generates m=
y-recipe and my-recipe-native
I also have a my-recipe_1.0.0.bbappend where I append a path to the recipe.=
 The issue is, that it only works for the my-recipe, and not the extenend -=
native or -nativesdk.
I also tried creating my-recipe-native_1.0.0.bbappend, but that does not ap=
pend to the extended recipe either.

So, is this a bug or is there a proper way of appending extended recipes?

Regards,
Tuomas


________________________________

Enerpac Tool Group Email Notice

This message is intended only for the use of the Addressee and may contain =
information that is PRIVILEGED and/or CONFIDENTIAL.
This email is intended only for the personal and confidential use of the re=
cipient(s) named above. If the reader of this email is not an intended reci=
pient, you have received this email in error and any review, dissemination,=
 distribution or copying is strictly prohibited.
If you have received this email in error, please notify the sender immediat=
ely by return mail and permanently delete the copy you received.

Thank you.

--_000_BYAPR18MB2598D7FF6A015A96AD31EA28F9510BYAPR18MB2598namp_
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
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
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
	margin:70.85pt 2.0cm 70.85pt 2.0cm;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"FI" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">I&#8217;m using yocto warrior a=
nd have a recipe that is extended via BBCLASSEXTEND in to &#8211;native and=
 &#8211;nativesdk. I also need an append for this recipe, including the &#8=
220;unextended&#8221; recipe. For example:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">my-recipe_1.0.0.bb includes BBC=
LASSEXTEND =3D &#8220;native&#8221; and thus generates my-recipe and my-rec=
ipe-native<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">I also have a my-recipe_1.0.0.b=
bappend where I append a path to the recipe. The issue is, that it only wor=
ks for the my-recipe, and not the extenend &#8211;native or &#8211;nativesd=
k. &nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">I also tried creating my-recipe=
-native_1.0.0.bbappend, but that does not append to the extended recipe eit=
her.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">So, is this a bug or is there a=
 proper way of appending extended recipes?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">Regards,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">Tuomas</span><span lang=3D"EN-G=
B" style=3D"mso-fareast-language:FI"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><o:p>&nbsp;</o:p></span></p>
</div>
<br>
<hr>
<font face=3D"Arial" color=3D"Black" size=3D"1"><br>
Enerpac Tool Group Email Notice<br>
<br>
This message is intended only for the use of the Addressee and may contain =
information that is PRIVILEGED and/or CONFIDENTIAL.<br>
This email is intended only for the personal and confidential use of the re=
cipient(s) named above. If the reader of this email is not an intended reci=
pient, you have received this email in error and any review, dissemination,=
 distribution or copying is strictly
 prohibited.<br>
If you have received this email in error, please notify the sender immediat=
ely by return mail and permanently delete the copy you received.<br>
<br>
Thank you.<br>
</font>
</body>
</html>

--_000_BYAPR18MB2598D7FF6A015A96AD31EA28F9510BYAPR18MB2598namp_--
