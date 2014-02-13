Return-Path: <joe@deserted.net>
Received: from mail-ie0-f177.google.com (mail-ie0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B23EE0078A
	for <yocto@yoctoproject.org>; Wed, 12 Feb 2014 16:18:10 -0800 (PST)
Received: by mail-ie0-f177.google.com with SMTP id rp18so1224977iec.8
	for <yocto@yoctoproject.org>; Wed, 12 Feb 2014 16:18:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=nAs2xb4SszbpRmSD4XDPw0L7URVMmWWTs6lxYshwpLg=;
	b=liSh/2p9SCJL4o/M8bDsMw55Aoxi4PvUdCjzqaM3/JHOc+y15Xq0+Wbapt/xs8ccXK
	Zif/Q3nh+FVs1v/EpXuuTBFlQLvLZrE0ZA73hYlHn2LpVuVeXpHWwj9ac+6lI8O34LKq
	fykr8FHyRAw35jBEh18ZLajuDqbwHHAp3qvA43igC1qd6l2CgtSVyUQqjneOvGm8fU9k
	7QlkCijTllV5C9nSk2x8XOnJW9OdecDsnW7cDWzypU583fcQJFUyva8d0AjvCWX+ujJL
	rSlQWlrphFXEHDRselVs/uf3zsOQZpO5dMh2mfJVw8Nxcd+Yp9ecW4C7nikadZcNkCJN
	TE1g==
X-Gm-Message-State: ALoCoQlVwWIVnUdOrPrWETkbTqkptXGeG+73PDMgaPiAOFfDUpuown8Ju/H4wbdgmBmOawEJUqRF
X-Received: by 10.50.43.138 with SMTP id w10mr455791igl.33.1392250689841;
	Wed, 12 Feb 2014 16:18:09 -0800 (PST)
Received: from deserted.net (24-246-4-250.cable.teksavvy.com. [24.246.4.250])
	by mx.google.com with ESMTPSA id
	rj10sm2294259igc.8.2014.02.12.16.18.07 for <multiple recipients>
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Wed, 12 Feb 2014 16:18:08 -0800 (PST)
Date: Wed, 12 Feb 2014 19:18:05 -0500
From: Joe MacDonald <joe@deserted.net>
To: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <20140213001802.GB23405@deserted.net>
References: <1391742553-30745-1-git-send-email-flihp@twobit.us>
	<52FA83EF.7000805@windriver.com>
	<20140212011520.GA23405@deserted.net> <52FAE24C.9060902@twobit.us>
	<52FB8BC4.8090001@windriver.com>
MIME-Version: 1.0
In-Reply-To: <52FB8BC4.8090001@windriver.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-703 http://www.vim.org
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH 0/4] Begin mingrating bbappends to use wildcards in place of version numbers.
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
X-List-Received-Date: Thu, 13 Feb 2014 00:18:18 -0000
X-Groupsio-MsgNum: 18081
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="raC6veAxrt5nqIoY"
Content-Disposition: inline

--raC6veAxrt5nqIoY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[Re: [yocto] [meta-selinux][PATCH 0/4] Begin mingrating bbappends to use wi=
ldcards in place of version numbers.] On 14.02.12 (Wed 09:57) Randy MacLeod=
 wrote:

> On 14-02-11 09:54 PM, Philip Tricca wrote:
> >On 02/11/2014 08:15 PM, Joe MacDonald wrote:
> >>[Re: [yocto] [meta-selinux][PATCH 0/4] Begin mingrating bbappends
> >>to use wildcards in place of version numbers.] On 14.02.11 (Tue
> >>15:11) Randy MacLeod wrote:
> >>
> >>>On 14-02-06 10:09 PM, Philip Tricca wrote:
> >>>>The current trend in OE recipes seems to use a wildcard in
> >>>>place of version numbers for bbappends. AFAIK this is a
> >>>>relatively new feature but a welcome one. This is a sort of RFC
> >>>>in that I think it's probably best for meta-selinux to use this
> >>>>mechanism to keep from having to rename bbappends everytime
> >>>>something in oe-core changes. I guess the right way to
> >>>>implement this is to change the bbappends in meta-selinux when
> >>>>the version numbers change upstream.
>=20
> I'm convinced that we should give this a try.
> If there are cases where the wildcard bbappend doesn't work, we can
> always use explicit versions and add a comment explaining why
> the wildcard isn't used.

Since this sounds like consensus:

git push origin HEAD:master  =20
Counting objects: 24, done.
Delta compression using up to 4 threads.
Compressing objects: 100% (12/12), done.
Writing objects: 100% (16/16), 1.55 KiB, done.
Total 16 (delta 10), reused 0 (delta 0)
To git@git.yoctoproject.org:meta-selinux
   1326699..05a0c6c  HEAD -> master


:-)

Thanks, Phil.

-J.

>=20
> ../ Randy
>=20
> >>>>
> >>>
> >>>Hi Philip,
> >>>
> >>>This might work out but I'm somewhat attached to the manual
> >>>process.
> >>
> >>It's a change I'd been advocating for quite some time now.
> >>(Actually, it was something I was somewhat surprised wasn't
> >>possible when I first came to bitbake in general, so at least to me
> >>this change seems pretty sensible.)
> >>
> >>The risks you outline are real, but historically this hasn't shown
> >>itself to be a significant problem so far.  The types of things
> >>this'll hit on are characterized well in Phil's RFC set.  Stuff
> >>like sudo and libcgroup which require bbappends but the contents
> >>haven't had any meaningful change since the stone age.  :-)
> >>
> >>I think this is actually a win for meta-selinux in terms of
> >>reducing the number of commits like f0adb425.
> >>
> >>I've already staged the proposed change in my tree and it seems
> >>happy, so I'm inclined to merge it, FWIW.
> >
> >I appreciate both sides of this being represented. I agree with Joe
> >that it's an obvious fit for simple bbappends that require little more
> >than --(enable|with)-selinux. The more involved bbappends may be
> >better suited to manual version number changes.
> >
> >If any of the recipes from this set fall into the later category I
> >won't object to dropping them and favoring the process manual. But as
> >Joe points out, I think this approach is a given for the likes of
> >sudo, libcgroup etc.
> >
> >Thanks,
> >Philip
> >
> >>
> >>-J.
> >>
> >>>Manual matching shows that someone is: - paying attention, -
> >>>fixed the bbappend version number, - gotten someone else to
> >>>review, - hopefully built the software for at least one arch, -
> >>>hopefully tested run-time for at least one arch.
> >>>
> >>>With a wildcard matching rule, there will be times when the
> >>>underlying package has changed and then the recipe changes and
> >>>perhaps code patches still apply but are to some extent broken.
> >>>Have people accepted this as a possible outcome that they believe
> >>>will be rare? Have you tried your approach with a few different
> >>>oe-core baselines such as dora, random, master?
> >>>
> >>>I'm not agaist this change but I'm trying to be sure that people
> >>>agree that it's a good approach and that we've tested the idea
> >>>with some historical changes.
> >>>
> >>>Thanks,
> >>>
> >>>../Randy
> >>>
> >>>
> >>>>Philip Tricca (4): busybox: Use wildcard for version number in
> >>>>busybox bbappend. libcgroup: Use wildcard for version number in
> >>>>libcgroup bbappend. sudo: Use wildcard for version number in
> >>>>sudo bbappend. libxcb: Use wildcard for version number in
> >>>>libxcb bbappend.
> >>>>
> >>>>recipes-core/busybox/busybox_%.bbappend        |   87
> >>>>++++++++++++++++++++++++
> >>>>recipes-core/busybox/busybox_1.21.1.bbappend   |   87
> >>>>------------------------
> >>>>recipes-core/libcgroup/libcgroup_%.bbappend    |   12 ++++
> >>>>recipes-core/libcgroup/libcgroup_0.38.bbappend |   12 ----
> >>>>recipes-extended/sudo/sudo_%.bbappend          |    3 +
> >>>>recipes-extended/sudo/sudo_1.8.8.bbappend      |    3 -
> >>>>recipes-graphics/xcb/libxcb_%.bbappend         |    8 +++
> >>>>recipes-graphics/xcb/libxcb_1.9.3.bbappend     |    8 --- 8
> >>>>files changed, 110 insertions(+), 110 deletions(-) create mode
> >>>>100644 recipes-core/busybox/busybox_%.bbappend delete mode
> >>>>100644 recipes-core/busybox/busybox_1.21.1.bbappend create mode
> >>>>100644 recipes-core/libcgroup/libcgroup_%.bbappend delete mode
> >>>>100644 recipes-core/libcgroup/libcgroup_0.38.bbappend create
> >>>>mode 100644 recipes-extended/sudo/sudo_%.bbappend delete mode
> >>>>100644 recipes-extended/sudo/sudo_1.8.8.bbappend create mode
> >>>>100644 recipes-graphics/xcb/libxcb_%.bbappend delete mode
> >>>>100644 recipes-graphics/xcb/libxcb_1.9.3.bbappend
> >>>>
> >>>
> >>>
> >
>=20
>=20
--=20
-Joe MacDonald.
:wq

--raC6veAxrt5nqIoY
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEARECAAYFAlL8DzoACgkQwFvcllog0Xw1bgCfaaHR6U0cy4zI7/sx4xz0DhBd
zVwAoIn1UpoQiAFARKlWAtJmDLyoPghP
=cvjD
-----END PGP SIGNATURE-----

--raC6veAxrt5nqIoY--
