Return-Path: <martin.jansa@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A1F2E004D2
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2012 07:31:31 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by eeke49 with SMTP id e49so1916680eek.35
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2012 07:31:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=tMmFmdEh8vsFiPONMtudd0M0TfuUiEs4hWi8DoFQPWM=;
	b=E4ScvIFJhzi+oH/s9GOqpd1U0bCDiqEknrm6g71wZaivAx25FDkkCJPup56nWZCi1x
	UV8mVhqcbpUpAEDegVcfi0vbpXg1b/q4EAiqManxvNfc1T5sKEaZadmg6A8+klnKVnNx
	5+Nr6eMDb+fMqzyZ815Tl2BlyPAyXk4cBY1dU=
Received: by 10.213.28.130 with SMTP id m2mr5490790ebc.104.1326900690947;
	Wed, 18 Jan 2012 07:31:30 -0800 (PST)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id b49sm100885248eec.9.2012.01.18.07.31.28
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 18 Jan 2012 07:31:29 -0800 (PST)
Date: Wed, 18 Jan 2012 16:31:26 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: James Abernathy <jfabernathy@gmail.com>
Message-ID: <20120118153126.GA11749@jama.jama.net>
References: <CANFv2EmGr9fZOPbi1G+sWbWp0t6B-mijZ6z8iLLw7ZGN9OZy9Q@mail.gmail.com>
	<CANFv2E=WCVdtHMrf9VBC0JX+GjTRk+NZr+ZwA4F-x0SAnc3L1g@mail.gmail.com>
	<CANFv2EnCdxjffKM1W42vBU-TTPCG8kL2GTXr5VUP47zDof8VwA@mail.gmail.com>
	<4F16DC5D.9070903@mlbassoc.com> <4F16DDCD.2020701@ti.com>
	<CANFv2E=R2NwFm0CdHqmQC0HskVYZFFYCwu49r2vs5wxkmHS=rg@mail.gmail.com>
	<4F16E20C.9010909@ti.com>
	<CANFv2EnTYUmywJfVGw27QP4QHqgJnjF9-H9G0DEj-HrTAmpytg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CANFv2EnTYUmywJfVGw27QP4QHqgJnjF9-H9G0DEj-HrTAmpytg@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: build failure on ubuntu 64bits development system
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
X-List-Received-Date: Wed, 18 Jan 2012 15:31:32 -0000
X-Groupsio-MsgNum: 4306
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="17pEHd4RhPHOinZp"
Content-Disposition: inline

--17pEHd4RhPHOinZp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 18, 2012 at 10:25:18AM -0500, James Abernathy wrote:
> On Wed, Jan 18, 2012 at 10:15 AM, William Mills <wmills@ti.com> wrote:
>=20
> >
> >
> > On 01/18/2012 10:04 AM, James Abernathy wrote:
> >
> >>
> >>
> >> ---------- Forwarded message ----------
> >> From: *William Mills* <wmills@ti.com <mailto:wmills@ti.com>>
> >> Date: Wed, Jan 18, 2012 at 9:57 AM
> >> Subject: Re: [yocto] build failure on ubuntu 64bits development system
> >> To: Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>>
> >> Cc: yocto@yoctoproject.org <mailto:yocto@yoctoproject.org**>
> >>
> >>
> >>
> >>
> >> On 01/18/2012 09:51 AM, Gary Thomas wrote:
> >>
> >>    On 2012-01-18 07 <tel:2012-01-18%2007>:42, James Abernathy wrote:
> >>
> >>
> >>
> >>        On Wed, Jan 18, 2012 at 9:30 AM, James Abernathy
> >>        <jfabernathy@gmail.com <mailto:jfabernathy@gmail.com>
> >>        <mailto:jfabernathy@gmail.com <mailto:jfabernathy@gmail.com>**>=
__>
> >>
> >>        wrote:
> >>
> >>
> >>
> >>        On Wed, Jan 18, 2012 at 7:55 AM, James Abernathy
> >>        <jfabernathy@gmail.com <mailto:jfabernathy@gmail.com>
> >>        <mailto:jfabernathy@gmail.com <mailto:jfabernathy@gmail.com>**>=
__>
> >>
> >>        wrote:
> >>
> >>        I just built a new development pc and installed Ubuntu 11.10
> >>        x64. I wonder if there are any new requirements to building
> >>        Yocto in that environment? I got an error right
> >>        off, but then it complete the first 63 task and stopped
> >>        successfully. error below:
> >>
> >>        jim@ubuntu:~/poky/build-cdv$ bitbake core-image-sato
> >>        Pseudo is not present but is required, building this first
> >>        before the main build
> >>        Parsing recipes: 100%
> >>        |#############################**__####################| Time:
> >> 00:00:25
> >>
> >>        Parsing of 797 .bb files complete (0 cached, 797 parsed). 1037
> >>        targets, 22 skipped, 0 masked, 0 errors.
> >>        ERROR: Execution of event handler 'run_buildstats' failed
> >>        Traceback (most recent call last):
> >>        File "run_buildstats(e)", line 18, in
> >>        run_buildstats(e=3D<bb.event.__**BuildStarted object at 0x4c338=
d0>)
> >>
> >>        File "buildstats.bbclass", line 21, in
> >>        set_device(e=3D<bb.event.__**BuildStarted object at 0x4c338d0>)
> >>
> >>        UnboundLocalError: local variable 'rdev' referenced before
> >>        assignment
> >>
> >>
> >>        Any ideas?
> >>
> >>        JIm A
> >>
> >>
> >>        I went back and tried using the tarballs for poky edison and
> >>        cedartrail bsp and the errors don't occur. So I'm guessing the
> >>        issue isn't related to Ubuntu 32 vs. 64 bit.
> >>
> >>
> >>        I spoke too soon. Same error in edison tarballs. I looked at the
> >>        code and I can see an place were rdev could go un assigned. If
> >>        you fell out of the for loop without passing any of
> >>        the if conditions, rdev would be unassigned. That must be what
> >>        is happening in Ubuntu 11.10 x64
> >>
> >>        Anybody building with Ubuntu 11.10 x64? This doesn't happen on =
x32
> >>
> >>        Jim A
> >>
> >>
> >>        def set_device(e):
> >>        tmpdir =3D bb.data.getVar('TMPDIR', e.data, True)
> >>        try:
> >>        os.remove(bb.data.getVar('__**DEVFILE', e.data, True))
> >>        except:
> >>        pass
> >>        ##############################**__############################**
> >> ##__################
> >>
> >>        # We look for the volume TMPDIR lives on. To do all disks would
> >>        make little
> >>        # sense and not give us any particularly useful data. In theory
> >>        we could do
> >>        # something like stick DL_DIR on a different partition and this
> >>        would
> >>        # throw stats gathering off. The same goes with SSTATE_DIR.
> >>        However, let's
> >>        # get the basics in here and work on the cornercases later.
> >>        ##############################**__############################**
> >> ##__################
> >>        device=3Dos.stat(tmpdir)
> >>        majordev=3Dos.major(device.st___**dev)
> >>        minordev=3Dos.minor(device.st___**dev)
> >>
> >>        for line in open("/proc/diskstats", "r"):
> >>        if majordev =3D=3D int(line.split()[0]) and minordev =3D=3D
> >>        int(line.split()[1]):
> >>        rdev=3Dline.split()[2]
> >>        file =3D open(bb.data.getVar('DEVFILE', e.data, True), "w")
> >>        file.write(rdev)
> >>        file.close()
> >>
> >>
> >>    Can you show what the differences are between /proc/diskstats
> >>    on the two systems? That's obviously what's causing the error.
> >>
> >>
> >> If your build dir is encyptfs or a fuse device or anything that is not=
 a
> >> direct block device you will get this error. This is to be fixed in
> >> 1.1.1 but encyptfs will still have other problems.
> >>
> >> I build the Ubuntu 11.10 x64 system with 2 drives setup as Soft RAID 0.
> >> I picked btrfs as the file system for no particular reason. Should I go
> >> back to ext4 or is RAID 0 the problem?
> >>
> >
> > No, I would not do that yet.  I would think software RAID would present=
 a
> > block device so would not trigger this error.
> >
> > I was hoping to use RAID 0 for speed. I have a I7 2700K on a DZ68DB wit=
h 2
> 6Gb/s ports matched to 2 6Gb/s 7200 hard drives.  Since the builds take so
> long, I was looking for an edge.
>=20
> So are there any recommendations at this point?  I'm assuming that the
> default ext4 directly on the SATA drive is a fall back position.

FWIW: I'm using sw (mdadm) RAID0 (3 SATA2 drivers) for WORKDIR without any =
issues.

Cheers,

>=20
> Advice?
>=20
> Jim A
>=20
>=20
> > >  9       0 md0 133691 0 2218832 0 67133 0 5629616 0 0 0 0
> > >   9       1 md1 235 0 1880 0 0 0 0 0 0 0 0
> >
> > Your build dir is in md0 or md1 (wrt your other post)
> >
> >
> >> JIm A
> >>
> >> ______________________________**___________________
> >> yocto mailing list
> >> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org**>
> >> https://lists.yoctoproject.__**org/listinfo/yocto
> >> <https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctopr=
oject.org/listinfo/yocto>
> >> >
> >>
> >>
> >>
> >>
> >> ______________________________**_________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctopro=
ject.org/listinfo/yocto>
> >>
> >

> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--17pEHd4RhPHOinZp
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.18 (GNU/Linux)

iEYEARECAAYFAk8W5c4ACgkQN1Ujt2V2gByyywCgq02WSQestCzlL4XjfBVPSrbt
VmkAn0rs6Gg2/wSopdl5C1vqs86Ftsgu
=SiaL
-----END PGP SIGNATURE-----

--17pEHd4RhPHOinZp--
