Return-Path: <bill.pearson@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A12F8E003D8
	for <yocto@yoctoproject.org>; Sun, 19 Jan 2014 21:35:29 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 19 Jan 2014 21:31:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,689,1384329600"; 
	d="scan'208,217";a="441500165"
Received: from fmsmsx105.amr.corp.intel.com ([10.19.9.36])
	by orsmga001.jf.intel.com with ESMTP; 19 Jan 2014 21:35:19 -0800
Received: from fmsmsx106.amr.corp.intel.com ([169.254.6.177]) by
	FMSMSX105.amr.corp.intel.com ([169.254.5.121]) with mapi id
	14.03.0123.003; Sun, 19 Jan 2014 21:35:19 -0800
From: "Pearson, Bill" <bill.pearson@intel.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] adt install not working
Thread-Index: AQHPFaE2hfRYIQ55S0SiAKOXvD76KJqNF0mA
Date: Mon, 20 Jan 2014 05:35:19 +0000
Message-ID: <CBADD1A46D7C8A49913DD18432FB2CB534FDF9A2@FMSMSX106.amr.corp.intel.com>
References: <CBADD1A46D7C8A49913DD18432FB2CB534FDEC80@FMSMSX106.amr.corp.intel.com>
	<C6510F6D410BB64A8C15398EDC6B847C8055F119@ORSMSX103.amr.corp.intel.com>
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C8055F119@ORSMSX103.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.108]
MIME-Version: 1.0
Subject: Re: adt install not working
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
X-List-Received-Date: Mon, 20 Jan 2014 05:35:34 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CBADD1A46D7C8A49913DD18432FB2CB534FDF9A2FMSMSX106amrcor_"

--_000_CBADD1A46D7C8A49913DD18432FB2CB534FDF9A2FMSMSX106amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Autoconf was not installed.  That fixed this issue for me.  Thank you.

From: Zhang, Jessica
Sent: Sunday, January 19, 2014 9:34 PM
To: Pearson, Bill; yocto@yoctoproject.org
Subject: RE: [yocto] adt install not working

Hi Bill,

Is your distro Fedora or Ubuntu?  For Fedora, try "yum install autoconf" fo=
r Ubuntu, try "sudo apt-get install dh-autoreconf".

BTW, please provide info on which version of adt-installer that you've down=
loaded.

Thanks,
Jessica

From: yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org>=
 [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Pearson, Bill
Sent: Saturday, January 18, 2014 12:35 AM
To: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Subject: [yocto] adt install not working

I'm trying to follow the adt-manual and install the adt.  I downloaded the =
adt-installer tarball, unpacked it, and ran adt_installer.  What I do that,=
 it starts, but then exits saying

Configure opkg ...
./autogen.sh:  2: ./autogen.sh:  autoreconf: not found

Any idea what I'm doing wrong?

Thanks,
Bill

--_000_CBADD1A46D7C8A49913DD18432FB2CB534FDF9A2FMSMSX106amrcor_
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
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Autoconf was not insta=
lled.&nbsp; That fixed this issue for me.&nbsp; Thank you.<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><a name=3D"_MailEndCompose"><span style=3D"color:#1F=
497D"><o:p>&nbsp;</o:p></span></a></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> Zhang, Jessica <br>
<b>Sent:</b> Sunday, January 19, 2014 9:34 PM<br>
<b>To:</b> Pearson, Bill; yocto@yoctoproject.org<br>
<b>Subject:</b> RE: [yocto] adt install not working<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Hi Bill,<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Is your distro Fedora =
or Ubuntu?&nbsp; For Fedora, try &#8220;yum install autoconf&#8221; for Ubu=
ntu, try &#8220;sudo apt-get install dh-autoreconf&#8221;.<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">BTW, please provide in=
fo on which version of adt-installer that you&#8217;ve downloaded.<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Thanks,<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Jessica<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">
<a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yoctoprojec=
t.org</a> [<a href=3D"mailto:yocto-bounces@yoctoproject.org">mailto:yocto-b=
ounces@yoctoproject.org</a>]
<b>On Behalf Of </b>Pearson, Bill<br>
<b>Sent:</b> Saturday, January 18, 2014 12:35 AM<br>
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org=
</a><br>
<b>Subject:</b> [yocto] adt install not working<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m trying to follow the adt-manual and instal=
l the adt.&nbsp; I downloaded the adt-installer tarball, unpacked it, and r=
an adt_installer.&nbsp; What I do that, it starts, but then exits saying<o:=
p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Configure opkg &#8230;<o:p></o:p></p>
<p class=3D"MsoNormal">./autogen.sh:&nbsp; 2: ./autogen.sh:&nbsp; autorecon=
f: not found<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any idea what I&#8217;m doing wrong?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Bill<o:p></o:p></p>
</div>
</body>
</html>

--_000_CBADD1A46D7C8A49913DD18432FB2CB534FDF9A2FMSMSX106amrcor_--
