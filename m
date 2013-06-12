Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27B9DE01560
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2013 04:36:19 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 12 Jun 2013 04:36:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,851,1363158000"; 
	d="scan'208,217";a="315823051"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by azsmga001.ch.intel.com with ESMTP; 12 Jun 2013 04:36:18 -0700
Received: from orsmsx155.amr.corp.intel.com (10.22.240.21) by
	ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Wed, 12 Jun 2013 04:36:17 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.64]) by
	ORSMSX155.amr.corp.intel.com ([169.254.7.29]) with mapi id
	14.03.0123.003; Wed, 12 Jun 2013 04:36:17 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Bill Traynor <btraynor@gmail.com>, "michael@cubic.org" <michael@cubic.org>
Thread-Topic: [yocto] Need clarification on some terms
Thread-Index: Ac5nIlkRp+c4KMD8R1u/T9DvP2C7/QAdpzoAAACTFIAADpcYIA==
Date: Wed, 12 Jun 2013 11:36:16 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF48BD5@ORSMSX101.amr.corp.intel.com>
References: <0A7B481F47BD4848A701598AE9CDD6DA@PAULD>
	<bc6dfda22fdcefeb7de188e29b2ad887.squirrel@mail.cubic.org>
	<CAN20qYp1idcC3iEP2GcLDUSpoJ=UonWxndz3JYNUVuSM5iBKcw@mail.gmail.com>
In-Reply-To: <CAN20qYp1idcC3iEP2GcLDUSpoJ=UonWxndz3JYNUVuSM5iBKcw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Need clarification on some terms
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
X-List-Received-Date: Wed, 12 Jun 2013 11:36:20 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_41DEA4B02DBDEF40A0F3B6D0DDB123797FF48BD5ORSMSX101amrcor_"

--_000_41DEA4B02DBDEF40A0F3B6D0DDB123797FF48BD5ORSMSX101amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

That little tidbit is interesting... Thanks Bill.  BTW - I am incorporating=
 some of this information into "Terms" section to help clear up stuff.

Scott

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Bill Traynor
Sent: Wednesday, June 12, 2013 4:33 AM
To: michael@cubic.org
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Need clarification on some terms



On Wed, Jun 12, 2013 at 7:16 AM, <michael@cubic.org<mailto:michael@cubic.or=
g>> wrote:
> "Cross-Development Toolchain: A collection of software development tools
> and
> utilities that allow you to develop software for targeted architectures."
> Is
> that different from the toolchain that bitbake builds in the beginning,
> and
> then uses to build the image? If so, what is it?
A "cross development toolchain" is a toolchain that runs on an
architecture (cpu+os+libc) that is different from the architecture it
generates code for. That can even be a toolchain running on an IA64-Linux
machine generating object-code for an IA32-Linux machine.

> "Following is a list of toolchain recipes..." This is followed by
> gcc-cross-initial, gcc-cross-intermediate, gcc-cross. All three of these
> things say that the toolchain runs on the host and is used to build
> software
> for the target. So why are there three of them? What are the differences
> among them?
The gcc must be build multiple times when you bootstrap it.
For building the gcc you need to build the libc and therefor you need to
build the linux kernel headers and therefor you need the gcc. Oops.

Thats why you first build a gcc only with c support and no libc first.
Use that to generate the kernel headers, then build the initial libc and
then another gcc with libc support and all the frontends you need
(c,c++,java,fortran,..). Why there is the gcc-cross-intermediate I am not
shure, but there will be a reason and another one can clarify that.

> It also says that each one is a "native" package. In my
> experience, a "native" toolchain has always meant a toolchain that
> produces
> code for the same machine that the toolchain runs on, while a "cross"
> toolchain produces code for a different machine. That's obviously not wha=
t
> "native" means in this context, so what does it mean?
In terms of openembedded a "native" package is a package that contains
code that is intended to run on the build machine (your workstation). The
cross-compiler runs on your build-machine to produce code for your
target-machine. Thats why it is a "native" package. And there are a lot
more "native" packages than only the compiler.

> The documentation makes frequent references to "the SDK" without ever
> defining it. I know what it means generically, but what is it in the Yoct=
o
> context? And why does the SDK involve yet another set of three toolchains=
?
> (Oh, and why is one of them called "canadian"?)
A canadian-cross is a term from the compiler stuff, not specific to the
Yocto Project or Poky or Openembedded.
Building a canadian-cross is the process of build a toolchain on
architecture A that runs on architecture B and produces object-code for
architecture C. An example is building a gcc on an IA32 architecture, that
will run on an ARM, producing code for an M68K. Yes, that does make sence,
if the ARM machine does not have the resources to be able to bootstrap the
compiler by itself.

And for what it's worth, the reason it's called "Canadian" is because at th=
e time of it's naming, Canada had 3 political parties.

http://en.wikipedia.org/wiki/Cross_compiler#Canadian_Cross


Hope that made some things clear.

Michael
_______________________________________________
yocto mailing list
yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
https://lists.yoctoproject.org/listinfo/yocto


--_000_41DEA4B02DBDEF40A0F3B6D0DDB123797FF48BD5ORSMSX101amrcor_
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">That little tidbit is int=
eresting&#8230; Thanks Bill.&nbsp; BTW &#8211; I am incorporating some of t=
his information into &#8220;Terms&#8221; section to help clear up stuff.<o:=
p></o:p></span></p>
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
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> yocto-bo=
unces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
<b>On Behalf Of </b>Bill Traynor<br>
<b>Sent:</b> Wednesday, June 12, 2013 4:33 AM<br>
<b>To:</b> michael@cubic.org<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Need clarification on some terms<o:p></o:p></sp=
an></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">On Wed, Jun 12, 2013 at 7:16 AM, &lt;<a href=3D"mail=
to:michael@cubic.org" target=3D"_blank">michael@cubic.org</a>&gt; wrote:<o:=
p></o:p></p>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">&gt; &quot;Cross-Deve=
lopment Toolchain: A collection of software development tools<br>
&gt; and<br>
&gt; utilities that allow you to develop software for targeted architecture=
s.&quot;<br>
&gt; Is<br>
&gt; that different from the toolchain that bitbake builds in the beginning=
,<br>
&gt; and<br>
&gt; then uses to build the image? If so, what is it?<o:p></o:p></p>
</div>
<p class=3D"MsoNormal">A &quot;cross development toolchain&quot; is a toolc=
hain that runs on an<br>
architecture (cpu&#43;os&#43;libc) that is different from the architecture =
it<br>
generates code for. That can even be a toolchain running on an IA64-Linux<b=
r>
machine generating object-code for an IA32-Linux machine.<o:p></o:p></p>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><br>
&gt; &quot;Following is a list of toolchain recipes...&quot; This is follow=
ed by<br>
&gt; gcc-cross-initial, gcc-cross-intermediate, gcc-cross. All three of the=
se<br>
&gt; things say that the toolchain runs on the host and is used to build<br=
>
&gt; software<br>
&gt; for the target. So why are there three of them? What are the differenc=
es<br>
&gt; among them?<o:p></o:p></p>
</div>
<p class=3D"MsoNormal">The gcc must be build multiple times when you bootst=
rap it.<br>
For building the gcc you need to build the libc and therefor you need to<br=
>
build the linux kernel headers and therefor you need the gcc. Oops.<br>
<br>
Thats why you first build a gcc only with c support and no libc first.<br>
Use that to generate the kernel headers, then build the initial libc and<br=
>
then another gcc with libc support and all the frontends you need<br>
(c,c&#43;&#43;,java,fortran,..). Why there is the gcc-cross-intermediate I =
am not<br>
shure, but there will be a reason and another one can clarify that.<o:p></o=
:p></p>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><br>
&gt; It also says that each one is a &quot;native&quot; package. In my<br>
&gt; experience, a &quot;native&quot; toolchain has always meant a toolchai=
n that<br>
&gt; produces<br>
&gt; code for the same machine that the toolchain runs on, while a &quot;cr=
oss&quot;<br>
&gt; toolchain produces code for a different machine. That's obviously not =
what<br>
&gt; &quot;native&quot; means in this context, so what does it mean?<o:p></=
o:p></p>
</div>
<p class=3D"MsoNormal">In terms of openembedded a &quot;native&quot; packag=
e is a package that contains<br>
code that is intended to run on the build machine (your workstation). The<b=
r>
cross-compiler runs on your build-machine to produce code for your<br>
target-machine. Thats why it is a &quot;native&quot; package. And there are=
 a lot<br>
more &quot;native&quot; packages than only the compiler.<o:p></o:p></p>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><br>
&gt; The documentation makes frequent references to &quot;the SDK&quot; wit=
hout ever<br>
&gt; defining it. I know what it means generically, but what is it in the Y=
octo<br>
&gt; context? And why does the SDK involve yet another set of three toolcha=
ins?<br>
&gt; (Oh, and why is one of them called &quot;canadian&quot;?)<o:p></o:p></=
p>
</div>
<p class=3D"MsoNormal">A canadian-cross is a term from the compiler stuff, =
not specific to the<br>
Yocto Project or Poky or Openembedded.<br>
Building a canadian-cross is the process of build a toolchain on<br>
architecture A that runs on architecture B and produces object-code for<br>
architecture C. An example is building a gcc on an IA32 architecture, that<=
br>
will run on an ARM, producing code for an M68K. Yes, that does make sence,<=
br>
if the ARM machine does not have the resources to be able to bootstrap the<=
br>
compiler by itself.<o:p></o:p></p>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">And for what it's worth, the reason it's called &quo=
t;Canadian&quot; is because at the time of it's naming, Canada had 3 politi=
cal parties.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><a href=3D"http://en.wikipedia.org/wiki/Cross_compil=
er#Canadian_Cross">http://en.wikipedia.org/wiki/Cross_compiler#Canadian_Cro=
ss</a><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<blockquote style=3D"border:none;border-left:solid #CCCCCC 1.0pt;padding:0i=
n 0in 0in 6.0pt;margin-left:4.8pt;margin-right:0in">
<p class=3D"MsoNormal"><br>
Hope that made some things clear.<br>
<br>
Michael<o:p></o:p></p>
<div>
<div>
<p class=3D"MsoNormal">_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><o:p></o:p></p>
</div>
</div>
</blockquote>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_41DEA4B02DBDEF40A0F3B6D0DDB123797FF48BD5ORSMSX101amrcor_--
