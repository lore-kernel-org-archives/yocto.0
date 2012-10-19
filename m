Return-Path: <marcelo.lorenzati@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0174FE0049B
	for <yocto@yoctoproject.org>; Fri, 19 Oct 2012 06:53:08 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 19 Oct 2012 06:53:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,612,1344236400"; 
	d="scan'208,217";a="158096959"
Received: from fmsmsx104.amr.corp.intel.com ([10.19.9.35])
	by AZSMGA002.ch.intel.com with ESMTP; 19 Oct 2012 06:53:07 -0700
Received: from fmsmsx108.amr.corp.intel.com ([169.254.10.7]) by
	FMSMSX104.amr.corp.intel.com ([169.254.4.208]) with mapi id
	14.01.0355.002; Fri, 19 Oct 2012 06:53:07 -0700
From: "Lorenzati, Marcelo" <marcelo.lorenzati@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minor tweak required for beagleboard-edison
Thread-Index: Ac2uACjYy3J7zu3TR0ynjFzN+K6d7g==
Date: Fri, 19 Oct 2012 13:53:06 +0000
Message-ID: <061C8C7B161AC5428BC2BA4A24B12B7F2037D5FE@FMSMSX108.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.108]
MIME-Version: 1.0
Subject: Minor tweak required for beagleboard-edison
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
X-List-Received-Date: Fri, 19 Oct 2012 13:53:09 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_061C8C7B161AC5428BC2BA4A24B12B7F2037D5FEFMSMSX108amrcor_"

--_000_061C8C7B161AC5428BC2BA4A24B12B7F2037D5FEFMSMSX108amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I tested the prebuild package for beagleboard (beagleboard-edison) and I fo=
und a minor concern to let it work on newer models of the board (beagleboar=
d xm).
The new model's u-boot looks for a uEnv.txt to boot, so it's necessary to c=
reate a file to jump to the boot.scr script.

uEnv.tx:
bootenv=3Dboot.scr
loaduimage=3Dfatload mmc ${mmcdev} ${loadaddr} ${bootenv}
mmcboot=3Decho jumping to boot.scr script from mmc ...; source ${loadaddr}

If the u-boot is an older model, this script does no harm as its not invoke=
d.

Regards,

Marcelo Lorenzati

--_000_061C8C7B161AC5428BC2BA4A24B12B7F2037D5FEFMSMSX108amrcor_
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
@font-face
	{font-family:"Neo Sans Intel";
	panose-1:2 11 5 4 2 2 2 2 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
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
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 3.0cm 70.85pt 3.0cm;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"ES-AR" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">I tested the prebuild package f=
or beagleboard (beagleboard-edison) and I found a minor concern to let it w=
ork on newer models of the board (beagleboard xm).<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">The new model&#8217;s u-boot lo=
oks for a uEnv.txt to boot, so it&#8217;s necessary to create a file to jum=
p to the boot.scr script.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">uEnv.tx:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Courier New&quot;;color:black;background:#DDDDDD">bootenv=3Dbo=
ot.scr</span><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&qu=
ot;Courier New&quot;;color:black"><br>
<span style=3D"background:#DDDDDD">loaduimage=3Dfatload mmc ${mmcdev} ${loa=
daddr} ${bootenv}</span><br>
<span style=3D"background:#DDDDDD">mmcboot=3Decho jumping to boot.scr scrip=
t from mmc ...; source ${loadaddr}</span></span><span lang=3D"EN-US"><o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">If the u-boot is an older model=
, this script does no harm as its not invoked.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Regards,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Neo Sans Intel&quot;,&quot;sans-serif&quot;;color:#1F497D;mso-fareast-lang=
uage:ES-AR"><o:p>&nbsp;</o:p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Neo Sans Intel&quot;,&quot;sans-serif&quot;;color:#1F497D;mso-fareast-lang=
uage:ES-AR">Marcelo Lorenzati</span></b><o:p></o:p></p>
</div>
</body>
</html>

--_000_061C8C7B161AC5428BC2BA4A24B12B7F2037D5FEFMSMSX108amrcor_--
