Return-Path: <scott.m.rifenbark@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE0E4E0089B; Mon, 24 Nov 2014 05:07:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C8FEE00837
	for <yocto@yoctoproject.org>; Mon, 24 Nov 2014 05:07:48 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 24 Nov 2014 05:07:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,448,1413270000"; 
	d="scan'208,217";a="627369356"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by fmsmga001.fm.intel.com with ESMTP; 24 Nov 2014 05:07:38 -0800
Received: from orsmsx157.amr.corp.intel.com (10.22.240.23) by
	ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server
	(TLS) id 14.3.195.1; Mon, 24 Nov 2014 05:07:37 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.158]) by
	ORSMSX157.amr.corp.intel.com ([169.254.9.175]) with mapi id
	14.03.0195.001; Mon, 24 Nov 2014 05:07:36 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Biao <huanmateme@163.com>, "Zanussi, Tom" <tom.zanussi@intel.com>
Thread-Topic: [yocto] Running "yocto-bsp create .." in the source
	directory(poky) brings up an error. "poky directory vs build directory"
Thread-Index: AQHQBy/Vw1ieHPp8SUCqZzdMwWhq0ZxvHZIAgACaC4CAAALJ4A==
Date: Mon, 24 Nov 2014 13:07:35 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237988E64349@ORSMSX101.amr.corp.intel.com>
References: <33c36dfd.5d02.149dd26d066.Coremail.huanmateme@163.com>
	<1416770590.29940.4.camel@picadillo>
	<b5e0969.c3cd.149e0145e72.Coremail.huanmateme@163.com>
In-Reply-To: <b5e0969.c3cd.149e0145e72.Coremail.huanmateme@163.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Running "yocto-bsp create .." in the source directory(poky) brings up an error. "poky directory vs build directory"
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
X-List-Received-Date: Mon, 24 Nov 2014 13:07:57 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_41DEA4B02DBDEF40A0F3B6D0DDB1237988E64349ORSMSX101amrcor_"

--_000_41DEA4B02DBDEF40A0F3B6D0DDB1237988E64349ORSMSX101amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi ,

Although that sentence could be written differently, it is correct.  Step s=
ix of the example says "By default, the script creates the new BSP Layer in=
 the current working directory of the Source Directory, which is poky in th=
is case."  The clause at the end of the sentence is tied to the "Source Dir=
ectory", which in fact is poky.  I will re-write that sentence though to re=
move any chance of confusion.  You can see the change at http://www.yoctopr=
oject.org/docs/1.7/bsp-guide/bsp-guide.html#creating-a-new-bsp-layer-using-=
the-yocto-bsp-script.

Thanks,
Scott

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Biao
Sent: Sunday, November 23, 2014 8:35 PM
To: Zanussi, Tom
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Running "yocto-bsp create .." in the source directory(=
poky) brings up an error. "poky directory vs build directory"


At 2014-11-24 03:23:10, "Tom Zanussi" <tom.zanussi@intel.com<mailto:tom.zan=
ussi@intel.com>> wrote:

>Hi,

>

>On Sun, 2014-11-23 at 22:55 +0800, Biao wrote:

>> Hi all,

>> I am doing excises following this section

>> ----------------------------------------------------------------------

>> http://www.yoctoproject.org/docs/1.7/bsp-guide/bsp-guide.html#creating-a=
-new-bsp-layer-using-the-yocto-bsp-script

>> 1.6.2. Creating a new BSP Layer Using the yocto-bsp Script

>> ...

>>  $ yocto-bsp create myarm qemu

>> ....

>> By default, the script creates the new BSP Layer in the current

>> working directory of the  Source Directory , which is  poky  in this

>> case.

>> ....

>> ---------------------------------------------------------------------

>> To my understand, it means after "source oe-init-build-env mybuild", i

>> should change to the poky directory to run the "yocto-bsp create ..."

>> command,

>

>Yes, the documentation is misleading - yocto-bsp assumes you're in the

>build directory after you've sourced oe-init-build-env, and not the poky

>dir.

>

>Tom



I see, thanks for you help, Tom.



Jerry

>

>> however, i got an error

>> " Do you need a new machine branch for this BSP (the alternative is to

>> re-use an existing branch)? [y/n] [default: y]

>> The BBPATH variable is not set and bitbake did not find a

>> conf/bblayers.conf file in the expected location.

>> Maybe you accidentally invoked bitbake from the wrong directory?

>> Couldn't find BBLAYERS in bitbake -e output, exiting."

>> It seems it is asking me to run "yocto-bsp create ..." in the build

>> directory

>>

>>

>> Which one is correct? Do we have a wrong document?

>>

>>

>> Thanks,

>> Jerry

>>

>>

>

>

--_000_41DEA4B02DBDEF40A0F3B6D0DDB1237988E64349ORSMSX101amrcor_
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
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
@font-face
	{font-family:"\@SimSun";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:SimSun;
	mso-fareast-language:ZH-CN;}
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
	font-size:12.0pt;
	font-family:SimSun;
	mso-fareast-language:ZH-CN;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Consolas","serif";
	mso-fareast-language:ZH-CN;}
span.EmailStyle19
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
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Hi ,<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Although that sentence co=
uld be written differently, it is correct.&nbsp; Step six of the example sa=
ys &#8220;By default, the script creates the new BSP Layer in the current
 working directory of the Source Directory, which is poky in this case.&#82=
21;&nbsp; The clause at the end of the sentence is tied to the &#8220;Sourc=
e Directory&#8221;, which in fact is poky.&nbsp; I will re-write that sente=
nce though to remove any chance of confusion.&nbsp; You can see the
 change at http://www.yoctoproject.org/docs/1.7/bsp-guide/bsp-guide.html#cr=
eating-a-new-bsp-layer-using-the-yocto-bsp-script.<o:p></o:p></span></p>
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
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> yocto-bo=
unces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
<b>On Behalf Of </b>Biao<br>
<b>Sent:</b> Sunday, November 23, 2014 8:35 PM<br>
<b>To:</b> Zanussi, Tom<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Running &quot;yocto-bsp create ..&quot; in the =
source directory(poky) brings up an error. &quot;poky directory vs build di=
rectory&quot;<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<pre><span style=3D"color:black"><br>At 2014-11-24 03:23:10, &quot;Tom Zanu=
ssi&quot; &lt;<a href=3D"mailto:tom.zanussi@intel.com">tom.zanussi@intel.co=
m</a>&gt; wrote:<o:p></o:p></span></pre>
<pre><span style=3D"color:black">&gt;Hi,<o:p></o:p></span></pre>
<pre><span style=3D"color:black">&gt;<o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"color:black">&gt;On Sun, 2014-11-23 at 22:55 &#43;0800,=
 Biao wrote:<o:p></o:p></span></pre>
<pre><span style=3D"color:black">&gt;&gt; Hi all,<o:p></o:p></span></pre>
<pre><span style=3D"color:black">&gt;&gt; I am doing excises following this=
 section<o:p></o:p></span></pre>
<pre><span style=3D"color:black">&gt;&gt; ---------------------------------=
-------------------------------------<o:p></o:p></span></pre>
<pre><span style=3D"color:black">&gt;&gt; <a href=3D"http://www.yoctoprojec=
t.org/docs/1.7/bsp-guide/bsp-guide.html#creating-a-new-bsp-layer-using-the-=
yocto-bsp-script">http://www.yoctoproject.org/docs/1.7/bsp-guide/bsp-guide.=
html#creating-a-new-bsp-layer-using-the-yocto-bsp-script</a><o:p></o:p></sp=
an></pre>
<pre><span style=3D"color:black">&gt;&gt; 1.6.2. Creating a new BSP Layer U=
sing the yocto-bsp Script<o:p></o:p></span></pre>
<pre><span style=3D"color:black">&gt;&gt; ...<o:p></o:p></span></pre>
<pre><span style=3D"color:black">&gt;&gt;&nbsp; $ yocto-bsp create myarm qe=
mu<o:p></o:p></span></pre>
<pre><span style=3D"color:black">&gt;&gt; ....<o:p></o:p></span></pre>
<pre><span style=3D"color:black">&gt;&gt; By default, the script creates th=
e new BSP Layer in the current<o:p></o:p></span></pre>
<pre><span style=3D"color:black">&gt;&gt; working directory of the&nbsp; So=
urce Directory , which is&nbsp; poky&nbsp; in this<o:p></o:p></span></pre>
<pre><span style=3D"color:black">&gt;&gt; case. <o:p></o:p></span></pre>
<pre><span style=3D"color:black">&gt;&gt; ....<o:p></o:p></span></pre>
<pre><span style=3D"color:black">&gt;&gt; ---------------------------------=
------------------------------------<o:p></o:p></span></pre>
<pre><span style=3D"color:black">&gt;&gt; To my understand, it means after =
&quot;source oe-init-build-env mybuild&quot;, i<o:p></o:p></span></pre>
<pre><span style=3D"color:black">&gt;&gt; should change to the poky directo=
ry to run the &quot;yocto-bsp create ...&quot;<o:p></o:p></span></pre>
<pre><span style=3D"color:black">&gt;&gt; command,<o:p></o:p></span></pre>
<pre><span style=3D"color:black">&gt;<o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"color:black">&gt;Yes, the documentation is misleading -=
 yocto-bsp assumes you're in the<o:p></o:p></span></pre>
<pre><span style=3D"color:black">&gt;build directory after you've sourced o=
e-init-build-env, and not the poky<o:p></o:p></span></pre>
<pre><span style=3D"color:black">&gt;dir.<o:p></o:p></span></pre>
<pre><span style=3D"color:black">&gt;<o:p>&nbsp;</o:p></span></pre>
<div>
<pre><span style=3D"color:black">&gt;Tom<o:p></o:p></span></pre>
</div>
<div>
<pre><span style=3D"color:black"><o:p>&nbsp;</o:p></span></pre>
</div>
<div>
<pre><span style=3D"color:black">I see, thanks for you help, Tom.<o:p></o:p=
></span></pre>
</div>
<div>
<pre><span style=3D"color:black"><o:p>&nbsp;</o:p></span></pre>
</div>
<div>
<pre><span style=3D"color:black">Jerry<o:p></o:p></span></pre>
</div>
<pre><span style=3D"color:black">&gt;<o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"color:black">&gt;&gt; however, i got an error&nbsp; <o:=
p></o:p></span></pre>
<pre><span style=3D"color:black">&gt;&gt; &quot; Do you need a new machine =
branch for this BSP (the alternative is to<o:p></o:p></span></pre>
<pre><span style=3D"color:black">&gt;&gt; re-use an existing branch)? [y/n]=
 [default: y] <o:p></o:p></span></pre>
<pre><span style=3D"color:black">&gt;&gt; The BBPATH variable is not set an=
d bitbake did not find a<o:p></o:p></span></pre>
<pre><span style=3D"color:black">&gt;&gt; conf/bblayers.conf file in the ex=
pected location.<o:p></o:p></span></pre>
<pre><span style=3D"color:black">&gt;&gt; Maybe you accidentally invoked bi=
tbake from the wrong directory?<o:p></o:p></span></pre>
<pre><span style=3D"color:black">&gt;&gt; Couldn't find BBLAYERS in bitbake=
 -e output, exiting.&quot; <o:p></o:p></span></pre>
<pre><span style=3D"color:black">&gt;&gt; It seems it is asking me to run &=
quot;yocto-bsp create ...&quot; in the build<o:p></o:p></span></pre>
<pre><span style=3D"color:black">&gt;&gt; directory<o:p></o:p></span></pre>
<pre><span style=3D"color:black">&gt;&gt; <o:p></o:p></span></pre>
<pre><span style=3D"color:black">&gt;&gt; <o:p></o:p></span></pre>
<pre><span style=3D"color:black">&gt;&gt; Which one is correct? Do we have =
a wrong document?<o:p></o:p></span></pre>
<pre><span style=3D"color:black">&gt;&gt; <o:p></o:p></span></pre>
<pre><span style=3D"color:black">&gt;&gt; <o:p></o:p></span></pre>
<pre><span style=3D"color:black">&gt;&gt; Thanks,<o:p></o:p></span></pre>
<pre><span style=3D"color:black">&gt;&gt; Jerry <o:p></o:p></span></pre>
<pre><span style=3D"color:black">&gt;&gt; <o:p></o:p></span></pre>
<pre><span style=3D"color:black">&gt;&gt; <o:p></o:p></span></pre>
<pre><span style=3D"color:black">&gt;<o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"color:black">&gt;<o:p>&nbsp;</o:p></span></pre>
</div>
</div>
</div>
</body>
</html>

--_000_41DEA4B02DBDEF40A0F3B6D0DDB1237988E64349ORSMSX101amrcor_--
