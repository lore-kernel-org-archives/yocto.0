Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.64146.1595879497569663771
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Jul 2020 12:51:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intertechengineering.onmicrosoft.com header.s=selector2-intertechengineering-onmicrosoft-com header.b=oIxTBaQh;
 spf=fail (domain: inea.com, ip: 140.211.169.56, mailfrom: sdw@inea.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2943BE01F25; Mon, 27 Jul 2020 12:51:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FORGED_SPF_HELO,HTML_MESSAGE,RCVD_IN_DNSWL_NONE,SPF_HELO_PASS
	autolearn=no version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [40.107.243.130 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (mail-dm6nam12on2130.outbound.protection.outlook.com [40.107.243.130])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EEDC9E01F22
	for <yocto@yoctoproject.org>; Mon, 27 Jul 2020 12:51:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bOmcb16f28OJMYVVj4Hh150QEapv1hyovOvE+qufMwWcL1LHzt4QsgTU7zzGcTuLx/HoZJP1pRfR9dKheZwqnOYOxhQEwECFc2C0oSSjNnqyA0JIz14DtOKKwe19aNz3FclZmEhxfKy4u8lxPzmuuOy/2U0W7VMTIoqfa5Piz2ahWt6G/W+E0+LQyqtDONHd9bui2HuxTeOZuyM1xMit5Sk8EO07WMXWoLMSQg5JCB6lkFqtgjZN/tafHcZNu9pHvbXjzlkuNUgaiOjLDMb6MWPlaleYOerUjmuu9mVpx5HEZGjxJxMbuui/Sq5IcWzGsrIG9ce+JBFhpwS7KOE1cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=COK/9VGq0Cgw34nBPxDe8rYUYhtkpaBqGaBiVil4e3s=;
 b=REqZYSrqqqo++KuTfJ2QsBBMLLhm6JmfLRKTW8Am8gcwv3EyY0fxhPmwKMpV4/sUs0Fs/+TbEQD+1Rj5juED045oApgfufJu1DQt2M7RP8H0L6DAKRmVEuxWel4p3JBG7Db0FRqBAcjc0foi3UI0vrf9JZwqu4p2/9euiIgNsa4Jfu8Ol4gUCIG/SyRMr5WlvYXguzDZq4G6Daicn6phtjkgypRwcvTe2kJPWK2LjadPW4x5OmhMwBDSuQHRDWtpow+4eHjuOOHq4/Bx6cwQCKjgKeuzXONsfYVipr6yK4gmw2VLjjQkG5ihH4o/ek9qWr2Z6KftCOEDO1u7XkFeOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=inea.com; dmarc=pass action=none header.from=inea.com;
 dkim=pass header.d=inea.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intertechengineering.onmicrosoft.com;
 s=selector2-intertechengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=COK/9VGq0Cgw34nBPxDe8rYUYhtkpaBqGaBiVil4e3s=;
 b=oIxTBaQhrj6GbCSNx7XB/s3f47aTLNsyWKXH9EywvLleThVNXB9mZdgzsIKHXXFYnfoTs6jXYNWOh+o8/Kh0OR+O0lYAaQ3eangZYxw+M4ZM4jTF8+H3bKkaSKCC1LBrtUlqUFIQWqfvtBbLlR91PBrU577AnvJjkhb8MaNfM1g=
Received: from MN2PR17MB3024.namprd17.prod.outlook.com (2603:10b6:208:e3::18)
 by MN2PR17MB2944.namprd17.prod.outlook.com (2603:10b6:208:de::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.23; Mon, 27 Jul
 2020 19:51:32 +0000
Received: from MN2PR17MB3024.namprd17.prod.outlook.com
 ([fe80::879:1263:40db:4543]) by MN2PR17MB3024.namprd17.prod.outlook.com
 ([fe80::879:1263:40db:4543%5]) with mapi id 15.20.3216.033; Mon, 27 Jul 2020
 19:51:31 +0000
From: "Scott Whitney" <sdw@inea.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: How to enable preempt-rt in Yocto Zeus or Warrior?
Thread-Topic: How to enable preempt-rt in Yocto Zeus or Warrior?
Thread-Index: AdZkTy0e0WXgeqKER/megdrmqDgR/Q==
Date: Mon, 27 Jul 2020 19:51:31 +0000
Message-ID: 
 <MN2PR17MB3024CFBE1455A8B37E1D5FD7D6720@MN2PR17MB3024.namprd17.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none header.from=inea.com;
x-originating-ip: [2601:191:8500:6a70:ad21:62e6:cb28:84a0]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e1c7062a-4c5f-4dd9-44e6-08d83266762f
x-ms-traffictypediagnostic: MN2PR17MB2944:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: 
 <MN2PR17MB2944339F64B11A7C8B6B6B9AD6720@MN2PR17MB2944.namprd17.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 v6dngbgPO8XJOqObSGlGXemMZRJRZYCqbCbKZ1aeIhcJ5OOlJeOR47vA8kNQU4+b2/f5g+U0O9ehHeZnAmAiwUykgN+dF17A8FuFrokJpVzd6KrRp9zgzAa8xV/dcBKZ9I7ApvB+/nM/PC+1JelmP/FczC5xHeajr6qw0JRdEB5+1/pacp4HBlADERav0GCH7WQ8QeIMJs8Of9ag/tcgqH9sHKJlN1RbJHG4ZATS6RDN3esRuYitAs74gBmFfS9FRsHQtJOAmHkc2dfy0+WYbsch1gLCJOTQof3GmNk+vvhDI/yBO9sqwdYfP8e/2ELQeBysDAZeV3qEnHEUxBxqGakwo9+FqyC1H/XLoblK7Du5+LumWH/YsN5GM0+4lvMlW0Wmjr7Ma12P9BG7D8QkIw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR17MB3024.namprd17.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(376002)(136003)(396003)(366004)(346002)(39830400003)(8676002)(316002)(71200400001)(52536014)(5660300002)(8936002)(4744005)(33656002)(7696005)(9686003)(86362001)(508600001)(6916009)(66446008)(66556008)(66476007)(66946007)(2906002)(99936003)(55016002)(186003)(166002)(64756008)(66616009)(76116006)(6506007);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: 
 2e95/V6xzkXbyId9rkUMFxBrLGXIdrbfl1KgVAJNi/hq8sF79zvQu/ncxrv1AZBtlplhLzMhmmkd5e5DPfrb+n7hmcqLyNXxR3qNb4gXAq2Lq+/+Z7OKOEYAHm1ittreZ/9erA/mETb1Fhi64acXxcF3psaWOuz9r3z99a9dYmSXu/AYVUIdpo2AIujUMuuftP97tdnOEZ5oSQqJYGALFkirAJOC3nxkcozXwI0IgKEQC7k62fR2NltmeP166ZULbo5WfRzoPt0IGuxkU9zeij9iM2yIcpqK5MpzDqvKm/6xSrYmdODvIxv+amIjFoowJn+NUzqwkBqA1nDADeymFu+BcFmUNiJJLkRTxqqUPJn3YLbqrM5ZjZGvViWfFNxpFZ1l5LDreJq7RKpjxFSapox1k4YOM0eCaFdjHjj3J0bOoZ7BWyMqkP7HxXugVfmzV1QcMXvUJIlWbCoO9vP/DHX8cKZ9qZm5cRg4S23fmEHYqU9BNlLhD4fYYmRh4dI69OEHVUheO9UR75H/x88U+lx5rZYEcCvs4jr8NzZJUIfe01wctr3IH2dDiNNxFX6e
MIME-Version: 1.0
X-OriginatorOrg: inea.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR17MB3024.namprd17.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e1c7062a-4c5f-4dd9-44e6-08d83266762f
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jul 2020 19:51:31.8080
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 99c11015-7dbb-4c7c-ae43-1a26885adc83
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: swyfADE2Gd3r1nPNEjDtp7ZQl+0SyRSNjkcHleO9iUrmQSc5a4jaGUv3yoj+LytN
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR17MB2944
X-Groupsio-MsgNum: 50100
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_004_MN2PR17MB3024CFBE1455A8B37E1D5FD7D6720MN2PR17MB3024namp_";
	type="multipart/alternative"

--_004_MN2PR17MB3024CFBE1455A8B37E1D5FD7D6720MN2PR17MB3024namp_
Content-Type: multipart/alternative;
	boundary="_000_MN2PR17MB3024CFBE1455A8B37E1D5FD7D6720MN2PR17MB3024namp_"

--_000_MN2PR17MB3024CFBE1455A8B37E1D5FD7D6720MN2PR17MB3024namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Yocto group,

I'm working with a newly-released copy of Yocto Zeus from Variscite for the=
 i.MX8MM Mini, although the same option seems to apply to the previous Yoct=
o Warrior.

I understand that a Linux real-time kernel can be enabled by setting LINUX_=
KERNEL_TYPE =3D "preempt-rt".  Where does this option need to be set so tha=
t when I bitbake fsl-image-qt5, I get the Linux "preempt-rt" kernel instead=
 of the "standard" kernel?

Is there a specific configuration file that needs to be modified, or a new =
recipe in a layer?  I am confused and hoping that you can help.

Best regards,

Scott D. Whitney
Principal Software Engineer
[cid:image001.png@01D6642D.AAEAAA60]
Intertech Engineering Associates, Inc.
100 Lowder Brook Drive, Suite 2500
Westwood, MA  02090
sdw@inea.com<mailto:sdw@inea.com>    |     T: 781-801-1152    |     F: 781-=
801-1108    |     www.inea.com<http://www.inea.com/>


--_000_MN2PR17MB3024CFBE1455A8B37E1D5FD7D6720MN2PR17MB3024namp_
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
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
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
	font-family:"Calibri",sans-serif;}
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
<p class=3D"MsoNormal">Hi Yocto group,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m working with a newly-released copy of Yoct=
o Zeus from Variscite for the i.MX8MM Mini, although the same option seems =
to apply to the previous Yocto Warrior.&nbsp;
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I understand that a Linux real-time kernel can be en=
abled by setting LINUX_KERNEL_TYPE =3D &#8220;preempt-rt&#8221;. &nbsp;Wher=
e does this option need to be set so that when I bitbake fsl-image-qt5, I g=
et the Linux &#8220;preempt-rt&#8221; kernel instead of the &#8220;standard=
&#8221;
 kernel?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is there a specific configuration file that needs to=
 be modified, or a new recipe in a layer?&nbsp; I am confused and hoping th=
at you can help.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best regards,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b>Scott D. Whitney<o:p></o:p></b></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;color:#404040">Princi=
pal Software Engineer<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;color:#404040"><img w=
idth=3D"82" height=3D"27" style=3D"width:.8541in;height:.2812in" id=3D"Pict=
ure_x0020_3" src=3D"cid:image001.png@01D6642D.AAEAAA60"><br>
Intertech Engineering Associates, Inc.<br>
100&nbsp;Lowder&nbsp;Brook&nbsp;Drive, Suite&nbsp;2500<br>
Westwood,&nbsp;MA&nbsp;&nbsp;02090<br>
</span><u><span style=3D"font-size:9.0pt"><a href=3D"mailto:sdw@inea.com"><=
span style=3D"color:blue">sdw@inea.com</span></a></span></u><span style=3D"=
font-size:9.0pt">&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp; T:&nbsp;=
781-801-1152&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp; F:&nbsp;781-8=
01-1108&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;
<u><a href=3D"http://www.inea.com/"><span style=3D"color:windowtext">www.in=
ea.com</span></a></u></span><u><o:p></o:p></u></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_MN2PR17MB3024CFBE1455A8B37E1D5FD7D6720MN2PR17MB3024namp_--

--_004_MN2PR17MB3024CFBE1455A8B37E1D5FD7D6720MN2PR17MB3024namp_
Content-Type: image/png; name="image001.png"
Content-Description: image001.png
Content-Disposition: inline; filename="image001.png"; size=3837;
	creation-date="Mon, 27 Jul 2020 19:51:31 GMT";
	modification-date="Mon, 27 Jul 2020 19:51:31 GMT"
Content-ID: <image001.png@01D6642D.AAEAAA60>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAFIAAAAbCAYAAADve9g/AAAAAXNSR0IArs4c6QAAAAlwSFlzAAAO
xAAADsQBlSsOGwAAABl0RVh0U29mdHdhcmUATWljcm9zb2Z0IE9mZmljZX/tNXEAAA59SURBVGhD
5Vl5dFxlFb/vvW/mvckkzUynyUwy7bRNUyAQRdlTLOixFlxYRIo9p3isW12RTVkUT5wej+KuLC4g
KBwLQlFxAQSqHi3tlLYHtYTmADVpU9I2SdMss71t3vN3vzdJSxJKPfoX/U6n8/It993vd+/93ft9
I7LZLB2vrXPgrAVERoZONDdnR7e6/y0Onfp7a6gvfyqJwl7x3y5+Q80fyu+lpLiQeiI/66S3/5kq
5nYKqf8mlQbIoTHs1aII+TRiqmQYNeS6MVLDKfK8xaSHl5A73kJq5Wv0tvc9e1wDmW3vrgCsn3QO
nXMyxeddRaVRItcichx4p1Ig8m0qAshwWMX/BqlaLWmaQrMaiIoHLapU3plNbt5E3ZvpuAZyMrrO
W34N/e3p0ylSt4Q8YKhqghQlBjAxhT8+/uFDHpEWYhAHya8sB4j/mpAhgRweXhcqFDLgC9KEoGI6
vXTvGyqEq5vZtWtjUygk4kII7PHMPRN7zHav9Tr9JWvIMbeRKiJUcWbYPoAMRQhj4+RYF2eTWydB
5MkSyJGRlnYhlBxeImzbfgRdK48FyK6urkg0OrY8HDbCruv9c/78M18+lnVHm9PVtbE2GhWQGdbK
5dL21talvf+rzIn1miZ+YRj6slLJegp97z5SLrzrhc6Bc75J0dhXqcz0OKVpYTikVyGrvDLbtPXZ
qcMSSFX1moUI60KoZNvK4LEqbhj5xUKEHtV1jSzL/jjW/c9A1tUJGDX061CIdRErIPP/AmQsluO9
LtA0VUWUDs+4R1f9NpXHr4TntZJTPjxFUeFyOlE5fxVAfGKmtRJIRVHnqqoC7gQHELLWMTZNozkK
KKRctsHBtPMYlx11mud5yUCmBY6nXf8PmSxj+/a6ek3LxyoVH/tVemaSm01vLnUOLFkLjrz/VeNG
HRQa/VE2ueXHr6VPNdkoGSZVbALzvH6ezLy5c2cdgr3B7ujocHO5deFM5oQUuKUvGB8G63onaHB5
AGl7npsfHs7piUQH0l7Q9uzZuBimTIJ3h9Ppju6J/qmyEc6zDMPQhobcfCqlLqoateA4lcJUmf39
uRNclxoha2j+/I4Xp24MPDgnEhGt6Hf6+nq6OjpWVfXJ85oE79H3/Zd4HeYmIhHSkRP2Tcrp2fkg
tZ50A4Vq2skuocwEiGZ+C+3yriUk66MCCQ9IsxdUKhV8XAlUPt/y+KJF4VbTNH+2Z09udzrd+mWE
RKanJ/egroubbdvdoKpivmU5sDCFwD1PjY1VtiUSdAkUnA+O+6Hvhy4OhTQFnu7s3p17PBRyP9TX
J+xUquVpyJ5nWeYPeno2FWMxvdO2Kw+kUv75iI4202SZSo2uG3/L591nIPODbBRV1X/gecp7hNBQ
0nk2ZD4KmR8DEIXOzk71wx++oFPXw59CzmzkvUDnrl27cmtaWztyiJgkwlqDceAtnt3bu/lW6Lja
95VIb2/u8wsXdtzH+852jLqdA+oPkXTuluHsWnkkmNXZjq320aJDeqTn+fBI+c3EsLe/f2O974u3
Iecbqqp+BeGuY2NSDr4vcl0Tri/qsSIalAfEpwJDUfyDnCxqa0NPRCJ6W6FQLgHwYWxgXjRqXJLP
lz5dV+f+BGvPhWwQj3ZdJBLKsAfatlWB7AT6kRoDmXglnukA6+N54qlIJLygWCznIXMcMtORiHFF
oWBuxZzvrl797q9Ho/qNbATbdpieFtbUGO2eZ3I4vgUfBhJjrg9j/RyJtYa9Exmcy8ZLMS6BlM2l
9WTlv0bRRBKlzpeQoad5/lRQBSyprF59YRLujjF/ZGhIDDU30yJsJhSEuvKc49jXIONdC3BWwqLF
fJ7+EY+7p1iW+F1trb6sWDQ3jY5alxDFi9Fo/jMMIjKjrar0LiHcHbYdeoGNhQ282TC8eQBIdd0K
khzNNk37Jt/3dum6x4CsRYLZAEDOhcwnR0fNKx9+eEP+Ix+58CYYYkGpZJYRMUsjkfhey8q/CJ3n
YM1JADoG41yDd8BTK7fV1/d8YXx84W0Yh3fK8RqMp+EUeCcnG++nkHM/tvc4xpugz/4jgQFXjnUO
dfydSofeTHcsv5OyW6biNu1vsWbNsqhtT0b/IPNhb++mTAgxydi6rn8DSpCtCAWPLQqwD7S3L0XV
T4QwTwSe6u9G3zj3IUzO5j4YoRfhsjno22IF85SDoIMUhyZ7HQz0yYULz31gQiuUUxoMweBw/dvL
MteuXYq/cmfzfADTDV1k/YawlqEGWAbAmSdCXZ2NoyjeE4nEKmd8fLPJ74Ec0zD6HMdpmcv6Q689
0Os65nxQjAh0VabXzZ7/R2jxcDa7lj3sdRtC20j4vhuvVvEy0fi+mtFAKvAWDxx0MJCiLpJOSyTn
cLgpimiqeu1kcYuhFPMTpMR2797yTYzXQdn5VZLnbNnIG0RWNsNhb+ORGsbjI3PgkQ0cHQBEvqfa
klWZc5jbMMwGlFEEjtvjeepcLpfA1z74eCgAWLm7XDYfgxPmA2BznIC4SdAaGloQdTQ7qFRI5oUj
2+mN0U0j5XJ171NHp/8tymV3No6SsAwP+jJ74VmWQ2gjCON9gaew1zKSitwgvIBzWJzDCfuR63K5
nGhq8psR/sw9ScMI38D9nJA4rCCX553Az5AzPDJCY+n0YaXKZQEeozgSCRtTbri/v9/AVyMffyEz
A5k3MoDgOuZrfvcefLWxTDwXMVcCiYzO5ZgsyQL6umDiTQe4LxTy0qg4NBcbwTtfmQrNmcnImno1
fjsdkJcXr9sEhDSx9wXepsjilz2oGooDHF79/duStu03MGgY3R1IFY0IlYlwkhZtaHA5SSUQZlwS
/d5xyr9AQnLAjSVwkgiH3e3gVXCpbAdXrNhQ6O7m0A2apnnNoBRkeQ7RCd7qgYcK6cUo+h8qlSoP
wYtsyGS+FLru5iDzA6wv/g2b5vRiG/RVi4MG5MjXSAOxF/NdBIDk9qpDSH/qvR26Eb9+rJR/EuQ6
DeSZUOWszeQPIGUNKRfB4k3BZF++AF6Lk49Sx2GAedIjQdSZ4ETj+PCGqpWpARjMDozgPdXScu5v
QQGzXVd9q+NQcd8+UUilaG5VkVe6u7Myrg43tZmN6jiWo6qVamiLRjhbbdWwT8DTIHNbg+vapzqO
mofMcjJJC6pFxX4YvojKIVpTo16BLB8uFt0cakUO0TkBDakTYSyjDns9hPGBCR0629rUTx4Kfc+o
jWl2efwy9P9lJuCm9iGk/XnMj+wFsFgVfWUiDKT1EAYpLryZzDXNlWGMuTIL4mkMoVwtaJmrNFH1
KCkLnPfFWbOiN42PF+3mZhfliJgdKDGd4KHL/CChKYOoSqRxLIvSOHbLUxeOshJcGC8bi9V9emys
OJ7JiFb8jbJJNqmvYdAC1JP36rrOPL+mXKa/whEiQWXiVvMAyahD1+DISHySYtYMn/hloy52TnF0
EKioK+GdX00feOx1uVKAi0DCXDZ4Lty9Dzynp1JKY/DSILGgP8NhgNSHBBGE3BHhj5odF6DBvAgU
rtKEarTBusjiZ/FZHzrvEMIYBbc1VUutI5OJRAEOM68afpyR5RUM1tWwwRhIyA9X+fq0IDroecNo
gcyXZwUJivRqOYcaWCGUULzuGT44MN0wd8MYEmzMbQ7oQAF9tXN2JIB2PnTstMsF8iouwSsT5fwo
3yHcWjXUa34htP129gLoapZK7oHmZoGNUjLwtsAD4CmLw+EQrGsVkSAOVROEx+EERVLxuLERgN0L
znoAXGTj5IOrErr9scfuuQWFL7xQevAd6KtB6CJJyUQ2jXvYQaohuhB+tQUy7wSv/gnlGaICJ1Kq
3IPyaBjPpwTZ1rsrkUggI7/0PPRYjHe8D0nlOQy0sRfn884zKJe6UaZdiFMMoqPsVSqG9HQ0HEV5
j4Hn96cubwIM96tQ0LFxLoEirlUmVVGvHo5d/tPE6CMjRwOTObICL+HQfJn5BUeqNui8HyEBI6vy
fAwFcbRy4YnKjvXrN4xjHi4U/HtRwlwCSy9AAf4mHPFSUHoQm/8cQvtWXQ81ICE0wIvHUJzfyUcw
yD4Png3ZFnjVnXY5As66C0nqgnBY4NSin2pZbiPfjQKIq+HVa5GxU9hfCvoegtG/Dw6Wlwsw4I1Y
h9pXOwOZ/S042XCyexoG/UTgCBRFQtkPh+iPRMyB4PqPipCz36/IkxF+XfAeDBuzMmYBeFWt6ToW
vDKeMr3hL2LKl44KJMj4PD4TxeNBKA0N9eyoq8u08fOKFWvy3d3dCJHKLaDtbLEYt/BjmYx5XELs
AKmfXl+vnA6uUiuVuu3cD8Duxln7cZyE2qEePMDeCYClZ59xBm154QW7DV7tQzYy9uQ9htQRieTZ
rq5tb41G3dP4GgQZeRv3t7R03AaZj+Ji5GTIhG1cljl5GsHzrnXr1i05++yWs0KhyiwseQWynp/Y
OLz6e1h7e6FALpzAXLasTV2//q53FF8ZovalF4/3N77/nkht/flm/jCIE2sdhLka1q8emHPpfcmD
j77mUVFA8KvqJNyWMD/JU8PERtlTA/BebRP0H0LP01MtVQVuGgeOjnbYkMGfSdlT17a3n8l14JMz
yORsO61wnpi3atUqdoRNU9cFei/FNc5h/bEvb+Ikti952dcB4ketwuhMS6ni2qRHYzWWO3obJlww
4yR0Hte/2fSnLr3ZqKm72TYLfCeLa0hwZjWsg59p5JUb2eU8g7l8b+NFn503+Ic7ZwLzuAUS4fyN
+jnpm+wSrg2QDcHBNlJ1AXncxlmNseJMhHqcakU4gh+zwhSJ1N+BzP4cyqHcVDCPOyCRgeOm4V0v
VG15YWTwO+Dw54Tr9GkiNCRMMW4aAa2halANcyRaEKHZilVOF63CyWGj9jxcvd4OvlwNvuw6Eszj
Csjh2ErdNNyMcL1fJQ/+5pbX4rsj+g+i0ucLmX/gg9sg+tZw6vK5LrkL+1NX1qYP/FLegnH7D7B8
JHpNzT1yAAAAAElFTkSuQmCC

--_004_MN2PR17MB3024CFBE1455A8B37E1D5FD7D6720MN2PR17MB3024namp_--
