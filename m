Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70B60E00348
	for <yocto@yoctoproject.org>; Tue, 13 Nov 2012 15:18:12 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 13 Nov 2012 15:17:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.83,768,1352102400"; 
	d="scan'208,217";a="219231916"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by orsmga001.jf.intel.com with ESMTP; 13 Nov 2012 15:17:46 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.82]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.196]) with mapi id
	14.01.0355.002; Tue, 13 Nov 2012 15:17:46 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Autotools-based project question
Thread-Index: Ac3B9Qpvn+PAuqz3S+SRj9GKVBiuxg==
Date: Tue, 13 Nov 2012 23:17:45 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A9D497@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Autotools-based project question
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
X-List-Received-Date: Tue, 13 Nov 2012 23:18:12 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_41DEA4B02DBDEF40A0F3B6D0DDB1237946A9D497ORSMSX101amrcor_"

--_000_41DEA4B02DBDEF40A0F3B6D0DDB1237946A9D497ORSMSX101amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I have an Autotools-based project (helloworld) that I have create and works=
.  I am trying to test the instructions in the "Autotools-Based Projects" s=
ection of the YP Application Developer's Guide (http://www.yoctoproject.org=
/docs/1.4/adt-manual/adt-manual.html#autotools-based-projects).  This short=
 section basically tells you how to use the cross-toolchain by passing the =
appropriate host option to configure.sh.  When I execute configure and pass=
 the --host and --with options it is not recognizing the --with stuff.  The=
re is a note in the section that tells what to do if this is the case.  Whe=
n I run through the steps in the note I get problems when running autoheade=
r.  It complains of AC_CONFIG_HEADERS not being in configure.in.  I tried a=
dding a line (AC_CONFIG_HEADERS) to my configure.in file but that doesn't w=
ork.  I've googled a bunch of stuff trying to educate myself but I have not=
 made any headway.  Does anyone know anything about this area?

Thanks,
Scott

Scott Rifenbark
Intel Corporation
Yocto Project Documentation
503.712.2702
503.341.0418 (cell)


--_000_41DEA4B02DBDEF40A0F3B6D0DDB1237946A9D497ORSMSX101amrcor_
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
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
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
<p class=3D"MsoNormal">I have an Autotools-based project (helloworld) that =
I have create and works.&nbsp; I am trying to test the instructions in the =
&#8220;Autotools-Based Projects&#8221; section of the YP Application Develo=
per&#8217;s Guide (<a href=3D"http://www.yoctoproject.org/docs/1.4/adt-manu=
al/adt-manual.html#autotools-based-projects">http://www.yoctoproject.org/do=
cs/1.4/adt-manual/adt-manual.html#autotools-based-projects</a>).&nbsp;
 This short section basically tells you how to use the cross-toolchain by p=
assing the appropriate host option to configure.sh.&nbsp; When I execute co=
nfigure and pass the &#8211;-host and &#8211;-with options it is not recogn=
izing the &#8211;-with stuff.&nbsp; There is a note in the section
 that tells what to do if this is the case.&nbsp; When I run through the st=
eps in the note I get problems when running autoheader.&nbsp; It complains =
of AC_CONFIG_HEADERS not being in configure.in.&nbsp; I tried adding a line=
 (AC_CONFIG_HEADERS) to my configure.in file but
 that doesn&#8217;t work.&nbsp; I&#8217;ve googled a bunch of stuff trying =
to educate myself but I have not made any headway.&nbsp; Does anyone know a=
nything about this area? &nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Scott<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;;color:blue">Scott Rifenbark</span></b><=
b><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-=
serif&quot;;color:blue"><o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><span style=3D"font-size:7.5pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:blue">Intel Corporation</span><span s=
tyle=3D"font-size:7.5pt;font-family:&quot;Times New Roman&quot;,&quot;serif=
&quot;"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:7.5pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:blue">Yocto Project Documentation<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:7.5pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:blue">503.712.2702</span><span style=
=3D"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&qu=
ot;"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:7.5pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:blue">503.341.0418 (cell)</span><span=
 style=3D"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;se=
rif&quot;"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_41DEA4B02DBDEF40A0F3B6D0DDB1237946A9D497ORSMSX101amrcor_--
