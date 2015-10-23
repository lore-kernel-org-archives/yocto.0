Return-Path: <dwsmith@ball.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8079FE00B31; Fri, 23 Oct 2015 15:05:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [67.231.144.99 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mx0a-0014fe01.pphosted.com (mx0a-0014fe01.pphosted.com
	[67.231.144.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53FC1E00B27
	for <yocto@yoctoproject.org>; Fri, 23 Oct 2015 15:05:32 -0700 (PDT)
Received: from pps.filterd (m0000457.ppops.net [127.0.0.1])
	by mx0a-0014fe01.pphosted.com (8.15.0.59/8.15.0.59) with SMTP id
	t9NM4tLs006182
	for <yocto@yoctoproject.org>; Fri, 23 Oct 2015 16:05:32 -0600
Received: from owa.ballaerospace.com ([162.18.172.11])
	by mx0a-0014fe01.pphosted.com with ESMTP id 1xqudygfhr-1
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NOT)
	for <yocto@yoctoproject.org>; Fri, 23 Oct 2015 16:05:32 -0600
Received: from EX2010-CO-02.AERO.BALL.com ([fe80::1c1b:3704:218f:e8b6]) by
	EX2010-CO-03.AERO.BALL.com ([fe80::1892:27e7:c852:983b%13]) with mapi
	id 14.03.0181.006; Fri, 23 Oct 2015 16:05:31 -0600
From: "Smith, Daniel W" <dwsmith@ball.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Packaging an externally built library?
Thread-Index: AdEN3uySG8GrvmHDSdunW+n3n1500g==
Date: Fri, 23 Oct 2015 22:05:31 +0000
Message-ID: <167A17EDB344B047B2D335D8E4C5A2FAA4DE5771@EX2010-CO-02.AERO.BALL.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.70.255.105]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:5.14.151, 1.0.33,
	0.0.0000
	definitions=2015-10-24_01:2015-10-23, 2015-10-23,
	1970-01-01 signatures=0
Subject: Packaging an externally built library?
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
X-List-Received-Date: Fri, 23 Oct 2015 22:05:38 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_167A17EDB344B047B2D335D8E4C5A2FAA4DE5771EX2010CO02AEROB_"

--_000_167A17EDB344B047B2D335D8E4C5A2FAA4DE5771EX2010CO02AEROB_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I have an externally built library (libcdpfsw.so) that I am trying to insta=
ll in my image.  The library is written in Ada, so it is built using an ext=
ernal Ada compiler.  I've tested it on the target and it works, but I'd lik=
e it to be installed in my image.

I verified that the do_install works correctly by inspecting the logs and t=
he image folder for the directory.

I'm having problems getting past the packaging and QA checks to build my ro=
otfs.

I was originally having a problem with NO GNU HASH in the package QA check =
so I added these to my recipe.
#
# Set these flags to bypass Yocto build system
# QA checking because this package is built outside of Yocto.
#
INHIBIT_PACKAGE_STRIP =3D "1"
INHIBIT_PACKAGE_DEBUG_SPLIT =3D "1"
INSANE_SKIP_${PN} =3D "ldflags"
INSANE_SKIP_${PN}-dev =3D "ldflags"

FILES_${PN} +=3D " ${libdir}/*.so"

If I look through the packaging logs it looks like it attampts to create a =
bunch of different packages (cdp-fsw, cdp-fsw-dbg, cdp-fsw-dev, cdp-fsw-doc=
, cdp-fsw-locale) but most of them end up being empty except cdp-fsw-dev.  =
Then if I look through the RPMs there is no cdp-fsw there is only a cdp-fsw=
-dev and cdp-fsw-dbg.

Then when do_rootfs is executed it fails because it can't find a package pr=
ovider for cdp-fsw.

Why is it automatically creating a <xxxx>-dev package? Can I override this?

-Daniel Smith



This message and any enclosures are intended only for the addressee.  Pleas=
e=20
notify the sender by email if you are not the intended recipient.  If you a=
re=20
not the intended recipient, you may not use, copy, disclose, or distribute =
this=20
message or its contents or enclosures to any other person and any such acti=
ons=20
may be unlawful.  Ball reserves the right to monitor and review all message=
s=20
and enclosures sent to or from this email address.

--_000_167A17EDB344B047B2D335D8E4C5A2FAA4DE5771EX2010CO02AEROB_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">
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
<p class=3D"MsoNormal">I have an externally built library (libcdpfsw.so) th=
at I am trying to install in my image.&nbsp; The library is written in Ada,=
 so it is built using an external Ada compiler.&nbsp; I&#8217;ve tested it =
on the target and it works, but I&#8217;d like it to be
 installed in my image.&nbsp; <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I verified that the do_install works correctly by in=
specting the logs and the image folder for the directory.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m having problems getting past the packaging=
 and QA checks to build my rootfs.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I was originally having a problem with NO GNU HASH i=
n the package QA check so I added these to my recipe.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p></o:p></p>
<p class=3D"MsoNormal"># <o:p></o:p></p>
<p class=3D"MsoNormal"># Set these flags to bypass Yocto build system <o:p>=
</o:p></p>
<p class=3D"MsoNormal"># QA checking because this package is built outside =
of Yocto.<o:p></o:p></p>
<p class=3D"MsoNormal">#<o:p></o:p></p>
<p class=3D"MsoNormal">INHIBIT_PACKAGE_STRIP =3D &quot;1&quot;&nbsp; <o:p><=
/o:p></p>
<p class=3D"MsoNormal">INHIBIT_PACKAGE_DEBUG_SPLIT =3D &quot;1&quot;<o:p></=
o:p></p>
<p class=3D"MsoNormal">INSANE_SKIP_${PN} =3D &quot;ldflags&quot;<o:p></o:p>=
</p>
<p class=3D"MsoNormal">INSANE_SKIP_${PN}-dev =3D &quot;ldflags&quot;<o:p></=
o:p></p>
<p class=3D"MsoNormal">&nbsp; <o:p></o:p></p>
<p class=3D"MsoNormal">FILES_${PN} &#43;=3D &quot; ${libdir}/*.so&quot;<o:p=
></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">If I look through the packaging logs it looks like i=
t attampts to create a bunch of different packages (cdp-fsw, cdp-fsw-dbg, c=
dp-fsw-dev, cdp-fsw-doc, cdp-fsw-locale) but most of them end up being empt=
y except cdp-fsw-dev.&nbsp; Then if I look
 through the RPMs there is no cdp-fsw there is only a cdp-fsw-dev and cdp-f=
sw-dbg.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Then when do_rootfs is executed it fails because it =
can&#8217;t find a package provider for cdp-fsw.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Why is it automatically creating a &lt;xxxx&gt;-dev =
package? Can I override this?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">-Daniel Smith<o:p></o:p></p>
</div>

<DIV>
<BR>
<BR>
This message and any enclosures are intended only for the addressee.  Pleas=
e <BR>
notify the sender by email if you are not the intended recipient.  If you a=
re <BR>
not the intended recipient, you may not use, copy, disclose, or distribute =
this <BR>
message or its contents or enclosures to any other person and any such acti=
ons <BR>
may be unlawful.  Ball reserves the right to monitor and review all message=
s <BR>
and enclosures sent to or from this email address.<BR>
</DIV></body>
</html>

--_000_167A17EDB344B047B2D335D8E4C5A2FAA4DE5771EX2010CO02AEROB_--
