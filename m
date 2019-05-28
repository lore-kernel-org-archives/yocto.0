Return-Path: <Georgi.Georgiev@woodward.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C728EE00D38; Tue, 28 May 2019 04:48:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [216.17.208.201 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 387 seconds by postgrey-1.32 at yocto-www;
	Tue, 28 May 2019 04:48:53 PDT
Received: from Mail1.woodward.com (mail1.woodward.com [216.17.208.201])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3863FE00D31
	for <yocto@yoctoproject.org>; Tue, 28 May 2019 04:48:53 -0700 (PDT)
Received: from pps.filterd (CoCo-PMSGA1.woodward.com [127.0.0.1])
	by CoCo-PMSGA1.woodward.com (8.16.0.27/8.16.0.27) with SMTP id
	x4SBasWn017155
	for <yocto@yoctoproject.org>; Tue, 28 May 2019 06:42:25 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=woodward.com;
	h=from : to : subject
	: date : message-id : content-type : mime-version; s=20190114Woodward; 
	bh=db1Mkczahwl+cjbTQycTJ3zH08EtlfanPB24OCRhfkQ=;
	b=WlbjCzGvUFNEkqKVm2h/1TaNI8j7yHgwDFJ2vxiBjHb2AR2oP5mYZQHdNMSAoA0yyVSD
	oISHPozMRwsnh+S6BsdIMMQfDQIjKlH273PFHnNW7a4HPKkzL/tOKKuvWItziuTSbA/O
	qPrsr7+JEUFZ2yVjq+Fgxs24C1bFSrsL6S1RyCG64mnklwRsCb87ScQa80j+TCDmS8H4
	aGR5tUm0c3gdgMH+51lWFpveEfl6uNFSTl80ggRpdRFUobx8WfWoY39lYBIA2p1eAAJI
	69rWMewpqVvheC4HPs2nX2+Be4FMb7YbedspJv3rFvlKZciu6zPGhmmNMBKT5pdIwKnf
	gQ== 
Received: from coil-exmb4.woodward.com ([10.51.100.67])
	by CoCo-PMSGA1.woodward.com with ESMTP id 2ss402810r-16
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT)
	for <yocto@yoctoproject.org>; Tue, 28 May 2019 06:42:25 -0500
Received: from Kemp-ExMb2.woodward.com (10.25.100.73) by
	COIL-ExMb4.woodward.com (10.51.100.67) with Microsoft SMTP Server (TLS)
	id 15.0.1473.3; Tue, 28 May 2019 06:42:15 -0500
Received: from Kemp-ExMb1.woodward.com (10.25.100.72) by
	Kemp-ExMb2.woodward.com (10.25.100.73) with Microsoft SMTP Server (TLS)
	id 15.0.1395.4; Tue, 28 May 2019 13:42:14 +0200
Received: from Kemp-ExMb1.woodward.com ([10.25.100.72]) by
	Kemp-ExMb1.woodward.com ([10.25.100.72]) with mapi id 15.00.1395.000;
	Tue, 28 May 2019 13:42:14 +0200
From: Georgi Georgiev <Georgi.Georgiev@woodward.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: building SDK fails due to libssp missing
Thread-Index: AdUVSNIN4/7bu6p9STaR/Ltc2z+GeA==
Date: Tue, 28 May 2019 11:42:14 +0000
Message-ID: <9de26f1c7ddd4e6aa4f89b3a0ff4757b@Kemp-ExMb1.woodward.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.138.108.100]
MIME-Version: 1.0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=737 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-1810050000 definitions=main-1905280077
Subject: building SDK fails due to libssp missing
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
X-List-Received-Date: Tue, 28 May 2019 11:48:54 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9de26f1c7ddd4e6aa4f89b3a0ff4757bKempExMb1woodwardcom_"

--_000_9de26f1c7ddd4e6aa4f89b3a0ff4757bKempExMb1woodwardcom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello community,
Recently our project switched to yocto 2.6.2 "thud" due to a lot of request=
s from SW team for too many package newer versions.
The issue is that when building the image with populate_sdk command it fail=
s with the following:
.../tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-perl/5.24.4-r0/recipe=
-sysroot-native/usr/bin/x86_64-pokysdk-linux/../../libexec/x86_64-pokysdk-l=
inux/gcc/x86_64-pokysdk-linux/7.1.1/ld: cannot find -lssp_nonshared
.../tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-perl/5.24.4-r0/recipe=
-sysroot-native/usr/bin/x86_64-pokysdk-linux/../../libexec/x86_64-pokysdk-l=
inux/gcc/x86_64-pokysdk-linux/7.1.1/ld: cannot find -lssp
Any suggestions?

Cordially,
Georgi

--_000_9de26f1c7ddd4e6aa4f89b3a0ff4757bKempExMb1woodwardcom_
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
<p class=3D"MsoNormal">Hello community,<o:p></o:p></p>
<p class=3D"MsoNormal">Recently our project switched to yocto 2.6.2 &#8220;=
thud&#8221; due to a lot of requests from SW team for too many package newe=
r versions.
<o:p></o:p></p>
<p class=3D"MsoNormal">The issue is that when building the image with popul=
ate_sdk command it fails with the following:<o:p></o:p></p>
<p class=3D"MsoNormal">&#8230;/tmp/work/x86_64-nativesdk-pokysdk-linux/nati=
vesdk-perl/5.24.4-r0/recipe-sysroot-native/usr/bin/x86_64-pokysdk-linux/../=
../libexec/x86_64-pokysdk-linux/gcc/x86_64-pokysdk-linux/7.1.1/ld: cannot f=
ind -lssp_nonshared<o:p></o:p></p>
<p class=3D"MsoNormal">&#8230;/tmp/work/x86_64-nativesdk-pokysdk-linux/nati=
vesdk-perl/5.24.4-r0/recipe-sysroot-native/usr/bin/x86_64-pokysdk-linux/../=
../libexec/x86_64-pokysdk-linux/gcc/x86_64-pokysdk-linux/7.1.1/ld: cannot f=
ind &#8211;lssp<o:p></o:p></p>
<p class=3D"MsoNormal">Any suggestions?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Cordially,<o:p></o:p></p>
<p class=3D"MsoNormal">Georgi<o:p></o:p></p>
</div>
</body>
</html>

--_000_9de26f1c7ddd4e6aa4f89b3a0ff4757bKempExMb1woodwardcom_--
