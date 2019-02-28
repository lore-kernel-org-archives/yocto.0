Return-Path: <stephen.lawrence@renesas.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F2C17E0090C; Thu, 28 Feb 2019 10:05:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.107.141.110 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 378 seconds by postgrey-1.32 at yocto-www;
	Thu, 28 Feb 2019 10:05:52 PST
Received: from JPN01-OS2-obe.outbound.protection.outlook.com
	(mail-eopbgr1410110.outbound.protection.outlook.com [40.107.141.110])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA805E00872
	for <yocto@yoctoproject.org>; Thu, 28 Feb 2019 10:05:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=renesasgroup.onmicrosoft.com; s=selector1-renesas-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=tS5teJGlkb9okJ6VEcezt6v1kjL80PEHD+IiIqtz3Tc=;
	b=Y4V0Y7ZsOVRct3z5LxhiqBPfLVHS6a7zJK1f/zq9ySNaWvNNhd0R+sRfgAgjyamkUcOFt7o5JxSuz9DlhquT6Fp4Yy/JNT6fSoAaddGU0QsUmB+nXCSZjnBA5t/7cyVC8Lcp2efang8hD5RhxQtvCDAteoifDpBhZjKxraZH+h0=
Received: from TYAPR01MB2031.jpnprd01.prod.outlook.com (52.133.179.12) by
	TYAPR01MB2608.jpnprd01.prod.outlook.com (20.177.105.76) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1643.14; Thu, 28 Feb 2019 17:33:17 +0000
Received: from TYAPR01MB2031.jpnprd01.prod.outlook.com
	([fe80::59a6:f906:ad87:bcb7]) by
	TYAPR01MB2031.jpnprd01.prod.outlook.com
	([fe80::59a6:f906:ad87:bcb7%2]) with mapi id 15.20.1643.022;
	Thu, 28 Feb 2019 17:33:17 +0000
From: Stephen Lawrence <stephen.lawrence@renesas.com>
To: Carlos Pozos Ochoa <A01630030@itesm.mx>
Thread-Topic: ROS support on yocto project
Thread-Index: AQHUyb3x+/MIsWfwPUW2Gq12b65fwqX1f2jw
Date: Thu, 28 Feb 2019 17:33:17 +0000
Message-ID: <TYAPR01MB20313964FC084598A14F360B92750@TYAPR01MB2031.jpnprd01.prod.outlook.com>
References: <SN2PR05MB27829108D4A8ED36D600A930C17E0@SN2PR05MB2782.namprd05.prod.outlook.com>
In-Reply-To: <SN2PR05MB27829108D4A8ED36D600A930C17E0@SN2PR05MB2782.namprd05.prod.outlook.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=stephen.lawrence@renesas.com; 
x-originating-ip: [193.141.220.21]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 25295859-490c-43a3-0ef1-08d69da2d389
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600127)(711020)(4605104)(4618075)(2017052603328)(7153060)(7193020);
	SRVR:TYAPR01MB2608; 
x-ms-traffictypediagnostic: TYAPR01MB2608:
x-ms-exchange-purlcount: 1
x-microsoft-exchange-diagnostics: 1; TYAPR01MB2608;
	20:aDaj5hm85/zjjVDDRcodebIJRL/IkHRGxVLHapwy6GKZXYs2J4XFqM1nXs4AUInxR8TCc2ij/kC5WAChbaMCexwp00LVDPScNCi8VbA2A2GoQnP3cd786rNMkQyZbqUSEbvWsCaIsVu9qr9+YXs/VzykGB2AzgR7FXi0vFyTKws=
x-microsoft-antispam-prvs: <TYAPR01MB2608007C45A75508082D1DB792750@TYAPR01MB2608.jpnprd01.prod.outlook.com>
x-forefront-prvs: 0962D394D2
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(366004)(396003)(376002)(136003)(346002)(39860400002)(189003)(199004)(4326008)(7696005)(76176011)(256004)(9326002)(33656002)(99286004)(71200400001)(97736004)(71190400001)(186003)(102836004)(74316002)(7736002)(296002)(229853002)(316002)(53936002)(606006)(66066001)(478600001)(81156014)(26005)(81166006)(476003)(5660300002)(446003)(8676002)(6436002)(6306002)(236005)(44832011)(486006)(55016002)(54896002)(105586002)(106356001)(9686003)(6246003)(68736007)(14454004)(53546011)(6916009)(2906002)(6506007)(8936002)(52536013)(25786009)(966005)(11346002)(3846002)(86362001)(790700001)(6116002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:TYAPR01MB2608;
	H:TYAPR01MB2031.jpnprd01.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: renesas.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 4rI7AstvQfMyIyx/A8rBHsdOwo9veQ7IwVJQatC+et+aoSEpThcCuREWagBu0h6QOOqZrjkUi9tqzzMS1sXU3YFbXUTaI/dJAGBBOXMQn01je5OOcTefkB0PwFaEYYNWplr+5bI/MNvFNgv2ZftE6LIkp4eMM9yXdbKf3NEJhvw/DVxawQkqyxEazVEpxNg84YQiMdM+ztg9G6cupPU8kvXR2tVpOd/L+3dcsT+H7CNgYEUdLyR+DKoSBeBuEIe2Ec+hoB/nPw9u9AyZFE/HqCLIu2lDTLtRlp0Q2Dn8HnwljQO42KpRSbsjigaI6sbAnki0aLlA5q4orCHxjybfePMXEFIi5p8YMVi+8NK/tAXtlSv+1sYMkDH0PK9UmZfSa/+ObyK8rTd5Um2mxtDZ1kjT0t4htDF/segNHgz1OFY=
MIME-Version: 1.0
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 25295859-490c-43a3-0ef1-08d69da2d389
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Feb 2019 17:33:17.6770 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYAPR01MB2608
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: ROS support on yocto project
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 28 Feb 2019 18:05:56 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_TYAPR01MB20313964FC084598A14F360B92750TYAPR01MB2031jpnp_"

--_000_TYAPR01MB20313964FC084598A14F360B92750TYAPR01MB2031jpnp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Carlos,

When you say ROS do you mean the Robotic OS?

BMW Car IT have a yocto layer, with MIT license, for cross compiling it her=
e:
https://github.com/bmwcarit/meta-ros

I'm not familiar with it but it seems to be actively maintained and as you =
are using an R-Car M3 board I assume your project has an automotive flavour=
 so the layer might be a good fit.

The readme has details of their community.

If you get somewhere please consider posting some notes about using it on R=
-Car somewhere. If there is no where obvious there are general notes about =
using R-Car in oss on elinux.org.

I would be interested to hear how you get on. I work in the oss Genivi Auto=
motive alliance (www.genivi.org)

Regards

Steve

From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> On Be=
half Of Carlos Pozos Ochoa
Sent: 21 February 2019 08:26
To: yocto@yoctoproject.org
Subject: [yocto] ROS support on yocto project


I recently acquire a Renesas R Car M3 board which runs on an embedded linux=
 image build by means of the Yocto project. We are currently using YOCTO 3.=
9.0. We are looking forward to implement ROS kinetic libraries on this embe=
dded linux. Does the yocto project supports this libraries? In the case it =
does, is there any special process to install and run them? Or is it work a=
s a normal linux distribution?


--_000_TYAPR01MB20313964FC084598A14F360B92750TYAPR01MB2031jpnp_
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
	{font-family:"Segoe UI";
	panose-1:2 11 5 2 4 2 4 2 2 3;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
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
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US">Hi Carlos=
,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"><o:p>&nbs=
p;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US">When you =
say ROS do you mean the Robotic OS?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"><o:p>&nbs=
p;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US">BMW Car I=
T have a yocto layer, with MIT license, for cross compiling it here:<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"><a href=
=3D"https://github.com/bmwcarit/meta-ros">https://github.com/bmwcarit/meta-=
ros</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"><o:p>&nbs=
p;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US">I&#8217;m=
 not familiar with it but it seems to be actively maintained and as you are=
 using an R-Car M3 board I assume your project has an automotive flavour so=
 the layer might be a good fit.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"><o:p>&nbs=
p;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US">The readm=
e has details of their community.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"><o:p>&nbs=
p;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US">If you ge=
t somewhere please consider posting some notes about using it on R-Car some=
where. If there is no where obvious there are general notes about using R-C=
ar in oss on elinux.org.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"><o:p>&nbs=
p;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US">I would b=
e interested to hear how you get on. I work in the oss Genivi Automotive al=
liance (www.genivi.org)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"><o:p>&nbs=
p;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US">Regards<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"><o:p>&nbs=
p;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US">Steve<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"><o:p>&nbs=
p;</o:p></span></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0cm 0cm 0cm =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">From:</span></b><span lang=
=3D"EN-US"> yocto-bounces@yoctoproject.org &lt;yocto-bounces@yoctoproject.o=
rg&gt;
<b>On Behalf Of </b>Carlos Pozos Ochoa<br>
<b>Sent:</b> 21 February 2019 08:26<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] ROS support on yocto project<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div id=3D"divtagdefaultwrapper">
<div>
<p><span lang=3D"EN-US" style=3D"font-size:11.5pt;font-family:&quot;Segoe U=
I&quot;,sans-serif;color:#212121">I recently acquire a Renesas R Car M3 boa=
rd which runs on an embedded linux image build by means of the Yocto projec=
t. We are currently using YOCTO 3.9.0. We are
 looking forward to implement ROS kinetic libraries on this embedded linux.=
 Does the yocto project supports this libraries? In the case it does, is th=
ere any special process to install and run them? Or is it work as a normal =
linux distribution?</span><span style=3D"font-size:12.0pt;color:black"><o:p=
></o:p></span></p>
</div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
</div>
</div>
</body>
</html>

--_000_TYAPR01MB20313964FC084598A14F360B92750TYAPR01MB2031jpnp_--
