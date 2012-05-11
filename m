Return-Path: <kishore.k.bodke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C25AAE00723
	for <yocto@yoctoproject.org>; Fri, 11 May 2012 10:04:29 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 11 May 2012 10:04:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; 
	d="scan'208,217";a="165030801"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by fmsmga002.fm.intel.com with ESMTP; 11 May 2012 10:04:14 -0700
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 11 May 2012 10:04:14 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.232]) by
	ORSMSX153.amr.corp.intel.com ([169.254.13.77]) with mapi id
	14.01.0355.002; Fri, 11 May 2012 10:04:13 -0700
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: Yocto Project Discussions <yocto@linux.intel.com>
Thread-Topic: Unable to fetch URL from any source
Thread-Index: Ac0vXYfqo3OUnH4MTu+dY+HkyEL2NAAOdnqg
Date: Fri, 11 May 2012 17:04:12 +0000
Message-ID: <D956029D25CF204F948EA0FB515E1EE20ACACD57@ORSMSX105.amr.corp.intel.com>
References: <99B4EF8390848E44BF0CFDBD67466FA40ECE86@PGSMSX103.gar.corp.intel.com>
In-Reply-To: <99B4EF8390848E44BF0CFDBD67466FA40ECE86@PGSMSX103.gar.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Unable to fetch URL from any source
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
X-List-Received-Date: Fri, 11 May 2012 17:04:30 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_D956029D25CF204F948EA0FB515E1EE20ACACD57ORSMSX105amrcor_"

--_000_D956029D25CF204F948EA0FB515E1EE20ACACD57ORSMSX105amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Yes.
I saw the same failures too.
For some reason 3.0 kernel fetch failures started showing up for Cedartrail=
.
There is a discussion thread on this in the mailing list.
Bruce might be able to give some pointers on this.

-Kishore.

From: yocto-bounces@linux.intel.com [mailto:yocto-bounces@linux.intel.com] =
On Behalf Of Chiang, Terence
Sent: Friday, May 11, 2012 3:05 AM
To: Yocto Project Discussions (yocto@linux.intel.com)
Subject: [Yocto] Unable to fetch URL from any source

Hi
While I build the image for cedartrail with "denzil"
With meta-cedartrail and distro =3D "poky". the error is following and the =
detail log is attached.

Function failed: Fetcher failure for URL: 'git://git.yoctoproject.org/linux=
-yocto-3.0;protocol=3Dgit;bareclone=3D1;branch=3Dyocto/standard/cedartrail,=
meta,yocto/pvr;name=3Dmachine,meta,pvr'. Unable to fetch URL from any sourc=
e.

Do you encounter similar issue?

Regard,
-Terence


--_000_D956029D25CF204F948EA0FB515E1EE20ACACD57ORSMSX105amrcor_
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
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle18
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
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Yes.<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">I saw the same failure=
s too.&nbsp; <o:p>
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">For some reason 3.0 ke=
rnel fetch failures started showing up for Cedartrail.<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">There is a discussion =
thread on this in the mailing list.&nbsp;
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Bruce might be able to=
 give some pointers on this.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-Kishore.<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> yocto-bo=
unces@linux.intel.com [mailto:yocto-bounces@linux.intel.com]
<b>On Behalf Of </b>Chiang, Terence<br>
<b>Sent:</b> Friday, May 11, 2012 3:05 AM<br>
<b>To:</b> Yocto Project Discussions (yocto@linux.intel.com)<br>
<b>Subject:</b> [Yocto] Unable to fetch URL from any source<o:p></o:p></spa=
n></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hi <o:p></o:p></p>
<p class=3D"MsoNormal">While I build the image for cedartrail with &#8220;d=
enzil&#8221;<o:p></o:p></p>
<p class=3D"MsoNormal">With meta-cedartrail and distro =3D &#8220;poky&#822=
1;. the error is following and the detail log is attached.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Function failed: Fetcher failure for URL: 'git://git=
.yoctoproject.org/linux-yocto-3.0;protocol=3Dgit;bareclone=3D1;branch=3Dyoc=
to/standard/cedartrail,meta,yocto/pvr;name=3Dmachine,meta,pvr'. Unable to f=
etch URL from any source.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Do you encounter similar issue?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><i>Regard,<o:p></o:p></i></p>
<p class=3D"MsoNormal">-Terence<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</div>
</body>
</html>

--_000_D956029D25CF204F948EA0FB515E1EE20ACACD57ORSMSX105amrcor_--
