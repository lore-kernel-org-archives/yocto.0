Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8F0B84C804D9
	for <yocto@yoctoproject.org>; Wed, 23 Mar 2011 14:39:23 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 23 Mar 2011 12:39:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,233,1299484800"; 
	d="scan'208,217";a="407410552"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by azsmga001.ch.intel.com with ESMTP; 23 Mar 2011 12:39:20 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.226.128) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 23 Mar 2011 12:39:06 -0700
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx606.amr.corp.intel.com ([10.22.226.128]) with mapi;
	Wed, 23 Mar 2011 12:39:06 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Matt Madison <madison@cisco.com>, Mark Hatle <mark.hatle@windriver.com>
Date: Wed, 23 Mar 2011 12:39:04 -0700
Thread-Topic: [yocto] Older versions of Linux as build hosts?
Thread-Index: AcvosPeBWjAn0ceaTYWqBoK/lj6xagAAWnEQADfRtSkAAAqrUA==
Message-ID: <DE8BA75F34A0404282AC5E15F691BC7650A6EABF@orsmsx504.amr.corp.intel.com>
References: <DE8BA75F34A0404282AC5E15F691BC765074554D@orsmsx504.amr.corp.intel.com>
	<C9AF99E3.4C050%madison@cisco.com>
In-Reply-To: <C9AF99E3.4C050%madison@cisco.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: Yocto Mailer <yocto@yoctoproject.org>
Subject: Re: Older versions of Linux as build hosts?
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
X-List-Received-Date: Wed, 23 Mar 2011 19:39:24 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DE8BA75F34A0404282AC5E15F691BC7650A6EABForsmsx504amrcor_"

--_000_DE8BA75F34A0404282AC5E15F691BC7650A6EABForsmsx504amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Matt,

Thanks for putting that information on the wiki.  I will add a note to the =
QS that points there for information on older systems.

ScottR

From: Matt Madison [mailto:madison@cisco.com]
Sent: Wednesday, March 23, 2011 12:37 PM
To: Rifenbark, Scott M; Mark Hatle
Cc: Yocto Mailer
Subject: Re: [yocto] Older versions of Linux as build hosts?

I've posted some notes at https://wiki.yoctoproject.org/wiki/BuildingOnRHEL=
4 and will update further as I find more things to work around.

-Matt


On 3/22/11 10:00 AM, "Rifenbark, Scott M" <scott.m.rifenbark@intel.com> wro=
te:
Yes - the wiki is a great place for this type of information.  All the spec=
ifics for a particular build system and the steps you have to take to make =
it work can be collected there.  Then from the Quick Start we can mention w=
here to get support information for older versions.

ScottR

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Mark Hatle
Sent: Tuesday, March 22, 2011 9:48 AM
To: Matt Madison
Cc: Yocto Mailer
Subject: Re: [yocto] Older versions of Linux as build hosts?

On 3/22/11 11:40 AM, Matt Madison wrote:
> Hi,
>

I have done builds with both RHEL 4 and RHEL 5.  Both on machines in which =
I do
not have root access.

For me I was able to simply provide an update python, some additional tools=
 and
it worked.  (Note, I haven't tried it in the last 2 months though, so somet=
hing
may have broken since then.)

> I know the documentation mentions that you should be running a "reasonabl=
y
> current" Linux as your build host, but in my enterprise environment I'm s=
tuck
> with having to run fairly old versions, based on RHEL 4 and 5.  I've got =
some
> patches that I've been maintaining so I can bootstrap Bernard builds on t=
hese
> systems.  Is there any interest in supporting older systems as build host=
s?  Any
> thoughts on how far back "reasonably current" is going to be with each Yo=
cto
> release?  I'm trying to work with my IT group to upgrade a bit more frequ=
ently,
> and for developer workstations, that might be possible, but I'm not sure =
I'll be
> able to convince them to do that for servers in our data centers.
>
> Is anyone else having this kind of problem?

I think this is a fairly typical problem.  In my experience it's usually ea=
sier
to solve in a commercial space then pure open source.

As for the question about interest, we're always interested in patches.  At=
 a
minimum, it would be nice to document what steps you had to do and what pat=
ches
you may have had to apply in order to get "unsupported" functionality out o=
f the
build environment.  The yocto wiki seems a fairly natural place for this.

So please send what you have, or start an account on the Yocto Wiki and pos=
t it
there.

--Mark

> Thanks,
> -Matt
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

--_000_DE8BA75F34A0404282AC5E15F691BC7650A6EABForsmsx504amrcor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=3DContent-Type content=3D"text/html; charset=3Dus-ascii">
<meta name=3DGenerator content=3D"Microsoft Word 12 (filtered medium)">
<title>Re: [yocto] Older versions of Linux as build hosts?</title>
<style>
<!--
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
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
-->
</style>
<!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext=3D"edit">
  <o:idmap v:ext=3D"edit" data=3D"1" />
 </o:shapelayout></xml><![endif]-->
</head>

<body lang=3DEN-US link=3Dblue vlink=3Dpurple>

<div class=3DWordSection1>

<p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri",=
"sans-serif";
color:#1F497D'>Matt, <o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri",=
"sans-serif";
color:#1F497D'><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri",=
"sans-serif";
color:#1F497D'>Thanks for putting that information on the wiki.&nbsp; I wil=
l
add a note to the QS that points there for information on older systems. <o=
:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri",=
"sans-serif";
color:#1F497D'><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri",=
"sans-serif";
color:#1F497D'>ScottR<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri",=
"sans-serif";
color:#1F497D'><o:p>&nbsp;</o:p></span></p>

<div>

<div style=3D'border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in'>

<p class=3DMsoNormal><b><span style=3D'font-size:10.0pt;font-family:"Tahoma=
","sans-serif"'>From:</span></b><span
style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'> Matt Madison
[mailto:madison@cisco.com] <br>
<b>Sent:</b> Wednesday, March 23, 2011 12:37 PM<br>
<b>To:</b> Rifenbark, Scott M; Mark Hatle<br>
<b>Cc:</b> Yocto Mailer<br>
<b>Subject:</b> Re: [yocto] Older versions of Linux as build hosts?<o:p></o=
:p></span></p>

</div>

</div>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal style=3D'margin-bottom:12.0pt'><span style=3D'font-siz=
e:10.0pt;
font-family:"Calibri","sans-serif"'>I&#8217;ve posted some notes at <a
href=3D"https://wiki.yoctoproject.org/wiki/BuildingOnRHEL4">https://wiki.yo=
ctoproject.org/wiki/BuildingOnRHEL4</a>
and will update further as I find more things to work around.<br>
<br>
-Matt<br>
<br>
<br>
On 3/22/11 10:00 AM, &quot;Rifenbark, Scott M&quot; &lt;<a
href=3D"scott.m.rifenbark@intel.com">scott.m.rifenbark@intel.com</a>&gt; wr=
ote:</span><o:p></o:p></p>

<p class=3DMsoNormal style=3D'margin-bottom:12.0pt'><span style=3D'font-siz=
e:10.0pt;
font-family:"Calibri","sans-serif"'>Yes - the wiki is a great place for thi=
s
type of information. &nbsp;All the specifics for a particular build system =
and
the steps you have to take to make it work can be collected there. &nbsp;Th=
en
from the Quick Start we can mention where to get support information for ol=
der
versions.<br>
<br>
ScottR<br>
<br>
-----Original Message-----<br>
From: <a href=3D"yocto-bounces@yoctoproject.org">yocto-bounces@yoctoproject=
.org</a>
[<a href=3D"mailto:yocto-bounces@yoctoproject.org">mailto:yocto-bounces@yoc=
toproject.org</a>]
On Behalf Of Mark Hatle<br>
Sent: Tuesday, March 22, 2011 9:48 AM<br>
To: Matt Madison<br>
Cc: Yocto Mailer<br>
Subject: Re: [yocto] Older versions of Linux as build hosts?<br>
<br>
On 3/22/11 11:40 AM, Matt Madison wrote:<br>
&gt; Hi,<br>
&gt;<br>
<br>
I have done builds with both RHEL 4 and RHEL 5. &nbsp;Both on machines in w=
hich
I do<br>
not have root access.<br>
<br>
For me I was able to simply provide an update python, some additional tools=
 and<br>
it worked. &nbsp;(Note, I haven't tried it in the last 2 months though, so
something<br>
may have broken since then.)<br>
<br>
&gt; I know the documentation mentions that you should be running a
&quot;reasonably<br>
&gt; current&quot; Linux as your build host, but in my enterprise environme=
nt
I'm stuck<br>
&gt; with having to run fairly old versions, based on RHEL 4 and 5. &nbsp;I=
've
got some<br>
&gt; patches that I've been maintaining so I can bootstrap Bernard builds o=
n
these<br>
&gt; systems. &nbsp;Is there any interest in supporting older systems as bu=
ild
hosts? &nbsp;Any<br>
&gt; thoughts on how far back &quot;reasonably current&quot; is going to be
with each Yocto<br>
&gt; release? &nbsp;I'm trying to work with my IT group to upgrade a bit mo=
re
frequently,<br>
&gt; and for developer workstations, that might be possible, but I'm not su=
re
I'll be<br>
&gt; able to convince them to do that for servers in our data centers.<br>
&gt;<br>
&gt; Is anyone else having this kind of problem?<br>
<br>
I think this is a fairly typical problem. &nbsp;In my experience it's usual=
ly
easier<br>
to solve in a commercial space then pure open source.<br>
<br>
As for the question about interest, we're always interested in patches.
&nbsp;At a<br>
minimum, it would be nice to document what steps you had to do and what pat=
ches<br>
you may have had to apply in order to get &quot;unsupported&quot; functiona=
lity
out of the<br>
build environment. &nbsp;The yocto wiki seems a fairly natural place for th=
is.<br>
<br>
So please send what you have, or start an account on the Yocto Wiki and pos=
t it<br>
there.<br>
<br>
--Mark<br>
<br>
&gt; Thanks,<br>
&gt; -Matt<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://list=
s.yoctoproject.org/listinfo/yocto</a><br>
<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoc=
toproject.org/listinfo/yocto</a></span><o:p></o:p></p>

</div>

</body>

</html>

--_000_DE8BA75F34A0404282AC5E15F691BC7650A6EABForsmsx504amrcor_--
