Return-Path: <rahul.saxena@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB11CE013FE
	for <yocto@yoctoproject.org>; Mon, 27 Aug 2012 17:14:32 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 27 Aug 2012 17:14:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,322,1344236400"; 
	d="scan'208,217";a="186018546"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by orsmga001.jf.intel.com with ESMTP; 27 Aug 2012 17:14:22 -0700
Received: from orsmsx106.amr.corp.intel.com (10.22.225.133) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 27 Aug 2012 17:14:22 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.246]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.217]) with mapi id
	14.01.0355.002; Mon, 27 Aug 2012 17:14:21 -0700
From: "Saxena, Rahul" <rahul.saxena@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Poky 1.3_M3 branch does not work with linux-yocto 3.0 kernel ?
Thread-Index: Ac2EshDbe88X/yhnTvyfYJ1eQgJkOQ==
Date: Tue, 28 Aug 2012 00:14:20 +0000
Message-ID: <63ECFF2A2302B44093D7CE9E9962C4900332062C@ORSMSX103.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "Hart, Darren" <darren.hart@intel.com>
Subject: Poky 1.3_M3 branch does not work with linux-yocto 3.0 kernel ?
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
X-List-Received-Date: Tue, 28 Aug 2012 00:14:33 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_63ECFF2A2302B44093D7CE9E9962C4900332062CORSMSX103amrcor_"

--_000_63ECFF2A2302B44093D7CE9E9962C4900332062CORSMSX103amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I am building a BSP  (meta-cedartrail) using 1.3 M3 branch of Poky.


When I try to boot a image such as core-image-sato, I get kernel panic and =
errors such as:

VFS: Cannot open root device "ram0" or unkown-block(0,0)



Please append a correct "root=3D" boot option; here are the available

partitions:

 VFS: unable to mount root fs on unknown block(0,0)

 User configuration error - no valid rootfilesystem found


I do see that the root file system exists in cedartrail-poky-linux/core-ima=
ge-sato-1.0-r0/rootfs dir..

I did not see this problem when I uses a earlier commit of the Poky master =
branch.

It seems like something broke with 1.3 M3 branch that prevents a proper bui=
ld with 3.0 kernel. I do need to build my BSP with 3.0 kernel.
(I was also told by Laurentiu Serban that 1.3 M3 Full Pass testing does not=
 include testing with the 3.0 kernel)

Any suggestions would be most welcome.   I do need to build my BSP with the=
 3.0 kernel.

Thanks
Rahul

--_000_63ECFF2A2302B44093D7CE9E9962C4900332062CORSMSX103amrcor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
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
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.5pt;
	font-family:Consolas;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:Consolas;}
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
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am building a BSP &nbsp;(meta-cedartrail) using 1.=
3 M3 branch of Poky.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">When I try to boot a image such as core-image-sato, =
I get kernel panic and errors such as:<o:p></o:p></p>
<p class=3D"MsoPlainText">VFS: Cannot open root device &#8220;ram0&#8221; o=
r unkown-block(0,0)<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Please append a correct &#8220;root=3D&#8221; boo=
t option; here are the available<o:p></o:p></p>
<p class=3D"MsoPlainText">partitions:<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;VFS: unable to mount root fs on unknown blo=
ck(0,0)<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;User configuration error &#8211; no valid r=
ootfilesystem found<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I do see that the root file system exists in cedartr=
ail-poky-linux/core-image-sato-1.0-r0/rootfs dir..<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I did not see this problem when I uses a earlier com=
mit of the Poky master branch.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">It seems like something broke with 1.3 M3 branch tha=
t prevents a proper build with 3.0 kernel. I do need to build my BSP with 3=
.0 kernel.<o:p></o:p></p>
<p class=3D"MsoNormal">(I was also told by Laurentiu Serban that 1.3 M3 Ful=
l Pass testing does not include testing with the 3.0 kernel) &nbsp;<o:p></o=
:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any suggestions would be most welcome. &nbsp;&nbsp;I=
 do need to build my BSP with the 3.0 kernel.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks<o:p></o:p></p>
<p class=3D"MsoNormal">Rahul<o:p></o:p></p>
</div>
</body>
</html>

--_000_63ECFF2A2302B44093D7CE9E9962C4900332062CORSMSX103amrcor_--
