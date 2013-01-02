Return-Path: <christopher.a.thornburg@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E98EEE013CE
	for <yocto@yoctoproject.org>; Wed,  2 Jan 2013 14:55:31 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 02 Jan 2013 14:55:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,398,1355126400"; 
	d="scan'208,217";a="241391901"
Received: from fmsmsx108.amr.corp.intel.com ([10.19.9.228])
	by orsmga001.jf.intel.com with ESMTP; 02 Jan 2013 14:55:31 -0800
Received: from fmsmsx102.amr.corp.intel.com ([169.254.2.26]) by
	FMSMSX108.amr.corp.intel.com ([169.254.10.234]) with mapi id
	14.01.0355.002; Wed, 2 Jan 2013 14:55:30 -0800
From: "Thornburg, Christopher A" <christopher.a.thornburg@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Host authenticity failures
Thread-Index: Ac3pPEIwhYJH+sn0QHOZ3HIEYrrlyw==
Date: Wed, 2 Jan 2013 22:55:29 +0000
Message-ID: <752F65977A748344A01D69BF22DCDBAE25B958B8@FMSMSX102.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.107]
MIME-Version: 1.0
Subject: Host authenticity failures
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 02 Jan 2013 22:55:32 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_752F65977A748344A01D69BF22DCDBAE25B958B8FMSMSX102amrcor_"

--_000_752F65977A748344A01D69BF22DCDBAE25B958B8FMSMSX102amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I've started getting the following error from bitbake when it's trying to a=
ccess my git server:

The authenticity of host '[<githost>]:<port>([<IP>]:<port>)' can't be estab=
lished.
DSA key fingerprint is <blah>

I understand this error means that the server's key has probably changed, a=
nd I understand in general how to deal with this via SSH config. When I man=
ually ssh'd to the server the first time after receiving the error, I got t=
he same message, as expected. I entered "yes" and tried again to verify tha=
t the error went away. It did. I then ran bitbake again and got the same er=
ror. I changed my ~/.ssh/ssh_config file to disable StrictHostKeyChecking a=
nd still get the error.

Is bitbake somehow using different known_hosts and ssh_config files from th=
e ones I use for interactive logins? Other ideas on how to resolve this?



--_000_752F65977A748344A01D69BF22DCDBAE25B958B8FMSMSX102amrcor_
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
<p class=3D"MsoNormal">I&#8217;ve started getting the following error from =
bitbake when it&#8217;s trying to access my git server:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">The authenticity of host =
'[&lt;githost&gt;]:&lt;port&gt;([&lt;IP&gt;]:&lt;port&gt;)' can't be establ=
ished.<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">DSA key fingerprint is &l=
t;blah&gt;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I understand this error means that the server&#8217;=
s key has probably changed, and I understand in general how to deal with th=
is via SSH config. When I manually ssh&#8217;d to the server the first time=
 after receiving the error, I got the same message,
 as expected. I entered &#8220;yes&#8221; and tried again to verify that th=
e error went away. It did. I then ran bitbake again and got the same error.=
 I changed my ~/.ssh/ssh_config file to disable StrictHostKeyChecking and s=
till get the error.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is bitbake somehow using different known_hosts and s=
sh_config files from the ones I use for interactive logins? Other ideas on =
how to resolve this?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_752F65977A748344A01D69BF22DCDBAE25B958B8FMSMSX102amrcor_--
