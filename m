Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B2F1E007D4
	for <yocto@yoctoproject.org>; Thu, 12 Dec 2013 04:44:45 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 12 Dec 2013 04:44:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,878,1378882800"; 
	d="scan'208,217";a="443060818"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
	by fmsmga001.fm.intel.com with ESMTP; 12 Dec 2013 04:44:43 -0800
Received: from orsmsx115.amr.corp.intel.com (10.22.240.11) by
	ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Thu, 12 Dec 2013 04:44:43 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.94]) by
	ORSMSX115.amr.corp.intel.com ([10.22.240.11]) with mapi id
	14.03.0123.003; Thu, 12 Dec 2013 04:44:43 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Rudolf Streif <rstreif@linuxfoundation.org>
Thread-Topic: [yocto] FW: curious about ref manual, sec 6.1.11,
	oe-init-build-env-memres
Thread-Index: AQHO2yDAnNULuC+NxkqDVDORcZa5k5oYkbhAgACeXICAAADKAIAAx/hwgDaCS4CAAD4E8A==
Date: Thu, 12 Dec 2013 12:44:42 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F53EDC@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1311061346180.25975@oneiric>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237983F44CAE@ORSMSX101.amr.corp.intel.com>
	<527AA8B5.8060603@linux.intel.com>
	<alpine.DEB.2.02.1311061540140.23267@oneiric>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237983F4503C@ORSMSX101.amr.corp.intel.com>
	<CA+gsK-rSG6mnkBq-s9LnXdCCfAfLO1TRWqOMLKZCjHOy_NJ+bA@mail.gmail.com>
In-Reply-To: <CA+gsK-rSG6mnkBq-s9LnXdCCfAfLO1TRWqOMLKZCjHOy_NJ+bA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: FW: curious about ref manual, sec 6.1.11, oe-init-build-env-memres
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
X-List-Received-Date: Thu, 12 Dec 2013 12:44:45 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_41DEA4B02DBDEF40A0F3B6D0DDB1237983F53EDCORSMSX101amrcor_"

--_000_41DEA4B02DBDEF40A0F3B6D0DDB1237983F53EDCORSMSX101amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I would opt for solution one as well since it makes it more consistent with=
 the regular setup script.

Scott

From: Rudolf Streif [mailto:rstreif@linuxfoundation.org]
Sent: Wednesday, December 11, 2013 5:01 PM
To: Rifenbark, Scott M
Cc: Robert P. J. Day; Saul Wold; Yocto discussion list
Subject: Re: [yocto] FW: curious about ref manual, sec 6.1.11, oe-init-buil=
d-env-memres

I am picking up this thread since I have been mocking around with the bitba=
ke server.

The use of the oe-init-build-env-memresscript is

source oe-init-build-env-memres <portnumber> <buildenv>

The documentation suggests that you can omit the portnumber in which case t=
he script would use 12345. According to my tests with master [1] that is ap=
parently not the case. If you omit the portnumber such as

source oe-init-build-env-memres mybuildenv

 the script will create a build environment with the name build and then tr=
ies to convert mybuildenv into a portnumber wich will most likely fail unle=
ss you used an integer number for the name of your build environment.

This behavior is expected since how would the script for a simple variable =
list that does not use any option names be able to reliably detect if the f=
irst parameter is a portnumber or a build environment name?

There are two possible fixes for that:

  1.  Reverse the order of the two arguments in which case you can omit eit=
her the portnumber or both arguments. It would also make the command line o=
f the script more consistent with oe-init-build-env.
  2.  Check if the first argument is an integer (since portnumbers are alwa=
ys integers).
I would prefer 1. but then Scott would have to change the documentation. I =
can submit a patch if that is any interest.

BTW, is the protocol that the bitbake server expects on that port documente=
d somewhere (other than the source code that is)?

Cheers,
Rudi




[1] master:c9b2e30988a9eb514d42a4cf4266b032ffc36f98

On Thu, Nov 7, 2013 at 8:37 AM, Rifenbark, Scott M <scott.m.rifenbark@intel=
.com<mailto:scott.m.rifenbark@intel.com>> wrote:
I updated the section.  See if that is better.

Thanks
Scott

>-----Original Message-----
>From: Robert P. J. Day [mailto:rpjday@crashcourse.ca<mailto:rpjday@crashco=
urse.ca>]
>Sent: Wednesday, November 06, 2013 12:41 PM
>To: Saul Wold
>Cc: Rifenbark, Scott M; Yocto discussion list
>Subject: Re: [yocto] FW: curious about ref manual, sec 6.1.11, oe-init-bui=
ld-
>env-memres
>
>On Wed, 6 Nov 2013, Saul Wold wrote:
>
>> On 11/06/2013 11:11 AM, Rifenbark, Scott M wrote:
>> > Anyone know this?
>> >
>> > > -----Original Message-----
>> > > From: Robert P. J. Day [mailto:rpjday@crashcourse.ca<mailto:rpjday@c=
rashcourse.ca>]
>> > > Sent: Wednesday, November 06, 2013 10:48 AM
>> > > To: Rifenbark, Scott M
>> > > Subject: curious about ref manual, sec 6.1.11,
>> > > oe-init-build-env-memres
>> > >
>> > >
>> > >   i've never used that memory-resident version of bitbake -- it's
>> > > not clear from that section whether you need to start bitbake
>> > > running before you run that script.
>> > >
>> Running that scripts will start the server at the default port of
>> 12345 and setup the default "build" directory.
>
>  i suspected as much, but the way that section is worded, that isn't clea=
r.
>thanks.
>
>rday
>
>--
>
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                        http://crashcourse.ca
>
>Twitter:                                       http://twitter.com/rpjday
>LinkedIn:                               http://ca.linkedin.com/in/rpjday
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
_______________________________________________
yocto mailing list
yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
https://lists.yoctoproject.org/listinfo/yocto




--_000_41DEA4B02DBDEF40A0F3B6D0DDB1237983F53EDCORSMSX101amrcor_
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
/* List Definitions */
@list l0
	{mso-list-id:2009165567;
	mso-list-template-ids:-33500544;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
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
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">I would opt for solution =
one as well since it makes it more consistent with the regular setup script=
.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Scott<o:p></o:p></span></=
p>
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
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Rudolf S=
treif [mailto:rstreif@linuxfoundation.org]
<br>
<b>Sent:</b> Wednesday, December 11, 2013 5:01 PM<br>
<b>To:</b> Rifenbark, Scott M<br>
<b>Cc:</b> Robert P. J. Day; Saul Wold; Yocto discussion list<br>
<b>Subject:</b> Re: [yocto] FW: curious about ref manual, sec 6.1.11, oe-in=
it-build-env-memres<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">I am picking up this thread since I have been mockin=
g around with the bitbake server.<o:p></o:p></p>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">The use of the oe-init-build-env-memresscript is<o:p=
></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">source oe-init-build-env-memres &lt;portnumber&gt; &=
lt;buildenv&gt;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">The documentation suggests that you can omit the por=
tnumber in which case the script would use 12345. According to my tests wit=
h master [1] that is apparently not the case. If you omit the portnumber su=
ch as<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">source oe-init-build-env-memres mybuildenv<o:p></o:p=
></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">&nbsp;the script will create a build environment wit=
h the name build and then tries to convert mybuildenv into a portnumber wic=
h will most likely fail unless you used an integer number for the name of y=
our build environment.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">This behavior is expected since how would the script=
 for a simple variable list that does not use any option names be able to r=
eliably detect if the first parameter is a portnumber or a build environmen=
t name?<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">There are two possible fixes for that:<o:p></o:p></p=
>
</div>
<div>
<ol start=3D"1" type=3D"1">
<li class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto;mso-list:l0 level1 lfo1">
Reverse the order of the two arguments in which case you can omit either th=
e portnumber or both arguments. It would also make the command line of the =
script more consistent with oe-init-build-env.<o:p></o:p></li><li class=3D"=
MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-=
list:l0 level1 lfo1">
Check if the first argument is an integer (since portnumbers are always int=
egers).<o:p></o:p></li></ol>
</div>
<div>
<p class=3D"MsoNormal">I would prefer 1. but then Scott would have to chang=
e the documentation. I can submit a patch if that is any interest.<o:p></o:=
p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">BTW, is the protocol that the bitbake server expects=
 on that port documented somewhere (other than the source code that is)?<o:=
p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Cheers,<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Rudi<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">[1]&nbsp;master:c9b2e30988a9eb514d42a4cf4266b032ffc3=
6f98<o:p></o:p></p>
</div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">On Thu, Nov 7, 2013 at 8:37 AM, Rifenbark, Scott M &=
lt;<a href=3D"mailto:scott.m.rifenbark@intel.com" target=3D"_blank">scott.m=
.rifenbark@intel.com</a>&gt; wrote:<o:p></o:p></p>
<p class=3D"MsoNormal">I updated the section. &nbsp;See if that is better.<=
br>
<br>
Thanks<br>
<span style=3D"color:#888888">Scott</span><o:p></o:p></p>
<div>
<p class=3D"MsoNormal"><br>
&gt;-----Original Message-----<br>
&gt;From: Robert P. J. Day [mailto:<a href=3D"mailto:rpjday@crashcourse.ca"=
>rpjday@crashcourse.ca</a>]<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">&gt;Sent: Wednesday, November 06, 2013 12:41 PM<br>
&gt;To: Saul Wold<br>
&gt;Cc: Rifenbark, Scott M; Yocto discussion list<o:p></o:p></p>
</div>
<div>
<div>
<p class=3D"MsoNormal">&gt;Subject: Re: [yocto] FW: curious about ref manua=
l, sec 6.1.11, oe-init-build-<br>
&gt;env-memres<br>
&gt;<br>
&gt;On Wed, 6 Nov 2013, Saul Wold wrote:<br>
&gt;<br>
&gt;&gt; On 11/06/2013 11:11 AM, Rifenbark, Scott M wrote:<br>
&gt;&gt; &gt; Anyone know this?<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; &gt; -----Original Message-----<br>
&gt;&gt; &gt; &gt; From: Robert P. J. Day [mailto:<a href=3D"mailto:rpjday@=
crashcourse.ca">rpjday@crashcourse.ca</a>]<br>
&gt;&gt; &gt; &gt; Sent: Wednesday, November 06, 2013 10:48 AM<br>
&gt;&gt; &gt; &gt; To: Rifenbark, Scott M<br>
&gt;&gt; &gt; &gt; Subject: curious about ref manual, sec 6.1.11,<br>
&gt;&gt; &gt; &gt; oe-init-build-env-memres<br>
&gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt; &gt; &nbsp; i've never used that memory-resident version of b=
itbake -- it's<br>
&gt;&gt; &gt; &gt; not clear from that section whether you need to start bi=
tbake<br>
&gt;&gt; &gt; &gt; running before you run that script.<br>
&gt;&gt; &gt; &gt;<br>
&gt;&gt; Running that scripts will start the server at the default port of<=
br>
&gt;&gt; 12345 and setup the default &quot;build&quot; directory.<br>
&gt;<br>
&gt; &nbsp;i suspected as much, but the way that section is worded, that is=
n't clear.<br>
&gt;thanks.<br>
&gt;<br>
&gt;rday<br>
&gt;<br>
&gt;--<br>
&gt;<br>
&gt;=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt;=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt;Robert P. J. Day &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Ottawa, Ontario, =
CANADA<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;<a href=3D"http://crashcourse.ca" target=3D"_blank">http://cra=
shcourse.ca</a><br>
&gt;<br>
&gt;Twitter: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <a h=
ref=3D"http://twitter.com/rpjday" target=3D"_blank">
http://twitter.com/rpjday</a><br>
&gt;LinkedIn: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <a href=3D"http://ca.linkedin.c=
om/in/rpjday" target=3D"_blank">
http://ca.linkedin.com/in/rpjday</a><br>
&gt;=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt;=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><o:p></o:p></p>
</div>
</div>
</div>
<p class=3D"MsoNormal"><br>
<br clear=3D"all">
<o:p></o:p></p>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_41DEA4B02DBDEF40A0F3B6D0DDB1237983F53EDCORSMSX101amrcor_--
