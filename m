Return-Path: <chan.kitx.yu@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E252AE0086F; Tue,  2 Dec 2014 21:40:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 677CBE00521
	for <yocto@yoctoproject.org>; Tue,  2 Dec 2014 21:40:26 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 02 Dec 2014 21:40:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,505,1413270000"; 
	d="2415'?scan'208,217";a="647347828"
Received: from pgsmsx103.gar.corp.intel.com ([10.221.44.82])
	by orsmga002.jf.intel.com with ESMTP; 02 Dec 2014 21:40:24 -0800
Received: from pgsmsx101.gar.corp.intel.com ([169.254.1.232]) by
	PGSMSX103.gar.corp.intel.com ([169.254.2.83]) with mapi id
	14.03.0195.001; Wed, 3 Dec 2014 13:40:23 +0800
From: "Yu, Chan KitX" <chan.kitx.yu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Issue with compiling x264 package in Yocto
Thread-Index: AdAOuortikp7HXDVS8+z6FnGA1jk7Q==
Date: Wed, 3 Dec 2014 05:40:22 +0000
Message-ID: <0E4D391FE2BDEC45AA0B4E32D6BD598A2405A5@PGSMSX101.gar.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [172.30.20.206]
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 03 Dec 2014 11:12:18 -0800
Cc: "yuchankit@gmail.com" <yuchankit@gmail.com>
Subject: Issue with compiling x264 package in Yocto
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
X-List-Received-Date: Wed, 03 Dec 2014 05:40:37 -0000
X-Groupsio-MsgNum: 22470
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_004_0E4D391FE2BDEC45AA0B4E32D6BD598A2405A5PGSMSX101garcorpi_"

--_004_0E4D391FE2BDEC45AA0B4E32D6BD598A2405A5PGSMSX101garcorpi_
Content-Type: multipart/alternative;
	boundary="_000_0E4D391FE2BDEC45AA0B4E32D6BD598A2405A5PGSMSX101garcorpi_"

--_000_0E4D391FE2BDEC45AA0B4E32D6BD598A2405A5PGSMSX101garcorpi_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

I had the following issues with building x264 package in Yocto

ERROR: Fetcher failure: Fetch command failed with exit code 128, output:
Cloning into bare repository '/home/autoeye/daisy/poky/mybuilds/downloads/g=
it2/git.videolan.org.x264.git'...
FATAL: Failed to determine SOCKS server.
fatal: Could not read from remote repository.

Please make sure you have the correct access rights
and the repository exists.

DEBUG: Python function base_do_fetch finished
DEBUG: Python function do_fetch finished
ERROR: Function failed: Fetcher failure for URL: 'git://git.videolan.org/x2=
64.git'. Unable to fetch URL from any source.

Weirdly, git cloning that repository worked marvelously. I'm out of my dept=
h here so I'm posting here so more minds can dig this. I have also attached=
 the full log files so those interested can read the whole error log. I thi=
nk I have set the SOCKS proxy correctly since git clone works for me but I'=
m open to suggestions.

Cheers,
Chan Kit

--_000_0E4D391FE2BDEC45AA0B4E32D6BD598A2405A5PGSMSX101garcorpi_
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
<p class=3D"MsoNormal">Hi all,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I had the following issues with building x264 packag=
e in Yocto<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">ERROR: Fetcher failure: Fetch command failed with ex=
it code 128, output:<o:p></o:p></p>
<p class=3D"MsoNormal">Cloning into bare repository '/home/autoeye/daisy/po=
ky/mybuilds/downloads/git2/git.videolan.org.x264.git'...<o:p></o:p></p>
<p class=3D"MsoNormal">FATAL: Failed to determine SOCKS server.<o:p></o:p><=
/p>
<p class=3D"MsoNormal">fatal: Could not read from remote repository.<o:p></=
o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Please make sure you have the correct access rights<=
o:p></o:p></p>
<p class=3D"MsoNormal">and the repository exists.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">DEBUG: Python function base_do_fetch finished<o:p></=
o:p></p>
<p class=3D"MsoNormal">DEBUG: Python function do_fetch finished<o:p></o:p><=
/p>
<p class=3D"MsoNormal">ERROR: Function failed: Fetcher failure for URL: 'gi=
t://git.videolan.org/x264.git'. Unable to fetch URL from any source.<o:p></=
o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Weirdly, git cloning that repository worked marvelou=
sly. I&#8217;m out of my depth here so I&#8217;m posting here so more minds=
 can dig this. I have also attached the full log files so those interested =
can read the whole error log. I think I have set
 the SOCKS proxy correctly since git clone works for me but I&#8217;m open =
to suggestions.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Cheers,<o:p></o:p></p>
<p class=3D"MsoNormal">Chan Kit<o:p></o:p></p>
</div>
</body>
</html>

--_000_0E4D391FE2BDEC45AA0B4E32D6BD598A2405A5PGSMSX101garcorpi_--

--_004_0E4D391FE2BDEC45AA0B4E32D6BD598A2405A5PGSMSX101garcorpi_
Content-Type: application/octet-stream; name="run.do_fetch.2415"
Content-Description: run.do_fetch.2415
Content-Disposition: attachment; filename="run.do_fetch.2415"; size=75;
	creation-date="Wed, 03 Dec 2014 05:38:55 GMT";
	modification-date="Wed, 03 Dec 2014 13:11:59 GMT"
Content-Transfer-Encoding: base64

CmRlZiBkb19mZXRjaChkKToKICAgIGJiLmJ1aWxkLmV4ZWNfZnVuYygnYmFzZV9kb19mZXRjaCcs
IGQpCgoKZG9fZmV0Y2goZCkK

--_004_0E4D391FE2BDEC45AA0B4E32D6BD598A2405A5PGSMSX101garcorpi_--
