Return-Path: <martin.jansa@gmail.com>
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30D5CE0034A
	for <yocto@yoctoproject.org>; Tue, 31 Jul 2012 04:49:42 -0700 (PDT)
Received: by wibhn17 with SMTP id hn17so2274812wib.11
	for <yocto@yoctoproject.org>; Tue, 31 Jul 2012 04:49:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=+YAPxqGxk77YlCnRBrzlq6wQRjJ3ZVQycRQSLXMznGE=;
	b=TUewKx+PrX+pZb1i2ERhXaoQSN3RlEhIMuUbyRPjF8oWiHRXrgDlAvugN3juKz2qH9
	dE9wjFHimRFWGWVL2MniJx7Z1691SvWB96qtSS0+cQ2KaTvX11jbk1ZP0EDwbljFruPc
	EerqU1CFiPA9/WliE/2lHtHB0WGDu7wRwL+LO5MhfbiVsHvskQvW47HdNgiok0QUmh9b
	l5ti858JwJn7om9eK4sghyoS698jK3nNRQp+tQLzkOQigN5HsJ+mmw4CgEDCCXq1R71O
	NdcrZtIwGj7L2SquvE1aZwzJcl7YS46+fnvkeNIK0g0m/Eak55cNkeKZBFo/MkohpYq2
	/D+A==
Received: by 10.180.82.164 with SMTP id j4mr6166413wiy.18.1343735380950;
	Tue, 31 Jul 2012 04:49:40 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id t8sm21822438wiy.3.2012.07.31.04.49.39
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 31 Jul 2012 04:49:40 -0700 (PDT)
Date: Tue, 31 Jul 2012 13:49:35 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Jim Abernathy <jfabernathy@gmail.com>
Message-ID: <20120731114935.GU3261@jama.jama.net>
References: <5016960E.9060305@gmail.com> <5016985D.7010805@mlbassoc.com>
	<5016BB44.8070202@gmail.com> <5016BD14.1020807@mlbassoc.com>
	<5016BFC4.8060307@gmail.com> <5016C18B.60200@mlbassoc.com>
	<5016D732.3000305@gmail.com> <5016DC74.4040204@mlbassoc.com>
	<5017C0BB.7050304@mlbassoc.com> <5017C5D6.5080603@gmail.com>
MIME-Version: 1.0
In-Reply-To: <5017C5D6.5080603@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: build error pandaboard on master
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 31 Jul 2012 11:49:42 -0000
X-Groupsio-MsgNum: 8299
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="CYcXvPfqKSDi0QhV"
Content-Disposition: inline

--CYcXvPfqKSDi0QhV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 31, 2012 at 07:47:34AM -0400, Jim Abernathy wrote:
> On 07/31/2012 07:25 AM, Gary Thomas wrote:
> > On 2012-07-30 13:11, Gary Thomas wrote:
> >> On 2012-07-30 12:49, Jim Abernathy wrote:
> >>> On 07/30/2012 01:16 PM, Gary Thomas wrote:
> >>>> On 2012-07-30 11:09, Jim Abernathy wrote:
> >>>>> On 07/30/2012 12:57 PM, Gary Thomas wrote:
> >>>>>> On 2012-07-30 10:50, Jim Abernathy wrote:
> >>>>>>> On 07/30/2012 10:21 AM, Gary Thomas wrote:
> >>>>>>>> On 2012-07-30 08:11, Jim Abernathy wrote:
> >>>>>>>>> On 07/30/2012 09:56 AM, Gary Thomas wrote:
> >>>>>>>>>> On 2012-07-30 07:48, Jim Abernathy wrote:
> >>>>>>>>>>> On 07/30/2012 09:15 AM, Gary Thomas wrote:
> >>>>>>>>>>>> On 2012-07-30 06:53, Jim Abernathy wrote:
> >>>>>>>>>>>>> I'm on master branch trying to build core-image-minimal=20
> >>>>>>>>>>>>> for the machine "pandaboard". Besides the basics, I put in=
=20
> >>>>>>>>>>>>> a license statement for cloud9 into local.conf.
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> My bblayer.conf is as follows:
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> # LAYER_CONF_VERSION is increased each time=20
> >>>>>>>>>>>>> build/conf/bblayers.conf
> >>>>>>>>>>>>> # changes incompatibly
> >>>>>>>>>>>>> LCONF_VERSION =3D "5"
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> BBPATH =3D "${TOPDIR}"
> >>>>>>>>>>>>> BBFILES ?=3D ""
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> BBLAYERS ?=3D " \
> >>>>>>>>>>>>>    /home/jim/poky/meta \
> >>>>>>>>>>>>>    /home/jim/poky/meta-yocto \
> >>>>>>>>>>>>>    /home/jim/meta-openembedded/meta-oe \
> >>>>>>>>>>>>>    /home/jim/meta-ti \
> >>>>>>>>>>>>>    "
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> The error I'm getting is:
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> ERROR: ParseError at=20
> >>>>>>>>>>>>> /home/jim/meta-ti/recipes-misc/payload/bonescript.bb:5:=20
> >>>>>>>>>>>>> Could not inherit file classes/systemd.bbclass
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> Build Configuration:
> >>>>>>>>>>>>> BB_VERSION        =3D "1.15.3"
> >>>>>>>>>>>>> TARGET_ARCH       =3D "arm"
> >>>>>>>>>>>>> TARGET_OS         =3D "linux-gnueabi"
> >>>>>>>>>>>>> MACHINE           =3D "pandaboard"
> >>>>>>>>>>>>> DISTRO            =3D "poky"
> >>>>>>>>>>>>> DISTRO_VERSION    =3D "1.2+snapshot-20120730"
> >>>>>>>>>>>>> TUNE_FEATURES     =3D "armv7a vfp neon cortexa9"
> >>>>>>>>>>>>> TARGET_FPU        =3D "vfp-neon"
> >>>>>>>>>>>>> meta
> >>>>>>>>>>>>> meta-yocto        =3D=20
> >>>>>>>>>>>>> "master:7411158e1f980cd71c432026fa2f68ab80e3541e"
> >>>>>>>>>>>>> meta-oe           =3D=20
> >>>>>>>>>>>>> "master:9afc488a1b97bfc5378f139ba04a7a5297b15fdb"
> >>>>>>>>>>>>> meta-ti           =3D=20
> >>>>>>>>>>>>> "master:9bc77dff5f84578e259f8225bfa0656d94a2a60a"
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> ERROR: Nothing PROVIDES 'pseudo-native'
> >>>>>>>>>>>>
> >>>>>>>>>>>> Try adding this in local.conf:
> >>>>>>>>>>>>   BBMASK ?=3D ".*/meta-ti/recipes-(misc|bsp/formfactor)/"
> >>>>>>>>>>>>
> >>>>>>>>>>> BBMASK by itself didn't solve my particular problem. I'll=20
> >>>>>>>>>>> try the other suggestions and report back.
> >>>>>>>>>>
> >>>>>>>>>> What other problem do you have?  That BBMASK should keep=20
> >>>>>>>>>> bitbake from
> >>>>>>>>>> trying to parse the recipe mentioned above.
> >>>>>>>>>>
> >>>>>>>>>> Note: I use these layers with Yocto all the time with that=20
> >>>>>>>>>> mask...
> >>>>>>>>>>
> >>>>>>>>>
> >>>>>>>>> When I just used the statement:
> >>>>>>>>>
> >>>>>>>>> BBMASK ?=3D ".*/meta-ti/recipes-(misc|bsp/formfactor)/"
> >>>>>>>>>
> >>>>>>>>> I got the same error as my original post.
> >>>>>>>>
> >>>>>>>> The only way you could get that same error is if you already=20
> >>>>>>>> have a BBMASK
> >>>>>>>> statement somewhere and this one is being ignored because of=20
> >>>>>>>> the ?=3D assignment.
> >>>>>>>>
> >>>>>>> So I started with a clean build again. This time I only added=20
> >>>>>>> the BBMASK statement you suggested.  I got the following error:
> >>>>>>>
> >>>>>>> ERROR: No recipes available for:
> >>>>>>> /home/jim/meta-openembedded/meta-systemd/meta-gnome/recipes-gnome=
/gdm/gdm_2.32.2.bbappend=20
> >>>>>>>
> >>>>>>> /home/jim/meta-openembedded/meta-systemd/meta-efl/recipes-efl/efl=
/elsa_svn.bbappend=20
> >>>>>>>
> >>>>>>> ERROR: Command execution failed: Exited with 1
> >>>>>>>
> >>>>>>> I'm guessing the BBMASK needs to call out=20
> >>>>>>> meta-openembedded/meta-systemd/meta-gnome and meta-efl?
> >>>>>>
> >>>>>> Or don't include those layers - meta-systemd isn't needed by your=
=20
> >>>>>> yocto build.
> >>>>>>
> >>>>> Thanks, that makes more sense now.  I removed the layer=20
> >>>>> meta-systemd from bblayers.conf and used the
> >>>>>
> >>>>> BBMASK ?=3D ".*/meta-ti/recipes-(misc|bsp/formfactor)/"
> >>>>>
> >>>>> statement in local.conf to solves the problem.
> >>>>>
> >>>>> What is really causing the problem?  Without it dependencies on=20
> >>>>> meta-systemd are there, but the mask removes that??  Why can you=20
> >>>>> remove a dependency?
> >>>>
> >>>> The dependency on systemd comes from this recipe:=20
> >>>> meta-ti/recipes-misc/payload/bonescript.bb
> >>>> The BBMASK is making bitbake ignore that recipe (you don't need=20
> >>>> it), hence no dependency.
> >>>>
> >>> I got core-image-minimal built without errors, Thanks, now I need to=
=20
> >>> ask some questions about booting that image.  I'm assuming that I=20
> >>> can follow the instructions on pandaboard.org
> >>> for creating the SD card format and just copy the deploy/image/=20
> >>> u-boot, MLO, uImage, and rootfs to the right places and boot the=20
> >>> sdcard in the pandaboard. Anyway, that's what I
> >>> tried.  I'm connected to the panadboard via serial port and the=20
> >>> U-Boot works and the uImage seems to be found, but I don't get a=20
> >>> login console on the serial port:
> >>>
> >>> U-Boot SPL 2011.12-dirty (Jul 30 2012 - 13:44:03)
> >>> Texas Instruments OMAP4430 ES2.1
> >>> OMAP SD/MMC: 0
> >>> reading u-boot.img
> >>> reading u-boot.img
> >>>
> >>>
> >>> U-Boot 2011.12-dirty (Jul 30 2012 - 13:44:03)
> >>>
> >>> CPU  : OMAP4430 ES2.1
> >>> Board: OMAP4 Panda
> >>> I2C:   ready
> >>> DRAM:  1 GiB
> >>> MMC:   OMAP SD/MMC: 0
> >>> Using default environment
> >>>
> >>> In:    serial
> >>> Out:   serial
> >>> Err:   serial
> >>> Hit any key to stop autoboot:  0
> >>> reading boot.scr
> >>>
> >>> ** Unable to read "boot.scr" from mmc 0:1 **
> >>> reading uImage
> >>>
> >>> 4176404 bytes read
> >>> Booting from mmc0 ...
> >>> ## Booting kernel from Legacy Image at 82000000 ...
> >>>     Image Name:   Linux-3.1.0
> >>>     Image Type:   ARM Linux Kernel Image (uncompressed)
> >>>     Data Size:    4176340 Bytes =3D 4 MiB
> >>>     Load Address: 80008000
> >>>     Entry Point:  80008000
> >>>     Verifying Checksum ... OK
> >>>     Loading Kernel Image ... OK
> >>> OK
> >>>
> >>> Starting kernel ...
> >>>
> >>> Uncompressing Linux... done, booting the kernel.
> >>
> >> Start with the obvious - check the bootparams in U-Boot.  Break into
> >> the boot process and run the 'printenv' command.  What's the value of
> >> the "console" variable?
> >>
> >> n.b. I've not tried this exact setup on the PandaBoard.  I may have ti=
me
> >> later today to do so.
> >>
> >
> > I've just verified that this does fail when using yocto:master I'm pret=
ty
> > sure that the problem is related to the use of GCC 4.7.1 - I've had=20
> > similar
> > problems with ARM kernels & GCC 4.7.1 in the past.
> >
> > I did build yocto:denzil for the PandaBoard and it comes up and mostly=
=20
> > works.
> > I've not done extensive checking on this image though.
> This problem that I have on denzil with pandaboard is I get the=20
> following error:
>=20
> ERROR: ParseError at=20
> /home/jim/meta-openembedded/meta-oe/recipes-navigation/gpsd/gpsd_git.bb:2=
8:=20
> Could not inherit file classes/pythonnative.bbclass
> ERROR: Command execution failed: Traceback (most recent call last):
>    File "/home/jim/poky/bitbake/lib/bb/command.py", line 84, in=20
> runAsyncCommand
>      self.cooker.updateCache()
>    File "/home/jim/poky/bitbake/lib/bb/cooker.py", line 1202, in updateCa=
che
>      if not self.parser.parse_next():
>    File "/home/jim/poky/bitbake/lib/bb/cooker.py", line 1669, in parse_ne=
xt
>      self.virtuals +=3D len(result)
> UnboundLocalError: local variable 'result' referenced before assignment
>=20
> Summary: There were 2 ERROR messages shown, returning a non-zero exit cod=
e.
>=20
> I already have a BBMASK statement in local.conf:
>=20
> BBMASK ?=3D ".*/meta-ti/recipes-(misc|bsp/formfactor)/"
>=20
> I'm not sure how I add a second statement like:
>=20
> BBMASK ?=3D ".*/meta-openembedded/meta-oe//recipes-navigation/"
>=20
> Do I use +=3D in both or what???

use meta-oe denzil branch if you have oe-core denzil branch

Cheers,
--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--CYcXvPfqKSDi0QhV
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAlAXxk8ACgkQN1Ujt2V2gBxRlACeOiWoO8FfTgcC62gIowTT4WwU
mSYAn3LThIrZbLJ5ck/aFN3jpV2vg0bV
=04jK
-----END PGP SIGNATURE-----

--CYcXvPfqKSDi0QhV--
