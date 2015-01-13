Return-Path: <scott.m.rifenbark@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E3C42E00874; Tue, 13 Jan 2015 07:34:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47D82E00823
	for <yocto@yoctoproject.org>; Tue, 13 Jan 2015 07:33:53 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga103.jf.intel.com with ESMTP; 13 Jan 2015 07:30:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,750,1413270000"; 
	d="scan'208,217";a="636652395"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by orsmga001.jf.intel.com with ESMTP; 13 Jan 2015 07:33:51 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.116]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.8]) with mapi id
	14.03.0195.001; Tue, 13 Jan 2015 07:33:51 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Chris Hallinan <challinan@gmail.com>
Thread-Topic: [yocto] PDF manual support
Thread-Index: AdAvPTfs2OLcKNIbRquUaPipNR9tdgAS99EAABC4HFA=
Date: Tue, 13 Jan 2015 15:33:51 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237988E9392E@ORSMSX101.amr.corp.intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237988E9387E@ORSMSX101.amr.corp.intel.com>
	<CAME0jBTgXyVNnQGuJ8hiXtuBfT8xUCdckB5cHj95pyLpRZ8n2w@mail.gmail.com>
In-Reply-To: <CAME0jBTgXyVNnQGuJ8hiXtuBfT8xUCdckB5cHj95pyLpRZ8n2w@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: PDF manual support
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
X-List-Received-Date: Tue, 13 Jan 2015 15:34:03 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_41DEA4B02DBDEF40A0F3B6D0DDB1237988E9392EORSMSX101amrcor_"

--_000_41DEA4B02DBDEF40A0F3B6D0DDB1237988E9392EORSMSX101amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I can leave them in there as a target for the Makefile.  But, they do not l=
ook pretty.  They will be created if you run them from the Makefile.

From: Chris Hallinan [mailto:challinan@gmail.com]
Sent: Tuesday, January 13, 2015 7:32 AM
To: Rifenbark, Scott M
Cc: Yocto discussion list
Subject: Re: [yocto] PDF manual support

On Tue, Jan 13, 2015 at 9:28 AM, Rifenbark, Scott M <scott.m.rifenbark@inte=
l.com<mailto:scott.m.rifenbark@intel.com>> wrote:
I am seriously considering dumping the PDF manuals for the 1.8 release.  Th=
e PDF output is less than good and there seems to have been no enthusiasm f=
or this form during the past 4 years.  Comments?

Gosh, am I the only one that still uses PDF manuals?  I like the 'P' part o=
f PDFs - standalone (no internet) and searchable.  BTW, I have occasionally=
 tried building them, without much success.  I'm sure it's a host compatibi=
lity issue, and admittedly, I haven't spent much time trying to get it work=
ing.  Please don't delete support for them ;)

-Chris



--
Life is like Linux - it never stands still.

--_000_41DEA4B02DBDEF40A0F3B6D0DDB1237988E9392EORSMSX101amrcor_
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
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">I can leave them in there=
 as a target for the Makefile.&nbsp; But, they do not look pretty.&nbsp; Th=
ey will be created if you run them from the Makefile.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Chris Ha=
llinan [mailto:challinan@gmail.com]
<br>
<b>Sent:</b> Tuesday, January 13, 2015 7:32 AM<br>
<b>To:</b> Rifenbark, Scott M<br>
<b>Cc:</b> Yocto discussion list<br>
<b>Subject:</b> Re: [yocto] PDF manual support<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div>
<div>
<p class=3D"MsoNormal">On Tue, Jan 13, 2015 at 9:28 AM, Rifenbark, Scott M =
&lt;<a href=3D"mailto:scott.m.rifenbark@intel.com" target=3D"_blank">scott.=
m.rifenbark@intel.com</a>&gt; wrote:<o:p></o:p></p>
<p class=3D"MsoNormal">I am seriously considering dumping the PDF manuals f=
or the 1.8 release.&nbsp; The PDF output is less than good and there seems =
to have been no enthusiasm for this form during the past 4 years.&nbsp; Com=
ments?<o:p></o:p></p>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<p class=3D"MsoNormal">Gosh, am I the only one that still uses PDF manuals?=
&nbsp; I like the 'P' part of PDFs - standalone (no internet) and searchabl=
e.&nbsp; BTW, I have occasionally tried building them, without much success=
.&nbsp; I'm sure it's a host compatibility issue,
 and admittedly, I haven't spent much time trying to get it working.&nbsp; =
Please don't delete support for them ;)<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">-Chris<o:p></o:p></p>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</div>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<p class=3D"MsoNormal">-- <o:p></o:p></p>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">Life is like Linux - =
it never stands still.<o:p></o:p></p>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_41DEA4B02DBDEF40A0F3B6D0DDB1237988E9392EORSMSX101amrcor_--
