Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31378E01428
	for <yocto@yoctoproject.org>; Tue,  3 Jul 2012 12:53:14 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 03 Jul 2012 12:53:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; 
	d="scan'208,217";a="173080775"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by fmsmga001.fm.intel.com with ESMTP; 03 Jul 2012 12:53:00 -0700
Received: from orsmsx102.amr.corp.intel.com (10.22.225.129) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 3 Jul 2012 12:53:00 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.125]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.101]) with mapi id
	14.01.0355.002; Tue, 3 Jul 2012 12:52:59 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: jfabernathy <jfabernathy@gmail.com>, Chris Hallinan <challinan@gmail.com>
Thread-Topic: [yocto] prerequisite tools for making documentation
Thread-Index: AQHNWU24eedYOHPtFE2c6WYw49ejmJcYXncA//+ZS2A=
Date: Tue, 3 Jul 2012 19:52:59 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A1FAE2@ORSMSX101.amr.corp.intel.com>
References: <4FE73AF6.2060008@gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A1FA2E@ORSMSX101.amr.corp.intel.com>
	<CAME0jBRJS_zxENDxB8_-rhgwCR49B_wM-x=g-kZw=ggpWNbUcA@mail.gmail.com>
	<4FF340E2.5030500@gmail.com>
In-Reply-To: <4FF340E2.5030500@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: prerequisite tools for making documentation
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
X-List-Received-Date: Tue, 03 Jul 2012 19:53:14 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_41DEA4B02DBDEF40A0F3B6D0DDB1237946A1FAE2ORSMSX101amrcor_"

--_000_41DEA4B02DBDEF40A0F3B6D0DDB1237946A1FAE2ORSMSX101amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Jim - thanks for the list for Ubuntu.  If anyone has knowledge of building =
the BitBake documentation on Fedora, CentOS, and openSUSE and the packages =
needed that are not in the QS, please post.

Thanks,
Scott

From: jfabernathy [mailto:jfabernathy@gmail.com]
Sent: Tuesday, July 03, 2012 11:59 AM
To: Chris Hallinan
Cc: Rifenbark, Scott M; yocto@yoctoproject.org
Subject: Re: [yocto] prerequisite tools for making documentation

On 07/03/2012 02:57 PM, Chris Hallinan wrote:
On Tue, Jul 3, 2012 at 2:25 PM, Rifenbark, Scott M <scott.m.rifenbark@intel=
.com<mailto:scott.m.rifenbark@intel.com>> wrote:
Jim,

Do you have a list of what you had to install?  I can add this to the QS "P=
ackages" section.

Scott

-----Original Message-----
From: yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org>=
 [mailto:yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.o=
rg>] On Behalf Of jfabernathy
Sent: Sunday, June 24, 2012 9:06 AM
To: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Subject: [yocto] prerequisite tools for making documentation

I had a need to look at the bitbake manual in the
poky/bitbake/doc/manual directory and tried to make pdf.  I had all the
prerequisites listed in the QS guide.  However, I found the make failed
due to a number of xml related tools being missing.  I installed those
and got the pdf manual generated.

Should we add those xml tools to the prerequisites?  BTW, I'm using
denzil branch and referring to the QS guide 1.2.

I'd also be interested in knowing what host you built it on, as several of =
us (including myself) have had difficulty building docs.


I'm running Ubuntu 12.04 LTS.

Jim A

Thanks,

Chris

--
Life is like Linux - it never stands still.



--_000_41DEA4B02DBDEF40A0F3B6D0DDB1237946A1FAE2ORSMSX101amrcor_
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
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";
	color:black;}
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
<body bgcolor=3D"white" lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Jim &#8211; thanks for th=
e list for Ubuntu.&nbsp; If anyone has knowledge of building the BitBake do=
cumentation on Fedora, CentOS, and openSUSE and the packages needed
 that are not in the QS, please post.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Thanks,
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Scott<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;;color:windowtext">From:</span></b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif=
&quot;;color:windowtext"> jfabernathy [mailto:jfabernathy@gmail.com]
<br>
<b>Sent:</b> Tuesday, July 03, 2012 11:59 AM<br>
<b>To:</b> Chris Hallinan<br>
<b>Cc:</b> Rifenbark, Scott M; yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] prerequisite tools for making documentation<o:p=
></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">On 07/03/2012 02:57 PM, Chris Hallinan wrote:<o:p></=
o:p></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal">On Tue, Jul 3, 2012 at 2:25 PM, Rifenbark, Scott M &=
lt;<a href=3D"mailto:scott.m.rifenbark@intel.com" target=3D"_blank">scott.m=
.rifenbark@intel.com</a>&gt; wrote:<o:p></o:p></p>
<div>
<blockquote style=3D"border:none;border-left:solid #CCCCCC 1.0pt;padding:0i=
n 0in 0in 6.0pt;margin-left:4.8pt;margin-right:0in">
<p class=3D"MsoNormal">Jim,<br>
<br>
Do you have a list of what you had to install? &nbsp;I can add this to the =
QS &quot;Packages&quot; section.<br>
<br>
Scott<br>
<br>
-----Original Message-----<br>
From: <a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yocto=
project.org</a> [mailto:<a href=3D"mailto:yocto-bounces@yoctoproject.org">y=
octo-bounces@yoctoproject.org</a>] On Behalf Of jfabernathy<br>
Sent: Sunday, June 24, 2012 9:06 AM<br>
To: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br=
>
Subject: [yocto] prerequisite tools for making documentation<br>
<br>
I had a need to look at the bitbake manual in the<br>
poky/bitbake/doc/manual directory and tried to make pdf. &nbsp;I had all th=
e<br>
prerequisites listed in the QS guide. &nbsp;However, I found the make faile=
d<br>
due to a number of xml related tools being missing. &nbsp;I installed those=
<br>
and got the pdf manual generated.<br>
<br>
Should we add those xml tools to the prerequisites? &nbsp;BTW, I'm using<br=
>
denzil branch and referring to the QS guide 1.2.<o:p></o:p></p>
</blockquote>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">I'd also be interested in knowing what host you buil=
t it on, as several of us (including myself) have had difficulty building d=
ocs.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</div>
</blockquote>
<p class=3D"MsoNormal"><br>
I'm running Ubuntu 12.04 LTS.<br>
<br>
Jim A<br>
<br>
<o:p></o:p></p>
<div>
<div>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Chris<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">-- <br>
Life is like Linux - it never stands still.<br>
<br>
<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_41DEA4B02DBDEF40A0F3B6D0DDB1237946A1FAE2ORSMSX101amrcor_--
