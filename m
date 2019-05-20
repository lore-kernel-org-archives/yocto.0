Return-Path: <gvkalra@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 568C2E00D33; Sun, 19 May 2019 19:54:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.196 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gvkalra[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
	[209.85.210.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B55F7E00CD2
	for <yocto@yoctoproject.org>; Sun, 19 May 2019 19:54:10 -0700 (PDT)
Received: by mail-pf1-f196.google.com with SMTP id z26so6454579pfg.6
	for <yocto@yoctoproject.org>; Sun, 19 May 2019 19:54:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=8QCihEBGmQo01NZKMu04I13IvAsjA1KlxIj6bJzIr5w=;
	b=bjoEju4E5a0Wvu+GefAZVANcwnrxxM4ROq6dIYdE3CqlkfH+Jr9KXD9kRo1jz9S0/f
	K1Y0dYtEz9mQLCRSpBeZop3jqvTWjLzkh80EdTsCHqXQuBoLzZicy4aLGpVqFOibVljB
	X87zm8Hg5O9NPxGJ1qX3sOZ6DvoTsgaVAKvrBKVn0p5gsMXa+DlAaqfC9bX+Njih2G+8
	6T9veMyPPjP3TDdIgBzT+xrOKBvnqCo80SjQewtW7txLPVuHsnjEb922dgmQQz6QnjT2
	e+mw6/IGfJ9FEzdaZjeYYmtp+qgFmh07/Gd8bOgAnaiYc44dNwgiZ+88uPT68U3iC7mg
	TQnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=8QCihEBGmQo01NZKMu04I13IvAsjA1KlxIj6bJzIr5w=;
	b=RcMJj+Ef4BPhNX+6AygjpPvikYET5Kjv3zvpnDnKdT4EMx8Q2yQoAmRUeCsWFvxNXw
	nmztzk/4zvS6NWD3eoZq7tdmGyaQb+vKCCnzd721xIKzPUu/TAbAVb5msUSVJteCgwDy
	PtGIk6hv4tVAPb+/g3mX50YO8h9ayh36Ifsd5vdlF/VMnREEqyKYJoG4o4p0KBGWClNf
	YnXuW1yJ4IYdODicVGp9TG1nBZMUsCMRitfHZ90eZ+1pWJHuEBedwxmSZtsRpgUuSj1O
	QVxKE6i/pLDsFksRLPjWEx4ZgnAidL1GpQfqiTelKr3ixFstA8+g7kqFSJcVLk9AVSFY
	C+DA==
X-Gm-Message-State: APjAAAWz7/cNT+/SEUVe7HtLwiZ80eYs8jnNvlasNPJtVoPkDGmadFEA
	+sgs7vj99UTmj6ASNYR9VPz/mctfP6ZbqJ770FLV9f+lBAg=
X-Google-Smtp-Source: APXvYqw9WBZE/R5aS3usBWiYZUrRkddnO0zlZEp61OSKAHKHPjFL42MJkTvOZmJTsaeTa2YkEhTAx6fBLo2gRr3N1yo=
X-Received: by 2002:a65:418d:: with SMTP id a13mr32379286pgq.332.1558320849746;
	Sun, 19 May 2019 19:54:09 -0700 (PDT)
MIME-Version: 1.0
References: <CAD5qJ_svyizBB4c0zRDL5W0dkEAs0+KDRVvhAGS3GW-V0kGsag@mail.gmail.com>
	<20190517092428.b2ryukhkjh63nepp@jholzmayr.localdomain>
In-Reply-To: <20190517092428.b2ryukhkjh63nepp@jholzmayr.localdomain>
From: Gaurav Kalra <gvkalra@gmail.com>
Date: Mon, 20 May 2019 11:53:32 +0900
Message-ID: <CAD5qJ_vjj_0=mKY3U414oWrOa3M0=tGaG5OWX0yMb2ScqcoeQA@mail.gmail.com>
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
X-List-Received-Date: Mon, 20 May 2019 02:54:12 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, May 17, 2019 at 6:24 PM Josef Holzmayr
<holzmayr@rsi-elektrotechnik.de> wrote:
>
> Hi Gaurav,
>
> On Fri, May 17, 2019 at 03:42:02PM +0900, Gaurav Kalra wrote:
> > Hi,
> >
> > I am new in the Yocto world and have started learning the concepts rece=
ntly.
> > A big thanks to the broadcasts on twitch and numerous youtube videos.
>
> As the broadcaster on Twitch, thanks for letting us know. It is much
> appreciated!
>
> > What I am doing: Modifying boot2qt (
> > https://codereview.qt-project.org/gitweb?p=3Dyocto/meta-boot2qt.git;a=
=3Dshortlog;h=3Drefs/heads/thud)
> > as my blueprint for raspberry-pi.
> >
> > Mostly:
> > 1. Modifying the configuration of packages (e.g., systemd conf files)
> > 2. Adding new recipes
> > 3. Keeping Qt updated
> >
> > "Sometimes", I face this strange error in do_rootfs(), while
> > installing binutils-lic package inside the image.
> >
> > [...]
> > ERROR: seesv-embedded-qt5-image-1.0-r0 do_rootfs: Unable to install
> > packages. Command
> > '/media/gvkalra/66bef40b-d84f-4ad0-ada6-a025b494ca5d/seesv-distro/build=
-raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/seesv-embedded-qt5-i=
mage/1.0-r0/recipe-sysroot-native/usr/bin/opkg
>
> I'm not sure if it applies here, but I have encountered problems with
> long pathes. Especially the leading part with the UUID *might* be
> problematic. Have you tried in a location closer to root?

I tried closer to root today.
But the same problem (with a different package -> this time it's otf-noto-l=
ic).

[...]
ERROR: seesv-embedded-qt5-image-1.0-r0 do_rootfs: Unable to install
packages. Command
'/mnt/seesv-mnt/seesv-distro/build-raspberrypi3/tmp/work/raspberrypi3-poky-=
linux-gnueabi/seesv-embedded-qt5-image/1.0-r0/recipe-sysroot-native/usr/bin=
/opkg
--volatile-cache -f
/mnt/seesv-mnt/seesv-distro/build-raspberrypi3/tmp/work/raspberrypi3-poky-l=
inux-gnueabi/seesv-embedded-qt5-image/1.0-r0/opkg.conf
-t /mnt/seesv-mnt/seesv-distro/build-raspberrypi3/tmp/work/raspberrypi3-pok=
y-linux-gnueabi/seesv-embedded-qt5-image/1.0-r0/temp/ipktemp/
-o /mnt/seesv-mnt/seesv-distro/build-raspberrypi3/tmp/work/raspberrypi3-pok=
y-linux-gnueabi/seesv-embedded-qt5-image/1.0-r0/rootfs
 --force_postinstall --prefer-arch-to-version   install opkg
packagegroup-b2qt-embedded-base packagegroup-b2qt-embedded-gstreamer
packagegroup-b2qt-embedded-tools packagegroup-b2qt-qt5-modules
packagegroup-base-extended packagegroup-core-boot
packagegroup-core-ssh-dropbear packagegroup-core-tools-debug
packagegroup-core-tools-profile run-postinsts' returned -11:
Installing opkg-lic (0.3.6) on root
Downloading file:/mnt/seesv-mnt/seesv-distro/build-raspberrypi3/tmp/work/ra=
spberrypi3-poky-linux-gnueabi/seesv-embedded-qt5-image/1.0-r0/oe-rootfs-rep=
o/cortexa7t2hf-neon-vfpv4/opkg-lic_0.3.6-r0_cortexa7t2hf-neon-vfpv4.ipk.
Installing packagegroup-b2qt-embedded-base-lic (1.0) on root
Downloading file:/mnt/seesv-mnt/seesv-distro/build-raspberrypi3/tmp/work/ra=
spberrypi3-poky-linux-gnueabi/seesv-embedded-qt5-image/1.0-r0/oe-rootfs-rep=
o/all/packagegroup-b2qt-embedded-base-lic_1.0-r0_all.ipk.
[...]
Installing otf-noto-lic (1.004) on root
Downloading file:/mnt/seesv-mnt/seesv-distro/build-raspberrypi3/tmp/work/ra=
spberrypi3-poky-lin
ERROR: seesv-embedded-qt5-image-1.0-r0 do_rootfs: Function failed: do_rootf=
s
ERROR: Logfile of failure stored in:
/mnt/seesv-mnt/seesv-distro/build-raspberrypi3/tmp/work/raspberrypi3-poky-l=
inux-gnueabi/seesv-embedded-qt5-image/1.0-r0/temp/log.do_rootfs.19367
ERROR: Task (/mnt/seesv-mnt/seesv-distro/sources/meta-seesv/meta-seesv-dist=
ro/recipes-qt/images/seesv-embedded-qt5-image.bb:do_rootfs)
failed with exit code '1'
[...]

>
> Greetz
> Josef
>
> > --volatile-cache -f
> > /media/gvkalra/66bef40b-d84f-4ad0-ada6-a025b494ca5d/seesv-distro/build-=
raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/seesv-embedded-qt5-im=
age/1.0-r0/opkg.conf
> > -t
> > /media/gvkalra/66bef40b-d84f-4ad0-ada6-a025b494ca5d/seesv-distro/build-=
raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/seesv-embedded-qt5-im=
age/1.0-r0/temp/ipktemp/
> > -o
> > /media/gvkalra/66bef40b-d84f-4ad0-ada6-a025b494ca5d/seesv-distro/build-=
raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/seesv-embedded-qt5-im=
age/1.0-r0/rootfs
> >  --force_postinstall --prefer-arch-to-version   install opkg
> > packagegroup-b2qt-embedded-base packagegroup-b2qt-embedded-gstreamer
> > packagegroup-b2qt-embedded-tools packagegroup-b2qt-qt5-modules
> > packagegroup-base-extended packagegroup-core-boot
> > packagegroup-core-ssh-dropbear packagegroup-core-tools-debug
> > packagegroup-core-tools-profile run-postinsts' returned -11:
> > [...]
> > Installing openssh-lic (7.8p1+git) on root
> > Downloading
> > file:/media/gvkalra/66bef40b-d84f-4ad0-ada6-a025b494ca5d/seesv-distro/b=
uild-raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/seesv-embedded-q=
t5-image/1.0-r0/oe-rootfs-repo/cortexa7t2hf-neon-vfpv4/openssh-lic_7.8p1+gi=
t-r0_cortexa7t2hf-neon-vfpv4.ipk.
> > Installing binutils-lic (2.31) on root
> > Downloading
> > file:/media/gvkalra/66bef40b-d84f-4ad0-ada6-a025b494ca5d/seesv-distro/b=
uild-raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/seesv-embedded-q=
t5-image/1.0-r0/oe-roo
> > ERROR: seesv-embedded-qt5-image-1.0-r0 do_rootfs: Function failed: do_r=
ootfs
> > ERROR: Logfile of failure stored in:
> > /media/gvkalra/66bef40b-d84f-4ad0-ada6-a025b494ca5d/seesv-distro/build-=
raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/seesv-embedded-qt5-im=
age/1.0-r0/temp/log.do_rootfs.21682
> > ERROR: Task
> > (/media/gvkalra/66bef40b-d84f-4ad0-ada6-a025b494ca5d/seesv-distro/sourc=
es/meta-seesv/meta-seesv-distro/recipes-qt/images/seesv-embedded-qt5-image.=
bb:do_rootfs)
> > failed with exit code '1'
> > [...]
> >
> > Notice:
> > In the log "Downloading
> > file:/media/gvkalra/66bef40b-d84f-4ad0-ada6-a025b494ca5d/seesv-distro/b=
uild-raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/seesv-embedded-q=
t5-image/1.0-r0/oe-roo",
> > bitbake didn't finish writing the whole path to the console. (I don't k=
now
> > why)
> >
> > I have tried "bitbake -c cleansstate binutils" and rebuilding the image
> > (again same error)
> >
> > Previously when I faced this error, I deleted everything and started fr=
om
> > scratch (compiling everything) - it worked!
> > But it takes too long, so this time I thought it's best to discuss in t=
he
> > mailing list.
> >
> > Any ideas of what could be the reason?
> >
> > PS: I am open to share any logs you'd like to have.
> >
> > --
> > Gaurav Kalra
>
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>
>
> --
> =E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94
> Josef Holzmayr
> Software Developer Embedded Systems
>
> Tel: +49 8444 9204-48
> Fax: +49 8444 9204-50
>
> R-S-I Elektrotechnik GmbH & Co. KG
> Woelkestrasse 11
> D-85301 Schweitenkirchen
> www.rsi-elektrotechnik.de
> =E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94
> Amtsgericht Ingolstadt =E2=80=93 GmbH: HRB 191328 =E2=80=93 KG: HRA 17039=
3
> Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
> Ust-IdNr: DE 128592548
>
> _____________________________________________________________
> Amtsgericht Ingolstadt - GmbH: HRB 191328 - KG: HRA 170363
> Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
> USt-IdNr.: DE 128592548
>

