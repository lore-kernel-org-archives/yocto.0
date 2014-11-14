Return-Path: <jdelapena@lexmark.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1AE4E0084F; Thu, 13 Nov 2014 23:39:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [64.18.3.22 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from exprod8og111.obsmtp.com (exprod8og111.obsmtp.com [64.18.3.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92871E00837
	for <yocto@yoctoproject.org>; Thu, 13 Nov 2014 23:39:02 -0800 (PST)
Received: from mail-lb0-f171.google.com ([209.85.217.171]) (using TLSv1) by
	exprod8ob111.postini.com ([64.18.7.12]) with SMTP
	ID DSNKVGWxlZCVT3Qqpn0DipTpDcLeutCFRc2x@postini.com;
	Thu, 13 Nov 2014 23:39:07 PST
Received: by mail-lb0-f171.google.com with SMTP id b6so12386653lbj.16
	for <yocto@yoctoproject.org>; Thu, 13 Nov 2014 23:39:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=f4pNcM69xoV1eVlXNzX/rKOYtHKmnyWO5s3pKxr7Sd8=;
	b=ATstkBofcQiZfPCQA7C0WpsqtwJbjOdEA0bWVvHJ//6M76IgKnq5hscjHj46xJbLGg
	qb9pTBXkyEbokqRLEZRh/I4oCGsBiFB/Q5CPq0Nma79ZA6SjgCqlVDCbtSTpKfwxSs3R
	eI5MMUihSchDvKUPco7CrU7CINibDkBTJaFrBwf82Mcvr4mPpHW11+6qovOU/qYGNjih
	lFX40Ob3Fc4Nckrf6mrJjq5lGN8LOM5VLhm8ccVKqfEDOwao3qpF4FUCniTIyquPe1Wv
	kqkMUdodqmfcNqiYvcDCw8Hb+5QFlKhberskMdGIZeuuA8YTfhKGbFlNlmpC+Sn8ctAu
	HKHQ==
X-Gm-Message-State: ALoCoQmmpHYtPnInw6o4QNCCeS1zh6Qi7uPzIkftbMdw9ZlHGzc08uH5Qh07/tDhFmTRX+msv2zLHRGtWrstcOxZyBu1gccB0u30YqU4cKwrkR89jXEF6BTxI2U4lty46ZkfptU5Auh7kwYQuUUN0hQg7LmpXdEEDA==
X-Received: by 10.152.10.67 with SMTP id g3mr6837685lab.59.1415950740315;
	Thu, 13 Nov 2014 23:39:00 -0800 (PST)
MIME-Version: 1.0
X-Received: by 10.152.10.67 with SMTP id g3mr6837680lab.59.1415950740192; Thu,
	13 Nov 2014 23:39:00 -0800 (PST)
Received: by 10.152.2.40 with HTTP; Thu, 13 Nov 2014 23:39:00 -0800 (PST)
In-Reply-To: <86196249137E0843B2E0673D4F731E0CDF3F398B@reactor.sldomain.com>
References: <86196249137E0843B2E0673D4F731E0CDF3F393A@reactor.sldomain.com>
	<546517D3.4030107@gmail.com>
	<86196249137E0843B2E0673D4F731E0CDF3F398B@reactor.sldomain.com>
Date: Fri, 14 Nov 2014 15:39:00 +0800
Message-ID: <CAJrRHk49orVJh7aHKp4nsULeyVoT4VY425WfcabBqmK5XuXA=w@mail.gmail.com>
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
X-List-Received-Date: Fri, 14 Nov 2014 07:39:11 -0000
Content-Type: multipart/alternative; boundary=001a1132f4a0e397e20507ccb886

--001a1132f4a0e397e20507ccb886
Content-Type: text/plain; charset=UTF-8

Good day Jim,

Seems to be that the main error is due to /bin/sh: pod2man: command not
found.
I think the tool is not present or any references to its path was not
properly established.

Also, for your expectation to be part of native and nativesdk, please add
BBCLASSEXTEND = "native nativesdk" in your recipe.

Thanks,
- J

On Fri, Nov 14, 2014 at 5:14 AM, Jim Rafert <jimr@spectralogic.com> wrote:

> I noticed that a couple of my attachments didn't make it.  So here they
> are. They're renamed with a .txt extension to slip them past the Argus eyes
> of MS Exchange.
>
> "These are not the droids you're looking for....Move along"
>
> -Jim-
> ________________________________________
> From: nick [xerofoify@gmail.com]
> Sent: Thursday, November 13, 2014 1:42 PM
> To: Jim Rafert; yocto@yoctoproject.org
> Subject: Re: [yocto] New recipe for toolchain fails install, "ERROR:
> ld.so: object 'libpseudo.so' from LD_PRELOAD cannot be preloaded: ignored."
>
> Hey Jim,
> I had a stressful day with other things so I would like some time to
> unwind but I will try and help out
> later if that's OK.
> Nick
>
> On 14-11-13 03:13 PM, Jim Rafert wrote:
> > Hi folks,
> >
> > I'm trying to put together a recipe to include llvm and clang in the
> yocto toolchain.  My goal is to have the clang compiler available for
> application development.  I do not intend to compile the kernel or OS image
> with clang.  I have created a recipe and placed it in one of my added
> layers as follows:
> >
> > LICENSE = "NCSA"
> > PR = "r0"
> > LIC_FILES_CHKSUM =
> "file://LICENSE.TXT;md5=47e311aa9caedd1b3abf098bd7814d1d"
> >
> > SRC_URI = "file://llvm-3.5.0.tar.gz \
> >           "
> > SRC_URI[md5sum] = "e2dd127722ffb305c981d2a02687b4ff"
> > SRC_URI[sha256sum] =
> "1badb762129feb7ced9484a7969c88cebab9b01b80b83002fc9690933cd7d0e0"
> >
> > EXTRA_OECONF = "--config=Linux-yocto "
> >
> > INHIBIT_PACKAGE_DEBUG_SPLIT = "1"
> >
> > INSANE_SKIP_${PN} = "already-stripped"
> >
> > #FILES_${PN} = "${libdir}/* /usr/bin "
> > inherit autotools
> >
> > do_configure () {
> >         ./configure --enable-optimized --enable-targets=x86,x86_64
> --host=x86_64-unknown-linux-gnu --build=x86_64-unknown-linux-gnu
> > }
> >
> > The recipe is copied from another recipe of mine that builds the POCO
> libraries, so INSANE_SKIP_${PN} = "already-stripped" may not actually be
> necessary, but was left in until I got the recipe running.
> >
> > I add the recipe to the toolchain by including it in TOOLCHAIN_HOST_TASK
> from my local.conf, thus:
> > "TOOLCHAIN_HOST_TASK += " llvm "
> >
> > This gets the source unpacked, configures, and compiles, but do_install
> fails with several instances of this message: "ERROR: ld.so: object
> 'libpseudo.so' from LD_PRELOAD cannot be preloaded: ignored."
> >
> > Even though it doesn't install, the build products are in the work
> directory, so I examined them.
> >
> > [jimr@krusty llvm-3.5.0]$ file
> /home/jimr/tera/yocto/daisy/build/tmp/work/i586-poky-linux/llvm/3.5.0-r0/llvm-3.5.0/Release+Asserts/bin/clang
> >
> /home/jimr/tera/yocto/daisy/build/tmp/work/i586-poky-linux/llvm/3.5.0-r0/llvm-3.5.0/Release+Asserts/bin/clang:
> ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), dynamically
> linked (uses shared libs), for GNU/Linux 2.6.16,
> BuildID[sha1]=0x96bd97125551d23e94bcbbc4e68b69b8db36def9, not stripped
> >
> > I was hoping that this would be built for the architecture specified in
> local.conf for the toolchain, which is: SDKMACHINE ?= "x86_64"
> >
> > I think that this architecture mismatch may be the root of the problem
> with the LD_PRELOAD of pseudo.  I also would expect that the work directory
> would be under x86_64-nativesdk-pokysdk-linux or x86_64-pokysdk-linux
> rather than i586-poky-linux.
> >
> > Do any of you Yocto/OE/bitbake experts out there know what I might be
> doing wrong, or not doing, that causes this problem?
> >
> > I have attached the output of the bitbake command, my local.conf file,
> the recipe, and config.log and config.status from the work directory for
> your viewing pleasure.
> >
> > Any help with this would be greatly appreciated.
> >
> > -Jim-
> >
> >
> >
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a1132f4a0e397e20507ccb886
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Good day Jim,<div><br></div><div>Seems to be that the main=
 error is due to=C2=A0/bin/sh: pod2man: command not found.</div><div>I thin=
k the tool is not present or any references to its path was not properly es=
tablished.</div><div><br></div><div>Also, for your expectation to be part o=
f native and nativesdk, please add BBCLASSEXTEND =3D &quot;native nativesdk=
&quot; in your recipe.</div><div><br></div><div>Thanks,</div><div>- J</div>=
</div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Fri, Nov=
 14, 2014 at 5:14 AM, Jim Rafert <span dir=3D"ltr">&lt;<a href=3D"mailto:ji=
mr@spectralogic.com" target=3D"_blank">jimr@spectralogic.com</a>&gt;</span>=
 wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bor=
der-left:1px #ccc solid;padding-left:1ex">I noticed that a couple of my att=
achments didn&#39;t make it.=C2=A0 So here they are. They&#39;re renamed wi=
th a .txt extension to slip them past the Argus eyes of MS Exchange.<br>
<br>
&quot;These are not the droids you&#39;re looking for....Move along&quot;<b=
r>
<span class=3D""><br>
-Jim-<br>
________________________________________<br>
From: nick [<a href=3D"mailto:xerofoify@gmail.com">xerofoify@gmail.com</a>]=
<br>
Sent: Thursday, November 13, 2014 1:42 PM<br>
To: Jim Rafert; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoprojec=
t.org</a><br>
</span>Subject: Re: [yocto] New recipe for toolchain fails install, &quot;E=
RROR: ld.so: object &#39;libpseudo.so&#39; from LD_PRELOAD cannot be preloa=
ded: ignored.&quot;<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
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
OS image with clang.=C2=A0 I have created a recipe and placed it in one of =
my added layers as follows:<br>
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
x 2.6.16, BuildID[sha1]=3D0x96bd97125551d23e94bcbbc4e68b69b8db36def9, not s=
tripped<br>
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
</div></div><br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--001a1132f4a0e397e20507ccb886--
