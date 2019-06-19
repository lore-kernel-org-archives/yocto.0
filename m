Return-Path: <vineela.tummalapalli@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0F05EE00DD3; Wed, 19 Jun 2019 15:18:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C2ECE00D33
	for <yocto@yoctoproject.org>; Wed, 19 Jun 2019 15:18:11 -0700 (PDT)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	19 Jun 2019 15:18:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,394,1557212400"; 
	d="txt'?scan'208,217";a="335316068"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by orsmga005.jf.intel.com with ESMTP; 19 Jun 2019 15:18:10 -0700
Received: from orsmsx112.amr.corp.intel.com (10.22.240.13) by
	ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server
	(TLS) id 14.3.439.0; Wed, 19 Jun 2019 15:18:09 -0700
Received: from orsmsx107.amr.corp.intel.com ([169.254.1.18]) by
	ORSMSX112.amr.corp.intel.com ([169.254.3.232]) with mapi id
	14.03.0439.000; Wed, 19 Jun 2019 15:18:09 -0700
From: "Tummalapalli, Vineela" <vineela.tummalapalli@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto-announce] [ANNOUNCEMENT] Milestone 1 for Yocto Project
	2.8 (yocto-2.8_M1) now available
Thread-Index: AdUm3iyH3e+reKodTQ2xE5yZm4iDOwAAw93gAAF0K1A=
Date: Wed, 19 Jun 2019 22:18:09 +0000
Message-ID: <363DC7214F94884BBF80916755E7D655206E057D@ORSMSX107.amr.corp.intel.com>
References: <363DC7214F94884BBF80916755E7D655206E046A@ORSMSX107.amr.corp.intel.com>
	<363DC7214F94884BBF80916755E7D655206E04E7@ORSMSX107.amr.corp.intel.com>
In-Reply-To: <363DC7214F94884BBF80916755E7D655206E04E7@ORSMSX107.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNjQyNmJmYWUtMzdhYS00YTJmLThjNzEtYmFhZWYxYzlmMDY3IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiT3FIdjUwM1UxYjdjbE1lb2Y5ZFpVazhXQWllUnJIVUZwTjVFdmRDVmd6V2FZVmFhU1wvWjZOdmZuUE42TjlZemgifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: FW: [yocto-announce] [ANNOUNCEMENT] Milestone 1 for Yocto Project 2.8 (yocto-2.8_M1) now available
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
X-List-Received-Date: Wed, 19 Jun 2019 22:18:12 -0000
X-Groupsio-MsgNum: 45653
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_004_363DC7214F94884BBF80916755E7D655206E057DORSMSX107amrcor_"

--_004_363DC7214F94884BBF80916755E7D655206E057DORSMSX107amrcor_
Content-Type: multipart/alternative;
	boundary="_000_363DC7214F94884BBF80916755E7D655206E057DORSMSX107amrcor_"

--_000_363DC7214F94884BBF80916755E7D655206E057DORSMSX107amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


From: yocto-announce-bounces@yoctoproject.org [mailto:yocto-announce-bounce=
s@yoctoproject.org] On Behalf Of Tummalapalli, Vineela
Sent: Wednesday, June 19, 2019 2:35 PM
To: yocto-announce@yoctoproject.org; yocto@yocoproject.org
Subject: Re: [yocto-announce] [ANNOUNCEMENT] Milestone 1 for Yocto Project =
2.8 (yocto-2.8_M1) now available

Hello,


We are pleased to announce the second milestone release for Yocto Project 2=
.8 (yocto-2.8_M1) is available for download now.



Download:



http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-2.8_M1/



bitbake: c4d90890547af642e99cc541af3415df3559563e

meta-gplv2: 168a5070bdf3bc45edb5bf2a1add9b7c081f5b64

meta-intel: c941d896c08d6d83694ba0af1fdf4f4dcb625e9f

meta-mingw: d17724b0eac76792a49e56213cba74e32edba48f

oecore: 86266dfcd70b8e3435d267538c3e6e4d69be829e

poky: 9910a3631ce953b8dd8f3d57d6e122c7fd8cb462



Test report:



http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-2.8_M1/te=
streport.txt



Thank you.



Vineela Tummalapalli

Yocto Project Build and Release
Vineela.tummalapalli@intel.com<mailto:Vineela.tummalapalli@intel.com>

--_000_363DC7214F94884BBF80916755E7D655206E057DORSMSX107amrcor_
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
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Courier New";}
span.EmailStyle19
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle20
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle21
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
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
<p class=3D"MsoNormal"><a name=3D"_MailEndCompose"><span style=3D"color:#1F=
497D"><o:p>&nbsp;</o:p></span></a></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><a name=3D"_____replyseparator"></a><b>From:</b> yoc=
to-announce-bounces@yoctoproject.org [mailto:yocto-announce-bounces@yoctopr=
oject.org]
<b>On Behalf Of </b>Tummalapalli, Vineela<br>
<b>Sent:</b> Wednesday, June 19, 2019 2:35 PM<br>
<b>To:</b> yocto-announce@yoctoproject.org; yocto@yocoproject.org<br>
<b>Subject:</b> Re: [yocto-announce] [ANNOUNCEMENT] Milestone 1 for Yocto P=
roject 2.8 (yocto-2.8_M1) now available<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Hello,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<pre><span style=3D"color:black">We are pleased to announce the second mile=
stone release for Yocto Project 2.</span><span style=3D"color:#1F497D">8</s=
pan><span style=3D"color:black"> (yocto-2.</span><span style=3D"color:#1F49=
7D">8</span><span style=3D"color:black">_M</span><span style=3D"color:#1F49=
7D">1</span><span style=3D"color:black">) is available for download now.<o:=
p></o:p></span></pre>
<pre><span style=3D"color:black"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"color:black">Download:<o:p></o:p></span></pre>
<pre><span style=3D"color:black"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"color:black"><a href=3D"http://downloads.yoctoproject.o=
rg/releases/yocto/milestones/yocto-2.8_M1/">http://downloads.yoctoproject.o=
rg/releases/yocto/milestones/yocto-2.8_M1/</a><o:p></o:p></span></pre>
<pre><span style=3D"color:black"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"color:black">bitbake: c4d90890547af642e99cc541af3415df3=
559563e<o:p></o:p></span></pre>
<pre><span style=3D"color:black">meta-gplv2: 168a5070bdf3bc45edb5bf2a1add9b=
7c081f5b64<o:p></o:p></span></pre>
<pre><span style=3D"color:black">meta-intel: c941d896c08d6d83694ba0af1fdf4f=
4dcb625e9f<o:p></o:p></span></pre>
<pre><span style=3D"color:black">meta-mingw: d17724b0eac76792a49e56213cba74=
e32edba48f<o:p></o:p></span></pre>
<pre><span style=3D"color:black">oecore: 86266dfcd70b8e3435d267538c3e6e4d69=
be829e<o:p></o:p></span></pre>
<pre><span style=3D"color:black">poky: 9910a3631ce953b8dd8f3d57d6e122c7fd8c=
b462<o:p></o:p></span></pre>
<pre><span style=3D"color:black"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"color:black">Test report:<o:p></o:p></span></pre>
<pre><span style=3D"color:black"><o:p>&nbsp;</o:p></span></pre>
<pre><a href=3D"http://downloads.yoctoproject.org/releases/yocto/milestones=
/yocto-2.8_M1/testreport.txt">http://downloads.yoctoproject.org/releases/yo=
cto/milestones/yocto-2.8_M1/testreport.txt</a><o:p></o:p></pre>
<pre><span style=3D"color:black"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"color:black">Thank you.<o:p></o:p></span></pre>
<pre><span style=3D"color:black"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"color:black">Vineela Tummalapalli<o:p></o:p></span></pr=
e>
<pre><span style=3D"color:black">Yocto Project Build and Release<o:p></o:p>=
</span></pre>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black"><a href=3D"mailto:Vineela.tummalapalli@intel.c=
om"><span style=3D"color:black;text-decoration:none">Vineela.tummalapalli@i=
ntel.com</span></a>
<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_363DC7214F94884BBF80916755E7D655206E057DORSMSX107amrcor_--

--_004_363DC7214F94884BBF80916755E7D655206E057DORSMSX107amrcor_
Content-Type: text/plain; name="ATT00001.txt"
Content-Description: ATT00001.txt
Content-Disposition: attachment; filename="ATT00001.txt"; size=172;
	creation-date="Wed, 19 Jun 2019 21:35:24 GMT";
	modification-date="Wed, 19 Jun 2019 21:35:24 GMT"
Content-ID: <8E66892B675EDA4DB1DF243DC044E944@intel.com>
Content-Transfer-Encoding: base64

LS0gDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KeW9j
dG8tYW5ub3VuY2UgbWFpbGluZyBsaXN0DQp5b2N0by1hbm5vdW5jZUB5b2N0b3Byb2plY3Qub3Jn
DQpodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvbGlzdGluZm8veW9jdG8tYW5ub3VuY2UN
Cg==

--_004_363DC7214F94884BBF80916755E7D655206E057DORSMSX107amrcor_--
