Return-Path: <abhinavbipnesh@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A2D6E009ED; Wed, 22 Jul 2015 05:06:06 -0700 (PDT)
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
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Wed, 22 Jul 2015 05:06:04 PDT
Received: from de307622-de-outbound.net.avaya.com
	(de307622-de-outbound.net.avaya.com [198.152.71.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89558E009BE
	for <yocto@yoctoproject.org>; Wed, 22 Jul 2015 05:06:04 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AqMFAH3ldlXGmAcV/2dsb2JhbABcgkUhKlRkvgmISQKBSEwBAQEBAQGBAAuEJAEBAxIbXgEMCRVWJgEEGxqIDAGcPYUJrn4MAR+QGINPgRYFkz6HFgWMNY9LJGKDFoI1gQEBAQE
X-IronPort-AV: E=Sophos;i="5.13,581,1427774400"; 
	d="scan'208,217";a="111195244"
Received: from unknown (HELO co300216-co-erhwest-exch.avaya.com)
	([198.152.7.21]) by de307622-de-outbound.net.avaya.com with ESMTP;
	22 Jul 2015 08:04:58 -0400
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-FFEXHC02.global.avaya.com) ([135.64.58.12])
	by co300216-co-erhwest-out.avaya.com with ESMTP/TLS/AES128-SHA;
	22 Jul 2015 08:04:58 -0400
Received: from AZ-FFEXMB01.global.avaya.com ([fe80::39ee:75fe:e67a:cf4a]) by
	AZ-FFEXHC02.global.avaya.com ([135.64.58.12]) with mapi id
	14.03.0174.001; Wed, 22 Jul 2015 14:04:56 +0200
From: "Bipnesh, Abhinav (Abhinav)" <abhinavbipnesh@avaya.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: RPM package not to have Requires section
Thread-Index: AdDEdpdSqmYvx7w5RL6brdqS1u0zQg==
Date: Wed, 22 Jul 2015 12:04:56 +0000
Message-ID: <F38A866CD026F746A3BF0928A84397BE3A46BAD1@AZ-FFEXMB01.global.avaya.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.64.58.48]
MIME-Version: 1.0
Subject: RPM package not to have Requires section
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
X-List-Received-Date: Wed, 22 Jul 2015 12:06:06 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_F38A866CD026F746A3BF0928A84397BE3A46BAD1AZFFEXMB01globa_"

--_000_F38A866CD026F746A3BF0928A84397BE3A46BAD1AZFFEXMB01globa_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I am trying to build an recipe using yocto and post package i.e. RPM build =
I see a section like below

Requires(post): libdl.so.2
Requires(preun): libc.so.6(GLIBC_2.1.3)
Requires(postun): libgcc_s.so.1(GLIBC_2.0)

So how we can tell bitbake not add such dependencies on it own as I have no=
t defined RDEPEND_${PN} section in the recipe. It just have DEPENDS section=
 as we want some other libraries getting build before this package get buil=
d.


Also how we can pass %_dbpath as part of the recipe so that it can be creat=
ed at custom location.



Thanks,

Abhinav

--_000_F38A866CD026F746A3BF0928A84397BE3A46BAD1AZFFEXMB01globa_
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
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Courier New";}
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
<p class=3D"MsoNormal">I am trying to build an recipe using yocto and post =
package i.e. RPM build I see a section like below<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Requires(post): libdl.so.2<o:p></o:p></p>
<p class=3D"MsoNormal">Requires(preun): libc.so.6(GLIBC_2.1.3)<o:p></o:p></=
p>
<p class=3D"MsoNormal">Requires(postun): libgcc_s.so.1(GLIBC_2.0)<o:p></o:p=
></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">So how we can tell bitbake not add such dependencies=
 on it own as I have not defined RDEPEND_${PN} section in the recipe. It ju=
st have DEPENDS section as we want some other libraries getting build befor=
e this package get build.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<pre>Also how we can pass %_dbpath as part of the recipe so that it can be =
created at custom location.<o:p></o:p></pre>
<pre><o:p>&nbsp;</o:p></pre>
<pre>Thanks,<o:p></o:p></pre>
<pre>Abhinav<o:p></o:p></pre>
</div>
</body>
</html>

--_000_F38A866CD026F746A3BF0928A84397BE3A46BAD1AZFFEXMB01globa_--
