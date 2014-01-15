Return-Path: <cristian.iorga@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B2A5E0084E
	for <yocto@yoctoproject.org>; Wed, 15 Jan 2014 03:54:28 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 15 Jan 2014 03:54:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,662,1384329600"; 
	d="scan'208,217";a="465492768"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
	by fmsmga002.fm.intel.com with ESMTP; 15 Jan 2014 03:54:26 -0800
Received: from irsmsx153.ger.corp.intel.com (163.33.192.75) by
	IRSMSX102.ger.corp.intel.com (163.33.3.155) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Wed, 15 Jan 2014 11:54:24 +0000
Received: from irsmsx105.ger.corp.intel.com ([169.254.7.215]) by
	IRSMSX153.ger.corp.intel.com ([169.254.9.156]) with mapi id
	14.03.0123.003; Wed, 15 Jan 2014 11:54:23 +0000
From: "Iorga, Cristian" <cristian.iorga@intel.com>
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>, Khaja Hussain Shaik
	<khajahussain-s@hcl.com>
Thread-Topic: [yocto] Rgardring GSTreamer1.0 integration on Yocto dylan
Thread-Index: Ac8R300FuJ10dsUKQ0yVngGjpSs7GgAAlbCAAAGi4pA=
Date: Wed, 15 Jan 2014 11:54:23 +0000
Message-ID: <969F26A8BAB325438E7EB80D3C3134FB16CDC67D@IRSMSX105.ger.corp.intel.com>
References: <31DD9473F5EB4E468EDC3B5642AD64BD08AECFFC@chn-hclt-mbs06.HCLT.CORP.HCL.IN>
	<CAP71Wjwgmoyj-L9MVyNe4Fk=g5OGmOa7KrAKCuWP+C-=iEZX6g@mail.gmail.com>
In-Reply-To: <CAP71Wjwgmoyj-L9MVyNe4Fk=g5OGmOa7KrAKCuWP+C-=iEZX6g@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.182]
MIME-Version: 1.0
Cc: Dipesh Karmakar <Dipesh.Karmakar@hcl.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Rgardring GSTreamer1.0 integration on Yocto dylan
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
X-List-Received-Date: Wed, 15 Jan 2014 11:54:31 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_969F26A8BAB325438E7EB80D3C3134FB16CDC67DIRSMSX105gercor_"

--_000_969F26A8BAB325438E7EB80D3C3134FB16CDC67DIRSMSX105gercor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,
Nicolas is totally right here.
/Cristian Iorga
YP
Intel

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Nicolas Dechesne
Sent: Wednesday, January 15, 2014 1:05 PM
To: Khaja Hussain Shaik
Cc: Dipesh Karmakar; yocto@yoctoproject.org
Subject: Re: [yocto] Rgardring GSTreamer1.0 integration on Yocto dylan


On Wed, Jan 15, 2014 at 11:49 AM, Khaja Hussain Shaik <khajahussain-s@hcl.c=
om<mailto:khajahussain-s@hcl.com>> wrote:
Greetings from Khaja.
We are trying to make a Dylan build with GStreamer 1.0 support, however we =
are facing lots of dependencies. We like to know whether it's possible to i=
ncorporate GStreamer 1.0 in Dylan? If yes then could it be possible to dire=
ct us to some documents/procedure.

such large 'features' are not generally backported to old/stable releases. =
only bug fixes.

gst1.0 was introduced in 'dora' where you can find gst 1.0.x branch, and yo=
u have gst 1.2.x support in current master. so you either need to backport =
these changes into dylan, or switch to a newer release.



--_000_969F26A8BAB325438E7EB80D3C3134FB16CDC67DIRSMSX105gercor_
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
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Hello,<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Nicolas is totally right =
here.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">/Cristian Iorga<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">YP<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Intel<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><a name=3D"_MailEndCompose"><span style=3D"font-size=
:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497=
D"><o:p>&nbsp;</o:p></span></a></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-=
size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"> yocto-=
bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
<b>On Behalf Of </b>Nicolas Dechesne<br>
<b>Sent:</b> Wednesday, January 15, 2014 1:05 PM<br>
<b>To:</b> Khaja Hussain Shaik<br>
<b>Cc:</b> Dipesh Karmakar; yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Rgardring GSTreamer1.0 integration on Yocto dyl=
an<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">On Wed, Jan 15, 2014 at 11:49 AM, Khaja Hussain Shai=
k &lt;<a href=3D"mailto:khajahussain-s@hcl.com" target=3D"_blank">khajahuss=
ain-s@hcl.com</a>&gt; wrote:<o:p></o:p></p>
<blockquote style=3D"border:none;border-left:solid #CCCCCC 1.0pt;padding:0i=
n 0in 0in 6.0pt;margin-left:4.8pt;margin-right:0in">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Greetings from Khaja.<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">We are trying to make a Dylan build with GStreamer 1.0 support, ho=
wever we are facing lots of dependencies. We like to know whether it&#8217;=
s possible to incorporate GStreamer 1.0 in
 Dylan? If yes then could it be possible to direct us to some documents/pro=
cedure.<o:p></o:p></p>
</blockquote>
</div>
<p class=3D"MsoNormal"><br>
such large 'features' are not generally backported to old/stable releases. =
only bug fixes.&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">gst1.0 was introduced in 'dora' where you can find g=
st 1.0.x branch, and you have gst 1.2.x support in current master. so you e=
ither need to backport these changes into dylan, or switch to a newer relea=
se.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</div>
</div>
</body>
</html>

--_000_969F26A8BAB325438E7EB80D3C3134FB16CDC67DIRSMSX105gercor_--
