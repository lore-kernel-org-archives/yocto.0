Return-Path: <Neil.Wu@Emerson.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 347E6E00922; Wed, 17 Dec 2014 19:00:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [144.191.128.188 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from USSTLZ-PINFEZ04.extemr.org (usstlz-pinfez04.extemr.org
	[144.191.128.188])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE749E0072A
	for <yocto@yoctoproject.org>; Wed, 17 Dec 2014 18:59:57 -0800 (PST)
Received: from USSTLZ-PMSG006.emrsn.org (10.16.72.188) by
	USSTLZ-PINFEZ04.extemr.org (10.16.8.77) with Microsoft SMTP Server
	(TLS) id 14.3.158.1; Thu, 18 Dec 2014 02:59:56 +0000
Received: from USSTLZ-PMSG012.emrsn.org ([169.254.3.25]) by
	USSTLZ-PMSG006.emrsn.org ([169.254.1.235]) with mapi id 14.03.0158.001;
	Thu, 18 Dec 2014 02:59:55 +0000
From: <Neil.Wu@Emerson.com>
To: <liviu.gheorghisan@enea.com>, <yocto@yoctoproject.org>
Thread-Topic: [yocto] problem of toolchain install directrory
Thread-Index: AQHQGd5dpo8DbpG+NUC1mkvdD5Nrp5yUpDYA
Date: Thu, 18 Dec 2014 02:59:54 +0000
Message-ID: <3204FE6663E1F14CAF4CA6928E60C8521E221068@USSTLZ-PMSG012.emrsn.org>
References: <20141211004713.GC4102@mentor.com>
	<1077253035.5058800.1418282511482.JavaMail.yahoo@jws10079.mail.ne1.yahoo.com>
	<3204FE6663E1F14CAF4CA6928E60C8521E220F69@USSTLZ-PMSG012.emrsn.org>
	<549150F7.5070409@enea.com>
In-Reply-To: <549150F7.5070409@enea.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.75.1]
MIME-Version: 1.0
Subject: Re: problem of toolchain install directrory
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
X-List-Received-Date: Thu, 18 Dec 2014 03:00:03 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_3204FE6663E1F14CAF4CA6928E60C8521E221068USSTLZPMSG012em_"

--_000_3204FE6663E1F14CAF4CA6928E60C8521E221068USSTLZPMSG012em_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello Liviu,

Thank you very much for your reply. I got a very useful information from yo=
ur reply.

At the  beginning , I want  to add the cross compiler to eclipse project an=
d not use the  default installer directory, but it appears the  above probl=
em.

In eclipse project, the setting as  these:
Properties -- Setting--CrossSetting --Prefilx: arm-poky-linux-gnueabi-
Properties--Setting -- CrossSetting--Path: /opt/poky/mycompiler/sysroots/ i=
686-pokysdk-linux/usr/bin/arm-poky-linux-gnueabi

You give me the idea to add the sysroot path:
Properties -- Setting -- Cross GCC compiler -MisCellaneous: --sysroot=3D/op=
t/poky/mycompiler/sysroots/ armv5te-poky-linux-gnueabi

Now, everything is ok . Thank you again for your help.

Best wishes

Neil
From: Liviu Gheorghisan [mailto:liviu.gheorghisan@enea.com]
Sent: Wednesday, December 17, 2014 5:47 PM
To: Wu, Neil [CLIMATE/RS/CN]; yocto@yoctoproject.org
Subject: Re: [yocto] problem of toolchain install directrory

Hello Neil,

Your problem is that the toolchain is installed with the location of the sy=
sroot hardcoded as the default installation path for the tool-chain.
You can see this location with:
$ arm-poky-linux-gnueabi-gcc --print-sysroot // or whatever cross-compiler =
you built

However, after you source the environment script for the toolchain:

$ source environment-setup-armv7a-vfp-neon-poky-linux-gnueabi

the environment variables related to the toolchain will be updated accordin=
gly, taking care of this problem.

So, use $CC instead of directly calling the gcc cross compiler arm-poky-lin=
ux-gnueabi-gcc (or whatever the platform you're building for).

Check the difference with this:
$ echo $CC
arm-poky-linux-gnueabi-gcc -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dsoftfp -mfpu=3Dneon --sysroot=3D/home/livghe/work/ab/sdk/sysroots/armv7a=
-vfp-neon-poky-linux-gnueabi

$ $CC --print-sysroot // uses the correct sysroot
/home/livghe/work/ab/sdk/sysroots/armv7a-vfp-neon-poky-linux-gnueabi

$ $ arm-poky-linux-gnueabi-gcc --print-sysroot // uses the sysroot from the=
 default instalation path, where it's not present.
/opt/poky/4.0/sysroots/armv7a-vfp-neon-poky-linux-gnueabi

So, you should always use the env variables ($CC, $AR, $LDFLAGS, etc) after=
 sourcing the environment script from the toolchain instalation path, and n=
ot the toolchain executables directly, because the environment variables ad=
d some useful flags, not only related to the sysroot, but also to the type =
of CPU, etc.

- Liviu

On 12/17/2014 11:30 AM, Neil.Wu@Emerson.com<mailto:Neil.Wu@Emerson.com> wro=
te:
Hello ,all
I build the toolchain via  bitbake core-image-minimal -c populate_sdk. Then=
 I install the toolchain.

If I install the toolchain in default directory(default: /opt/poky/1.7.1), =
everything is ok.

But,   if I not install in the default directory, it will appears the probl=
em that can't find the system header files.
Example: stdio.h

Why is this ? Whether I need to do some other operation.  If you know pleas=
e help me ! Thank you very much.

Best wishes
Neil






--

Liviu Gheorghisan

Software Engineer



http://www.enea.com

--_000_3204FE6663E1F14CAF4CA6928E60C8521E221068USSTLZPMSG012em_
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
<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:"\@SimSun";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
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
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New","serif";
	color:black;}
span.EmailStyle17
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:Consolas;
	color:black;}
span.EmailStyle21
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page Section1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.Section1
	{page:Section1;}
-->
</style><!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext=3D"edit">
  <o:idmap v:ext=3D"edit" data=3D"1" />
 </o:shapelayout></xml><![endif]-->
</head>
<body bgcolor=3D"white" lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"Section1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;
color:#1F497D">Hello Liviu,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;
color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;
color:#1F497D">Thank you very much for your reply. I got a very useful info=
rmation from your reply.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;
color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;
color:#1F497D">At the &nbsp;beginning , I want &nbsp;to add the cross compi=
ler to eclipse project and not use the&nbsp; default installer directory, b=
ut it appears the &nbsp;above problem.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;
color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;
color:#1F497D">In eclipse project, the setting as &nbsp;these:<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;
color:#1F497D">Properties -- Setting--CrossSetting --Prefilx: arm-poky-linu=
x-gnueabi-<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;
color:#1F497D">Properties--Setting -- CrossSetting--Path: /opt/poky/mycompi=
ler/sysroots/</span>
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:#1F497D">i686-pokysdk-linux/usr/bin/arm-poky-linux-gnueab=
i<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;
color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;
color:#1F497D">You give me the idea to add the sysroot path:<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;
color:#1F497D">Properties -- Setting -- Cross GCC compiler &#8211;MisCellan=
eous: --sysroot=3D/opt/poky/mycompiler/sysroots/</span>
<span style=3D"font-size:11.0pt;
font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">
armv5te-poky-linux-gnueabi<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;
color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;
color:#1F497D">Now, everything is ok . Thank you again for your help.<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;
color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;
color:#1F497D">Best wishes
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;
color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;
color:#1F497D">Neil<o:p></o:p></span></p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;;
color:windowtext">From:</span></b><span style=3D"font-size:10.0pt;font-fami=
ly:
&quot;Tahoma&quot;,&quot;sans-serif&quot;;color:windowtext"> Liviu Gheorghi=
san [mailto:liviu.gheorghisan@enea.com]
<br>
<b>Sent:</b> Wednesday, December 17, 2014 5:47 PM<br>
<b>To:</b> Wu, Neil [CLIMATE/RS/CN]; yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] problem of toolchain install directrory<o:p></o=
:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">Hello Neil,<br>
<br>
Your problem is that the toolchain is installed with the location of the sy=
sroot hardcoded as the default installation path for the tool-chain.<br>
You can see this location with:<br>
$ arm-poky-linux-gnueabi-gcc --print-sysroot // or whatever cross-compiler =
you built<br>
<br>
However, after you source the environment script for the toolchain:<br>
<br>
$ source environment-setup-armv7a-vfp-neon-poky-linux-gnueabi<br>
<br>
the environment variables related to the toolchain will be updated accordin=
gly, taking care of this problem.<br>
<br>
So, use $CC instead of directly calling the gcc cross compiler arm-poky-lin=
ux-gnueabi-gcc (or whatever the platform you're building for).<br>
<br>
Check the difference with this:<br>
$ echo $CC<br>
arm-poky-linux-gnueabi-gcc -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dsoftfp -mfpu=3Dneon --sysroot=3D/home/livghe/work/ab/sdk/sysroots/armv7a=
-vfp-neon-poky-linux-gnueabi<br>
<br>
$ $CC --print-sysroot // uses the correct sysroot<br>
/home/livghe/work/ab/sdk/sysroots/armv7a-vfp-neon-poky-linux-gnueabi<br>
<br>
$ $ arm-poky-linux-gnueabi-gcc --print-sysroot // uses the sysroot from the=
 default instalation path, where it's not present.<br>
/opt/poky/4.0/sysroots/armv7a-vfp-neon-poky-linux-gnueabi<br>
<br>
So, you should always use the env variables ($CC, $AR, $LDFLAGS, etc) after=
 sourcing the environment script from the toolchain instalation path, and n=
ot the toolchain executables directly, because the environment variables ad=
d some useful flags, not only related
 to the sysroot, but also to the type of CPU, etc.<br>
<br>
- Liviu<br>
<br>
<o:p></o:p></p>
<div>
<p class=3D"MsoNormal">On 12/17/2014 11:30 AM, <a href=3D"mailto:Neil.Wu@Em=
erson.com">
Neil.Wu@Emerson.com</a> wrote:<o:p></o:p></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<div>
<div>
<div>
<div>
<div>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;;
color:#1F497D">Hello ,all</span></b><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;
color:#1F497D">I build the toolchain via&nbsp; bitbake core-image-minimal &=
#8211;c populate_sdk. Then I install the toolchain.</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;
color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;
color:#1F497D">If I install the toolchain in default directory(</span><i><s=
pan style=3D"font-size:9.0pt;font-family:&quot;Courier New&quot;,&quot;seri=
f&quot;">default: /opt/poky/1.7.1</span></i><span style=3D"font-size:11.0pt=
;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;
color:#1F497D">),
 everything is ok. </span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;
color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;
color:#1F497D">But, &nbsp;&nbsp;if I not install in the default directory, =
it will appears the problem that can&#8217;t find the system header files.
</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;
color:#1F497D">Example: stdio.h
</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;
color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;
color:#1F497D">Why is this ? Whether I need to do some other operation. &nb=
sp;If you know please help me ! Thank you very much.</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;
color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;
color:#1F497D">Best wishes</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;
color:#1F497D">Neil</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;
color:#1F497D">&nbsp;</span><o:p></o:p></p>
</div>
</div>
</div>
</div>
</div>
<p class=3D"MsoNormal"><br>
<br>
<o:p></o:p></p>
</blockquote>
<p class=3D"MsoNormal"><br>
<br>
<o:p></o:p></p>
<pre>-- <o:p></o:p></pre>
<pre>Liviu Gheorghisan<o:p></o:p></pre>
<pre>Software Engineer<o:p></o:p></pre>
<pre><o:p>&nbsp;</o:p></pre>
<pre><a href=3D"http://www.enea.com">http://www.enea.com</a><o:p></o:p></pr=
e>
</div>
</body>
</html>

--_000_3204FE6663E1F14CAF4CA6928E60C8521E221068USSTLZPMSG012em_--
