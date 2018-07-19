Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3B8F7E01214; Thu, 19 Jul 2018 00:46:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f68.google.com (mail-lf0-f68.google.com
	[209.85.215.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1500E00D13
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2018 00:46:14 -0700 (PDT)
Received: by mail-lf0-f68.google.com with SMTP id a4-v6so5329348lff.5
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2018 00:46:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=hN9YGApin4S2t5pYqWEDjUzUdTj4w3GuewrNXrltGVM=;
	b=l9xwj4nU8+3QsPtodJCquWQ0lFKJIBNc38+v142+dcOVnnEvdy8L+un6A9DUFS8aYi
	lPrFTK6mzLVIZ4owsvzMUlKU5FKEop4MJ+ysk8DDiu9QyZ2fYLukFlD6H4r2bXQk6May
	O0NVeQAT4GMW3dJyHikObKOmKQYjnap4QAicXtBGxB1kEXOayv4PgZVpP0wPjrNJMd8a
	ZAlIC2gqiCrKa1GbqI278yo6vnROA7k7+/bQ9TgHkDDXUJK131E3+RtQl/OHram6pF5l
	US4aHZ/3xhASPuWOkpCxRrlCBLKRpaJY3FPs/ei8SF9PbFxtDd/JrT5idpVKeL5VAOJ4
	qa9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=hN9YGApin4S2t5pYqWEDjUzUdTj4w3GuewrNXrltGVM=;
	b=e96GPRDmkwXPx8Ia7ATZ/U0Jdf3OK1E+lPMN+kv2JghButaNbWtlIG1vAGMVqH2INI
	g2T9Zov9xEApLZ8wJwUhFHCzFItmbARmB28wi90T1z9Vr3dJKVSkEKn8rlWZiU6EUqLB
	lXtHiUzoX+Av7idOASub8l5fjL7HlGyN04v4lX+iQSHA1A1xIZ8Vwbnoz8xl4+og36g4
	TFZt2X0u6rzpw16yRFacVsao09mreQ43TKjDeMHCVBLO03OkqqiinuerxGKVpUyJLdLR
	d5f0Mafjz76G6n4/JObXqTyQvPe6G38fa2TzLAEsVBorHcBHDE7Q33PZpGbQUK/306/Z
	Q+SA==
X-Gm-Message-State: AOUpUlGTJGCY0yXpyde0qBaYRr4AXBrfxcSvMdE/0iw/XSW9gDQTat1m
	2Ys7toUlP3mIJb77weCbzpwJ3/fwCMaOyXQvnVA=
X-Google-Smtp-Source: AAOMgpeRq/hLyv/CGSXBqnf0mXSSBta791LPyRiAt0i/x+n55SPTUMmfRdvQInjYNXfyGBs/V59Y/QToE1pEajBXQXE=
X-Received: by 2002:a19:e955:: with SMTP id
	g82-v6mr6136944lfh.44.1531986373736; 
	Thu, 19 Jul 2018 00:46:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a19:7014:0:0:0:0:0 with HTTP; Thu, 19 Jul 2018 00:46:12
	-0700 (PDT)
In-Reply-To: <CAGAf8LxZcL-8fyDCJ2+0e2GgUmCGufY91aAHUepb60FUfuW=7A@mail.gmail.com>
References: <CAGAf8Lxousw4NEGP_aHGzHiqvzkJNERFgGHMM1hxNyj6Km72aQ@mail.gmail.com>
	<CANNYZj_aBuEMf1=_xVDQTtqtzxhka5XgLyNVREZvFiFHS7pWZw@mail.gmail.com>
	<CAGAf8LwUEFNu4icxvk0HivK93Yfx7f6-i5gjKa7CpT4NUUHiKQ@mail.gmail.com>
	<CAJ86T=WMJ8zE3ciNdwkSaThdYHBwC9QytGWHKXiVVbue+6kVXg@mail.gmail.com>
	<CAGAf8LxZcL-8fyDCJ2+0e2GgUmCGufY91aAHUepb60FUfuW=7A@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Thu, 19 Jul 2018 09:46:12 +0200
Message-ID: <CAGAf8Ly+JyNm7W5sq6vtfehN+-RjDsDLaG-uTQpyhYm62EAmtQ@mail.gmail.com>
To: Andre McCurdy <armccurdy@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [Chicken and Egg problem] Defining RDEPENDS of the package itself!
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
X-List-Received-Date: Thu, 19 Jul 2018 07:46:17 -0000
Content-Type: multipart/alternative; boundary="0000000000009b7d340571555f5a"

--0000000000009b7d340571555f5a
Content-Type: text/plain; charset="UTF-8"

This does work:

S = "${WORKDIR}/git"

inherit pkgconfig cmake
inherit systemd

EXTRA_OECMAKE += "-DCMAKE_BUILD_TYPE=Release"

INSANE_SKIP_${PN} = "ldflags"
INHIBIT_PACKAGE_STRIP = "1"
INHIBIT_SYSROOT_STRIP = "1"
SOLIBS = ".so"
FILES_SOLIBSDEV = ""

do_install_*append* () {
    install -d ${D}${libdir}
    install -m 0755 ${WORKDIR}/*build/*libcannelloni-common.so ${D}${libdir}
}

Thank you all for help!
Zoran Stojsavljevic

On Thu, Jul 19, 2018 at 9:22 AM, Zoran Stojsavljevic <
zoran.stojsavljevic@gmail.com> wrote:

> Hello Andre,
>
> Thank you for the tips.
>
> Tried what you have suggested. I had some errors, again in
> do_install(), then I read .log, and fixed the paths.
>
> This is my recipe, important part of it, as of now:
> _______
>
> S = "${WORKDIR}/git"
>
> inherit pkgconfig cmake
> inherit systemd
>
> EXTRA_OECMAKE += "-DCMAKE_BUILD_TYPE=Release"
>
> INSANE_SKIP_${PN} = "ldflags"
> INHIBIT_PACKAGE_STRIP = "1"
> INHIBIT_SYSROOT_STRIP = "1"
> SOLIBS = ".so"
> FILES_SOLIBSDEV = ""
>
> do_install () {
>     install -d ${D}${libdir}
>     install -m 0755 cannelloni ${D}${bindir}
>     install -m 0755 ${WORKDIR}/build/libcannelloni-common.so ${D}${libdir}
> }
> _______
>
> Where I modified install directories. ${libdir} is /usr/lib (instead
> /usr/local/lib), all cool with this one as well.
>
> (I guess, I could use LOCAL_LIB =  "/usr/local/lib", and then change
> ${libdir} with ${LOCAL_LIB})
>
> I went further with bitbake. Now I am failing in do_package()
> (inherited from default), with the following ERRORs:
>
> ERROR: cannelloni-1.0-r0 do_package: QA Issue: cannelloni:
> Files/directories were installed but not shipped in any package:
>   /usr/bin
> Please set FILES such that these items are packaged. Alternatively if
> they are unneeded, avoid installing them or delete them within
> do_install.
> cannelloni: 1 installed and not shipped files. [installed-vs-shipped]
> ERROR: cannelloni-1.0-r0 do_package: Fatal QA errors found, failing task.
> ERROR: cannelloni-1.0-r0 do_package: Function failed: do_package
> ERROR: Logfile of failure stored in:
> /home/netmodule.intranet/stojsavljevic/projects/
> beaglebone-black/yocto-rocko/poky/build/tmp/work/
> cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/
> temp/log.do_package.3501
> ERROR: Task (/home/netmodule.intranet/stojsavljevic/projects/
> beaglebone-black/yocto-rocko/poky/meta-test-layer/recipes-
> canapp/cannelloni/cannelloni.bb:do_package)
> failed with exit code '1'
> NOTE: Tasks Summary: Attempted 535 tasks of which 524 didn't need to
> be rerun and 1 failed.
>
> Any take on that?
> _______
>
> Mirza,
>
> Actually, the recipe I am showing here is the GENIVI (the same you
> pointed to), but heavily modified. :-)
>
> And, yes, I am using latest sumo.
>
> Thank you all,
> Zoran
> _______
>
> On Wed, Jul 18, 2018 at 7:06 PM, Andre McCurdy <armccurdy@gmail.com>
> wrote:
> > On Wed, Jul 18, 2018 at 7:04 AM, Zoran Stojsavljevic
> > <zoran.stojsavljevic@gmail.com> wrote:
> >> Yep. Did it. Some symlink is missing (I guess, symlink to
> >> /usr/local/lib/libcannelloni-common.so???
> >>
> >> Initialising tasks: 100%
> >> |###########################################################
> ############################################################
> ######################################|
> >> Time: 0:00:00
> >> NOTE: Executing SetScene Tasks
> >> NOTE: Executing RunQueue Tasks
> >> ERROR: cannelloni-1.0-r0 do_package_qa: QA Issue: cannelloni rdepends on
> >> cannelloni-dev [dev-deps]
> >> ERROR: cannelloni-1.0-r0 do_package_qa: QA Issue: -dev package contains
> >> non-symlink .so: cannelloni-dev path
> >> '/work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-
> r0/packages-split/cannelloni-dev/usr/lib/libcannelloni-common.so'
> >> [dev-elf]
> >> ERROR: cannelloni-1.0-r0 do_package_qa: QA run found fatal errors.
> Please
> >> consider fixing them.
> >> ERROR: cannelloni-1.0-r0 do_package_qa: Function failed: do_package_qa
> >> ERROR: Logfile of failure stored in:
> >> /home/netmodule.intranet/stojsavljevic/projects/
> beaglebone-black/yocto-rocko/poky/build/tmp/work/
> cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/
> temp/log.do_package_qa.7896
> >> ERROR: Task
> >> (/home/netmodule.intranet/stojsavljevic/projects/
> beaglebone-black/yocto-rocko/poky/meta-test-layer/recipes-
> canapp/cannelloni/cannelloni.bb:do_package_qa)
> >> failed with exit code '1'
> >> NOTE: Tasks Summary: Attempted 539 tasks of which 532 didn't need to be
> >> rerun and 1 failed.
> >>
> >> Summary: 1 task failed:
> >>
> >> /home/netmodule.intranet/stojsavljevic/projects/
> beaglebone-black/yocto-rocko/poky/meta-test-layer/recipes-
> canapp/cannelloni/cannelloni.bb:do_package_qa
> >> Summary: There were 2 WARNING messages shown.
> >> Summary: There were 4 ERROR messages shown, returning a non-zero exit
> code.
> >>
> >> How I can add this symlink (!) to this recipe?
> >
> > The error says "-dev package contains non-symlink .so".
> >
> > Simply adding a symlink somewhere will not help. The fix is to ensure
> > that libcannelloni-common.so gets packaged in the main run-time
> > package (and not in the -dev package).
> >
> > Reading the section about non-versioned shared libraries here might help:
> >
> >   https://wiki.yoctoproject.org/wiki/TipsAndTricks/Packaging_
> Prebuilt_Libraries
>

--0000000000009b7d340571555f5a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">This does work:<br><br>S =3D &quot;${WORKDIR}/git&quot;<br=
><br>inherit pkgconfig cmake<br>inherit systemd<br><br>EXTRA_OECMAKE +=3D &=
quot;-DCMAKE_BUILD_TYPE=3DRelease&quot;<br><br>INSANE_SKIP_${PN} =3D &quot;=
ldflags&quot;<br>INHIBIT_PACKAGE_STRIP =3D &quot;1&quot;<br>INHIBIT_SYSROOT=
_STRIP =3D &quot;1&quot;<br>SOLIBS =3D &quot;.so&quot;<br>FILES_SOLIBSDEV =
=3D &quot;&quot;<br><br>do_install_<span style=3D"color:rgb(255,0,0)"><i><b=
>append</b></i></span> () {<br>=C2=A0 =C2=A0 install -d ${D}${libdir}<br>=
=C2=A0 =C2=A0 install -m 0755 ${WORKDIR}/<span style=3D"color:rgb(255,0,0)"=
><i><b>build/</b></i></span>libcannelloni-common.so ${D}${libdir}<br>}<br><=
br>Thank you all for help!<br>Zoran Stojsavljevic<br></div><div class=3D"gm=
ail_extra"><br><div class=3D"gmail_quote">On Thu, Jul 19, 2018 at 9:22 AM, =
Zoran Stojsavljevic <span dir=3D"ltr">&lt;<a href=3D"mailto:zoran.stojsavlj=
evic@gmail.com" target=3D"_blank">zoran.stojsavljevic@gmail.com</a>&gt;</sp=
an> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex">Hello Andre,<br>
<br>
Thank you for the tips.<br>
<br>
Tried what you have suggested. I had some errors, again in<br>
do_install(), then I read .log, and fixed the paths.<br>
<br>
This is my recipe, important part of it, as of now:<br>
_______<br>
<span class=3D""><br>
S =3D &quot;${WORKDIR}/git&quot;<br>
<br>
inherit pkgconfig cmake<br>
inherit systemd<br>
<br>
EXTRA_OECMAKE +=3D &quot;-DCMAKE_BUILD_TYPE=3DRelease&quot;<br>
<br>
</span>INSANE_SKIP_${PN} =3D &quot;ldflags&quot;<br>
INHIBIT_PACKAGE_STRIP =3D &quot;1&quot;<br>
INHIBIT_SYSROOT_STRIP =3D &quot;1&quot;<br>
SOLIBS =3D &quot;.so&quot;<br>
FILES_SOLIBSDEV =3D &quot;&quot;<br>
<br>
do_install () {<br>
=C2=A0 =C2=A0 install -d ${D}${libdir}<br>
<span class=3D"">=C2=A0 =C2=A0 install -m 0755 cannelloni ${D}${bindir}<br>
</span>=C2=A0 =C2=A0 install -m 0755 ${WORKDIR}/build/<wbr>libcannelloni-co=
mmon.so ${D}${libdir}<br>
}<br>
_______<br>
<br>
Where I modified install directories. ${libdir} is /usr/lib (instead<br>
/usr/local/lib), all cool with this one as well.<br>
<br>
(I guess, I could use LOCAL_LIB =3D=C2=A0 &quot;/usr/local/lib&quot;, and t=
hen change<br>
${libdir} with ${LOCAL_LIB})<br>
<br>
I went further with bitbake. Now I am failing in do_package()<br>
(inherited from default), with the following ERRORs:<br>
<br>
ERROR: cannelloni-1.0-r0 do_package: QA Issue: cannelloni:<br>
Files/directories were installed but not shipped in any package:<br>
=C2=A0 /usr/bin<br>
Please set FILES such that these items are packaged. Alternatively if<br>
they are unneeded, avoid installing them or delete them within<br>
do_install.<br>
cannelloni: 1 installed and not shipped files. [installed-vs-shipped]<br>
ERROR: cannelloni-1.0-r0 do_package: Fatal QA errors found, failing task.<b=
r>
ERROR: cannelloni-1.0-r0 do_package: Function failed: do_package<br>
<span class=3D"">ERROR: Logfile of failure stored in:<br>
</span>/home/netmodule.intranet/<wbr>stojsavljevic/projects/<wbr>beaglebone=
-black/yocto-rocko/<wbr>poky/build/tmp/work/<wbr>cortexa8hf-neon-poky-linux=
-<wbr>gnueabi/cannelloni/1.0-r0/<wbr>temp/log.do_package.3501<br>
ERROR: Task (/home/netmodule.intranet/<wbr>stojsavljevic/projects/<wbr>beag=
lebone-black/yocto-rocko/<wbr>poky/meta-test-layer/recipes-<wbr>canapp/cann=
elloni/cannelloni.<wbr>bb:do_package)<br>
<span class=3D"">failed with exit code &#39;1&#39;<br>
</span>NOTE: Tasks Summary: Attempted 535 tasks of which 524 didn&#39;t nee=
d to<br>
<span class=3D"">be rerun and 1 failed.<br>
<br>
</span>Any take on that?<br>
_______<br>
<br>
Mirza,<br>
<br>
Actually, the recipe I am showing here is the GENIVI (the same you<br>
pointed to), but heavily modified. :-)<br>
<br>
And, yes, I am using latest sumo.<br>
<br>
Thank you all,<br>
Zoran<br>
_______<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
On Wed, Jul 18, 2018 at 7:06 PM, Andre McCurdy &lt;<a href=3D"mailto:armccu=
rdy@gmail.com">armccurdy@gmail.com</a>&gt; wrote:<br>
&gt; On Wed, Jul 18, 2018 at 7:04 AM, Zoran Stojsavljevic<br>
&gt; &lt;<a href=3D"mailto:zoran.stojsavljevic@gmail.com">zoran.stojsavljev=
ic@gmail.com</a><wbr>&gt; wrote:<br>
&gt;&gt; Yep. Did it. Some symlink is missing (I guess, symlink to<br>
&gt;&gt; /usr/local/lib/libcannelloni-<wbr>common.so???<br>
&gt;&gt;<br>
&gt;&gt; Initialising tasks: 100%<br>
&gt;&gt; |#############################<wbr>##############################<=
wbr>##############################<wbr>##############################<wbr>#=
#############################<wbr>########|<br>
&gt;&gt; Time: 0:00:00<br>
&gt;&gt; NOTE: Executing SetScene Tasks<br>
&gt;&gt; NOTE: Executing RunQueue Tasks<br>
&gt;&gt; ERROR: cannelloni-1.0-r0 do_package_qa: QA Issue: cannelloni rdepe=
nds on<br>
&gt;&gt; cannelloni-dev [dev-deps]<br>
&gt;&gt; ERROR: cannelloni-1.0-r0 do_package_qa: QA Issue: -dev package con=
tains<br>
&gt;&gt; non-symlink .so: cannelloni-dev path<br>
&gt;&gt; &#39;/work/cortexa8hf-neon-poky-<wbr>linux-gnueabi/cannelloni/1.0-=
<wbr>r0/packages-split/cannelloni-<wbr>dev/usr/lib/libcannelloni-<wbr>commo=
n.so&#39;<br>
&gt;&gt; [dev-elf]<br>
&gt;&gt; ERROR: cannelloni-1.0-r0 do_package_qa: QA run found fatal errors.=
 Please<br>
&gt;&gt; consider fixing them.<br>
&gt;&gt; ERROR: cannelloni-1.0-r0 do_package_qa: Function failed: do_packag=
e_qa<br>
&gt;&gt; ERROR: Logfile of failure stored in:<br>
&gt;&gt; /home/netmodule.intranet/<wbr>stojsavljevic/projects/<wbr>beaglebo=
ne-black/yocto-rocko/<wbr>poky/build/tmp/work/<wbr>cortexa8hf-neon-poky-lin=
ux-<wbr>gnueabi/cannelloni/1.0-r0/<wbr>temp/log.do_package_qa.7896<br>
&gt;&gt; ERROR: Task<br>
&gt;&gt; (/home/netmodule.intranet/<wbr>stojsavljevic/projects/<wbr>beagleb=
one-black/yocto-rocko/<wbr>poky/meta-test-layer/recipes-<wbr>canapp/cannell=
oni/cannelloni.<wbr>bb:do_package_qa)<br>
&gt;&gt; failed with exit code &#39;1&#39;<br>
&gt;&gt; NOTE: Tasks Summary: Attempted 539 tasks of which 532 didn&#39;t n=
eed to be<br>
&gt;&gt; rerun and 1 failed.<br>
&gt;&gt;<br>
&gt;&gt; Summary: 1 task failed:<br>
&gt;&gt;<br>
&gt;&gt; /home/netmodule.intranet/<wbr>stojsavljevic/projects/<wbr>beaglebo=
ne-black/yocto-rocko/<wbr>poky/meta-test-layer/recipes-<wbr>canapp/cannello=
ni/cannelloni.<wbr>bb:do_package_qa<br>
&gt;&gt; Summary: There were 2 WARNING messages shown.<br>
&gt;&gt; Summary: There were 4 ERROR messages shown, returning a non-zero e=
xit code.<br>
&gt;&gt;<br>
&gt;&gt; How I can add this symlink (!) to this recipe?<br>
&gt;<br>
&gt; The error says &quot;-dev package contains non-symlink .so&quot;.<br>
&gt;<br>
&gt; Simply adding a symlink somewhere will not help. The fix is to ensure<=
br>
&gt; that libcannelloni-common.so gets packaged in the main run-time<br>
&gt; package (and not in the -dev package).<br>
&gt;<br>
&gt; Reading the section about non-versioned shared libraries here might he=
lp:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0<a href=3D"https://wiki.yoctoproject.org/wiki/TipsAndTrick=
s/Packaging_Prebuilt_Libraries" rel=3D"noreferrer" target=3D"_blank">https:=
//wiki.yoctoproject.org/<wbr>wiki/TipsAndTricks/Packaging_<wbr>Prebuilt_Lib=
raries</a><br>
</div></div></blockquote></div><br></div>

--0000000000009b7d340571555f5a--
