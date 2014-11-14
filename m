Return-Path: <jimr@spectralogic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6FB11E007BA; Fri, 14 Nov 2014 09:09:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail5.spectralogic.com (mail5.spectralogic.com [192.30.190.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B481E005B7
	for <yocto@yoctoproject.org>; Fri, 14 Nov 2014 09:09:02 -0800 (PST)
From: Jim Rafert <jimr@spectralogic.com>
To: =?iso-8859-1?Q?Joseph_Andrew_de_la_Pe=F1a?= <jdelapena@lexmark.com>
Thread-Topic: [yocto] New recipe for toolchain fails install, "ERROR: ld.so:
	object 'libpseudo.so' from LD_PRELOAD cannot be preloaded: ignored."
Thread-Index: Ac//dyjXh7smuVrBRu2Ap8xoWi/L/QAReyOA//+Q9N2AASZVAIAAHWrz
Date: Fri, 14 Nov 2014 17:09:01 +0000
Message-ID: <86196249137E0843B2E0673D4F731E0CDF3F3AA3@reactor.sldomain.com>
References: <86196249137E0843B2E0673D4F731E0CDF3F393A@reactor.sldomain.com>
	<546517D3.4030107@gmail.com>
	<86196249137E0843B2E0673D4F731E0CDF3F398B@reactor.sldomain.com>,
	<CAJrRHk49orVJh7aHKp4nsULeyVoT4VY425WfcabBqmK5XuXA=w@mail.gmail.com>
In-Reply-To: <CAJrRHk49orVJh7aHKp4nsULeyVoT4VY425WfcabBqmK5XuXA=w@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.254.6]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: New recipe for toolchain fails install, "ERROR: ld.so: object 'libpseudo.so' from LD_PRELOAD cannot be preloaded: ignored."
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
X-List-Received-Date: Fri, 14 Nov 2014 17:09:08 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_86196249137E0843B2E0673D4F731E0CDF3F3AA3reactorsldomain_"

--_000_86196249137E0843B2E0673D4F731E0CDF3F3AA3reactorsldomain_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Joseph,

Thanks for the tips.  I totally missed the pod2man problem, and never saw t=
he BBCLASSEXTEND stuff in all my extensive googling.

I researched the BBCLASSEXTENDS variable in the Yocto Project Reference Man=
ual.

From what I read, I understand that adding "native" to BBCLASSEXTEND produc=
es executables that will run on the workstation that I use to build the rec=
ipe with bitbake.  This recipe could be REQUIREd by other recipes that depe=
nd upon it to build.

"nativesdk", on the other hand, should create executables that run on the S=
DKMACHINE architecture that is specified in my local.conf.

Since I only need the  Clang compiler to be available to SDK users for buil=
ding applications outside of the bitbake environment, I think I need "nativ=
esdk", but not "native".

Is my understanding of this correct, or have I totally missed the point som=
ewhere?

Also, would it be more straighforward to just have my recipe inherit the na=
tivesdk class?  I added BBCLASSEXTEND=3D"native nativesdk" to my recipe, an=
d it still seems to be building in i586-poky-linux, which is not the SKDMAC=
HINE architecture.

Once again, thank you for your help.  You have greatly advanced my understa=
nding of building a recipe for the SDK.

-Jim-


________________________________
From: Joseph Andrew de la Pe=F1a [jdelapena@lexmark.com]
Sent: Friday, November 14, 2014 12:39 AM
To: Jim Rafert
Cc: nick; yocto@yoctoproject.org
Subject: Re: [yocto] New recipe for toolchain fails install, "ERROR: ld.so:=
 object 'libpseudo.so' from LD_PRELOAD cannot be preloaded: ignored."

Good day Jim,

Seems to be that the main error is due to /bin/sh: pod2man: command not fou=
nd.
I think the tool is not present or any references to its path was not prope=
rly established.

Also, for your expectation to be part of native and nativesdk, please add B=
BCLASSEXTEND =3D "native nativesdk" in your recipe.

Thanks,
- J

On Fri, Nov 14, 2014 at 5:14 AM, Jim Rafert <jimr@spectralogic.com<mailto:j=
imr@spectralogic.com>> wrote:
I noticed that a couple of my attachments didn't make it.  So here they are=
. They're renamed with a .txt extension to slip them past the Argus eyes of=
 MS Exchange.

"These are not the droids you're looking for....Move along"

-Jim-
________________________________________
From: nick [xerofoify@gmail.com<mailto:xerofoify@gmail.com>]
Sent: Thursday, November 13, 2014 1:42 PM
To: Jim Rafert; yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Subject: Re: [yocto] New recipe for toolchain fails install, "ERROR: ld.so:=
 object 'libpseudo.so' from LD_PRELOAD cannot be preloaded: ignored."

Hey Jim,
I had a stressful day with other things so I would like some time to unwind=
 but I will try and help out
later if that's OK.
Nick

On 14-11-13 03:13 PM, Jim Rafert wrote:
> Hi folks,
>
> I'm trying to put together a recipe to include llvm and clang in the yoct=
o toolchain.  My goal is to have the clang compiler available for applicati=
on development.  I do not intend to compile the kernel or OS image with cla=
ng.  I have created a recipe and placed it in one of my added layers as fol=
lows:
>
> LICENSE =3D "NCSA"
> PR =3D "r0"
> LIC_FILES_CHKSUM =3D "file://LICENSE.TXT;md5=3D47e311aa9caedd1b3abf098bd7=
814d1d"
>
> SRC_URI =3D "file://llvm-3.5.0.tar.gz \
>           "
> SRC_URI[md5sum] =3D "e2dd127722ffb305c981d2a02687b4ff"
> SRC_URI[sha256sum] =3D "1badb762129feb7ced9484a7969c88cebab9b01b80b83002f=
c9690933cd7d0e0"
>
> EXTRA_OECONF =3D "--config=3DLinux-yocto "
>
> INHIBIT_PACKAGE_DEBUG_SPLIT =3D "1"
>
> INSANE_SKIP_${PN} =3D "already-stripped"
>
> #FILES_${PN} =3D "${libdir}/* /usr/bin "
> inherit autotools
>
> do_configure () {
>         ./configure --enable-optimized --enable-targets=3Dx86,x86_64 --ho=
st=3Dx86_64-unknown-linux-gnu --build=3Dx86_64-unknown-linux-gnu
> }
>
> The recipe is copied from another recipe of mine that builds the POCO lib=
raries, so INSANE_SKIP_${PN} =3D "already-stripped" may not actually be nec=
essary, but was left in until I got the recipe running.
>
> I add the recipe to the toolchain by including it in TOOLCHAIN_HOST_TASK =
from my local.conf, thus:
> "TOOLCHAIN_HOST_TASK +=3D " llvm "
>
> This gets the source unpacked, configures, and compiles, but do_install f=
ails with several instances of this message: "ERROR: ld.so: object 'libpseu=
do.so' from LD_PRELOAD cannot be preloaded: ignored."
>
> Even though it doesn't install, the build products are in the work direct=
ory, so I examined them.
>
> [jimr@krusty llvm-3.5.0]$ file /home/jimr/tera/yocto/daisy/build/tmp/work=
/i586-poky-linux/llvm/3.5.0-r0/llvm-3.5.0/Release+Asserts/bin/clang
> /home/jimr/tera/yocto/daisy/build/tmp/work/i586-poky-linux/llvm/3.5.0-r0/=
llvm-3.5.0/Release+Asserts/bin/clang: ELF 32-bit LSB executable, Intel 8038=
6, version 1 (SYSV), dynamically linked (uses shared libs), for GNU/Linux 2=
.6.16, BuildID[sha1]=3D0x96bd97125551d23e94bcbbc4e68b69b8db36def9, not stri=
pped
>
> I was hoping that this would be built for the architecture specified in l=
ocal.conf for the toolchain, which is: SDKMACHINE ?=3D "x86_64"
>
> I think that this architecture mismatch may be the root of the problem wi=
th the LD_PRELOAD of pseudo.  I also would expect that the work directory w=
ould be under x86_64-nativesdk-pokysdk-linux or x86_64-pokysdk-linux rather=
 than i586-poky-linux.
>
> Do any of you Yocto/OE/bitbake experts out there know what I might be doi=
ng wrong, or not doing, that causes this problem?
>
> I have attached the output of the bitbake command, my local.conf file, th=
e recipe, and config.log and config.status from the work directory for your=
 viewing pleasure.
>
> Any help with this would be greatly appreciated.
>
> -Jim-
>
>
>

--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
https://lists.yoctoproject.org/listinfo/yocto



--_000_86196249137E0843B2E0673D4F731E0CDF3F3AA3reactorsldomain_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style id=3D"owaParaStyle" type=3D"text/css">P {margin-top:0;margin-bottom:=
0;}</style>
</head>
<body ocsi=3D"0" fpstyle=3D"1">
<div style=3D"direction: ltr;font-family: Tahoma;color: #000000;font-size: =
10pt;">Hi Joseph,<br>
<br>
Thanks for the tips.&nbsp; I totally missed the pod2man problem, and never =
saw the BBCLASSEXTEND stuff in all my extensive googling.<br>
<br>
I researched the BBCLASSEXTENDS variable in the Yocto Project Reference Man=
ual.&nbsp; <br>
<br>
From what I read, I understand that adding &quot;native&quot; to BBCLASSEXT=
END produces executables that will run on the workstation that I use to bui=
ld the recipe with bitbake.&nbsp; This recipe could be REQUIREd by other re=
cipes that depend upon it to build.<br>
<br>
&quot;nativesdk&quot;, on the other hand, should create executables that ru=
n on the SDKMACHINE architecture that is specified in my local.conf.<br>
<br>
Since I only need the&nbsp; Clang compiler to be available to SDK users for=
 building applications outside of the bitbake environment, I think I need &=
quot;nativesdk&quot;, but not &quot;native&quot;.<br>
<br>
Is my understanding of this correct, or have I totally missed the point som=
ewhere?<br>
<br>
Also, would it be more straighforward to just have my recipe inherit the na=
tivesdk class?&nbsp; I added BBCLASSEXTEND=3D&quot;native nativesdk&quot; t=
o my recipe, and it still seems to be building in i586-poky-linux, which is=
 not the SKDMACHINE architecture.<br>
<br>
Once again, thank you for your help.&nbsp; You have greatly advanced my und=
erstanding of building a recipe for the SDK.<br>
<br>
-Jim-<br>
<div><br>
<div style=3D"font-family:Tahoma; font-size:13px"><br>
</div>
</div>
<div style=3D"font-family: Times New Roman; color: #000000; font-size: 16px=
">
<hr tabindex=3D"-1">
<div style=3D"direction: ltr;" id=3D"divRpF918974"><font color=3D"#000000" =
face=3D"Tahoma" size=3D"2"><b>From:</b> Joseph Andrew de la Pe=F1a [jdelape=
na@lexmark.com]<br>
<b>Sent:</b> Friday, November 14, 2014 12:39 AM<br>
<b>To:</b> Jim Rafert<br>
<b>Cc:</b> nick; yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] New recipe for toolchain fails install, &quot;E=
RROR: ld.so: object 'libpseudo.so' from LD_PRELOAD cannot be preloaded: ign=
ored.&quot;<br>
</font><br>
</div>
<div></div>
<div>
<div dir=3D"ltr">Good day Jim,
<div><br>
</div>
<div>Seems to be that the main error is due to&nbsp;/bin/sh: pod2man: comma=
nd not found.</div>
<div>I think the tool is not present or any references to its path was not =
properly established.</div>
<div><br>
</div>
<div>Also, for your expectation to be part of native and nativesdk, please =
add BBCLASSEXTEND =3D &quot;native nativesdk&quot; in your recipe.</div>
<div><br>
</div>
<div>Thanks,</div>
<div>- J</div>
</div>
<div class=3D"gmail_extra"><br>
<div class=3D"gmail_quote">On Fri, Nov 14, 2014 at 5:14 AM, Jim Rafert <spa=
n dir=3D"ltr">
&lt;<a href=3D"mailto:jimr@spectralogic.com" target=3D"_blank">jimr@spectra=
logic.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex; border-left:1=
px #ccc solid; padding-left:1ex">
I noticed that a couple of my attachments didn't make it.&nbsp; So here the=
y are. They're renamed with a .txt extension to slip them past the Argus ey=
es of MS Exchange.<br>
<br>
&quot;These are not the droids you're looking for....Move along&quot;<br>
<span class=3D""><br>
-Jim-<br>
________________________________________<br>
From: nick [<a href=3D"mailto:xerofoify@gmail.com" target=3D"_blank">xerofo=
ify@gmail.com</a>]<br>
Sent: Thursday, November 13, 2014 1:42 PM<br>
To: Jim Rafert; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank"=
>yocto@yoctoproject.org</a><br>
</span>Subject: Re: [yocto] New recipe for toolchain fails install, &quot;E=
RROR: ld.so: object 'libpseudo.so' from LD_PRELOAD cannot be preloaded: ign=
ored.&quot;<br>
<div class=3D"HOEnZb">
<div class=3D"h5"><br>
Hey Jim,<br>
I had a stressful day with other things so I would like some time to unwind=
 but I will try and help out<br>
later if that's OK.<br>
Nick<br>
<br>
On 14-11-13 03:13 PM, Jim Rafert wrote:<br>
&gt; Hi folks,<br>
&gt;<br>
&gt; I'm trying to put together a recipe to include llvm and clang in the y=
octo toolchain.&nbsp; My goal is to have the clang compiler available for a=
pplication development.&nbsp; I do not intend to compile the kernel or OS i=
mage with clang.&nbsp; I have created a recipe and
 placed it in one of my added layers as follows:<br>
&gt;<br>
&gt; LICENSE =3D &quot;NCSA&quot;<br>
&gt; PR =3D &quot;r0&quot;<br>
&gt; LIC_FILES_CHKSUM =3D &quot;file://LICENSE.TXT;md5=3D47e311aa9caedd1b3a=
bf098bd7814d1d&quot;<br>
&gt;<br>
&gt; SRC_URI =3D &quot;file://llvm-3.5.0.tar.gz \<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&quot;<br>
&gt; SRC_URI[md5sum] =3D &quot;e2dd127722ffb305c981d2a02687b4ff&quot;<br>
&gt; SRC_URI[sha256sum] =3D &quot;1badb762129feb7ced9484a7969c88cebab9b01b8=
0b83002fc9690933cd7d0e0&quot;<br>
&gt;<br>
&gt; EXTRA_OECONF =3D &quot;--config=3DLinux-yocto &quot;<br>
&gt;<br>
&gt; INHIBIT_PACKAGE_DEBUG_SPLIT =3D &quot;1&quot;<br>
&gt;<br>
&gt; INSANE_SKIP_${PN} =3D &quot;already-stripped&quot;<br>
&gt;<br>
&gt; #FILES_${PN} =3D &quot;${libdir}/* /usr/bin &quot;<br>
&gt; inherit autotools<br>
&gt;<br>
&gt; do_configure () {<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;./configure --enable-optimized --enab=
le-targets=3Dx86,x86_64 --host=3Dx86_64-unknown-linux-gnu --build=3Dx86_64-=
unknown-linux-gnu<br>
&gt; }<br>
&gt;<br>
&gt; The recipe is copied from another recipe of mine that builds the POCO =
libraries, so INSANE_SKIP_${PN} =3D &quot;already-stripped&quot; may not ac=
tually be necessary, but was left in until I got the recipe running.<br>
&gt;<br>
&gt; I add the recipe to the toolchain by including it in TOOLCHAIN_HOST_TA=
SK from my local.conf, thus:<br>
&gt; &quot;TOOLCHAIN_HOST_TASK &#43;=3D &quot; llvm &quot;<br>
&gt;<br>
&gt; This gets the source unpacked, configures, and compiles, but do_instal=
l fails with several instances of this message: &quot;ERROR: ld.so: object =
'libpseudo.so' from LD_PRELOAD cannot be preloaded: ignored.&quot;<br>
&gt;<br>
&gt; Even though it doesn't install, the build products are in the work dir=
ectory, so I examined them.<br>
&gt;<br>
&gt; [jimr@krusty llvm-3.5.0]$ file /home/jimr/tera/yocto/daisy/build/tmp/w=
ork/i586-poky-linux/llvm/3.5.0-r0/llvm-3.5.0/Release&#43;Asserts/bin/clang<=
br>
&gt; /home/jimr/tera/yocto/daisy/build/tmp/work/i586-poky-linux/llvm/3.5.0-=
r0/llvm-3.5.0/Release&#43;Asserts/bin/clang: ELF 32-bit LSB executable, Int=
el 80386, version 1 (SYSV), dynamically linked (uses shared libs), for GNU/=
Linux 2.6.16, BuildID[sha1]=3D0x96bd97125551d23e94bcbbc4e68b69b8db36def9,
 not stripped<br>
&gt;<br>
&gt; I was hoping that this would be built for the architecture specified i=
n local.conf for the toolchain, which is: SDKMACHINE ?=3D &quot;x86_64&quot=
;<br>
&gt;<br>
&gt; I think that this architecture mismatch may be the root of the problem=
 with the LD_PRELOAD of pseudo.&nbsp; I also would expect that the work dir=
ectory would be under x86_64-nativesdk-pokysdk-linux or x86_64-pokysdk-linu=
x rather than i586-poky-linux.<br>
&gt;<br>
&gt; Do any of you Yocto/OE/bitbake experts out there know what I might be =
doing wrong, or not doing, that causes this problem?<br>
&gt;<br>
&gt; I have attached the output of the bitbake command, my local.conf file,=
 the recipe, and config.log and config.status from the work directory for y=
our viewing pleasure.<br>
&gt;<br>
&gt; Any help with this would be greatly appreciated.<br>
&gt;<br>
&gt; -Jim-<br>
&gt;<br>
&gt;<br>
&gt;<br>
</div>
</div>
<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br>
</blockquote>
</div>
<br>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_86196249137E0843B2E0673D4F731E0CDF3F3AA3reactorsldomain_--
