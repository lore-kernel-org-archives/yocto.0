Return-Path: <jdelapena@lexmark.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2D989E008D9; Tue, 18 Nov 2014 19:53:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [64.18.3.94 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from exprod8og107.obsmtp.com (exprod8og107.obsmtp.com [64.18.3.94])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E46AE008C3
	for <yocto@yoctoproject.org>; Tue, 18 Nov 2014 19:52:58 -0800 (PST)
Received: from mail-lb0-f178.google.com ([209.85.217.178]) (using TLSv1) by
	exprod8ob107.postini.com ([64.18.7.12]) with SMTP
	ID DSNKVGwUGY5vewxmxT6u1GbP3oZEGBjYfWsw@postini.com;
	Tue, 18 Nov 2014 19:52:59 PST
Received: by mail-lb0-f178.google.com with SMTP id f15so20329894lbj.23
	for <yocto@yoctoproject.org>; Tue, 18 Nov 2014 19:52:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=GrAGrbtnbpGIqVXPf9Ravf36yLVLkHrJggumD+b4LCo=;
	b=DldvilyhzYz089ukVowsHKwO0N+trUQbD5qFpEYuLZRTqlb4W/9Va03p1fdUxDM6zM
	zSXLRrfSQpCTpU2HuR2NyMSnN9QfSP02fAVBgmGTIqRFzSSF5SSKOz6EHv+UM/MRC26r
	9yNs1wICcDxKfAHwD81cp5dP3fPk5tzWgocCqVeKC+sSgKDg3/ZxGqzBtn7J43J0S5/M
	2diOI8vD0G77e3xlC/QRhn1S60uzwy3Uir1ZoVsOqr703QNRc34XxSUC4SHXEMze69tC
	x4M1ltjeAAiFninmHE8CY8vCVoex+7syFrja3iQo+sZs4JsyO++zFUqzmtntCO53xf9/
	l7Kg==
X-Gm-Message-State: ALoCoQkZJBCRzzeoNtDRf5lPrPLRArFspugEgzL9p8yG6xCEuyLHqanm0+e1B/gpD32Nna4QBcIzw8q8U+asZxGJO4WAvBjdM2A44rgPi+1aWJ/ghAHRoaEl/BFt17ylciNwT/sX2NKjLznhSGyIZZHiI3JKuUZH/A==
X-Received: by 10.112.132.2 with SMTP id oq2mr15230314lbb.11.1416369176081;
	Tue, 18 Nov 2014 19:52:56 -0800 (PST)
MIME-Version: 1.0
X-Received: by 10.112.132.2 with SMTP id oq2mr15230294lbb.11.1416369175757;
	Tue, 18 Nov 2014 19:52:55 -0800 (PST)
Received: by 10.152.2.40 with HTTP; Tue, 18 Nov 2014 19:52:55 -0800 (PST)
In-Reply-To: <86196249137E0843B2E0673D4F731E0CDF3F3AA3@reactor.sldomain.com>
References: <86196249137E0843B2E0673D4F731E0CDF3F393A@reactor.sldomain.com>
	<546517D3.4030107@gmail.com>
	<86196249137E0843B2E0673D4F731E0CDF3F398B@reactor.sldomain.com>
	<CAJrRHk49orVJh7aHKp4nsULeyVoT4VY425WfcabBqmK5XuXA=w@mail.gmail.com>
	<86196249137E0843B2E0673D4F731E0CDF3F3AA3@reactor.sldomain.com>
Date: Wed, 19 Nov 2014 11:52:55 +0800
Message-ID: <CAJrRHk4YCM6pmeZpT__XdOgZifTwq2xus3oNx5vqv50o8zzWmA@mail.gmail.com>
From: =?UTF-8?Q?Joseph_Andrew_de_la_Pe=C3=B1a?= <jdelapena@lexmark.com>
To: Jim Rafert <jimr@spectralogic.com>
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
X-List-Received-Date: Wed, 19 Nov 2014 03:53:03 -0000
Content-Type: multipart/alternative; boundary=047d7b3a823a97a30305082e25c6

--047d7b3a823a97a30305082e25c6
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Good day Jim,

Partly correct. To add more info, native is basically intended for host
tools that should be placed into the native/host sysroot. Please don't
disregard that.

The clang compiler is built onto the target sysroot (i586) basically
because of your recipe.

The beauty of BBCLASSEXTEND is you don't need to name your recipe such as
naitvesdk-<name>.bb or <name>-native.bb (when using inherit). By default,
with no inherits or BBCLASSEXTEND, the recipe's packages files will be
installed into the target sysroot, i586 (which you have experienced).

Here's a quick recipe content for a tool that will be placed in native and
nativesdk sysroot.

++ tool_1.0.bb
SUMMARY=3Dtool
LICENSE=3D""
SRC_URI=3D""
S=3D""

# nothing fancy
# FILES_${PN} already includes /usr/bin/* path.
# Thus, all binaries installed in /usr/bin will be part of the primary
package.

BBCLASSEXTEND=3D"native nativesdk"

++ packagegroup-<name>.bb (the specific packagegroup your package must be
included)
RDEPENDS_${PN} =3D "\
    tool \
   "

++  nativesdk-packagegroup-sdk-host.bb  (by default, value of
TOOLCHAIN_HOST_TASK, unless you specified otherwise)
RDEPENDS_${PN} =3D "\
    nativesdk-tool \
   "

Basically, that's just it.

Thanks,
Joseph

On Sat, Nov 15, 2014 at 1:09 AM, Jim Rafert <jimr@spectralogic.com> wrote:

>  Hi Joseph,
>
> Thanks for the tips.  I totally missed the pod2man problem, and never saw
> the BBCLASSEXTEND stuff in all my extensive googling.
>
> I researched the BBCLASSEXTENDS variable in the Yocto Project Reference
> Manual.
>
> From what I read, I understand that adding "native" to BBCLASSEXTEND
> produces executables that will run on the workstation that I use to build
> the recipe with bitbake.  This recipe could be REQUIREd by other recipes
> that depend upon it to build.
>
> "nativesdk", on the other hand, should create executables that run on the
> SDKMACHINE architecture that is specified in my local.conf.
>
> Since I only need the  Clang compiler to be available to SDK users for
> building applications outside of the bitbake environment, I think I need
> "nativesdk", but not "native".
>
> Is my understanding of this correct, or have I totally missed the point
> somewhere?
>
> Also, would it be more straighforward to just have my recipe inherit the
> nativesdk class?  I added BBCLASSEXTEND=3D"native nativesdk" to my recipe=
,
> and it still seems to be building in i586-poky-linux, which is not the
> SKDMACHINE architecture.
>
> Once again, thank you for your help.  You have greatly advanced my
> understanding of building a recipe for the SDK.
>
> -Jim-
>
>
>   ------------------------------
> *From:* Joseph Andrew de la Pe=C3=B1a [jdelapena@lexmark.com]
> *Sent:* Friday, November 14, 2014 12:39 AM
> *To:* Jim Rafert
> *Cc:* nick; yocto@yoctoproject.org
>
> *Subject:* Re: [yocto] New recipe for toolchain fails install, "ERROR:
> ld.so: object 'libpseudo.so' from LD_PRELOAD cannot be preloaded: ignored=
."
>
>   Good day Jim,
>
>  Seems to be that the main error is due to /bin/sh: pod2man: command not
> found.
> I think the tool is not present or any references to its path was not
> properly established.
>
>  Also, for your expectation to be part of native and nativesdk, please
> add BBCLASSEXTEND =3D "native nativesdk" in your recipe.
>
>  Thanks,
> - J
>
> On Fri, Nov 14, 2014 at 5:14 AM, Jim Rafert <jimr@spectralogic.com> wrote=
:
>
>> I noticed that a couple of my attachments didn't make it.  So here they
>> are. They're renamed with a .txt extension to slip them past the Argus e=
yes
>> of MS Exchange.
>>
>> "These are not the droids you're looking for....Move along"
>>
>> -Jim-
>> ________________________________________
>> From: nick [xerofoify@gmail.com]
>> Sent: Thursday, November 13, 2014 1:42 PM
>> To: Jim Rafert; yocto@yoctoproject.org
>> Subject: Re: [yocto] New recipe for toolchain fails install, "ERROR:
>> ld.so: object 'libpseudo.so' from LD_PRELOAD cannot be preloaded: ignore=
d."
>>
>> Hey Jim,
>> I had a stressful day with other things so I would like some time to
>> unwind but I will try and help out
>> later if that's OK.
>> Nick
>>
>> On 14-11-13 03:13 PM, Jim Rafert wrote:
>> > Hi folks,
>> >
>> > I'm trying to put together a recipe to include llvm and clang in the
>> yocto toolchain.  My goal is to have the clang compiler available for
>> application development.  I do not intend to compile the kernel or OS im=
age
>> with clang.  I have created a recipe and placed it in one of my added
>> layers as follows:
>> >
>> > LICENSE =3D "NCSA"
>> > PR =3D "r0"
>> > LIC_FILES_CHKSUM =3D
>> "file://LICENSE.TXT;md5=3D47e311aa9caedd1b3abf098bd7814d1d"
>> >
>> > SRC_URI =3D "file://llvm-3.5.0.tar.gz \
>> >           "
>> > SRC_URI[md5sum] =3D "e2dd127722ffb305c981d2a02687b4ff"
>> > SRC_URI[sha256sum] =3D
>> "1badb762129feb7ced9484a7969c88cebab9b01b80b83002fc9690933cd7d0e0"
>> >
>> > EXTRA_OECONF =3D "--config=3DLinux-yocto "
>> >
>> > INHIBIT_PACKAGE_DEBUG_SPLIT =3D "1"
>> >
>> > INSANE_SKIP_${PN} =3D "already-stripped"
>> >
>> > #FILES_${PN} =3D "${libdir}/* /usr/bin "
>> > inherit autotools
>> >
>> > do_configure () {
>> >         ./configure --enable-optimized --enable-targets=3Dx86,x86_64
>> --host=3Dx86_64-unknown-linux-gnu --build=3Dx86_64-unknown-linux-gnu
>> > }
>> >
>> > The recipe is copied from another recipe of mine that builds the POCO
>> libraries, so INSANE_SKIP_${PN} =3D "already-stripped" may not actually =
be
>> necessary, but was left in until I got the recipe running.
>> >
>> > I add the recipe to the toolchain by including it in
>> TOOLCHAIN_HOST_TASK from my local.conf, thus:
>> > "TOOLCHAIN_HOST_TASK +=3D " llvm "
>> >
>> > This gets the source unpacked, configures, and compiles, but do_instal=
l
>> fails with several instances of this message: "ERROR: ld.so: object
>> 'libpseudo.so' from LD_PRELOAD cannot be preloaded: ignored."
>> >
>> > Even though it doesn't install, the build products are in the work
>> directory, so I examined them.
>> >
>> > [jimr@krusty llvm-3.5.0]$ file
>> /home/jimr/tera/yocto/daisy/build/tmp/work/i586-poky-linux/llvm/3.5.0-r0=
/llvm-3.5.0/Release+Asserts/bin/clang
>> >
>> /home/jimr/tera/yocto/daisy/build/tmp/work/i586-poky-linux/llvm/3.5.0-r0=
/llvm-3.5.0/Release+Asserts/bin/clang:
>> ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), dynamically
>> linked (uses shared libs), for GNU/Linux 2.6.16,
>> BuildID[sha1]=3D0x96bd97125551d23e94bcbbc4e68b69b8db36def9, not stripped
>> >
>> > I was hoping that this would be built for the architecture specified i=
n
>> local.conf for the toolchain, which is: SDKMACHINE ?=3D "x86_64"
>> >
>> > I think that this architecture mismatch may be the root of the problem
>> with the LD_PRELOAD of pseudo.  I also would expect that the work direct=
ory
>> would be under x86_64-nativesdk-pokysdk-linux or x86_64-pokysdk-linux
>> rather than i586-poky-linux.
>> >
>> > Do any of you Yocto/OE/bitbake experts out there know what I might be
>> doing wrong, or not doing, that causes this problem?
>> >
>> > I have attached the output of the bitbake command, my local.conf file,
>> the recipe, and config.log and config.status from the work directory for
>> your viewing pleasure.
>> >
>> > Any help with this would be greatly appreciated.
>> >
>> > -Jim-
>> >
>> >
>> >
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>

--047d7b3a823a97a30305082e25c6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Good day Jim,<div><br></div><div>Partly correct. To add mo=
re info, native is basically intended for host tools that should be placed =
into the native/host sysroot. Please don&#39;t disregard that.</div><div><b=
r></div><div>The clang compiler is built onto the target sysroot (i586) bas=
ically because of your recipe.</div><div><br></div><div>The beauty of BBCLA=
SSEXTEND is you don&#39;t need to name your recipe such as naitvesdk-&lt;na=
me&gt;.bb or &lt;name&gt;-<a href=3D"http://native.bb">native.bb</a> (when =
using inherit). By default, with no inherits or BBCLASSEXTEND, the recipe&#=
39;s packages files will be installed into the target sysroot, i586 (which =
you have experienced).</div><div><br></div><div>Here&#39;s a quick recipe c=
ontent for a tool that will be placed in native and nativesdk sysroot.</div=
><div><br></div><div>++ <a href=3D"http://tool_1.0.bb">tool_1.0.bb</a></div=
><div>SUMMARY=3Dtool</div><div>LICENSE=3D&quot;&quot;</div><div>SRC_URI=3D&=
quot;&quot;</div><div>S=3D&quot;&quot;</div><div><br></div><div># nothing f=
ancy</div><div># FILES_${PN} already includes /usr/bin/* path.</div><div># =
Thus, all binaries installed in /usr/bin will be part of the primary packag=
e.</div><div><br></div><div>BBCLASSEXTEND=3D&quot;native nativesdk&quot;<br=
></div><div><br></div><div>++ packagegroup-&lt;name&gt;.bb (the specific pa=
ckagegroup your package must be included)</div><div>RDEPENDS_${PN} =3D &quo=
t;\</div><div>=C2=A0 =C2=A0 tool \</div><div>=C2=A0 =C2=A0&quot;</div><div>=
<br></div><div>++ =C2=A0<a href=3D"http://nativesdk-packagegroup-sdk-host.b=
b">nativesdk-packagegroup-sdk-host.bb</a> =C2=A0(by default, value of TOOLC=
HAIN_HOST_TASK, unless you specified otherwise)</div><div><div>RDEPENDS_${P=
N} =3D &quot;\</div><div>=C2=A0 =C2=A0 nativesdk-tool \</div><div>=C2=A0 =
=C2=A0&quot;</div></div><div><br></div><div>Basically, that&#39;s just it.<=
/div><div><br></div><div>Thanks,</div><div>Joseph</div></div><div class=3D"=
gmail_extra"><br><div class=3D"gmail_quote">On Sat, Nov 15, 2014 at 1:09 AM=
, Jim Rafert <span dir=3D"ltr">&lt;<a href=3D"mailto:jimr@spectralogic.com"=
 target=3D"_blank">jimr@spectralogic.com</a>&gt;</span> wrote:<br><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex">




<div>
<div style=3D"direction:ltr;font-family:Tahoma;color:#000000;font-size:10pt=
">Hi Joseph,<br>
<br>
Thanks for the tips.=C2=A0 I totally missed the pod2man problem, and never =
saw the BBCLASSEXTEND stuff in all my extensive googling.<br>
<br>
I researched the BBCLASSEXTENDS variable in the Yocto Project Reference Man=
ual.=C2=A0 <br>
<br>
From what I read, I understand that adding &quot;native&quot; to BBCLASSEXT=
END produces executables that will run on the workstation that I use to bui=
ld the recipe with bitbake.=C2=A0 This recipe could be REQUIREd by other re=
cipes that depend upon it to build.<br>
<br>
&quot;nativesdk&quot;, on the other hand, should create executables that ru=
n on the SDKMACHINE architecture that is specified in my local.conf.<br>
<br>
Since I only need the=C2=A0 Clang compiler to be available to SDK users for=
 building applications outside of the bitbake environment, I think I need &=
quot;nativesdk&quot;, but not &quot;native&quot;.<br>
<br>
Is my understanding of this correct, or have I totally missed the point som=
ewhere?<br>
<br>
Also, would it be more straighforward to just have my recipe inherit the na=
tivesdk class?=C2=A0 I added BBCLASSEXTEND=3D&quot;native nativesdk&quot; t=
o my recipe, and it still seems to be building in i586-poky-linux, which is=
 not the SKDMACHINE architecture.<br>
<br>
Once again, thank you for your help.=C2=A0 You have greatly advanced my und=
erstanding of building a recipe for the SDK.<br>
<br>
-Jim-<br>
<div><br>
<div style=3D"font-family:Tahoma;font-size:13px"><br>
</div>
</div>
<div style=3D"font-family:Times New Roman;color:#000000;font-size:16px">
<hr>
<div style=3D"direction:ltr"><font color=3D"#000000" face=3D"Tahoma"><b>Fro=
m:</b> Joseph Andrew de la Pe=C3=B1a [<a href=3D"mailto:jdelapena@lexmark.c=
om" target=3D"_blank">jdelapena@lexmark.com</a>]<br>
<b>Sent:</b> Friday, November 14, 2014 12:39 AM<br>
<b>To:</b> Jim Rafert<br>
<b>Cc:</b> nick; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank=
">yocto@yoctoproject.org</a><div><div class=3D"h5"><br>
<b>Subject:</b> Re: [yocto] New recipe for toolchain fails install, &quot;E=
RROR: ld.so: object &#39;libpseudo.so&#39; from LD_PRELOAD cannot be preloa=
ded: ignored.&quot;<br>
</div></div></font><br>
</div><div><div class=3D"h5">
<div></div>
<div>
<div dir=3D"ltr">Good day Jim,
<div><br>
</div>
<div>Seems to be that the main error is due to=C2=A0/bin/sh: pod2man: comma=
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
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
I noticed that a couple of my attachments didn&#39;t make it.=C2=A0 So here=
 they are. They&#39;re renamed with a .txt extension to slip them past the =
Argus eyes of MS Exchange.<br>
<br>
&quot;These are not the droids you&#39;re looking for....Move along&quot;<b=
r>
<span><br>
-Jim-<br>
________________________________________<br>
From: nick [<a href=3D"mailto:xerofoify@gmail.com" target=3D"_blank">xerofo=
ify@gmail.com</a>]<br>
Sent: Thursday, November 13, 2014 1:42 PM<br>
To: Jim Rafert; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank"=
>yocto@yoctoproject.org</a><br>
</span>Subject: Re: [yocto] New recipe for toolchain fails install, &quot;E=
RROR: ld.so: object &#39;libpseudo.so&#39; from LD_PRELOAD cannot be preloa=
ded: ignored.&quot;<br>
<div>
<div><br>
Hey Jim,<br>
I had a stressful day with other things so I would like some time to unwind=
 but I will try and help out<br>
later if that&#39;s OK.<br>
Nick<br>
<br>
On 14-11-13 03:13 PM, Jim Rafert wrote:<br>
&gt; Hi folks,<br>
&gt;<br>
&gt; I&#39;m trying to put together a recipe to include llvm and clang in t=
he yocto toolchain.=C2=A0 My goal is to have the clang compiler available f=
or application development.=C2=A0 I do not intend to compile the kernel or =
OS image with clang.=C2=A0 I have created a recipe and
 placed it in one of my added layers as follows:<br>
&gt;<br>
&gt; LICENSE =3D &quot;NCSA&quot;<br>
&gt; PR =3D &quot;r0&quot;<br>
&gt; LIC_FILES_CHKSUM =3D &quot;file://LICENSE.TXT;md5=3D47e311aa9caedd1b3a=
bf098bd7814d1d&quot;<br>
&gt;<br>
&gt; SRC_URI =3D &quot;file://llvm-3.5.0.tar.gz \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;<br>
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
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0./configure --enable-optimized --enab=
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
&gt; &quot;TOOLCHAIN_HOST_TASK +=3D &quot; llvm &quot;<br>
&gt;<br>
&gt; This gets the source unpacked, configures, and compiles, but do_instal=
l fails with several instances of this message: &quot;ERROR: ld.so: object =
&#39;libpseudo.so&#39; from LD_PRELOAD cannot be preloaded: ignored.&quot;<=
br>
&gt;<br>
&gt; Even though it doesn&#39;t install, the build products are in the work=
 directory, so I examined them.<br>
&gt;<br>
&gt; [jimr@krusty llvm-3.5.0]$ file /home/jimr/tera/yocto/daisy/build/tmp/w=
ork/i586-poky-linux/llvm/3.5.0-r0/llvm-3.5.0/Release+Asserts/bin/clang<br>
&gt; /home/jimr/tera/yocto/daisy/build/tmp/work/i586-poky-linux/llvm/3.5.0-=
r0/llvm-3.5.0/Release+Asserts/bin/clang: ELF 32-bit LSB executable, Intel 8=
0386, version 1 (SYSV), dynamically linked (uses shared libs), for GNU/Linu=
x 2.6.16, BuildID[sha1]=3D0x96bd97125551d23e94bcbbc4e68b69b8db36def9,
 not stripped<br>
&gt;<br>
&gt; I was hoping that this would be built for the architecture specified i=
n local.conf for the toolchain, which is: SDKMACHINE ?=3D &quot;x86_64&quot=
;<br>
&gt;<br>
&gt; I think that this architecture mismatch may be the root of the problem=
 with the LD_PRELOAD of pseudo.=C2=A0 I also would expect that the work dir=
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
</div></div></div>
</div>
</div>

</blockquote></div><br></div>

--047d7b3a823a97a30305082e25c6--
