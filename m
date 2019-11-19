Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 010E1E00B93; Mon, 18 Nov 2019 16:10:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [209.222.82.84 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from 22pmail.ess.barracuda.com (22pmail.ess.barracuda.com
	[209.222.82.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F7E2E007E1
	for <yocto@yoctoproject.org>; Mon, 18 Nov 2019 16:10:25 -0800 (PST)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx7.us-east-2b.ess.aws.cudaops.com (version=TLSv1.2
	cipher=AES256-SHA256 bits=256 verify=NO);
	Tue, 19 Nov 2019 00:10:21 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Mon, 18 Nov 2019 16:10:20 -0800
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Mon, 18 Nov 2019 16:10:20 -0800
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] [qemu] can't find qemu-native recipe
Thread-Index: AQHVnmFF+6AkGs2DrkitseZ3jhVh3qeSGaqA//9/+wI=
Date: Tue, 19 Nov 2019 00:10:20 +0000
Message-ID: <36d57277739a4a898f4f1b7c8826e4fe@sakuraus.com>
References: <dc5da77587ca49fbba4b37f2e6b28028@sakuraus.com>,
	<CAMKF1srKGbsT_AJgymqBq4fdRcwNDObSNpQK5YvS-8Q1o8ryjw@mail.gmail.com>
In-Reply-To: <CAMKF1srKGbsT_AJgymqBq4fdRcwNDObSNpQK5YvS-8Q1o8ryjw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.155]
MIME-Version: 1.0
X-BESS-ID: 1574122221-893013-24086-13362-1
X-BESS-VER: 2019.1_20191118.1732
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2,
	rules version 3.2.2.220449 [from 
	cloudscan9-190.us-east-2a.ess.aws.cudaops.com]
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 HTML_MESSAGE           BODY: HTML included in message 
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=HTML_MESSAGE, BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: [qemu] can't find qemu-native recipe
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
X-List-Received-Date: Tue, 19 Nov 2019 00:10:29 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_36d57277739a4a898f4f1b7c8826e4fesakurauscom_"

--_000_36d57277739a4a898f4f1b7c8826e4fesakurauscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Khem,

I found the BBCLASSEXTEND in the qemu.inc file, I also found a line in the =
.bb file:

SRC_URI_append_class-native =3D " \


so I changed my SRC_URI to that and I stopped getting the 'can't find file =
to patch' error, but the file (syscall.c) is not modified.


Here is my qemu_3.0.0.bbappend file, meta-sakura/recipes-devtools/qemu/qemu=
_3.0.0.bbappend:

FILESEXTRAPATHS_prepend :=3D "${FILE_DIRNAME}/${PN}:"

SRC_URII_append_class-native =3D "file://syscall.c-add_missing_sockios_head=
er_include.patch"

And here is the patch file .../qemu/syscall.c-add_missing_sockios_header_in=
clude.patch:
--- a/linux-user/syscall.c    2019-11-18 09:42:39.000000000 -0800
+++ b/linux-user/syscall.c    2019-11-18 09:23:23.000000000 -0800
@@ -34,6 +34,7 @@
 #include <sys/resource.h>
 #include <sys/swap.h>
 #include <linux/capability.h>
+#include <linux/sockios.h>
 #include <sched.h>
 #include <sys/timex.h>
 #include <sys/socket.h>

I am not getting the:

...tmp/work/x86_64-linux/qemu-native/3.0.0-r0/qemu-3.0.0/linux-user/syscall=
.c

modified.


I'm obviously missing something. Any help would be greatly appreciated.


Regards,

Greg


________________________________
From: Khem Raj <raj.khem@gmail.com>
Sent: Monday, November 18, 2019 3:30:27 PM
To: Greg Wilson-Lindberg
Cc: Yocto list discussion
Subject: Re: [yocto] [qemu] can't find qemu-native recipe

On Mon, Nov 18, 2019 at 3:27 PM Greg Wilson-Lindberg
<GWilson@sakuraus.com> wrote:
>
> I'm building thud for the raspberry pi3 for boot2qt on Ubuntu 18.04.
> I've got a patch that I need to apply to to fix an include file problem a=
nd I can't find the qemu-native recipe. I can find a number of recipes that=
 depend in one way or another on 'qemu-native', but I can't find a recipe, =
class for it or anything that provides it. I can see it being built, and I =
get an error that indicates that the patch that I have needs to be applied.=
 I can find tmp/work/x86_64-linux/qemu-native/.
>
> In the cooker log I see:
> task qemu_3.0.0
> recipe qemu-native-3.0.0
>
> But I can't find a qemu-native.bb file,or bbclass.
>
> I'm rather confused at this point, can someone shed a bit of light on wha=
t I'm missing?
>

there must be BBCLASSEXTEND =3D "native" in qemu recipe which
essentially automatically extends the recipe for native case

see
https://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-BBC=
LASSEXTEND

> Regards,
> Greg Wilson-Lindberg
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--_000_36d57277739a4a898f4f1b7c8826e4fesakurauscom_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from text --><style><!-- .EmailQuote { margin-left: 1pt; pad=
ding-left: 4pt; border-left: #800000 2px solid; } --></style>
</head>
<body>
<meta content=3D"text/html; charset=3DUTF-8">
<style type=3D"text/css" style=3D"">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div dir=3D"ltr">
<div id=3D"x_divtagdefaultwrapper" style=3D"font-size:12pt; color:#000000; =
font-family:Calibri,Arial,Helvetica,sans-serif">
<p>Hi Khem,</p>
<p>I found the <font size=3D"2"><span style=3D"font-size:10pt">BBCLASSEXTEN=
D</span></font> in the qemu.inc file, I also found a line in the .bb file:<=
/p>
<p><span>SRC_URI_append_class-native =3D &quot; \</span></p>
<p><br>
</p>
<p>so I changed my SRC_URI to that and I stopped getting the 'can't find fi=
le to patch' error, but the file (syscall.c) is not modified.</p>
<p><br>
</p>
<p>Here is my qemu_3.0.0.bbappend file, meta-sakura/recipes-devtools/qemu/q=
emu_3.0.0.bbappend:</p>
<p></p>
<div>FILESEXTRAPATHS_prepend :=3D &quot;${FILE_DIRNAME}/${PN}:&quot;<br>
<br>
SRC_URII_append_class-native =3D &quot;file://syscall.c-add_missing_sockios=
_header_include.patch&quot;<br>
</div>
<div><br>
</div>
<div>And here is the patch file .../qemu/<span>syscall.c-add_missing_sockio=
s_header_include.patch</span>:<br>
</div>
<div>--- a/linux-user/syscall.c&nbsp;&nbsp; &nbsp;2019-11-18 09:42:39.00000=
0000 -0800<br>
&#43;&#43;&#43; b/linux-user/syscall.c&nbsp;&nbsp; &nbsp;2019-11-18 09:23:2=
3.000000000 -0800<br>
@@ -34,6 &#43;34,7 @@<br>
&nbsp;#include &lt;sys/resource.h&gt;<br>
&nbsp;#include &lt;sys/swap.h&gt;<br>
&nbsp;#include &lt;linux/capability.h&gt;<br>
&#43;#include &lt;linux/sockios.h&gt;<br>
&nbsp;#include &lt;sched.h&gt;<br>
&nbsp;#include &lt;sys/timex.h&gt;<br>
&nbsp;#include &lt;sys/socket.h&gt;<br>
<br>
</div>
I am not getting the:
<p></p>
<p>...tmp/work/x86_64-linux/qemu-native/3.0.0-r0/qemu-3.0.0/linux-user/sysc=
all.c</p>
<p>modified.</p>
<p><br>
</p>
<p>I'm obviously missing something. Any help would be greatly appreciated.<=
/p>
<p><br>
</p>
<p>Regards,</p>
<p>Greg</p>
<p><br>
</p>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Khem Raj &lt;raj.kh=
em@gmail.com&gt;<br>
<b>Sent:</b> Monday, November 18, 2019 3:30:27 PM<br>
<b>To:</b> Greg Wilson-Lindberg<br>
<b>Cc:</b> Yocto list discussion<br>
<b>Subject:</b> Re: [yocto] [qemu] can't find qemu-native recipe</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText">On Mon, Nov 18, 2019 at 3:27 PM Greg Wilson-Lindbe=
rg<br>
&lt;GWilson@sakuraus.com&gt; wrote:<br>
&gt;<br>
&gt; I'm building thud for the raspberry pi3 for boot2qt on Ubuntu 18.04.<b=
r>
&gt; I've got a patch that I need to apply to to fix an include file proble=
m and I can't find the qemu-native recipe. I can find a number of recipes t=
hat depend in one way or another on 'qemu-native', but I can't find a recip=
e, class for it or anything that provides
 it. I can see it being built, and I get an error that indicates that the p=
atch that I have needs to be applied. I can find tmp/work/x86_64-linux/qemu=
-native/.<br>
&gt;<br>
&gt; In the cooker log I see:<br>
&gt; task qemu_3.0.0<br>
&gt; recipe qemu-native-3.0.0<br>
&gt;<br>
&gt; But I can't find a qemu-native.bb file,or bbclass.<br>
&gt;<br>
&gt; I'm rather confused at this point, can someone shed a bit of light on =
what I'm missing?<br>
&gt;<br>
<br>
there must be BBCLASSEXTEND =3D &quot;native&quot; in qemu recipe which<br>
essentially automatically extends the recipe for native case<br>
<br>
see<br>
<a href=3D"https://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.h=
tml#var-BBCLASSEXTEND">https://www.yoctoproject.org/docs/latest/ref-manual/=
ref-manual.html#var-BBCLASSEXTEND</a><br>
<br>
&gt; Regards,<br>
&gt; Greg Wilson-Lindberg<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; yocto@yoctoproject.org<br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://list=
s.yoctoproject.org/listinfo/yocto</a><br>
</div>
</span></font>
</body>
</html>

--_000_36d57277739a4a898f4f1b7c8826e4fesakurauscom_--
