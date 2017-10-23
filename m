Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8023CE00CE2; Mon, 23 Oct 2017 02:25:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.169 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f169.google.com (mail-io0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8818E00CC4
	for <yocto@yoctoproject.org>; Mon, 23 Oct 2017 02:25:41 -0700 (PDT)
Received: by mail-io0-f169.google.com with SMTP id m16so19415929iod.1
	for <yocto@yoctoproject.org>; Mon, 23 Oct 2017 02:25:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=DDr537VGqCuQDlpPOeusThU53CKKsJ3s56e+euE6FRY=;
	b=MLWf/USi8RWgFnf9NxTsCsAeTW1qWSAzIeRbcw5mPy2LDXhM+k1H4E/kq3NkSzBTw1
	QPL4gmg8QeoCSKrf5JUvKyG2875MxHB7gjZhnKcvCGwBLBffDNBHdDH8oxlPbn0OpHAQ
	qLPu5xYgnDyHk0xvNx2QiLqCzNou8DbFgBDMzizUHxkhZvipP1tIiPQBhNrIzf0ynh6W
	79hZE0ALyJG3tUPihjsSFF8gF3JyfJJQg8//qu9o3GBvKVYCUbZG1yT4WS54ZyjJ0jk3
	YrTguBUiS2Glmtz2DLeL9wLDuxqD/bO1ReiKJZAYWqkRvWgtua5MinS2IcK0XfM1cshh
	G0Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=DDr537VGqCuQDlpPOeusThU53CKKsJ3s56e+euE6FRY=;
	b=FFdTQ8a2B3yyDqlzEzhbb/IXK3Dsz07sxYh6EV0mhdbeJjZWVqI1EoL1SvXX5NK6ES
	LVp0rsgOTwxKRNrrWCyps9+ha2v9IjzHunjFmLPSddSQiKMJM7G9es1p/1PNkBkBHDmS
	CFBaUTkP8m7Fq7liALzuhWcXStq90fJiMtoSJc39mtHn5K8MFD0ljWc05VnVyHdJReYf
	1jKQsRkdSLbKaD3trldGyGVsEJdX02Ho6KSahlcoG0QDUgKLUfU/A4ZzrW5Thc5xbSWP
	IepEHRb0NjorKMBhzeN6ykEcT+q4Nl4PObYGZqmHpPYbEyS0hPxOe7HydnzqQvNMXRjO
	HlmQ==
X-Gm-Message-State: AMCzsaUH7/h7Fnq6fwq1coQjPfNDDHWkoo2sX9XjZv1UpRV0YbEA8Bnk
	TgTwicJT4mXuKXXzekMSSGkVx9rn7Xc113ZlmzAJOQ==
X-Google-Smtp-Source: ABhQp+ToBAzN7bpoh/e/b5WXrA0hX0y7m/8FCRvt+U+jDqGWC5wstQ39TqRdZIofYvK+hRk9WjR+NvNE0NYime/fXRw=
X-Received: by 10.107.36.80 with SMTP id k77mr16582274iok.176.1508750741096;
	Mon, 23 Oct 2017 02:25:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.176.10 with HTTP; Mon, 23 Oct 2017 02:25:20 -0700 (PDT)
In-Reply-To: <CAGAf8Lyz6P-K+bSA8bQ_XutML+SjjVYHGPrRPT=zwT85CB8ZEg@mail.gmail.com>
References: <CAGAf8Lyz6P-K+bSA8bQ_XutML+SjjVYHGPrRPT=zwT85CB8ZEg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 23 Oct 2017 10:25:20 +0100
Message-ID: <CAJTo0LZCZXtPnRB3idwYDVtL8Q7F4FeUzCtbmABeO7xE_2bLVQ@mail.gmail.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: OpenEmbedded sole base meta layer and poky base meta layers in sync, or not (should be The Same meta base layer, used in different distros)???
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
X-List-Received-Date: Mon, 23 Oct 2017 09:25:42 -0000
Content-Type: multipart/alternative; boundary="001a1141909efa6147055c3367a4"

--001a1141909efa6147055c3367a4
Content-Type: text/plain; charset="UTF-8"

On 23 October 2017 at 10:08, Zoran Stojsavljevic <
zoran.stojsavljevic@gmail.com> wrote:

> > Or better yet use
> > http://www.yoctoproject.org/docs/2.3.2/mega-manual/mega-ma
> nual.html#ref-classes-image-buildinfo
>
> Since I am also (relatively) new to YOCTO, reading these emails makes me
> think about dependencies between YOCTO distros and layers within distros.
>
> Looking what is written here, I decided to do couple of the tests on my
> own to try to understand better how OpenEmbedded (oe-core) base layer and
> Poky distro (with two layers on the top of oe-core) are correlated with
> each other. As my best understanding, poky master tree should do nothing
> more that follow dependencies (with two additional layers) on the
> OpenEmbedded master tree.
>
> OpenEmbedded layer is YOCTO QEMU project on its own. And one can build
> well known QEMU targets on single oe-core.
>
> In order to verify this, i did git clone (at the same time) on two
> distros: oe-core master tree, and on poky master tree.
>
> Now, after building oe-core, I have the following in qemux86-64 target
> /etc/build:
>
> -----------------------
> Build Configuration:  |
> -----------------------
> DISTRO = nodistro
> DISTRO_VERSION = nodistro.0
> -----------------------
> Layer Revisions:      |
> -----------------------
>
> *meta              = master:3b413a80578caacd9a7f405f3c51a3921d78a60d*
>
> At the same time, for poky, I got the following (qemux86-64 target
> /etc/build):
>
> -----------------------
> Build Configuration:  |
> -----------------------
> DISTRO = poky
> DISTRO_VERSION = 2.4
> -----------------------
> Layer Revisions:      |
> -----------------------
> *meta                  = rocko:65d23bd7986615fdfb0f1717b615534a2a14ab80 --
> modified*
> meta-poky         = rocko:65d23bd7986615fdfb0f1717b615534a2a14ab80 --
> modified
> meta-yocto-bsp = rocko:65d23bd7986615fdfb0f1717b615534a2a14ab80 --
> modified
> _______
>
> Now, the question: should meta - rocko and meta - master have (in *BOLD*)
> the SAME master HEAD #???
>

No, they're different repositories so have different SHAs.  However:

$ git show 65d23bd7986615fdfb0f1717b615534a2a14ab80
commit 65d23bd7986615fdfb0f1717b615534a2a14ab80
Author: Randy MacLeod <Randy.MacLeod@windriver.com>
Date:   Mon Oct 16 11:00:44 2017 -0400

    README.qemu: qemuppc64 is not supported

    (From OE-Core rev: 3b413a80578caacd9a7f405f3c51a3921d78a60d)

They're the same commit.

poky is generated using combo-layer, which effectively cherry-picks commits
from the parent repositories (in this case bitbake, oe-core, meta-poky,
meta-yocto-bsp).  This explains why the SHAs don't match, as the history
doesn't match.

Ross

--001a1141909efa6147055c3367a4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 23 October 2017 at 10:08, Zoran Stojsavljevic <span dir=
=3D"ltr">&lt;<a href=3D"mailto:zoran.stojsavljevic@gmail.com" target=3D"_bl=
ank">zoran.stojsavljevic@gmail.com</a>&gt;</span> wrote:<br><div class=3D"g=
mail_extra"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:sol=
id;border-left-color:rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><s=
pan style=3D"font-size:12.8px">&gt; Or better yet use</span><br style=3D"fo=
nt-size:12.8px">&gt;=C2=A0<a href=3D"http://www.yoctoproject.org/docs/2.3.2=
/mega-manual/mega-manual.html#ref-classes-image-buildinfo" rel=3D"noreferre=
r" style=3D"font-size:12.8px" target=3D"_blank">http://www.yoctoproject.org=
/<wbr>docs/2.3.2/mega-manual/mega-ma<wbr>nual.html#ref-classes-image-bu<wbr=
>ildinfo</a><br style=3D"font-size:12.8px"><div><br></div><div>Since I am a=
lso (relatively) new to YOCTO, reading these emails makes me think about de=
pendencies between YOCTO distros and layers within distros.</div><div><br><=
/div><div>Looking what is written here, I decided to do couple of the tests=
 on my own to try to understand better how OpenEmbedded (oe-core) base laye=
r and Poky distro (with two layers on the top of oe-core) are correlated wi=
th each other. As my best understanding, poky master tree should do nothing=
 more that follow dependencies (with two additional layers) on the OpenEmbe=
dded master tree.</div><div><br></div><div>OpenEmbedded layer is YOCTO QEMU=
 project on its own. And one can build well known QEMU targets on single oe=
-core.</div><div><br></div><div>In order to verify this, i did git clone (a=
t the same time) on two distros: oe-core master tree, and on poky master tr=
ee.</div><div><br></div><div>Now, after building oe-core, I have the follow=
ing in qemux86-64 target /etc/build:</div><div><br></div><div><span style=
=3D"font-size:12.8px">-----------------------</span><br style=3D"font-size:=
12.8px"><span style=3D"font-size:12.8px">Build Configuration:=C2=A0 |</span=
><br style=3D"font-size:12.8px"><span style=3D"font-size:12.8px">----------=
-------------</span><br style=3D"font-size:12.8px"><span style=3D"font-size=
:12.8px">DISTRO =3D nodistro</span><br style=3D"font-size:12.8px"><span sty=
le=3D"font-size:12.8px">DISTRO_VERSION =3D nodistro.0</span><br style=3D"fo=
nt-size:12.8px"><span style=3D"font-size:12.8px">-----------------------</s=
pan><br style=3D"font-size:12.8px"><span style=3D"font-size:12.8px">Layer R=
evisions:=C2=A0 =C2=A0 =C2=A0 |</span><br style=3D"font-size:12.8px"><span =
style=3D"font-size:12.8px">-----------------------</span><br style=3D"font-=
size:12.8px"><b><i><u><span style=3D"font-size:12.8px">meta=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D master:3b413a80578caacd9a7f405<wbr>f=
3c51a3921d78a60d</span><br></u></i></b></div><div class=3D"gmail_extra"><br=
></div><div class=3D"gmail_extra">At the same time, for poky, I got the fol=
lowing (qemux86-64 target /etc/build):</div><div class=3D"gmail_extra"><br>=
</div><div class=3D"gmail_extra"><span style=3D"font-size:12.8px">---------=
--------------</span><br style=3D"font-size:12.8px"><span style=3D"font-siz=
e:12.8px">Build Configuration:=C2=A0 |</span><br style=3D"font-size:12.8px"=
><span style=3D"font-size:12.8px">-----------------------</span><br style=
=3D"font-size:12.8px"><span style=3D"font-size:12.8px">DISTRO =3D poky</spa=
n><br style=3D"font-size:12.8px"><span style=3D"font-size:12.8px">DISTRO_VE=
RSION =3D 2.4</span><br style=3D"font-size:12.8px"><span style=3D"font-size=
:12.8px">-----------------------</span><br style=3D"font-size:12.8px"><span=
 style=3D"font-size:12.8px">Layer Revisions:=C2=A0 =C2=A0 =C2=A0 |</span><b=
r style=3D"font-size:12.8px"><span style=3D"font-size:12.8px">-------------=
----------</span><br style=3D"font-size:12.8px"><span style=3D"font-size:12=
.8px"><b><i><u>meta=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =3D rocko:65d23bd7986615fdfb0f1717<wbr>b615534a2a14ab80 -- modified<=
/u></i></b></span><br></div><div class=3D"gmail_extra">meta-poky=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0=3D rocko:<span style=3D"font-size:12.8px">65d23bd7=
986615fdfb0f1717<wbr>b615534a2a14ab80 -- modified</span></div><div class=3D=
"gmail_extra">meta-yocto-bsp =3D rocko:<span style=3D"font-size:12.8px">65d=
23bd7986615fdfb0f1717<wbr>b615534a2a14ab80 -- modified</span></div><div cla=
ss=3D"gmail_extra">_______</div><div class=3D"gmail_extra"><br></div><div c=
lass=3D"gmail_extra">Now, the question: should meta - rocko and meta - mast=
er have (in <b><i><u>BOLD</u></i></b>) the SAME master HEAD #???</div></div=
></blockquote><div><br></div><div>No, they&#39;re different repositories so=
 have different SHAs.=C2=A0 However:</div><div><br></div><div><div>$ git sh=
ow 65d23bd7986615fdfb0f1717b615534a2a14ab80</div><div>commit 65d23bd7986615=
fdfb0f1717b615534a2a14ab80</div><div>Author: Randy MacLeod &lt;<a href=3D"m=
ailto:Randy.MacLeod@windriver.com">Randy.MacLeod@windriver.com</a>&gt;</div=
><div>Date: =C2=A0 Mon Oct 16 11:00:44 2017 -0400</div><div><br></div><div>=
=C2=A0 =C2=A0 README.qemu: qemuppc64 is not supported</div><div><br></div><=
div>=C2=A0 =C2=A0 (From OE-Core rev: 3b413a80578caacd9a7f405f3c51a3921d78a6=
0d)</div></div><div><br></div><div>They&#39;re the same commit.</div><div><=
br></div><div>poky is generated using combo-layer, which effectively cherry=
-picks commits from the parent repositories (in this case bitbake, oe-core,=
 meta-poky, meta-yocto-bsp).=C2=A0 This explains why the SHAs don&#39;t mat=
ch, as the history doesn&#39;t match.</div><div><br></div><div>Ross</div></=
div></div></div>

--001a1141909efa6147055c3367a4--
