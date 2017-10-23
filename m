Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1153E00CE2; Mon, 23 Oct 2017 02:08:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	HTML_OBFUSCATE_05_10, 
	RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.177 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.177 listed in dnsbl.sorbs.net]
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f177.google.com (mail-wr0-f177.google.com
	[209.85.128.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87A95E00CC4
	for <yocto@yoctoproject.org>; Mon, 23 Oct 2017 02:08:03 -0700 (PDT)
Received: by mail-wr0-f177.google.com with SMTP id k62so16533514wrc.9
	for <yocto@yoctoproject.org>; Mon, 23 Oct 2017 02:08:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to:cc;
	bh=l12mqz4EBx/VFZCi5qfe2RwnOmSweoQzniwtRndh7xY=;
	b=GrMhhXLiO+/XTsolfiC07Q4IGNsA6LaKJHdRRRceOgRB8upHorv2gQojoLl+yQDpE+
	OKDBtub9Q5an6sDZQMg8AC3fuhlr0GDKwD0cUcEcXXOjRh78EW5NQhrgfZC3ErD7dcs2
	2bicEo1LGG4yyEpECN0YxOABIOrG1hczU1phF7v6SU0DgwhP5+gfhpPv+0yhC/DmK5MX
	ioAtAzDHMduq27maHvaq9p9tZVkBsGcwgSsVd+rswdbKRA6NN37FvU6FynebdBLmX2w5
	rw8whX8loZh09mxPrKYPKiKzRcOuDmp+Qv/YBjxG7RYTlWiEBTlMPlNXrECfyokEGW+i
	RnRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
	bh=l12mqz4EBx/VFZCi5qfe2RwnOmSweoQzniwtRndh7xY=;
	b=acyGkLdjrnEJ688e+OSOUe1RVg0aQeoBz1EDFwrVnou1pP6n48Vcp0r1l908y/9CPx
	qM1gj+mjmRVYI8wEPmJuHVpcL6heu8YQCw09Laf9dBIdFsu7wQHfr6wzsC2h3p8NSKFq
	N5zRvUl/7IVXpnnXGGwYAqMRTU1DHJIecIbNfEETKrHcmY8KO7BiAH2fk/Ki4mReF5Pl
	OjTjeSwrumd2yD8qfmgOksZlNk3+Lu7t6287q+1beGIj1djy/TvrMfEiZjfEPaZEf+Gn
	gzp6fn2CB+wIrqOiSZOB6lRlvnQ3SjSe2Ygrdhx/sNNLAemiTa4rJRxWND23WH6+VKBv
	KnGw==
X-Gm-Message-State: AMCzsaXImD9Ow8nVZwl38TRQS37loMoZUohBGmlkgkvkiw/ywdPIM2Eh
	GFAUhlxrtKpobdPf5ijj6Y2ICuqOkc9FD+b7J2I=
X-Google-Smtp-Source: ABhQp+RL894TC1jitdpcG6CEvg9f8SDKF4G88zZ3S/uGi+ZOH//oyVVc4o9rtogyoHxhxmcHcNgTOiHaBnYYoveKPIo=
X-Received: by 10.223.134.84 with SMTP id 20mr11647515wrw.60.1508749682166;
	Mon, 23 Oct 2017 02:08:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.67.131 with HTTP; Mon, 23 Oct 2017 02:08:01 -0700 (PDT)
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Mon, 23 Oct 2017 11:08:01 +0200
Message-ID: <CAGAf8Lyz6P-K+bSA8bQ_XutML+SjjVYHGPrRPT=zwT85CB8ZEg@mail.gmail.com>
To: Philip Balister <philip@balister.org>,
	Yocto Project <yocto@yoctoproject.org>
Subject: OpenEmbedded sole base meta layer and poky base meta layers in sync, or not (should be The Same meta base layer, used in different distros)???
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
X-List-Received-Date: Mon, 23 Oct 2017 09:08:04 -0000
Content-Type: multipart/alternative; boundary="001a1149196cdc5206055c332821"

--001a1149196cdc5206055c332821
Content-Type: text/plain; charset="UTF-8"

> Or better yet use
> http://www.yoctoproject.org/docs/2.3.2/mega-manual/mega-ma
nual.html#ref-classes-image-buildinfo

Since I am also (relatively) new to YOCTO, reading these emails makes me
think about dependencies between YOCTO distros and layers within distros.

Looking what is written here, I decided to do couple of the tests on my own
to try to understand better how OpenEmbedded (oe-core) base layer and Poky
distro (with two layers on the top of oe-core) are correlated with each
other. As my best understanding, poky master tree should do nothing more
that follow dependencies (with two additional layers) on the OpenEmbedded
master tree.

OpenEmbedded layer is YOCTO QEMU project on its own. And one can build well
known QEMU targets on single oe-core.

In order to verify this, i did git clone (at the same time) on two distros:
oe-core master tree, and on poky master tree.

Now, after building oe-core, I have the following in qemux86-64 target
/etc/build:

-----------------------
Build Configuration:  |
-----------------------
DISTRO = nodistro
DISTRO_VERSION = nodistro.0
-----------------------
Layer Revisions:      |
-----------------------

*meta              = master:3b413a80578caacd9a7f405f3c51a3921d78a60d*

At the same time, for poky, I got the following (qemux86-64 target
/etc/build):

-----------------------
Build Configuration:  |
-----------------------
DISTRO = poky
DISTRO_VERSION = 2.4
-----------------------
Layer Revisions:      |
-----------------------
*meta                  = rocko:65d23bd7986615fdfb0f1717b615534a2a14ab80 --
modified*
meta-poky         = rocko:65d23bd7986615fdfb0f1717b615534a2a14ab80 --
modified
meta-yocto-bsp = rocko:65d23bd7986615fdfb0f1717b615534a2a14ab80 -- modified
_______

Now, the question: should meta - rocko and meta - master have (in *BOLD*)
the SAME master HEAD #???

Something here seems not in order/not in sync?! Or...Please, you
tell/explain to me!?

Thank you,
Zoran
_______

On Thu, Oct 12, 2017 at 4:19 PM, Philip Balister <philip@balister.org>
wrote:

> Or better yet use
> http://www.yoctoproject.org/docs/2.3.2/mega-manual/mega-manu
> al.html#ref-classes-image-buildinfo
>
> to get:
>
> -----------------------
> Build Configuration:  |
> -----------------------
> DISTRO = nodistro
> DISTRO_VERSION = nodistro.0
> -----------------------
> Layer Revisions:      |
> -----------------------
> meta              = master:8ca61a5464743ff85b6d26886112750d6ddd13e0
> meta-xilinx       = master:74a0d90e52cca346d05a69bbd628c6ec9e49fbcb
> meta-oe           = master:5c9a4a08844c215ebd6f2146f50de753b8e7ecef
> meta-networking   = master:5c9a4a08844c215ebd6f2146f50de753b8e7ecef
> meta-filesystems  = master:5c9a4a08844c215ebd6f2146f50de753b8e7ecef
> meta-python       = master:5c9a4a08844c215ebd6f2146f50de753b8e7ecef
> meta-multimedia   = master:5c9a4a08844c215ebd6f2146f50de753b8e7ecef
> meta-sdr          = qt5-test:dacc304b01eac7448ec1ebf0b3d0eab761c41a26 --
> modified
> meta-qt5          = master:2c3ef00f53683fbdce5b390950b49b67da85d3a1
> meta-qcom         = master:bae28268a9387bb842ab7bbe8200b98c1210604c
> meta-raspberrypi  = master:9d84186870a6f9bde44575690105b9bb5e44ca24
>
> Philip
>
> On 10/12/2017 05:11 AM, Ayoub Zaki wrote:
> > Hi,
> >
> > That's easy to do :
> >
> >
> > do_install_append () {
> >
> >     for layer in ${BBLAYERS}; do
> >         cd $layer
> >         echo -n "$(basename $layer) = "  >> ${D}${sysconfdir}/gitinfo
> >         git rev-parse HEAD >> ${D}${sysconfdir}/gitinfo
> >     done
> > }
> >
> >
> > add it in a recipe or add it to os-release.bbappend
> >
> >
> > On 12.10.2017 11:05, Alan Martinovic wrote:
> >> I've noticed that bitbake prints the git commit versions of the layers
> >> when the build starts.
> >>
> >> meta-python       = "HEAD:b40116cf457b88a2db14b86fda9627fb34d56ae6"
> >> meta-mender-core  = "HEAD:c3b1b465ce3a27fc7b03a6b7ef596348835cff57"
> >> meta-go           = "HEAD:514b2a80a2a4235687e92fb28328bb3e7c2d6c74"
> >>
> >> Does this information find it's way into the rootfs?
> >> If not, any suggestions on how to achieve this?
> >>
> >> The goal is to have this info available while the image is running.
> >>
> >> Be Well,
> >> Alan
> >>
> >>
> >
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a1149196cdc5206055c332821
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:12.8px">&gt; Or better yet use</s=
pan><br style=3D"font-size:12.8px">&gt;=C2=A0<a href=3D"http://www.yoctopro=
ject.org/docs/2.3.2/mega-manual/mega-manual.html#ref-classes-image-buildinf=
o" rel=3D"noreferrer" style=3D"font-size:12.8px" target=3D"_blank">http://w=
ww.yoctoproject.org/<wbr>docs/2.3.2/mega-manual/mega-ma<wbr>nual.html#ref-c=
lasses-image-bu<wbr>ildinfo</a><br style=3D"font-size:12.8px"><div><br></di=
v><div>Since I am also (relatively) new to YOCTO, reading these emails make=
s me think about dependencies between YOCTO distros and layers within distr=
os.</div><div><br></div><div>Looking what is written here, I decided to do =
couple of the tests on my own to try to understand better how OpenEmbedded =
(oe-core) base layer and Poky distro (with two layers on the top of oe-core=
) are correlated with each other. As my best understanding, poky master tre=
e should do nothing more that follow dependencies (with two additional laye=
rs) on the OpenEmbedded master tree.</div><div><br></div><div>OpenEmbedded =
layer is YOCTO QEMU project on its own. And one can build well known QEMU t=
argets on single oe-core.</div><div><br></div><div>In order to verify this,=
 i did git clone (at the same time) on two distros: oe-core master tree, an=
d on poky master tree.</div><div><br></div><div>Now, after building oe-core=
, I have the following in qemux86-64 target /etc/build:</div><div><br></div=
><div><span style=3D"font-size:12.8px">-----------------------</span><br st=
yle=3D"font-size:12.8px"><span style=3D"font-size:12.8px">Build Configurati=
on:=C2=A0 |</span><br style=3D"font-size:12.8px"><span style=3D"font-size:1=
2.8px">-----------------------</span><br style=3D"font-size:12.8px"><span s=
tyle=3D"font-size:12.8px">DISTRO =3D nodistro</span><br style=3D"font-size:=
12.8px"><span style=3D"font-size:12.8px">DISTRO_VERSION =3D nodistro.0</spa=
n><br style=3D"font-size:12.8px"><span style=3D"font-size:12.8px">---------=
--------------</span><br style=3D"font-size:12.8px"><span style=3D"font-siz=
e:12.8px">Layer Revisions:=C2=A0 =C2=A0 =C2=A0 |</span><br style=3D"font-si=
ze:12.8px"><span style=3D"font-size:12.8px">-----------------------</span><=
br style=3D"font-size:12.8px"><b><i><u><span style=3D"font-size:12.8px">met=
a=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D master:3b413a80578caa=
cd9a7f405<wbr>f3c51a3921d78a60d</span><br></u></i></b></div><div class=3D"g=
mail_extra"><br></div><div class=3D"gmail_extra">At the same time, for poky=
, I got the following (qemux86-64 target /etc/build):</div><div class=3D"gm=
ail_extra"><br></div><div class=3D"gmail_extra"><span style=3D"font-size:12=
.8px">-----------------------</span><br style=3D"font-size:12.8px"><span st=
yle=3D"font-size:12.8px">Build Configuration:=C2=A0 |</span><br style=3D"fo=
nt-size:12.8px"><span style=3D"font-size:12.8px">-----------------------</s=
pan><br style=3D"font-size:12.8px"><span style=3D"font-size:12.8px">DISTRO =
=3D poky</span><br style=3D"font-size:12.8px"><span style=3D"font-size:12.8=
px">DISTRO_VERSION =3D 2.4</span><br style=3D"font-size:12.8px"><span style=
=3D"font-size:12.8px">-----------------------</span><br style=3D"font-size:=
12.8px"><span style=3D"font-size:12.8px">Layer Revisions:=C2=A0 =C2=A0 =C2=
=A0 |</span><br style=3D"font-size:12.8px"><span style=3D"font-size:12.8px"=
>-----------------------</span><br style=3D"font-size:12.8px"><span style=
=3D"font-size:12.8px"><b><i><u>meta=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =3D rocko:<wbr>65d23bd7986615fdfb0f1717b61553<wbr>=
4a2a14ab80 -- modified</u></i></b></span><br></div><div class=3D"gmail_extr=
a">meta-poky=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D rocko:<span style=3D"font=
-size:12.8px">65d23bd7986615fdfb0f1717<wbr>b615534a2a14ab80 -- modified</sp=
an></div><div class=3D"gmail_extra">meta-yocto-bsp =3D rocko:<span style=3D=
"font-size:12.8px">65d23bd7986615fdfb0f1717<wbr>b615534a2a14ab80 -- modifie=
d</span></div><div class=3D"gmail_extra">_______</div><div class=3D"gmail_e=
xtra"><br></div><div class=3D"gmail_extra">Now, the question: should meta -=
 rocko and meta - master have (in <b><i><u>BOLD</u></i></b>) the SAME maste=
r HEAD #???</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_e=
xtra">Something here seems not in order/not in sync?! Or...Please, you tell=
/explain to me!?</div><div class=3D"gmail_extra"><br></div><div class=3D"gm=
ail_extra">Thank you,</div><div class=3D"gmail_extra">Zoran</div><div class=
=3D"gmail_extra">_______</div><div class=3D"gmail_extra"><br><div class=3D"=
gmail_quote">On Thu, Oct 12, 2017 at 4:19 PM, Philip Balister <span dir=3D"=
ltr">&lt;<a href=3D"mailto:philip@balister.org" target=3D"_blank">philip@ba=
lister.org</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">Or better yet use<br>
<a href=3D"http://www.yoctoproject.org/docs/2.3.2/mega-manual/mega-manual.h=
tml#ref-classes-image-buildinfo" rel=3D"noreferrer" target=3D"_blank">http:=
//www.yoctoproject.org/do<wbr>cs/2.3.2/mega-manual/mega-manu<wbr>al.html#re=
f-classes-image-buil<wbr>dinfo</a><br>
<br>
to get:<br>
<br>
-----------------------<br>
Build Configuration:=C2=A0 |<br>
-----------------------<br>
DISTRO =3D nodistro<br>
DISTRO_VERSION =3D nodistro.0<br>
-----------------------<br>
Layer Revisions:=C2=A0 =C2=A0 =C2=A0 |<br>
-----------------------<br>
meta=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D master:8ca61a54647=
43ff85b6d268<wbr>86112750d6ddd13e0<br>
meta-xilinx=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D master:74a0d90e52cca346d05a69b<wb=
r>bd628c6ec9e49fbcb<br>
meta-oe=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D master:5c9a4a08844c215e=
bd6f214<wbr>6f50de753b8e7ecef<br>
meta-networking=C2=A0 =C2=A0=3D master:5c9a4a08844c215ebd6f214<wbr>6f50de75=
3b8e7ecef<br>
meta-filesystems=C2=A0 =3D master:5c9a4a08844c215ebd6f214<wbr>6f50de753b8e7=
ecef<br>
meta-python=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D master:5c9a4a08844c215ebd6f214<wb=
r>6f50de753b8e7ecef<br>
meta-multimedia=C2=A0 =C2=A0=3D master:5c9a4a08844c215ebd6f214<wbr>6f50de75=
3b8e7ecef<br>
meta-sdr=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D qt5-test:dacc304b01eac7448ec=
1e<wbr>bf0b3d0eab761c41a26 --<br>
modified<br>
meta-qt5=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D master:2c3ef00f53683fbdce5b3=
90<wbr>950b49b67da85d3a1<br>
meta-qcom=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D master:bae28268a9387bb842ab7=
bb<wbr>e8200b98c1210604c<br>
meta-raspberrypi=C2=A0 =3D master:9d84186870a6f9bde445756<wbr>90105b9bb5e44=
ca24<br>
<span class=3D"m_7870991403337023450gmail-m_655644554201098189gmail-m_-8687=
512932877340498HOEnZb"><font color=3D"#888888"><br>
Philip<br>
</font></span><span class=3D"m_7870991403337023450gmail-m_65564455420109818=
9gmail-m_-8687512932877340498im m_7870991403337023450gmail-m_65564455420109=
8189gmail-m_-8687512932877340498HOEnZb"><br>
On 10/12/2017 05:11 AM, Ayoub Zaki wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt; That&#39;s easy to do :<br>
&gt;<br>
&gt;<br>
&gt; do_install_append () {<br>
&gt;<br>
&gt; =C2=A0=C2=A0=C2=A0 for layer in ${BBLAYERS}; do<br>
&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cd $layer<br>
&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 echo -n &quot;$(basename $l=
ayer) =3D &quot;=C2=A0 &gt;&gt; ${D}${sysconfdir}/gitinfo<br>
&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 git rev-parse HEAD &gt;&gt;=
 ${D}${sysconfdir}/gitinfo<br>
&gt; =C2=A0=C2=A0=C2=A0 done<br>
&gt; }<br>
&gt;<br>
&gt;<br>
&gt; add it in a recipe or add it to os-release.bbappend<br>
&gt;<br>
&gt;<br>
&gt; On 12.10.2017 11:05, Alan Martinovic wrote:<br>
&gt;&gt; I&#39;ve noticed that bitbake prints the git commit versions of th=
e layers<br>
&gt;&gt; when the build starts.<br>
&gt;&gt;<br>
&gt;&gt; meta-python=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;HEAD:b40116cf457b8=
8a2db14b86f<wbr>da9627fb34d56ae6&quot;<br>
&gt;&gt; meta-mender-core=C2=A0 =3D &quot;HEAD:c3b1b465ce3a27fc7b03a6b7<wbr=
>ef596348835cff57&quot;<br>
&gt;&gt; meta-go=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;HEAD:514=
b2a80a2a4235687e92fb2<wbr>8328bb3e7c2d6c74&quot;<br>
&gt;&gt;<br>
&gt;&gt; Does this information find it&#39;s way into the rootfs?<br>
&gt;&gt; If not, any suggestions on how to achieve this?<br>
&gt;&gt;<br>
&gt;&gt; The goal is to have this info available while the image is running=
.<br>
&gt;&gt;<br>
&gt;&gt; Be Well,<br>
&gt;&gt; Alan<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;<br>
--<br>
</span><div class=3D"m_7870991403337023450gmail-m_655644554201098189gmail-m=
_-8687512932877340498HOEnZb"><div class=3D"m_7870991403337023450gmail-m_655=
644554201098189gmail-m_-8687512932877340498h5">____________________________=
__<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
</div></div></blockquote></div><br></div></div>

--001a1149196cdc5206055c332821--
