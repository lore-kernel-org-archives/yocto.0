Return-Path: <Thomas.Moore2@atk.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E38E5E00815; Tue, 27 Jan 2015 09:57:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mx-mn.atk.com (mx-mn.atk.com [192.107.248.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D2A9E00753
	for <yocto@yoctoproject.org>; Tue, 27 Jan 2015 09:57:18 -0800 (PST)
Received: from unknown (HELO UT40SVEH3.atk.com) ([146.168.70.140])
	by mx-mn.atk.com with ESMTP; 27 Jan 2015 11:49:09 -0600
Received: from UT40SVCWEM001.atk.com ([169.254.4.192]) by UT40SVEH3.atk.com
	([146.168.78.8]) with mapi id 14.03.0174.001;
	Tue, 27 Jan 2015 10:57:16 -0700
From: "Moore, Thomas (FtWorth)" <Thomas.Moore2@ATK.COM>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Patch runqemu-internal in nativesdk
Thread-Index: AdA6WE7U1KyXuDROTWKbKYGRQDgGmQ==
Date: Tue, 27 Jan 2015 17:57:15 +0000
Message-ID: <7B6FE55CD594D7478CED8A39DF3BFC0A5E7401B0@UT40SVCWEM001.atk.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.99.32.35]
MIME-Version: 1.0
Subject: Patch runqemu-internal in nativesdk
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
X-List-Received-Date: Tue, 27 Jan 2015 17:57:24 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7B6FE55CD594D7478CED8A39DF3BFC0A5E7401B0UT40SVCWEM001at_"

--_000_7B6FE55CD594D7478CED8A39DF3BFC0A5E7401B0UT40SVCWEM001at_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

My system has an Intel Core processor based on the Haswell architecture, an=
d I'm using the corei7 tuning in my image. As it's currently implemented, t=
he runqemu-internal script utilizes the core2dup cpu option when running th=
e qemux86-64 QEMUARCH. However, in order to run my image with QEMU, I need =
to use the Haswell cpu option. While it's possible to run my image by addin=
g 'qemuparams=3D"-cpu Haswell"' to the runqemu command, I would like to cha=
nge the cpu option in the runqemu-internal script as part of the nativesdk =
build so that users of the SDK don't have to mess with anything. I think th=
is can be accomplished by appending the nativesdk-qemu-helper recipe to inc=
lude a patch to make the simple change. However, it gets a little strange b=
ecause the recipe includes the runqemu-internal script from the ${COREBASE}=
 as such:

SRC_URI =3D "file://${COREBASE}/scripts/runqemu-internal"

Because of the dynamic nature of ${COREBASE}, I'm not exactly sure how to p=
repare my patch since the file will be located in some arbitrary folder wit=
hin the ${WORKDIR}. I'm assuming I can do something creative in do_patch(),=
 but I'm not sure where to start. Any suggestions?

Thanks,

Thomas


--_000_7B6FE55CD594D7478CED8A39DF3BFC0A5E7401B0UT40SVCWEM001at_
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
<p class=3D"MsoNormal">My system has an Intel Core processor based on the H=
aswell architecture, and I&#8217;m using the corei7 tuning in my image. As =
it&#8217;s currently implemented, the runqemu-internal script utilizes the =
core2dup cpu option when running the qemux86-64
 QEMUARCH. However, in order to run my image with QEMU, I need to use the H=
aswell cpu option. While it&#8217;s possible to run my image by adding &#82=
16;qemuparams=3D&#8221;-cpu Haswell&#8221;&#8217; to the runqemu command, I=
 would like to change the cpu option in the runqemu-internal script
 as part of the nativesdk build so that users of the SDK don&#8217;t have t=
o mess with anything. I think this can be accomplished by appending the nat=
ivesdk-qemu-helper recipe to include a patch to make the simple change. How=
ever, it gets a little strange because
 the recipe includes the runqemu-internal script from the ${COREBASE} as su=
ch:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">SRC_URI =3D &quot;file://${COREBASE}/scripts/runqemu=
-internal&#8221;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Because of the dynamic nature of ${COREBASE}, I&#821=
7;m not exactly sure how to prepare my patch since the file will be located=
 in some arbitrary folder within the ${WORKDIR}. I&#8217;m assuming I can d=
o something creative in do_patch(), but I&#8217;m not
 sure where to start. Any suggestions?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thomas<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_7B6FE55CD594D7478CED8A39DF3BFC0A5E7401B0UT40SVCWEM001at_--
