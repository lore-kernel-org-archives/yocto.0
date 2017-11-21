Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9B597E00C45; Tue, 21 Nov 2017 05:14:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f179.google.com (mail-io0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4863CE00AF2
	for <yocto@yoctoproject.org>; Tue, 21 Nov 2017 05:14:01 -0800 (PST)
Received: by mail-io0-f179.google.com with SMTP id 79so11798326ioi.3
	for <yocto@yoctoproject.org>; Tue, 21 Nov 2017 05:14:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=SrpOS+vjO65MWUY6z2Nxq647Xhm/EaXTmRePfPf6l3M=;
	b=pabeyDXDk/jb6tV72k6pe9JSpf/1AEJUB2VwZNLyRyLJt0QghsB89wXgilZnn+qrYz
	tZNjo1K5D+Dd7wuA0BhGzRTfpeu9m2vxWpqWKX+0UZtg5P+H3Y/Nm3eZRp//uvDmbc6v
	ODQq0/6WxR2HsD/o0d3jP5/UcEzzCQwSb02RUKHUwxP8w3miCyoFNibSZ7htbKnqfPrF
	pu8WPSXajt9lPzSt0IZTlzk499FOZDjOgj36H9MoCRtRQKcF676DvhFS3gHc1PCP59No
	0YToiDdLoT/0HEW+bzC0kPfLZ2tPOoipZFPHGvx1veHs3Oz+aYjiDVRle/95vZkZf8jd
	F/pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=SrpOS+vjO65MWUY6z2Nxq647Xhm/EaXTmRePfPf6l3M=;
	b=e6ECHwgxPYvwfsb/uGE9WlsvcjgJkqzgIWY4dsJJvPccvB046X7qDTmQ1YehR05fqd
	eeDHxQ9vrTjxKAOD+8dVfo5cijQMd0p42Tcgqhcc0PY5kW+37RCnhbhQy4FFD2LmRsdL
	Jpv1pFjeSrB9oKLK4Y4F2JP6IAeywqpPRPGYGkiWcbL5izxJQi/zWu2+6cG0GaHKhwHJ
	5M8TheNB9KeW/5hE6eUWFvZVt7uMaF6MGnCGjTd6rOcgpQgMEZrY0W1NuncqbgJrQU6E
	AnBAtiyvQ7EtA8Oz9/6fkYhTws5mILD34jCa8YbWLPQbw2UJ7H0EF23pPU9y5vJKUNxV
	JXNA==
X-Gm-Message-State: AJaThX4wj89a6ouC/fradE39DbQGZJNprRMosLvCCngHo9gmXQgxQH/x
	fu378Bpnxq0P2317KpW7Bt1lmyNf9OYTChBz1Ln+og==
X-Google-Smtp-Source: AGs4zMbpU6fZP18tATqEFU/Xypv+1QzYH/HqbpLhmk4vF5RbtD1/MIkCzAaRNfCQzMSmd2zbhzsiRRNDj7ISZsxrnjs=
X-Received: by 10.107.178.145 with SMTP id b139mr18091620iof.52.1511270041360; 
	Tue, 21 Nov 2017 05:14:01 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.171.132 with HTTP; Tue, 21 Nov 2017 05:13:40 -0800 (PST)
In-Reply-To: <597142b3-515b-e75f-263d-8981d2b6cd67@guy-morand.ch>
References: <597142b3-515b-e75f-263d-8981d2b6cd67@guy-morand.ch>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 21 Nov 2017 13:13:40 +0000
Message-ID: <CAJTo0LY_s_+HViLrjGF6GVguTE8mUy9odL97udCs8KzcFG+rfw@mail.gmail.com>
To: Guy Morand <guy@guy-morand.ch>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Makefile library and debian naming
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
X-List-Received-Date: Tue, 21 Nov 2017 13:14:04 -0000
Content-Type: multipart/alternative; boundary="001a114ca162f9e9cb055e7df940"

--001a114ca162f9e9cb055e7df940
Content-Type: text/plain; charset="UTF-8"

You don't need to inherit debian in a recipe, that is meant to be a
distro-level inherit (and is inherited out of the box).

Deleting the .so breaks non-static linking as that is the file which is
used to link against, so don't delete it.  It should be in the -dev package.

The QA error is probably because your library is built wrong in the
makefile.  Another indication of this is the lack of renaming.  Look at the
makefile, specifically the specified soname.

Ross

On 21 November 2017 at 13:00, Guy Morand <guy@guy-morand.ch> wrote:

> Hallo Yocto developpers!
>
> I'm trying to build a Makefile based library. The recipe looks like this:
> ---[recipe mesages.bb]---
> # SNIP recipe header
>
> do_compile() {
>   oe_runmake LDFLAGS="${LDFLAGS}" shared-lib
>   oe_runmake LDFLAGS="${LDFLAGS}" static-lib
> }
>
> do_install() {
>   oe_runmake install DESTDIR=${D}${prefix}
>
>   # Fix pkg-config
>   sed -i 's,${D},,g' ${D}/usr/lib/pkgconfig/messages.pc
>
>   # FIXME: Try to make a debian package libmessages instead
>   # This avoids errors when installing an app linking with this library!
>   rm ${D}/${libdir}/lib${PN}.so
> }
> ---[/recipe mesages.bb]---
>
> The resulted image in WORKDIR looks like this:
> ---[WORKDIR/image]---
> image/usr/lib/libmessages.so.0.3.0
> image/usr/lib/libmessages.so.0
> image/usr/lib/libmessages.a
> image/usr/lib/pkgconfig/messages.pc
> image/usr/include/messages/<all my headers>
> ---[/WORKDIR/image]---
>
> The generated ipk packages are:
> ---[ipks]---
> messages-dev_git.ipk
> messages_git.ipk
> messages-staticdev_git.ipk
> messages-dbg_git.ipk
> ---[/ipks]---
>
> The problem is that an application compiled with this library links
> against the static library. If I don't remove the .so file from the recipe,
> my application fails installing:
> ---[bitbake error]---
> ERROR: myApp do_package_qa: QA Issue: /usr/bin/myApp contained in package
> myApp requires libmessages.so, but no providers found in RDEPENDS_myApp?
> [file-rdeps]
> ---[/bitbake error]---
>
> Probably because the .so gets packed in the messages-dev.ipk ...
>
> The strange thing is that I would expect a generated ipk with debian
> naming such as:
> libmessages_git.ipk
> libmessages-dbg_git.ipk
> libmessages-dev_git.ipk
> libmessages-staticdev_git.ipk
>
>
> I  have other libraries based on cmake and everything works as expected!
>
> Despite the recipe already inherits "debian", explicitly inheriting this
> class doesn't help.
>
> What am I doing wrong?
>
> Guy Morand
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a114ca162f9e9cb055e7df940
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">You don&#39;t need to inherit debian in a recipe, that is =
meant to be a distro-level inherit (and is inherited out of the box).<div><=
br></div><div>Deleting the .so breaks non-static linking as that is the fil=
e which is used to link against, so don&#39;t delete it.=C2=A0 It should be=
 in the -dev package.</div><div><br></div><div>The QA error is probably bec=
ause your library is built wrong in the makefile.=C2=A0 Another indication =
of this is the lack of renaming.=C2=A0 Look at the makefile, specifically t=
he specified soname.</div><div><br></div><div>Ross</div></div><div class=3D=
"gmail_extra"><br><div class=3D"gmail_quote">On 21 November 2017 at 13:00, =
Guy Morand <span dir=3D"ltr">&lt;<a href=3D"mailto:guy@guy-morand.ch" targe=
t=3D"_blank">guy@guy-morand.ch</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">Hallo Yocto developpers!<br>
<br>
I&#39;m trying to build a Makefile based library. The recipe looks like thi=
s:<br>
---[recipe <a href=3D"http://mesages.bb" rel=3D"noreferrer" target=3D"_blan=
k">mesages.bb</a>]---<br>
# SNIP recipe header<br>
<br>
do_compile() {<br>
=C2=A0 oe_runmake LDFLAGS=3D&quot;${LDFLAGS}&quot; shared-lib<br>
=C2=A0 oe_runmake LDFLAGS=3D&quot;${LDFLAGS}&quot; static-lib<br>
}<br>
<br>
do_install() {<br>
=C2=A0 oe_runmake install DESTDIR=3D${D}${prefix}<br>
<br>
=C2=A0 # Fix pkg-config<br>
=C2=A0 sed -i &#39;s,${D},,g&#39; ${D}/usr/lib/pkgconfig/message<wbr>s.pc<b=
r>
<br>
=C2=A0 # FIXME: Try to make a debian package libmessages instead<br>
=C2=A0 # This avoids errors when installing an app linking with this librar=
y!<br>
=C2=A0 rm ${D}/${libdir}/lib${PN}.so<br>
}<br>
---[/recipe <a href=3D"http://mesages.bb" rel=3D"noreferrer" target=3D"_bla=
nk">mesages.bb</a>]---<br>
<br>
The resulted image in WORKDIR looks like this:<br>
---[WORKDIR/image]---<br>
image/usr/lib/libmessages.so.0<wbr>.3.0<br>
image/usr/lib/libmessages.so.0<br>
image/usr/lib/libmessages.a<br>
image/usr/lib/pkgconfig/messag<wbr>es.pc<br>
image/usr/include/messages/&lt;al<wbr>l my headers&gt;<br>
---[/WORKDIR/image]---<br>
<br>
The generated ipk packages are:<br>
---[ipks]---<br>
messages-dev_git.ipk<br>
messages_git.ipk<br>
messages-staticdev_git.ipk<br>
messages-dbg_git.ipk<br>
---[/ipks]---<br>
<br>
The problem is that an application compiled with this library links against=
 the static library. If I don&#39;t remove the .so file from the recipe, my=
 application fails installing:<br>
---[bitbake error]---<br>
ERROR: myApp do_package_qa: QA Issue: /usr/bin/myApp contained in package m=
yApp requires libmessages.so, but no providers found in RDEPENDS_myApp? [fi=
le-rdeps]<br>
---[/bitbake error]---<br>
<br>
Probably because the .so gets packed in the messages-dev.ipk ...<br>
<br>
The strange thing is that I would expect a generated ipk with debian naming=
 such as:<br>
libmessages_git.ipk<br>
libmessages-dbg_git.ipk<br>
libmessages-dev_git.ipk<br>
libmessages-staticdev_git.ipk<br>
<br>
<br>
I=C2=A0 have other libraries based on cmake and everything works as expecte=
d!<br>
<br>
Despite the recipe already inherits &quot;debian&quot;, explicitly inheriti=
ng this class doesn&#39;t help.<br>
<br>
What am I doing wrong?<span class=3D"HOEnZb"><font color=3D"#888888"><br>
<br>
Guy Morand<br>
-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div>

--001a114ca162f9e9cb055e7df940--
