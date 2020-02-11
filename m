Received: from NAM12-MW2-obe.outbound.protection.outlook.com (NAM12-MW2-obe.outbound.protection.outlook.com [40.107.244.137])
 by mx.groups.io with SMTP id smtpd.web10.8635.1581419316747588970
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Feb 2020 03:08:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cognexcorporation.onmicrosoft.com header.s=selector1-cognexcorporation-onmicrosoft-com header.b=fgetiguP;
 spf=pass (domain: cognex.com, ip: 40.107.244.137, mailfrom: oliver.westermann@cognex.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WX+mZE2aZ6l1kGms+KRbbgkE2kr0FNPb2U1Pr0435pmett4Z7j7GISPDy9JXseGMNAeKf9THNerlW1l18K594VW0NcxdkVJIklbUHVZ4mLV3c/uyj3TuOTGDBIL6t2wNWo0ryI9FVkZPbIql+/XsKEDb/4JCUUO8bB6mz+fb9mXvHsJ+gQSDd4lNzqlBDfq/5SaSjhM6lDXDk61utT3UgqJjd0R4ZUcQxTWPRZiW0T0ZN+1RB8TRwFU+6iGZk2+4xBDz9TgpPL29tLH1wnkGs0HHo2KoFtx+s5YCXyc0NJbsiMmlEedsgkguNivqzlzDm9+/OSt5bJ1I2n+2qmcImA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LktF/J66YC6E3SmTAB6IA2UNqjaBiuWGnRn9b9W2a00=;
 b=AUZ1at+MNzMWDTwDSzDAMvknukoDtKMCq3hcFHUQF67VIyyUReJtFqHrGErR1KpJZuloEWuq9aXuTxPcPp/sogqEj6sJ2g72Lvp7iCO2436HpX5u389GzLnIAT4uA7lhu9J/NnCQxuMNHQVOPQ4rvY+LD8ANZWo2Aff8W/4ZEHHs2+CRfkXl9w4iKN3lzH+d08tuiyCmjxm2NyHmKBoZvuTAKgnJzXcQ5fecBsWtYy914ULcyMpYDRacloIOKUKshdwLoMW2bRzqn6LsE+oDVtuhwxvSMnd9bB84p+B3GUii5pFkYW6lU9rB/gW8uFnGwbuk2aGNDbOfRK9kq4LBdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cognex.com; dmarc=pass action=none header.from=cognex.com;
 dkim=pass header.d=cognex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cognexcorporation.onmicrosoft.com;
 s=selector1-cognexcorporation-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LktF/J66YC6E3SmTAB6IA2UNqjaBiuWGnRn9b9W2a00=;
 b=fgetiguPmGM+4Fg6ezSd1HbklhxInMg5lCA7NyS3VL8sh7wc28iqG/2VqUA9jpXbBOPaRdUouDnDONAhupBHqwAhPm/wazKYl9lF/WzjL9tezrgHnX93kGuNEL3TmktnnJeOSzuduxuz36e+5n7gbwGDByFDKdtJ79XjAO2jB4Y=
Received: from MN2PR06MB6573.namprd06.prod.outlook.com (20.180.25.148) by
 MN2PR06MB5679.namprd06.prod.outlook.com (20.178.244.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.25; Tue, 11 Feb 2020 11:08:35 +0000
Received: from MN2PR06MB6573.namprd06.prod.outlook.com
 ([fe80::2106:f618:fa49:1f3c]) by MN2PR06MB6573.namprd06.prod.outlook.com
 ([fe80::2106:f618:fa49:1f3c%3]) with mapi id 15.20.2707.030; Tue, 11 Feb 2020
 11:08:35 +0000
From: "Oliver Westermann" <oliver.westermann@cognex.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: How to figure out what triggers the rebuild of a certain task/recipe
Thread-Topic: How to figure out what triggers the rebuild of a certain
 task/recipe
Thread-Index: AdXgy5lJn4sj07sBSWi5A/8LY3s1kQ==
Date: Tue, 11 Feb 2020 11:08:35 +0000
Message-ID: 
 <MN2PR06MB65733215FB8BAEDDDDB8D4A486180@MN2PR06MB6573.namprd06.prod.outlook.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Oliver.Westermann@cognex.com; 
x-originating-ip: [212.117.79.11]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2a069897-c3b7-4c30-3a64-08d7aee2bd1c
x-ms-traffictypediagnostic: MN2PR06MB5679:
x-microsoft-antispam-prvs: 
 <MN2PR06MB5679FD96AE4080BEA71488A886180@MN2PR06MB5679.namprd06.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 0310C78181
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10019020)(4636009)(366004)(396003)(39860400002)(136003)(376002)(346002)(189003)(199004)(5660300002)(52536014)(76116006)(71200400001)(26005)(66946007)(66476007)(64756008)(66446008)(33656002)(9686003)(86362001)(6506007)(66556008)(6916009)(186003)(7696005)(2906002)(478600001)(55016002)(4744005)(19627235002)(316002)(8936002)(8676002)(81156014)(81166006);DIR:OUT;SFP:1102;SCL:1;SRVR:MN2PR06MB5679;H:MN2PR06MB6573.namprd06.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: cognex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 imOiStfQLX5oy9xw48dmKr7SUUxbthneVFpSgYwarf93rAYiWeM/ZynmULXoev9UrQKpsV5LunHfwkVJBilGtzbirZbcS2AEYyfqv7eCQzLLVsC1BfMTdFYptFFERVez3LEm4TPAWNB0h/9lCrRWP2qFaPDmlCi3/VV37wN0Qk1LuWM9w8NH9o3SV46rdhOfxHauSt+nnqgfL0A/NBgd9gCpSW1Rxect01PGEx1vxgqnFrQDLYGL8Y7YEnrt536kpUs3fbRM7t3w11e2a7lR1PD7KWt/6qRMEVFVJxfOywLNLiEBn3+5rPdBQHyrVGSgdDZb4NjSZ0EtxCF3+2+XycxhrVea/HmZQCUQHcHAW/dSWP/upAhM7Cxqgkyrp8vBDjlTZhjN9aS0LbTpn0UcOAKlDZQxaRIgvAmFnuB47m+PMc+25JKV6YIzyUuMpe2D
x-ms-exchange-antispam-messagedata: 
 PhrNV0SWcX5CaV1pGyhe4ZlK/Hh/8dhK5ewn2+8PaMEZs546HEM+874QeMlda52WJB8IoEBU3OBeL/QyLI4LAou7frjYQXBjnI9L60chFo99iScXEe/R1CJG8z+olr+aKR3LUc0ZYJ9XoJWdYY2/NQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: cognex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a069897-c3b7-4c30-3a64-08d7aee2bd1c
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Feb 2020 11:08:35.3227
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c12007a4-882b-4381-b05a-b783431570c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CKUZgvhcx/r3O1Jl2kEONOcqD9cJN1TC4drb8f3mL6ko5pGJtZkyd0Wd06ObH+pfB0VtrbqDFqLBG+izXBxivfNenXNB3WOLfnSuqGkIQj0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR06MB5679
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_MN2PR06MB65733215FB8BAEDDDDB8D4A486180MN2PR06MB6573namp_"

--_000_MN2PR06MB65733215FB8BAEDDDDB8D4A486180MN2PR06MB6573namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hey,

I'm debugging a issue in the sdcard generation recipe of a NXP provided cla=
ss (image_types_fsl).

So I'm only interested in their workings of the do_image_sdcard step, howev=
er yocto rebuilds the complete rootfs on every call.
I already tried limiting the tasks/commands by going to to run

$ bitbake -f -cdo_image_sdcard my-image

However it still calls all the do_rootfs steps before going into do_image_s=
dcard.

How do I best figure out WHY it does this and how to I limit it to only run=
 the do_image_sdcard?

Best regards, Olli

--_000_MN2PR06MB65733215FB8BAEDDDDB8D4A486180MN2PR06MB6573namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" xmlns:m=3D"http://schema=
s.microsoft.com/office/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html=
40">
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
span.E-MailFormatvorlage17
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
<body lang=3D"DE" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hey,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I&#8217;m debugging a issue in =
the sdcard generation recipe of a NXP provided class (image_types_fsl).<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">So I&#8217;m only interested in=
 their workings of the do_image_sdcard step, however yocto rebuilds the com=
plete rootfs on every call.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I already tried limiting the ta=
sks/commands by going to to run<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">$ bitbake -f -cdo_image_sdcard =
my-image<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">However it still calls all the =
do_rootfs steps before going into do_image_sdcard.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">How do I best figure out WHY it=
 does this and how to I limit it to only run the do_image_sdcard?<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Best regards, Olli<o:p></o:p></=
span></p>
</div>
</body>
</html>

--_000_MN2PR06MB65733215FB8BAEDDDDB8D4A486180MN2PR06MB6573namp_--
