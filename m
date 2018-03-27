Return-Path: <tom.gibson@csoftware.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0437E00BC1; Tue, 27 Mar 2018 07:56:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RDNS_DYNAMIC autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  1.0 RDNS_DYNAMIC Delivered to internal network by host with
	*      dynamic-looking rDNS
X-Greylist: delayed 902 seconds by postgrey-1.32 at yocto-www;
	Tue, 27 Mar 2018 07:56:58 PDT
Received: from APOLLO-EX16.csoftware.local (176-35-35-244.xdsl.murphx.net
	[176.35.35.244])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7AAEFE008D3
	for <yocto@yoctoproject.org>; Tue, 27 Mar 2018 07:56:58 -0700 (PDT)
Received: from APOLLO-EX16.csoftware.local (10.1.1.6) by
	APOLLO-EX16.csoftware.local (10.1.1.6) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.1415.2; Tue, 27 Mar 2018 15:42:01 +0100
Received: from APOLLO-EX16.csoftware.local ([fe80::f4fe:415e:7ed9:9ee0]) by
	APOLLO-EX16.csoftware.local ([fe80::f4fe:415e:7ed9:9ee0%13]) with mapi
	id 15.01.1415.004; Tue, 27 Mar 2018 15:42:01 +0100
From: Tom Gibson <tom.gibson@csoftware.co.uk>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: ClamAV PCRE support
Thread-Index: AdPF1+hZQZMIgHvxQGSK/H0SJtQy6w==
Date: Tue, 27 Mar 2018 14:42:01 +0000
Message-ID: <7fe4b4d52892445b97680ccd2ec47808@csoftware.co.uk>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.1.70]
x-esetresult: clean, is OK
x-esetid: 37303A29CD5E6C6C6D716B
MIME-Version: 1.0
Subject: ClamAV PCRE support
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
X-List-Received-Date: Tue, 27 Mar 2018 14:57:00 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7fe4b4d52892445b97680ccd2ec47808csoftwarecouk_"

--_000_7fe4b4d52892445b97680ccd2ec47808csoftwarecouk_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I am adding ClamAV to our custom image and have added the following to our =
main .bb file:

IMAGE_INSTALL +=3D " clamav clamav-daemon clamav-clamdscan"

When I run clamscan on our board I get a number of errors of the form "logi=
cal signature for ... uses PCREs but support is disabled, skipping" so the =
solution would appear to be to add PCRE support. In the ClamAV bitbake reci=
pe I see there is a PACKAGECONFIG variable for PCRE, so to test if this is =
the solution I have added the following to my local.conf:

PACKAGECONFIG_append_pn-clamav =3D " pcre"

and have also added " libpcre2" before "clamav" in the IMAGE_INSTALL as abo=
ve.

Unfortunately when I run bitbake I now get a configure error similar to the=
 following:

configure: error: cannot locate libpcre2 or libpcre at <builddir>/tmp/work/=
armv7a-neon-poky-linux-gnueabi/clamav/0.99.3-r0/recipe-sysroot/usr/lib

I have attempted to solve this by creating a .bbappend file in my layer con=
taining the following to try and force it to build libpcre first

                DEPENDS +=3D " libpcre2"

however this has no effect on the error, I assume this may not be the way t=
o solve the dependency problem.

Can anyone please advise what additional configuration is required to enabl=
e building of support for PCRE into ClamAV

Thanks in advance for your assistance!

Regards,

Tom Gibson
C Software Limited


--_000_7fe4b4d52892445b97680ccd2ec47808csoftwarecouk_
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
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am adding ClamAV to our custom image and have adde=
d the following to our main .bb file:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:36.0pt">IMAGE_INSTALL &#43;=3D =
&#8220; clamav clamav-daemon clamav-clamdscan&#8221;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">When I run clamscan on our board I get a number of e=
rrors of the form &#8220;logical signature for &#8230; uses PCREs but suppo=
rt is disabled, skipping&#8221; so the solution would appear to be to add P=
CRE support. In the ClamAV bitbake recipe I see there
 is a PACKAGECONFIG variable for PCRE, so to test if this is the solution I=
 have added the following to my local.conf:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:36.0pt">PACKAGECONFIG_append_pn=
-clamav =3D &#8220; pcre&#8221;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">and have also added &#8220; libpcre2&#8221; before &=
#8220;clamav&#8221; in the IMAGE_INSTALL as above.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Unfortunately when I run bitbake I now get a configu=
re error similar to the following:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:36.0pt">configure: error: canno=
t locate libpcre2 or libpcre at &lt;builddir&gt;/tmp/work/armv7a-neon-poky-=
linux-gnueabi/clamav/0.99.3-r0/recipe-sysroot/usr/lib<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have attempted to solve this by creating a .bbappe=
nd file in my layer containing the following to try and force it to build l=
ibpcre first<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DEPENDS &#43;=3D &#8220; libpcre2&#8=
221;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">however this has no effect on the error, I assume th=
is may not be the way to solve the dependency problem.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Can anyone please advise what additional configurati=
on is required to enable building of support for PCRE into ClamAV<o:p></o:p=
></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks in advance for your assistance!<o:p></o:p></p=
>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-GB">Regards,<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-GB"><o:p>&nbs=
p;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-GB">Tom Gibso=
n<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-GB">C Softwar=
e Limited</span><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_7fe4b4d52892445b97680ccd2ec47808csoftwarecouk_--
