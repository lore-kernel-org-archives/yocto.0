Return-Path: <donaldx.wilde@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F6E8E00546; Wed,  1 Feb 2017 12:29:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E787CE004D8
	for <yocto@yoctoproject.org>; Wed,  1 Feb 2017 12:29:01 -0800 (PST)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga105.jf.intel.com with ESMTP; 01 Feb 2017 12:29:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,321,1477983600"; 
	d="scan'208,217";a="220244061"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
	by fmsmga004.fm.intel.com with ESMTP; 01 Feb 2017 12:29:00 -0800
Received: from fmsmsx125.amr.corp.intel.com (10.18.125.40) by
	fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server
	(TLS) id 14.3.248.2; Wed, 1 Feb 2017 12:29:00 -0800
Received: from fmsmsx106.amr.corp.intel.com ([169.254.5.63]) by
	FMSMSX125.amr.corp.intel.com ([169.254.2.191]) with mapi id
	14.03.0248.002; Wed, 1 Feb 2017 12:29:00 -0800
From: "Wilde, DonaldX" <donaldx.wilde@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Installing iperf3 causes strange image corruption
Thread-Index: AdJ8xzXqXI6BrB6TQ+qOEs+rjz9rxg==
Date: Wed, 1 Feb 2017 20:28:59 +0000
Message-ID: <6CE91E52E49AA047A2349BA2FF8E4BCA1546AA31@FMSMSX106.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.108]
MIME-Version: 1.0
Subject: Installing iperf3 causes strange image corruption
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
X-List-Received-Date: Wed, 01 Feb 2017 20:29:04 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_6CE91E52E49AA047A2349BA2FF8E4BCA1546AA31FMSMSX106amrcor_"

--_000_6CE91E52E49AA047A2349BA2FF8E4BCA1546AA31FMSMSX106amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello, Yocto co-workers -

Our project in CHD uses the poky version Daisy, which does not include iper=
f3. We've decided that we just have to have the newer version built into ou=
r firmware to get the results we need.

One of our much better - but very busy, naturally - people took the Yocto r=
ecipes for iperf3 from poky 1.8 (fido) and adapted them for our build.

Unfortunately, what happens is that somewhere along the line after the init=
ial patch and compilation, something in our image gets radically corrupted.=
 With IMAGE_INCLUDE +=3D "iperf3" set, the image is corrupted. Horrible res=
ults occur including that much of our NVRAM content becomes invisible and w=
e get dumped into some kind of emergency debugging shell after about 6.3 se=
conds.

Here's what I want to do, and please tell me if I'm all wet. What I want to=
 do is to find an intermediate target that will enable me to activate every=
 task up through populate_sysroot so that I can do a diff tree on three ver=
sions of tmp/sysroots: one with no iperf recipes, one with everything enabl=
ed, and one with everything but the image including process activating iper=
f3.

The strange thing is that iperf3 built from the recipes does work properly =
even with the image whacked to un-usability. I suspected that some global v=
ariable was getting overridden but I can't see it in the iperf3-specific re=
cipe and autoconf  patch.

I do see that iperf3 is being added to a Yocto-generated file called toe.c,=
 but I don't know what that means yet.

In particular, this is a portion of our log that I want to look at, though =
what is happening to make it fail to generate this file correctly at this p=
oint is as yet unclear:

starting pid 1363, tty '': '/etc/init.d/rcS'
can't run '/etc/init.d/rcS': No such file or directory

Please press Enter to activate this console.
starting pid 1364, tty '': '-/bin/sh'


Don Wilde
Intel Connected Home Division

--_000_6CE91E52E49AA047A2349BA2FF8E4BCA1546AA31FMSMSX106amrcor_
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
	{font-family:"Brush Script MT";
	panose-1:3 6 8 2 4 4 6 7 3 4;}
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
	{mso-style-type:export-only;}
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
<p class=3D"MsoNormal">Hello, Yocto co-workers -<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Our project in CHD uses the poky version Daisy, whic=
h does not include iperf3. We&#8217;ve decided that we just have to have th=
e newer version built into our firmware to get the results we need.<o:p></o=
:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">One of our much better &#8211; but very busy, natura=
lly &#8211; people took the Yocto recipes for iperf3 from poky 1.8 (fido) a=
nd adapted them for our build.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Unfortunately, what happens is that somewhere along =
the line after the initial patch and compilation, something in our image ge=
ts radically corrupted. With IMAGE_INCLUDE &#43;=3D &#8220;iperf3&#8221; se=
t, the image is corrupted. Horrible results occur including
 that much of our NVRAM content becomes invisible and we get dumped into so=
me kind of emergency debugging shell after about 6.3 seconds.<o:p></o:p></p=
>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Here&#8217;s what I want to do, and please tell me i=
f I&#8217;m all wet. What I want to do is to find an intermediate target th=
at will enable me to activate every task up through populate_sysroot so tha=
t I can do a diff tree on three versions of tmp/sysroots:
 one with no iperf recipes, one with everything enabled, and one with every=
thing but the image including process activating iperf3.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The strange thing is that iperf3 built from the reci=
pes does work properly even with the image whacked to un-usability. I suspe=
cted that some global variable was getting overridden but I can&#8217;t see=
 it in the iperf3-specific recipe and autoconf
 &nbsp;patch.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I do see that iperf3 is being added to a Yocto-gener=
ated file called toe.c, but I don&#8217;t know what that means yet.<br>
<br>
In particular, this is a portion of our log that I want to look at, though =
what is happening to make it fail to generate this file correctly at this p=
oint is as yet unclear:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">starting pid 1363, tty '': '/etc/init.d/rcS'<o:p></o=
:p></p>
<p class=3D"MsoNormal">can't run '/etc/init.d/rcS': No such file or directo=
ry<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Please press Enter to activate this console. <o:p></=
o:p></p>
<p class=3D"MsoNormal">starting pid 1364, tty '': '-/bin/sh'<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:20.25pt"><span style=3D"font-si=
ze:18.0pt;font-family:&quot;Brush Script MT&quot;">Don Wilde<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal" style=3D"margin-left:20.25pt"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Arial&quot;,sans-serif">Intel Connected Home Div=
ision<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_6CE91E52E49AA047A2349BA2FF8E4BCA1546AA31FMSMSX106amrcor_--
