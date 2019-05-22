Return-Path: <gvkalra@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1371AE00D63; Tue, 21 May 2019 19:11:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gvkalra[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.195 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
	[209.85.210.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86C0AE00D32
	for <yocto@yoctoproject.org>; Tue, 21 May 2019 19:11:19 -0700 (PDT)
Received: by mail-pf1-f195.google.com with SMTP id z28so460294pfk.0
	for <yocto@yoctoproject.org>; Tue, 21 May 2019 19:11:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=nBPsU1S+/aPXfdoxRYmV9fuEEVNlCv+8B8M9LxrnarI=;
	b=lvVvRKpR8PsPxoGuLl9qWBj/JMor4W+Hznu/uIr+r0FXmanXZGVUIdrgod386MDQNT
	Vh62PhlylML5j1W67L8RCkfS1+20fkAcUbBXGZKGFqHsx359La2ZKXECJ/1YZdv84QSh
	nUy+9yz7C+n22kLQD6qTrAk2pkaRgT/UkVXxL7ubcT7eSjaZB8QYgGuMvm3qTQX32aBA
	eIDlazDmYmaL0kjX0Eq4Lrloxx3OHZXi/WvQcvQVKkZ0P4hNLIdV7FsaydLyOv+e6hW0
	R1ZGRQu/M8mP0BG/a1XhhNt38K7FDAEsVCisa+rV+boZmJa9qGO9Ra1c32SpTA2FGIyv
	6nwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=nBPsU1S+/aPXfdoxRYmV9fuEEVNlCv+8B8M9LxrnarI=;
	b=Ku8aG69G3XThoGSqO+NmTtqUTxd7jmTjfc5yk3DV/X8w4yHPd7c/5TgEvQsR8ujuwq
	FhjXvedJhEPsDd+KL/nc5/LbR1eBcPddzfHeVHMM8S49ZG5ZUjVC0vXy867d8AsLykva
	IMpPBn6whRP3dYCymoPXI1mdLWBIZozp35J0cXmb0WRGBAvwE+Pu3BsojZJ5ptJ0sLnY
	ioYXOA4KRg4unT5TxgrGUCiqEMxmrkYQOE1pbcevnzjpLRYSSta4S9gIntUEG127Anas
	vaUyhXUbpd68Gfo9AyFOWd36uoqMujDmi32zZyLnNMBcD165tJO2CvgtRNGPV4zKSrXN
	pFfg==
X-Gm-Message-State: APjAAAUadlILN/lkUtZojLCxpClVPInEfaCQd4gCDnZ94ehdUqb1V3r9
	6XBqZE7xlDsgUODhDQe71PklszV9SAtYcK5dVSsb7Ra02s8=
X-Google-Smtp-Source: APXvYqwhmFN4uNH2zbaqdA7870uRjmJXet04LytN1tAIOKTmTeVXWyBuzD2FJToxM95p3f3gqYZFYQtmnoodkRQaPbI=
X-Received: by 2002:a63:4f16:: with SMTP id d22mr43873708pgb.148.1558491078433;
	Tue, 21 May 2019 19:11:18 -0700 (PDT)
MIME-Version: 1.0
References: <CAD5qJ_svyizBB4c0zRDL5W0dkEAs0+KDRVvhAGS3GW-V0kGsag@mail.gmail.com>
	<20190517092428.b2ryukhkjh63nepp@jholzmayr.localdomain>
	<CAD5qJ_vjj_0=mKY3U414oWrOa3M0=tGaG5OWX0yMb2ScqcoeQA@mail.gmail.com>
In-Reply-To: <CAD5qJ_vjj_0=mKY3U414oWrOa3M0=tGaG5OWX0yMb2ScqcoeQA@mail.gmail.com>
From: Gaurav Kalra <gvkalra@gmail.com>
Date: Wed, 22 May 2019 11:10:41 +0900
Message-ID: <CAD5qJ_t8H1r9=uC92+amdntQ+hS_Jga7iMt3+fgepkDCAv=vzw@mail.gmail.com>
To: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
Cc: yocto@yoctoproject.org
Subject: Re: do_rootfs failed (not sure why)
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
X-List-Received-Date: Wed, 22 May 2019 02:11:21 -0000
Content-Type: multipart/alternative; boundary="0000000000001da0090589707bfa"

--0000000000001da0090589707bfa
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi there!

After a few trial and errors, I have been able to isolate the problem with
this commit in boot2qt:
https://codereview.qt-project.org/gitweb?p=3Dyocto/meta-boot2qt.git;a=3Dcom=
mitdiff;h=3Dded06350f2dd23b3e453f5c30247a1cffd362951

The error logs spat by bitbake don't point to the PAM module =C2=AF\_(=E3=
=83=84)_/=C2=AF

--
Gaurav Kalra


On Mon, May 20, 2019 at 11:53 AM Gaurav Kalra <gvkalra@gmail.com> wrote:

> On Fri, May 17, 2019 at 6:24 PM Josef Holzmayr
> <holzmayr@rsi-elektrotechnik.de> wrote:
> >
> > Hi Gaurav,
> >
> > On Fri, May 17, 2019 at 03:42:02PM +0900, Gaurav Kalra wrote:
> > > Hi,
> > >
> > > I am new in the Yocto world and have started learning the concepts
> recently.
> > > A big thanks to the broadcasts on twitch and numerous youtube videos.
> >
> > As the broadcaster on Twitch, thanks for letting us know. It is much
> > appreciated!
> >
> > > What I am doing: Modifying boot2qt (
> > >
> https://codereview.qt-project.org/gitweb?p=3Dyocto/meta-boot2qt.git;a=3Ds=
hortlog;h=3Drefs/heads/thud
> )
> > > as my blueprint for raspberry-pi.
> > >
> > > Mostly:
> > > 1. Modifying the configuration of packages (e.g., systemd conf files)
> > > 2. Adding new recipes
> > > 3. Keeping Qt updated
> > >
> > > "Sometimes", I face this strange error in do_rootfs(), while
> > > installing binutils-lic package inside the image.
> > >
> > > [...]
> > > ERROR: seesv-embedded-qt5-image-1.0-r0 do_rootfs: Unable to install
> > > packages. Command
> > >
> '/media/gvkalra/66bef40b-d84f-4ad0-ada6-a025b494ca5d/seesv-distro/build-r=
aspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/seesv-embedded-qt5-ima=
ge/1.0-r0/recipe-sysroot-native/usr/bin/opkg
> >
> > I'm not sure if it applies here, but I have encountered problems with
> > long pathes. Especially the leading part with the UUID *might* be
> > problematic. Have you tried in a location closer to root?
>
> I tried closer to root today.
> But the same problem (with a different package -> this time it's
> otf-noto-lic).
>
> [...]
> ERROR: seesv-embedded-qt5-image-1.0-r0 do_rootfs: Unable to install
> packages. Command
>
> '/mnt/seesv-mnt/seesv-distro/build-raspberrypi3/tmp/work/raspberrypi3-pok=
y-linux-gnueabi/seesv-embedded-qt5-image/1.0-r0/recipe-sysroot-native/usr/b=
in/opkg
> --volatile-cache -f
>
> /mnt/seesv-mnt/seesv-distro/build-raspberrypi3/tmp/work/raspberrypi3-poky=
-linux-gnueabi/seesv-embedded-qt5-image/1.0-r0/opkg.conf
> -t
> /mnt/seesv-mnt/seesv-distro/build-raspberrypi3/tmp/work/raspberrypi3-poky=
-linux-gnueabi/seesv-embedded-qt5-image/1.0-r0/temp/ipktemp/
> -o
> /mnt/seesv-mnt/seesv-distro/build-raspberrypi3/tmp/work/raspberrypi3-poky=
-linux-gnueabi/seesv-embedded-qt5-image/1.0-r0/rootfs
>  --force_postinstall --prefer-arch-to-version   install opkg
> packagegroup-b2qt-embedded-base packagegroup-b2qt-embedded-gstreamer
> packagegroup-b2qt-embedded-tools packagegroup-b2qt-qt5-modules
> packagegroup-base-extended packagegroup-core-boot
> packagegroup-core-ssh-dropbear packagegroup-core-tools-debug
> packagegroup-core-tools-profile run-postinsts' returned -11:
> Installing opkg-lic (0.3.6) on root
> Downloading
> file:/mnt/seesv-mnt/seesv-distro/build-raspberrypi3/tmp/work/raspberrypi3=
-poky-linux-gnueabi/seesv-embedded-qt5-image/1.0-r0/oe-rootfs-repo/cortexa7=
t2hf-neon-vfpv4/opkg-lic_0.3.6-r0_cortexa7t2hf-neon-vfpv4.ipk.
> Installing packagegroup-b2qt-embedded-base-lic (1.0) on root
> Downloading
> file:/mnt/seesv-mnt/seesv-distro/build-raspberrypi3/tmp/work/raspberrypi3=
-poky-linux-gnueabi/seesv-embedded-qt5-image/1.0-r0/oe-rootfs-repo/all/pack=
agegroup-b2qt-embedded-base-lic_1.0-r0_all.ipk.
> [...]
> Installing otf-noto-lic (1.004) on root
> Downloading
> file:/mnt/seesv-mnt/seesv-distro/build-raspberrypi3/tmp/work/raspberrypi3=
-poky-lin
> ERROR: seesv-embedded-qt5-image-1.0-r0 do_rootfs: Function failed:
> do_rootfs
> ERROR: Logfile of failure stored in:
>
> /mnt/seesv-mnt/seesv-distro/build-raspberrypi3/tmp/work/raspberrypi3-poky=
-linux-gnueabi/seesv-embedded-qt5-image/1.0-r0/temp/log.do_rootfs.19367
> ERROR: Task
> (/mnt/seesv-mnt/seesv-distro/sources/meta-seesv/meta-seesv-distro/recipes=
-qt/images/seesv-embedded-qt5-image.bb:
> do_rootfs)
> failed with exit code '1'
> [...]
>
> >
> > Greetz
> > Josef
> >
> > > --volatile-cache -f
> > >
> /media/gvkalra/66bef40b-d84f-4ad0-ada6-a025b494ca5d/seesv-distro/build-ra=
spberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/seesv-embedded-qt5-imag=
e/1.0-r0/opkg.conf
> > > -t
> > >
> /media/gvkalra/66bef40b-d84f-4ad0-ada6-a025b494ca5d/seesv-distro/build-ra=
spberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/seesv-embedded-qt5-imag=
e/1.0-r0/temp/ipktemp/
> > > -o
> > >
> /media/gvkalra/66bef40b-d84f-4ad0-ada6-a025b494ca5d/seesv-distro/build-ra=
spberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/seesv-embedded-qt5-imag=
e/1.0-r0/rootfs
> > >  --force_postinstall --prefer-arch-to-version   install opkg
> > > packagegroup-b2qt-embedded-base packagegroup-b2qt-embedded-gstreamer
> > > packagegroup-b2qt-embedded-tools packagegroup-b2qt-qt5-modules
> > > packagegroup-base-extended packagegroup-core-boot
> > > packagegroup-core-ssh-dropbear packagegroup-core-tools-debug
> > > packagegroup-core-tools-profile run-postinsts' returned -11:
> > > [...]
> > > Installing openssh-lic (7.8p1+git) on root
> > > Downloading
> > >
> file:/media/gvkalra/66bef40b-d84f-4ad0-ada6-a025b494ca5d/seesv-distro/bui=
ld-raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/seesv-embedded-qt5=
-image/1.0-r0/oe-rootfs-repo/cortexa7t2hf-neon-vfpv4/openssh-lic_7.8p1+git-=
r0_cortexa7t2hf-neon-vfpv4.ipk.
> > > Installing binutils-lic (2.31) on root
> > > Downloading
> > >
> file:/media/gvkalra/66bef40b-d84f-4ad0-ada6-a025b494ca5d/seesv-distro/bui=
ld-raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/seesv-embedded-qt5=
-image/1.0-r0/oe-roo
> > > ERROR: seesv-embedded-qt5-image-1.0-r0 do_rootfs: Function failed:
> do_rootfs
> > > ERROR: Logfile of failure stored in:
> > >
> /media/gvkalra/66bef40b-d84f-4ad0-ada6-a025b494ca5d/seesv-distro/build-ra=
spberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/seesv-embedded-qt5-imag=
e/1.0-r0/temp/log.do_rootfs.21682
> > > ERROR: Task
> > >
> (/media/gvkalra/66bef40b-d84f-4ad0-ada6-a025b494ca5d/seesv-distro/sources=
/meta-seesv/meta-seesv-distro/recipes-qt/images/seesv-embedded-qt5-image.bb=
:
> do_rootfs)
> > > failed with exit code '1'
> > > [...]
> > >
> > > Notice:
> > > In the log "Downloading
> > >
> file:/media/gvkalra/66bef40b-d84f-4ad0-ada6-a025b494ca5d/seesv-distro/bui=
ld-raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/seesv-embedded-qt5=
-image/1.0-r0/oe-roo",
> > > bitbake didn't finish writing the whole path to the console. (I don't
> know
> > > why)
> > >
> > > I have tried "bitbake -c cleansstate binutils" and rebuilding the ima=
ge
> > > (again same error)
> > >
> > > Previously when I faced this error, I deleted everything and started
> from
> > > scratch (compiling everything) - it worked!
> > > But it takes too long, so this time I thought it's best to discuss in
> the
> > > mailing list.
> > >
> > > Any ideas of what could be the reason?
> > >
> > > PS: I am open to share any logs you'd like to have.
> > >
> > > --
> > > Gaurav Kalra
> >
> > > --
> > > _______________________________________________
> > > yocto mailing list
> > > yocto@yoctoproject.org
> > > https://lists.yoctoproject.org/listinfo/yocto
> >
> >
> > --
> > =E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94
> > Josef Holzmayr
> > Software Developer Embedded Systems
> >
> > Tel: +49 8444 9204-48
> > Fax: +49 8444 9204-50
> >
> > R-S-I Elektrotechnik GmbH & Co. KG
> > Woelkestrasse 11
> > D-85301 Schweitenkirchen
> > www.rsi-elektrotechnik.de
> > =E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94
> > Amtsgericht Ingolstadt =E2=80=93 GmbH: HRB 191328 =E2=80=93 KG: HRA 170=
393
> > Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
> > Ust-IdNr: DE 128592548
> >
> > _____________________________________________________________
> > Amtsgericht Ingolstadt - GmbH: HRB 191328 - KG: HRA 170363
> > Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
> > USt-IdNr.: DE 128592548
> >
>

--0000000000001da0090589707bfa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi there!</div><div dir=3D"ltr"><br></div=
><div>After a few trial and errors, I have been able to isolate the problem=
 with this commit in boot2qt:</div><div><a href=3D"https://codereview.qt-pr=
oject.org/gitweb?p=3Dyocto/meta-boot2qt.git;a=3Dcommitdiff;h=3Dded06350f2dd=
23b3e453f5c30247a1cffd362951">https://codereview.qt-project.org/gitweb?p=3D=
yocto/meta-boot2qt.git;a=3Dcommitdiff;h=3Dded06350f2dd23b3e453f5c30247a1cff=
d362951</a><br></div><div><br></div><div>The error logs spat by bitbake don=
&#39;t point to the PAM module=C2=A0=C2=AF\_(=E3=83=84)_/=C2=AF</div><div><=
br></div><div dir=3D"ltr"><div><div dir=3D"ltr" class=3D"gmail_signature" d=
ata-smartmail=3D"gmail_signature">--<br>Gaurav Kalra</div></div><br></div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon,=
 May 20, 2019 at 11:53 AM Gaurav Kalra &lt;<a href=3D"mailto:gvkalra@gmail.=
com">gvkalra@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex">On Fri, May 17, 2019 at 6:24 PM Josef Holzmayr<br>
&lt;<a href=3D"mailto:holzmayr@rsi-elektrotechnik.de" target=3D"_blank">hol=
zmayr@rsi-elektrotechnik.de</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi Gaurav,<br>
&gt;<br>
&gt; On Fri, May 17, 2019 at 03:42:02PM +0900, Gaurav Kalra wrote:<br>
&gt; &gt; Hi,<br>
&gt; &gt;<br>
&gt; &gt; I am new in the Yocto world and have started learning the concept=
s recently.<br>
&gt; &gt; A big thanks to the broadcasts on twitch and numerous youtube vid=
eos.<br>
&gt;<br>
&gt; As the broadcaster on Twitch, thanks for letting us know. It is much<b=
r>
&gt; appreciated!<br>
&gt;<br>
&gt; &gt; What I am doing: Modifying boot2qt (<br>
&gt; &gt; <a href=3D"https://codereview.qt-project.org/gitweb?p=3Dyocto/met=
a-boot2qt.git;a=3Dshortlog;h=3Drefs/heads/thud" rel=3D"noreferrer" target=
=3D"_blank">https://codereview.qt-project.org/gitweb?p=3Dyocto/meta-boot2qt=
.git;a=3Dshortlog;h=3Drefs/heads/thud</a>)<br>
&gt; &gt; as my blueprint for raspberry-pi.<br>
&gt; &gt;<br>
&gt; &gt; Mostly:<br>
&gt; &gt; 1. Modifying the configuration of packages (e.g., systemd conf fi=
les)<br>
&gt; &gt; 2. Adding new recipes<br>
&gt; &gt; 3. Keeping Qt updated<br>
&gt; &gt;<br>
&gt; &gt; &quot;Sometimes&quot;, I face this strange error in do_rootfs(), =
while<br>
&gt; &gt; installing binutils-lic package inside the image.<br>
&gt; &gt;<br>
&gt; &gt; [...]<br>
&gt; &gt; ERROR: seesv-embedded-qt5-image-1.0-r0 do_rootfs: Unable to insta=
ll<br>
&gt; &gt; packages. Command<br>
&gt; &gt; &#39;/media/gvkalra/66bef40b-d84f-4ad0-ada6-a025b494ca5d/seesv-di=
stro/build-raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/seesv-embe=
dded-qt5-image/1.0-r0/recipe-sysroot-native/usr/bin/opkg<br>
&gt;<br>
&gt; I&#39;m not sure if it applies here, but I have encountered problems w=
ith<br>
&gt; long pathes. Especially the leading part with the UUID *might* be<br>
&gt; problematic. Have you tried in a location closer to root?<br>
<br>
I tried closer to root today.<br>
But the same problem (with a different package -&gt; this time it&#39;s otf=
-noto-lic).<br>
<br>
[...]<br>
ERROR: seesv-embedded-qt5-image-1.0-r0 do_rootfs: Unable to install<br>
packages. Command<br>
&#39;/mnt/seesv-mnt/seesv-distro/build-raspberrypi3/tmp/work/raspberrypi3-p=
oky-linux-gnueabi/seesv-embedded-qt5-image/1.0-r0/recipe-sysroot-native/usr=
/bin/opkg<br>
--volatile-cache -f<br>
/mnt/seesv-mnt/seesv-distro/build-raspberrypi3/tmp/work/raspberrypi3-poky-l=
inux-gnueabi/seesv-embedded-qt5-image/1.0-r0/opkg.conf<br>
-t /mnt/seesv-mnt/seesv-distro/build-raspberrypi3/tmp/work/raspberrypi3-pok=
y-linux-gnueabi/seesv-embedded-qt5-image/1.0-r0/temp/ipktemp/<br>
-o /mnt/seesv-mnt/seesv-distro/build-raspberrypi3/tmp/work/raspberrypi3-pok=
y-linux-gnueabi/seesv-embedded-qt5-image/1.0-r0/rootfs<br>
=C2=A0--force_postinstall --prefer-arch-to-version=C2=A0 =C2=A0install opkg=
<br>
packagegroup-b2qt-embedded-base packagegroup-b2qt-embedded-gstreamer<br>
packagegroup-b2qt-embedded-tools packagegroup-b2qt-qt5-modules<br>
packagegroup-base-extended packagegroup-core-boot<br>
packagegroup-core-ssh-dropbear packagegroup-core-tools-debug<br>
packagegroup-core-tools-profile run-postinsts&#39; returned -11:<br>
Installing opkg-lic (0.3.6) on root<br>
Downloading file:/mnt/seesv-mnt/seesv-distro/build-raspberrypi3/tmp/work/ra=
spberrypi3-poky-linux-gnueabi/seesv-embedded-qt5-image/1.0-r0/oe-rootfs-rep=
o/cortexa7t2hf-neon-vfpv4/opkg-lic_0.3.6-r0_cortexa7t2hf-neon-vfpv4.ipk.<br=
>
Installing packagegroup-b2qt-embedded-base-lic (1.0) on root<br>
Downloading file:/mnt/seesv-mnt/seesv-distro/build-raspberrypi3/tmp/work/ra=
spberrypi3-poky-linux-gnueabi/seesv-embedded-qt5-image/1.0-r0/oe-rootfs-rep=
o/all/packagegroup-b2qt-embedded-base-lic_1.0-r0_all.ipk.<br>
[...]<br>
Installing otf-noto-lic (1.004) on root<br>
Downloading file:/mnt/seesv-mnt/seesv-distro/build-raspberrypi3/tmp/work/ra=
spberrypi3-poky-lin<br>
ERROR: seesv-embedded-qt5-image-1.0-r0 do_rootfs: Function failed: do_rootf=
s<br>
ERROR: Logfile of failure stored in:<br>
/mnt/seesv-mnt/seesv-distro/build-raspberrypi3/tmp/work/raspberrypi3-poky-l=
inux-gnueabi/seesv-embedded-qt5-image/1.0-r0/temp/log.do_rootfs.19367<br>
ERROR: Task (/mnt/seesv-mnt/seesv-distro/sources/meta-seesv/meta-seesv-dist=
ro/recipes-qt/images/seesv-embedded-qt5-image.bb:do_rootfs)<br>
failed with exit code &#39;1&#39;<br>
[...]<br>
<br>
&gt;<br>
&gt; Greetz<br>
&gt; Josef<br>
&gt;<br>
&gt; &gt; --volatile-cache -f<br>
&gt; &gt; /media/gvkalra/66bef40b-d84f-4ad0-ada6-a025b494ca5d/seesv-distro/=
build-raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/seesv-embedded-=
qt5-image/1.0-r0/opkg.conf<br>
&gt; &gt; -t<br>
&gt; &gt; /media/gvkalra/66bef40b-d84f-4ad0-ada6-a025b494ca5d/seesv-distro/=
build-raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/seesv-embedded-=
qt5-image/1.0-r0/temp/ipktemp/<br>
&gt; &gt; -o<br>
&gt; &gt; /media/gvkalra/66bef40b-d84f-4ad0-ada6-a025b494ca5d/seesv-distro/=
build-raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/seesv-embedded-=
qt5-image/1.0-r0/rootfs<br>
&gt; &gt;=C2=A0 --force_postinstall --prefer-arch-to-version=C2=A0 =C2=A0in=
stall opkg<br>
&gt; &gt; packagegroup-b2qt-embedded-base packagegroup-b2qt-embedded-gstrea=
mer<br>
&gt; &gt; packagegroup-b2qt-embedded-tools packagegroup-b2qt-qt5-modules<br=
>
&gt; &gt; packagegroup-base-extended packagegroup-core-boot<br>
&gt; &gt; packagegroup-core-ssh-dropbear packagegroup-core-tools-debug<br>
&gt; &gt; packagegroup-core-tools-profile run-postinsts&#39; returned -11:<=
br>
&gt; &gt; [...]<br>
&gt; &gt; Installing openssh-lic (7.8p1+git) on root<br>
&gt; &gt; Downloading<br>
&gt; &gt; file:/media/gvkalra/66bef40b-d84f-4ad0-ada6-a025b494ca5d/seesv-di=
stro/build-raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/seesv-embe=
dded-qt5-image/1.0-r0/oe-rootfs-repo/cortexa7t2hf-neon-vfpv4/openssh-lic_7.=
8p1+git-r0_cortexa7t2hf-neon-vfpv4.ipk.<br>
&gt; &gt; Installing binutils-lic (2.31) on root<br>
&gt; &gt; Downloading<br>
&gt; &gt; file:/media/gvkalra/66bef40b-d84f-4ad0-ada6-a025b494ca5d/seesv-di=
stro/build-raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/seesv-embe=
dded-qt5-image/1.0-r0/oe-roo<br>
&gt; &gt; ERROR: seesv-embedded-qt5-image-1.0-r0 do_rootfs: Function failed=
: do_rootfs<br>
&gt; &gt; ERROR: Logfile of failure stored in:<br>
&gt; &gt; /media/gvkalra/66bef40b-d84f-4ad0-ada6-a025b494ca5d/seesv-distro/=
build-raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/seesv-embedded-=
qt5-image/1.0-r0/temp/log.do_rootfs.21682<br>
&gt; &gt; ERROR: Task<br>
&gt; &gt; (/media/gvkalra/66bef40b-d84f-4ad0-ada6-a025b494ca5d/seesv-distro=
/sources/meta-seesv/meta-seesv-distro/recipes-qt/images/seesv-embedded-qt5-=
image.bb:do_rootfs)<br>
&gt; &gt; failed with exit code &#39;1&#39;<br>
&gt; &gt; [...]<br>
&gt; &gt;<br>
&gt; &gt; Notice:<br>
&gt; &gt; In the log &quot;Downloading<br>
&gt; &gt; file:/media/gvkalra/66bef40b-d84f-4ad0-ada6-a025b494ca5d/seesv-di=
stro/build-raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/seesv-embe=
dded-qt5-image/1.0-r0/oe-roo&quot;,<br>
&gt; &gt; bitbake didn&#39;t finish writing the whole path to the console. =
(I don&#39;t know<br>
&gt; &gt; why)<br>
&gt; &gt;<br>
&gt; &gt; I have tried &quot;bitbake -c cleansstate binutils&quot; and rebu=
ilding the image<br>
&gt; &gt; (again same error)<br>
&gt; &gt;<br>
&gt; &gt; Previously when I faced this error, I deleted everything and star=
ted from<br>
&gt; &gt; scratch (compiling everything) - it worked!<br>
&gt; &gt; But it takes too long, so this time I thought it&#39;s best to di=
scuss in the<br>
&gt; &gt; mailing list.<br>
&gt; &gt;<br>
&gt; &gt; Any ideas of what could be the reason?<br>
&gt; &gt;<br>
&gt; &gt; PS: I am open to share any logs you&#39;d like to have.<br>
&gt; &gt;<br>
&gt; &gt; --<br>
&gt; &gt; Gaurav Kalra<br>
&gt;<br>
&gt; &gt; --<br>
&gt; &gt; _______________________________________________<br>
&gt; &gt; yocto mailing list<br>
&gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto=
@yoctoproject.org</a><br>
&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"=
noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto=
</a><br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; =E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94<br>
&gt; Josef Holzmayr<br>
&gt; Software Developer Embedded Systems<br>
&gt;<br>
&gt; Tel: +49 8444 9204-48<br>
&gt; Fax: +49 8444 9204-50<br>
&gt;<br>
&gt; R-S-I Elektrotechnik GmbH &amp; Co. KG<br>
&gt; Woelkestrasse 11<br>
&gt; D-85301 Schweitenkirchen<br>
&gt; <a href=3D"http://www.rsi-elektrotechnik.de" rel=3D"noreferrer" target=
=3D"_blank">www.rsi-elektrotechnik.de</a><br>
&gt; =E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94<br>
&gt; Amtsgericht Ingolstadt =E2=80=93 GmbH: HRB 191328 =E2=80=93 KG: HRA 17=
0393<br>
&gt; Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sor=
g<br>
&gt; Ust-IdNr: DE 128592548<br>
&gt;<br>
&gt; _____________________________________________________________<br>
&gt; Amtsgericht Ingolstadt - GmbH: HRB 191328 - KG: HRA 170363<br>
&gt; Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sor=
g<br>
&gt; USt-IdNr.: DE 128592548<br>
&gt;<br>
</blockquote></div></div>

--0000000000001da0090589707bfa--
