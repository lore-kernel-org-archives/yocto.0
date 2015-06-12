Return-Path: <abhinavbipnesh@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 94C6EE00A28; Fri, 12 Jun 2015 04:15:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [198.152.71.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from de307622-de-outbound.net.avaya.com
	(de307622-de-outbound.net.avaya.com [198.152.71.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2ED94E00A0A
	for <yocto@yoctoproject.org>; Fri, 12 Jun 2015 04:15:30 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AqMFAH3ldlWHCzIm/2dsb2JhbABcgkUhKlRkvgmISQKBSEwBAQEBAQGBAAuEJAEBAxIbXgEVFVYmAQQbGogMAZw9hQmufgwBH5AYg0+BFgWTPpNQj0skg3iCNYEBAQEB
X-IronPort-AV: E=Sophos;i="5.13,581,1427774400"; 
	d="scan'208,217";a="106311682"
Received: from unknown (HELO p-us1-erheast-smtpauth.us1.avaya.com)
	([135.11.50.38]) by de307622-de-outbound.net.avaya.com with ESMTP;
	12 Jun 2015 07:15:27 -0400
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-FFEXHC03.global.avaya.com) ([135.64.58.13])
	by p-us1-erheast-out.us1.avaya.com with ESMTP/TLS/AES128-SHA;
	12 Jun 2015 07:15:27 -0400
Received: from AZ-FFEXMB01.global.avaya.com ([fe80::39ee:75fe:e67a:cf4a]) by
	AZ-FFEXHC03.global.avaya.com ([135.64.58.13]) with mapi id
	14.03.0174.001; Fri, 12 Jun 2015 07:15:25 -0400
From: "Bipnesh, Abhinav (Abhinav)" <abhinavbipnesh@avaya.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Post install section for multiple packages using a function
Thread-Index: AdClAQwuUcuu/8j0R4yAqRyaqk0Zmw==
Date: Fri, 12 Jun 2015 11:15:24 +0000
Message-ID: <F38A866CD026F746A3BF0928A84397BE3A42D7B3@AZ-FFEXMB01.global.avaya.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.64.58.47]
MIME-Version: 1.0
Subject: Post install section for multiple packages using a function
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
X-List-Received-Date: Fri, 12 Jun 2015 11:15:33 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_F38A866CD026F746A3BF0928A84397BE3A42D7B3AZFFEXMB01globa_"

--_000_F38A866CD026F746A3BF0928A84397BE3A42D7B3AZFFEXMB01globa_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I have an recipe in which 24 packages are being created using split package=
 format. Below is the sample recipe with the same

PACKAGES =3D "${TEST_PACKAGE}"
LANGS =3D "ch da de el en enu es eso fi fr frc hu it jp ko nl no pl pt ptb =
ru sv trk zhh"python __anonymous () {
    packages =3D []
    extras =3D []
    for lang in d.getVar('LANGS', True).split( ):
        pkg =3D "test-%s" %lang
        files =3D "/test/%s" %lang
        fileName =3D "FILES_test-%s" %lang
        d.setVar(fileName,files)
        packages.append(pkg)
    d.setVar("TEST_PACKAGE", " ".join(packages))
}

addtask convert after do_fetch before do_install
do_install_append() {
. . .
}

So I need to write an pkg_postinstall_PACKAGE section for 24 such packages.=
 So is there a way I can do it through some function or way out.

Thanks,
Abhinav

--_000_F38A866CD026F746A3BF0928A84397BE3A42D7B3AZFFEXMB01globa_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
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
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have an recipe in which 24 packages are being crea=
ted using split package format. Below is the sample recipe with the same<o:=
p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">PACKAGES =3D &quot;${TEST_PACKAGE}&quot;<o:p></o:p><=
/p>
<p class=3D"MsoNormal">LANGS =3D &quot;ch da de el en enu es eso fi fr frc =
hu it jp ko nl no pl pt ptb ru sv trk zhh&quot;python __anonymous () {<o:p>=
</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; packages =3D []<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; extras =3D []<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; for lang in d.getVar('LANGS', Tru=
e).split( ):<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; pkg =3D &=
quot;test-%s&quot; %lang<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; files =3D=
 &quot;/test/%s&quot; %lang<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; fileName =
=3D &quot;FILES_test-%s&quot; %lang<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d.setVar(=
fileName,files)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; packages.=
append(pkg)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; d.setVar(&quot;TEST_PACKAGE&quot;=
, &quot; &quot;.join(packages))<o:p></o:p></p>
<p class=3D"MsoNormal">}<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">addtask convert after do_fetch before do_install<o:p=
></o:p></p>
<p class=3D"MsoNormal">do_install_append() {<o:p></o:p></p>
<p class=3D"MsoNormal">. . . <o:p></o:p></p>
<p class=3D"MsoNormal">}<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">So I need to write an pkg_postinstall_PACKAGE sectio=
n for 24 such packages. So is there a way I can do it through some function=
 or way out.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Abhinav<o:p></o:p></p>
</div>
</body>
</html>

--_000_F38A866CD026F746A3BF0928A84397BE3A42D7B3AZFFEXMB01globa_--
