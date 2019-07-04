Return-Path: <onureser12@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C34EE00BE9; Thu,  4 Jul 2019 06:46:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (onureser12[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.66 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
	[209.85.166.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52B1FE00B1B
	for <yocto@yoctoproject.org>; Thu,  4 Jul 2019 06:46:56 -0700 (PDT)
Received: by mail-io1-f66.google.com with SMTP id u13so8595213iop.0
	for <yocto@yoctoproject.org>; Thu, 04 Jul 2019 06:46:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=nB6k+dEUcFdbBJFDvZXLvgOhMj+tIlqfTE5NyGsqCsM=;
	b=flxtw6jlSsvM7e1488jb8BxU3NnzQ2UQcXSMHbu5yXccG2Rj5M39+Jc1zj/fDPHVWN
	WCjHpOaLx3VroNFkcvaHlcEG4p4HXNAZVB5OwaWnqdKWJSJqbPHyQhVyJrTS7lQLNzrC
	kEssD3plhmWb0SMxXt3jpXJGRA7Q1cfV37BpD6rjf5nxtySShpMbs6IoeY3yUfoU1ujz
	ZsYVLx/v6UUvW0A7Qw8eo4o+7iMZwbCQexYdXxoHcZOcEKiORc7NW+KONKQ3MJRYk+1l
	/SKczGNJK1qjhdqDXh/HgQGagtJGnbyrVhAdrXq84trhExGjNETCoLmBBaqeKKZWIG1F
	hznw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=nB6k+dEUcFdbBJFDvZXLvgOhMj+tIlqfTE5NyGsqCsM=;
	b=WNG8y5bxTcDHDDft08suuc912591dKfoKlFmK8I7aLsLmki6v4KJXEzQ5YYHh+1Y64
	PAJ5MbF6v1/xsGfDOSPcL9Sp85eUNE6WRkIvtaqlfG1cqWrin3vek93y4GvC5BFWR22k
	mOuq+qtzXALMFaDwtgrWLGaer/eQrP+LlpwU0PgPQPtY92qm3TBljtvevYnGThV3/zd2
	ucSwt9gjpD5lc5TEvPfJOS/vuyYl7EBAMKMOYh24THLvzhoeBPEbYvJx1f9hj/83UoJl
	ioE8F+wvmOZwzLvWXLWcHTWhE116jOJndihKB9ZTfjUd4edMItqaVL9ugmLyBxjDRvGb
	Egmw==
X-Gm-Message-State: APjAAAUMlJJAPn8qV56SOEO4qZ2WyXDz7CXXiZ5ONc+OAKgnvdt9oZeT
	X1vmzOUf9B3J3Jb8B+rk3El8sSi1h8lcp6/uZ0g=
X-Google-Smtp-Source: APXvYqzE9FZGYMjlxGv2P1JL2JWx3BKx38yKt4PBenHFu9q8SHEqsl7y+uOV4CJGZrmOy1nQaEzzq271GmSnFqec+jo=
X-Received: by 2002:a5e:aa15:: with SMTP id s21mr43160856ioe.221.1562248015536;
	Thu, 04 Jul 2019 06:46:55 -0700 (PDT)
MIME-Version: 1.0
References: <CAG+Ob8YjxmmHaEJ-N80QzNKcrP8=5PbMewVApk4tW7J994KfJg@mail.gmail.com>
	<CAGAf8LxzH6BLd43+di7Wy3pRJnNiqPimRW0c6CQWnpTo2X9Xsg@mail.gmail.com>
	<CAJTo0LYDOruPah4+sHeVMEJwrcpeh2+uP9hpGvw3V+fFtWsUJw@mail.gmail.com>
	<CAGAf8LymkVusvHg8x7f0eo_s_AnazjyHvFg9eio2Wdhq34_8Cw@mail.gmail.com>
	<CAG+Ob8ZaBEqTO9Kou1260HwjXwuj_7rPCQeCDedW10e7J++KfQ@mail.gmail.com>
	<CAGAf8LwqFPbqs-yq=df0U-34QDW_Z_Pd1Gtu0i0E4FwVNPCBow@mail.gmail.com>
In-Reply-To: <CAGAf8LwqFPbqs-yq=df0U-34QDW_Z_Pd1Gtu0i0E4FwVNPCBow@mail.gmail.com>
From: Onur Eser <onureser12@gmail.com>
Date: Thu, 4 Jul 2019 16:46:43 +0300
Message-ID: <CAG+Ob8a3v9p5ibUVs28NQ+5rt1JoNC=VNRSm3hXgTQEQGBp+LQ@mail.gmail.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Json-Glib failed to build during the building of Weston image
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
X-List-Received-Date: Thu, 04 Jul 2019 13:46:57 -0000
Content-Type: multipart/alternative; boundary="00000000000004683c058cdb3639"

--00000000000004683c058cdb3639
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Zoran, I have just notice that I sent the guide to you specially :D Now
sending it again including Yocto Mailing List too. It is good to contact
with you! Thanks!

HUMMING BOARD 2 (or humming board edge) i.MX6 Yocto meta-qt5 configuration

sources, (all of em with sumo branches)
git://git.yoctoproject.org/poky
https://github.com/Freescale/meta-freescale.git
https://github.com/meta-qt5/meta-qt5.git
https://github.com/openembedded/meta-openembedded.git
https://github.com/SolidRun/meta-solidrun-bsp.git

my configration files,


BBLAYERS.CONF

# POKY_BBLAYERS_CONF_VERSION is increased each time build/conf/bblayers.con=
f
# changes incompatibly
POKY_BBLAYERS_CONF_VERSION =3D "2"

BBPATH =3D "${TOPDIR}"
BBFILES ?=3D ""

BBLAYERS ?=3D " \
  /home/closx/poky/meta \
  /home/closx/poky/meta-poky \
  /home/closx/poky/meta-yocto-bsp \
  /home/closx/poky/meta-solidrun-bsp \
  /home/closx/poky/meta-freescale \
  /home/closx/poky/meta-qt5 \
  /home/closx/poky/meta-openembedded/meta-oe \
  "


LOCAL.CONF


MACHINE ??=3D "solidrun-imx6"
DISTRO ?=3D "poky"
PACKAGE_CLASSES ?=3D "package_rpm"
EXTRA_IMAGE_FEATURES ?=3D "debug-tweaks package-management"
USER_CLASSES ?=3D "buildstats image-mklibs image-prelink"
PATCHRESOLVE =3D "noop"
BB_DISKMON_DIRS ??=3D "\
    STOPTASKS,${TMPDIR},1G,100K \
    STOPTASKS,${DL_DIR},1G,100K \
    STOPTASKS,${SSTATE_DIR},1G,100K \
    STOPTASKS,/tmp,100M,100K \
    ABORT,${TMPDIR},100M,1K \
    ABORT,${DL_DIR},100M,1K \
    ABORT,${SSTATE_DIR},100M,1K \
    ABORT,/tmp,10M,1K"
PACKAGECONFIG_append_pn-qemu-native =3D " sdl"
PACKAGECONFIG_append_pn-nativesdk-qemu =3D " sdl"
CONF_VERSION =3D "1"
ACCEPT_FSL_EULA =3D "1"
LICENSE_FLAGS_WHITELIST =3D "commercial"
DISTRO_FEATURES_remove =3D "x11"
IMAGE_INSTALL_append +=3D " qtbase"
IMAGE_INSTALL_append +=3D " qtquickcontrols"
IMAGE_INSTALL_append +=3D " qtquickcontrols2"
IMAGE_INSTALL_append +=3D " qtserialport"
IMAGE_INSTALL_append +=3D " qtmultimedia"
IMAGE_INSTALL_append +=3D " qtserialport"
IMAGE_INSTALL_append +=3D " qtwayland"
IMAGE_INSTALL_append +=3D " qtserialbus"
IMAGE_INSTALL_append +=3D " qtdeclarative"
IMAGE_INSTALL_append +=3D " cinematicexperience"

PARALLEL_MAKE ?=3D "-j 6"
BB_NUMBER_THREADS ?=3D "6"
DL_DIR ?=3D "${TOPDIR}/downloads"
INHERIT +=3D "rm_work"


IMPORTANT NOTE: If reader (you) don't know what you are doing, you should
change these lines (in local.conf) depending on how many threads can your
computer run!!!
PARALLEL_MAKE ?=3D "-j 6"
BB_NUMBER_THREADS ?=3D "6"

You can contact with me: onureser12@gmail.com
Cheers,
Onur

Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>, 4 Tem 2019 Per, 15:43
tarihinde =C5=9Funu yazd=C4=B1:

> Thank you for letting me and us know. The good stuff is the following:
> if you attach yours fixed local.conf as the reference to all of us:
> [1] As referent model;
> [2] As something very valuable we also learned from you (not a joke,
> believe me)!
>
> Thank you,
> Zoran
> _______
>
> On Thu, Jul 4, 2019 at 2:38 PM Onur Eser <onureser12@gmail.com> wrote:
> >
> > Thanks everyone, the problem was a line missing in my local.conf file.
> Now understand what is wrong. My image is booting! Thanks again, have a
> good dai!
> >
> > Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>, 4 Tem 2019 Per,
> 15:22 tarihinde =C5=9Funu yazd=C4=B1:
> >>
> >> > Weston is arguably superior to X11 in most respects, and for new
> >> > platforms which are not tied to a classic X server I entirely
> >> > recommend Weston over X.
> >>
> >> Never opposed that. The idea was to (as first step) do the easier and
> >> much better documented part (X11 build), and then do the next harder
> >> and more challenging step, Weston protocol.
> >>
> >> But this is only me and my thinking. ;-)
> >>
> >> Zoran
> >> _______
> >>
> >> On Thu, Jul 4, 2019 at 12:16 PM Burton, Ross <ross.burton@intel.com>
> wrote:
> >> >
> >> > On Thu, 4 Jul 2019 at 10:43, Zoran Stojsavljevic
> >> > <zoran.stojsavljevic@gmail.com> wrote:
> >> > > Why Weston protocol? Why not classical X11 Client Server in user
> >> > > space? Which DeskTop are U using in Ur YOCTO build?
> >> >
> >> > Weston is arguably superior to X11 in most respects, and for new
> >> > platforms which are not tied to a classic X server I entirely
> >> > recommend Weston over X.
> >> >
> >> > Ross
>

--00000000000004683c058cdb3639
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Zoran, I have just notice that I sent the guide to yo=
u specially :D Now sending it again including Yocto Mailing List too. It is=
 good to contact with you! Thanks!<br></div><div><br></div><div><div>HUMMIN=
G BOARD 2 (or humming board edge) i.MX6 Yocto meta-qt5 configuration</div><=
div><br></div><div>sources, (all of em with sumo branches)<br></div><div><a=
 rel=3D"vcs-git" title=3D"poky Git repository">git://git.yoctoproject.org/p=
oky</a></div><div><a href=3D"https://github.com/Freescale/meta-freescale.gi=
t" rel=3D"noreferrer" target=3D"_blank">https://github.com/Freescale/meta-f=
reescale.git</a><br>
<a href=3D"https://github.com/meta-qt5/meta-qt5.git" rel=3D"noreferrer" tar=
get=3D"_blank">https://github.com/meta-qt5/meta-qt5.git</a><br>
<a href=3D"https://github.com/openembedded/meta-openembedded.git" rel=3D"no=
referrer" target=3D"_blank">https://github.com/openembedded/meta-openembedd=
ed.git</a><br>
<a href=3D"https://github.com/SolidRun/meta-solidrun-bsp.git" rel=3D"norefe=
rrer" target=3D"_blank">https://github.com/SolidRun/meta-solidrun-bsp.git</=
a></div><div><br></div><div>my configration files,</div><div><br></div><div=
><br></div><div>BBLAYERS.CONF<br></div><div><br></div><div># POKY_BBLAYERS_=
CONF_VERSION is increased each time build/conf/bblayers.conf<br># changes i=
ncompatibly<br>POKY_BBLAYERS_CONF_VERSION =3D &quot;2&quot;<br><br>BBPATH =
=3D &quot;${TOPDIR}&quot;<br>BBFILES ?=3D &quot;&quot;<br><br>BBLAYERS ?=3D=
 &quot; \<br>=C2=A0 /home/closx/poky/meta \<br>=C2=A0 /home/closx/poky/meta=
-poky \<br>=C2=A0 /home/closx/poky/meta-yocto-bsp \<br>=C2=A0 /home/closx/p=
oky/meta-solidrun-bsp \<br>=C2=A0 /home/closx/poky/meta-freescale \<br>=C2=
=A0 /home/closx/poky/meta-qt5 \<br>=C2=A0 /home/closx/poky/meta-openembedde=
d/meta-oe \<br>=C2=A0 &quot;</div><div><br></div><div><br></div><div>LOCAL.=
CONF</div><div><br></div><div><br></div><div>MACHINE ??=3D &quot;solidrun-i=
mx6&quot;<br>DISTRO ?=3D &quot;poky&quot;<br>PACKAGE_CLASSES ?=3D &quot;pac=
kage_rpm&quot;<br>EXTRA_IMAGE_FEATURES ?=3D &quot;debug-tweaks package-mana=
gement&quot;<br>USER_CLASSES ?=3D &quot;buildstats image-mklibs image-preli=
nk&quot;<br>PATCHRESOLVE =3D &quot;noop&quot;<br>BB_DISKMON_DIRS ??=3D &quo=
t;\<br>=C2=A0 =C2=A0 STOPTASKS,${TMPDIR},1G,100K \<br>=C2=A0 =C2=A0 STOPTAS=
KS,${DL_DIR},1G,100K \<br>=C2=A0 =C2=A0 STOPTASKS,${SSTATE_DIR},1G,100K \<b=
r>=C2=A0 =C2=A0 STOPTASKS,/tmp,100M,100K \<br>=C2=A0 =C2=A0 ABORT,${TMPDIR}=
,100M,1K \<br>=C2=A0 =C2=A0 ABORT,${DL_DIR},100M,1K \<br>=C2=A0 =C2=A0 ABOR=
T,${SSTATE_DIR},100M,1K \<br>=C2=A0 =C2=A0 ABORT,/tmp,10M,1K&quot;<br>PACKA=
GECONFIG_append_pn-qemu-native =3D &quot; sdl&quot;<br>PACKAGECONFIG_append=
_pn-nativesdk-qemu =3D &quot; sdl&quot;<br>CONF_VERSION =3D &quot;1&quot;<b=
r>ACCEPT_FSL_EULA =3D &quot;1&quot;<br>LICENSE_FLAGS_WHITELIST =3D &quot;co=
mmercial&quot;<br>DISTRO_FEATURES_remove =3D &quot;x11&quot;<br>IMAGE_INSTA=
LL_append +=3D &quot; qtbase&quot;<br>IMAGE_INSTALL_append +=3D &quot; qtqu=
ickcontrols&quot;<br>IMAGE_INSTALL_append +=3D &quot; qtquickcontrols2&quot=
;<br>IMAGE_INSTALL_append +=3D &quot; qtserialport&quot;<br>IMAGE_INSTALL_a=
ppend +=3D &quot; qtmultimedia&quot;<br>IMAGE_INSTALL_append +=3D &quot; qt=
serialport&quot;<br>IMAGE_INSTALL_append +=3D &quot; qtwayland&quot;<br>IMA=
GE_INSTALL_append +=3D &quot; qtserialbus&quot;<br>IMAGE_INSTALL_append +=
=3D &quot; qtdeclarative&quot;<br>IMAGE_INSTALL_append +=3D &quot; cinemati=
cexperience&quot;<br><br>PARALLEL_MAKE ?=3D &quot;-j 6&quot;<br>BB_NUMBER_T=
HREADS ?=3D &quot;6&quot;<br>DL_DIR ?=3D &quot;${TOPDIR}/downloads&quot;<br=
>INHERIT +=3D &quot;rm_work&quot;</div><div><br></div><div><br></div><div>I=
MPORTANT
 NOTE: If reader (you) don&#39;t know what you are doing, you should change=
=20
these lines (in local.conf) depending on how many threads can your=20
computer run!!!</div><div>PARALLEL_MAKE ?=3D &quot;-j 6&quot;<br>BB_NUMBER_=
THREADS ?=3D &quot;6&quot;</div><div><br></div><div>You can contact with me=
: <a href=3D"mailto:onureser12@gmail.com" target=3D"_blank">onureser12@gmai=
l.com</a></div><div>Cheers,</div><div>Onur</div></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Zoran Stojsavljevic =
&lt;<a href=3D"mailto:zoran.stojsavljevic@gmail.com">zoran.stojsavljevic@gm=
ail.com</a>&gt;, 4 Tem 2019 Per, 15:43 tarihinde =C5=9Funu yazd=C4=B1:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex">Thank you for lettin=
g me and us know. The good stuff is the following:<br>
if you attach yours fixed local.conf as the reference to all of us:<br>
[1] As referent model;<br>
[2] As something very valuable we also learned from you (not a joke,<br>
believe me)!<br>
<br>
Thank you,<br>
Zoran<br>
_______<br>
<br>
On Thu, Jul 4, 2019 at 2:38 PM Onur Eser &lt;<a href=3D"mailto:onureser12@g=
mail.com" target=3D"_blank">onureser12@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Thanks everyone, the problem was a line missing in my local.conf file.=
 Now understand what is wrong. My image is booting! Thanks again, have a go=
od dai!<br>
&gt;<br>
&gt; Zoran Stojsavljevic &lt;<a href=3D"mailto:zoran.stojsavljevic@gmail.co=
m" target=3D"_blank">zoran.stojsavljevic@gmail.com</a>&gt;, 4 Tem 2019 Per,=
 15:22 tarihinde =C5=9Funu yazd=C4=B1:<br>
&gt;&gt;<br>
&gt;&gt; &gt; Weston is arguably superior to X11 in most respects, and for =
new<br>
&gt;&gt; &gt; platforms which are not tied to a classic X server I entirely=
<br>
&gt;&gt; &gt; recommend Weston over X.<br>
&gt;&gt;<br>
&gt;&gt; Never opposed that. The idea was to (as first step) do the easier =
and<br>
&gt;&gt; much better documented part (X11 build), and then do the next hard=
er<br>
&gt;&gt; and more challenging step, Weston protocol.<br>
&gt;&gt;<br>
&gt;&gt; But this is only me and my thinking. ;-)<br>
&gt;&gt;<br>
&gt;&gt; Zoran<br>
&gt;&gt; _______<br>
&gt;&gt;<br>
&gt;&gt; On Thu, Jul 4, 2019 at 12:16 PM Burton, Ross &lt;<a href=3D"mailto=
:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt; wro=
te:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; On Thu, 4 Jul 2019 at 10:43, Zoran Stojsavljevic<br>
&gt;&gt; &gt; &lt;<a href=3D"mailto:zoran.stojsavljevic@gmail.com" target=
=3D"_blank">zoran.stojsavljevic@gmail.com</a>&gt; wrote:<br>
&gt;&gt; &gt; &gt; Why Weston protocol? Why not classical X11 Client Server=
 in user<br>
&gt;&gt; &gt; &gt; space? Which DeskTop are U using in Ur YOCTO build?<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Weston is arguably superior to X11 in most respects, and for =
new<br>
&gt;&gt; &gt; platforms which are not tied to a classic X server I entirely=
<br>
&gt;&gt; &gt; recommend Weston over X.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Ross<br>
</blockquote></div>

--00000000000004683c058cdb3639--
