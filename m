Return-Path: <joe@deserted.net>
Received: from mail-ie0-f169.google.com (mail-ie0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8756E007D6
	for <yocto@yoctoproject.org>; Thu, 13 Feb 2014 07:49:17 -0800 (PST)
Received: by mail-ie0-f169.google.com with SMTP id to1so6609684ieb.14
	for <yocto@yoctoproject.org>; Thu, 13 Feb 2014 07:49:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=nk8TuRbN25HaD3zGwXUCgsbqjT1Xb/CDtefdJYn41eM=;
	b=gMVo42Ar4igvfA8zEqQefTsDQO1tM9L0dCGrL0DKqlCZro9pnXOfjuWYD6fp/9kO71
	xCm1lNmlEqr9sGpoWeeSc/WXZnp2raXqJEHbymmZhX4xcD65uDBYfoW7FZLmsJN5k292
	1sYdH0Vsi1p74qR3il5aS2yXKpszkwr+ziVHRbzhqe/pVj3hiBA/wsRVaoVIshaBCp17
	xNGZaYILTxJMPnsFHylEs00fOzG6+etxsBBnBY1+UrMRB+pIFxtleSOWRnCuzLluv55t
	h8l1R9I4bS2yFzF2XTOhmS4j5Xg2nX92/h+KaS1UUZllV7VTGCEp4S2kHM7WrD/6CmfB
	Vawg==
X-Gm-Message-State: ALoCoQlMbkGJBYH6lFEWRThGUWhWqKgKOQp2lzLRtdni8iCmWvp1Rg3JpYpC3XXvi4ij0QgUJTq2
X-Received: by 10.43.143.211 with SMTP id jn19mr1672532icc.0.1392306556546;
	Thu, 13 Feb 2014 07:49:16 -0800 (PST)
Received: from deserted.net (24-246-4-250.cable.teksavvy.com. [24.246.4.250])
	by mx.google.com with ESMTPSA id m4sm7095507ige.0.2014.02.13.07.49.12
	for <multiple recipients>
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Thu, 13 Feb 2014 07:49:14 -0800 (PST)
Date: Thu, 13 Feb 2014 10:49:10 -0500
From: Joe MacDonald <joe@deserted.net>
To: Pascal Ouyang <xin.ouyang@windriver.com>
Message-ID: <20140213154907.GJ23405@deserted.net>
References: <1391742553-30745-1-git-send-email-flihp@twobit.us>
	<52FA83EF.7000805@windriver.com>
	<20140212011520.GA23405@deserted.net> <52FAE24C.9060902@twobit.us>
	<52FB8BC4.8090001@windriver.com>
	<20140213001802.GB23405@deserted.net>
	<52FC2EFF.3080900@windriver.com>
MIME-Version: 1.0
In-Reply-To: <52FC2EFF.3080900@windriver.com>
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
X-List-Received-Date: Thu, 13 Feb 2014 15:49:20 -0000
X-Groupsio-MsgNum: 18101
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="zPXeIxDajdrcF2en"
Content-Disposition: inline

--zPXeIxDajdrcF2en
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hey Pascal,

[Re: [yocto] [meta-selinux][PATCH 0/4] Begin mingrating bbappends to use wi=
ldcards in place of version numbers.] On 14.02.13 (Thu 10:33) Pascal Ouyang=
 wrote:

> =E4=BA=8E 14-2-13 =E4=B8=8A=E5=8D=888:18, Joe MacDonald =E5=86=99=E9=81=
=93:
> >[Re: [yocto] [meta-selinux][PATCH 0/4] Begin mingrating bbappends to use=
 wildcards in place of version numbers.] On 14.02.12 (Wed 09:57) Randy MacL=
eod wrote:
> >
> >>On 14-02-11 09:54 PM, Philip Tricca wrote:
> >>>On 02/11/2014 08:15 PM, Joe MacDonald wrote:
> >>>>[Re: [yocto] [meta-selinux][PATCH 0/4] Begin mingrating bbappends
> >>>>to use wildcards in place of version numbers.] On 14.02.11 (Tue
> >>>>15:11) Randy MacLeod wrote:
> >>>>
> >>>>>On 14-02-06 10:09 PM, Philip Tricca wrote:
> >>>>>>The current trend in OE recipes seems to use a wildcard in
> >>>>>>place of version numbers for bbappends. AFAIK this is a
> >>>>>>relatively new feature but a welcome one. This is a sort of RFC
> >>>>>>in that I think it's probably best for meta-selinux to use this
> >>>>>>mechanism to keep from having to rename bbappends everytime
> >>>>>>something in oe-core changes. I guess the right way to
> >>>>>>implement this is to change the bbappends in meta-selinux when
> >>>>>>the version numbers change upstream.
> >>
> >>I'm convinced that we should give this a try.
> >>If there are cases where the wildcard bbappend doesn't work, we can
> >>always use explicit versions and add a comment explaining why
> >>the wildcard isn't used.
>=20
> Generally, wildcard bbappends should be applied to config parts to
> enable/disable selinux, such as "inherit enable-selinux".
>=20
> If there are selinux patches(backport, or poky only), we should also
> leave a version bbappend.

Yeah, I completely agree in general.  In the specific cases we've been
looking at so far with Phil's stuff, though, I don't think that's
necessary or particularly desirable.  Take, for example, the libcgroup
change.  That bbappend has been unchanged since it was introduced and
isn't likely to change based on version-specific changes in libcgroup
upstream, so that's definitely a good candidate for a wildcard append.

Without a doubt, though, there will be cases that warrant a
version-specific bbappend.

-J.

>=20
> Thanks all. :)
>=20
> - Pascal
>=20
> >
> >Since this sounds like consensus:
> >
> >git push origin HEAD:master
> >Counting objects: 24, done.
> >Delta compression using up to 4 threads.
> >Compressing objects: 100% (12/12), done.
> >Writing objects: 100% (16/16), 1.55 KiB, done.
> >Total 16 (delta 10), reused 0 (delta 0)
> >To git@git.yoctoproject.org:meta-selinux
> >    1326699..05a0c6c  HEAD -> master
> >
> >
> >:-)
> >
> >Thanks, Phil.
> >
> >-J.
> >
> >>
> >>../ Randy
> >>
> >>>>>>
> >>>>>
> >>>>>Hi Philip,
> >>>>>
> >>>>>This might work out but I'm somewhat attached to the manual
> >>>>>process.
> >>>>
> >>>>It's a change I'd been advocating for quite some time now.
> >>>>(Actually, it was something I was somewhat surprised wasn't
> >>>>possible when I first came to bitbake in general, so at least to me
> >>>>this change seems pretty sensible.)
> >>>>
> >>>>The risks you outline are real, but historically this hasn't shown
> >>>>itself to be a significant problem so far.  The types of things
> >>>>this'll hit on are characterized well in Phil's RFC set.  Stuff
> >>>>like sudo and libcgroup which require bbappends but the contents
> >>>>haven't had any meaningful change since the stone age.  :-)
> >>>>
> >>>>I think this is actually a win for meta-selinux in terms of
> >>>>reducing the number of commits like f0adb425.
> >>>>
> >>>>I've already staged the proposed change in my tree and it seems
> >>>>happy, so I'm inclined to merge it, FWIW.
> >>>
> >>>I appreciate both sides of this being represented. I agree with Joe
> >>>that it's an obvious fit for simple bbappends that require little more
> >>>than --(enable|with)-selinux. The more involved bbappends may be
> >>>better suited to manual version number changes.
> >>>
> >>>If any of the recipes from this set fall into the later category I
> >>>won't object to dropping them and favoring the process manual. But as
> >>>Joe points out, I think this approach is a given for the likes of
> >>>sudo, libcgroup etc.
> >>>
> >>>Thanks,
> >>>Philip
> >>>
> >>>>
> >>>>-J.
> >>>>
> >>>>>Manual matching shows that someone is: - paying attention, -
> >>>>>fixed the bbappend version number, - gotten someone else to
> >>>>>review, - hopefully built the software for at least one arch, -
> >>>>>hopefully tested run-time for at least one arch.
> >>>>>
> >>>>>With a wildcard matching rule, there will be times when the
> >>>>>underlying package has changed and then the recipe changes and
> >>>>>perhaps code patches still apply but are to some extent broken.
> >>>>>Have people accepted this as a possible outcome that they believe
> >>>>>will be rare? Have you tried your approach with a few different
> >>>>>oe-core baselines such as dora, random, master?
> >>>>>
> >>>>>I'm not agaist this change but I'm trying to be sure that people
> >>>>>agree that it's a good approach and that we've tested the idea
> >>>>>with some historical changes.
> >>>>>
> >>>>>Thanks,
> >>>>>
> >>>>>../Randy
> >>>>>
> >>>>>
> >>>>>>Philip Tricca (4): busybox: Use wildcard for version number in
> >>>>>>busybox bbappend. libcgroup: Use wildcard for version number in
> >>>>>>libcgroup bbappend. sudo: Use wildcard for version number in
> >>>>>>sudo bbappend. libxcb: Use wildcard for version number in
> >>>>>>libxcb bbappend.
> >>>>>>
> >>>>>>recipes-core/busybox/busybox_%.bbappend        |   87
> >>>>>>++++++++++++++++++++++++
> >>>>>>recipes-core/busybox/busybox_1.21.1.bbappend   |   87
> >>>>>>------------------------
> >>>>>>recipes-core/libcgroup/libcgroup_%.bbappend    |   12 ++++
> >>>>>>recipes-core/libcgroup/libcgroup_0.38.bbappend |   12 ----
> >>>>>>recipes-extended/sudo/sudo_%.bbappend          |    3 +
> >>>>>>recipes-extended/sudo/sudo_1.8.8.bbappend      |    3 -
> >>>>>>recipes-graphics/xcb/libxcb_%.bbappend         |    8 +++
> >>>>>>recipes-graphics/xcb/libxcb_1.9.3.bbappend     |    8 --- 8
> >>>>>>files changed, 110 insertions(+), 110 deletions(-) create mode
> >>>>>>100644 recipes-core/busybox/busybox_%.bbappend delete mode
> >>>>>>100644 recipes-core/busybox/busybox_1.21.1.bbappend create mode
> >>>>>>100644 recipes-core/libcgroup/libcgroup_%.bbappend delete mode
> >>>>>>100644 recipes-core/libcgroup/libcgroup_0.38.bbappend create
> >>>>>>mode 100644 recipes-extended/sudo/sudo_%.bbappend delete mode
> >>>>>>100644 recipes-extended/sudo/sudo_1.8.8.bbappend create mode
> >>>>>>100644 recipes-graphics/xcb/libxcb_%.bbappend delete mode
> >>>>>>100644 recipes-graphics/xcb/libxcb_1.9.3.bbappend
> >>>>>>
> >>>>>
> >>>>>
> >>>
> >>
> >>
> >>
> >>
> >>_______________________________________________
> >>yocto mailing list
> >>yocto@yoctoproject.org
> >>https://lists.yoctoproject.org/listinfo/yocto
>=20
>=20
--=20
-Joe MacDonald.
:wq

--zPXeIxDajdrcF2en
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEARECAAYFAlL86XMACgkQwFvcllog0XzOiACfUO1jGxrOmrj0+NNzBBJCIdS3
1JYAniAKBo7+5TxaRe1w2uGUupPnvKxE
=6TJD
-----END PGP SIGNATURE-----

--zPXeIxDajdrcF2en--
