Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.3532.1576071682953705927
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Dec 2019 05:41:23 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: deserted.net, ip: 140.211.169.56, mailfrom: joe@deserted.net)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 504A4E01149; Wed, 11 Dec 2019 05:41:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/,
	*      medium trust
	*      [68.232.137.252 listed in list.dnswl.org]
Received: from esa4.mentor.iphmx.com (esa4.mentor.iphmx.com [68.232.137.252])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25628E00F6F
	for <yocto@yoctoproject.org>; Wed, 11 Dec 2019 05:41:20 -0800 (PST)
IronPort-SDR: Uw5IivVa0zWN91psHaRKYR6qr3kvPb9Wray8QWvKsTK7nsKOicBAaEtSuxVDZIgpII3874vMqV
 udf0ptQpYWS+OzjKGlm6DrF2imnlksSeoVzpNGNkvXUgRi9LZOLh2b9BMNrfWBTNGkrqr8RyBK
 bRVY4LXlRFUBRhkReZ4266V2bU8vEjroG+SjbMRzg1lcTKcgSSKsAuiM2U7RQ7WcYqrZ/DW1bI
 KDcwK1Dl/JKnRFyPq4yfEthFezSCN0lGziZNYiiRcX5G0IrCdqKi6aL8Xk3k43AJAFQ05xHejY
 dIk=
X-IronPort-AV: E=Sophos;i="5.69,301,1571731200"; 
   d="asc'?scan'208";a="44038520"
Received: from orw-gwy-01-in.mentorg.com ([192.94.38.165])
  by esa4.mentor.iphmx.com with ESMTP; 11 Dec 2019 05:41:19 -0800
IronPort-SDR: NX5pl9QdKkiCEUFQn0FVLrN7iwk8dg3996n7y4vLFmhJ+DwppScm5cR6bfcPZ/ccAYEWhkOAoE
 Q7aqBnqDkRWh3pYU9v7bZuNv9fx8IIsnuYXLpGshMEB8qnkvK2tUFz1Xahq7xKWZF3+3CksyJr
 SksSiMadL9bwBEDymYCwaT8EZqIhuUTHdFepLjTtKbLE2uiX4DYQ/Bfv1CG2ZaDQ6Gi7V96CHy
 gh2i0uf2S/CcyE9BrC1HTkiNXG8EBGmLdqsFqTjveF8jngahUZkYgFMXa02blEXQ7Rt4Tyxbm0
 /bg=
Date: Wed, 11 Dec 2019 08:41:15 -0500
From: "Joe MacDonald" <joe@deserted.net>
To: <peter.morrow@microsoft.com>
CC: "yi.zhao@windriver.com" <yi.zhao@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] [meta-selinux] Dependency loop help with selinux userspace/python3/util-linux
Message-ID: <20191211134112.GA25548@deserted.net>
References: <e95481c9b63c68e8545662310bf6cbd2f4bd6f71.camel@microsoft.com>
 <52cc753c-0a76-88c1-f65c-eb15ce6a4475@windriver.com>
 <4ebd6f6e2b7b514cb9b075897ae21f8f32be8db7.camel@microsoft.com>
MIME-Version: 1.0
In-Reply-To: <4ebd6f6e2b7b514cb9b075897ae21f8f32be8db7.camel@microsoft.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Groupsio-MsgNum: 47632
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="VbJkn9YxBvnuCH5J"
Content-Disposition: inline

--VbJkn9YxBvnuCH5J
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[Re: [yocto] [meta-selinux] Dependency loop help with selinux userspace/pyt=
hon3/util-linux] On 19.12.11 (Wed 09:21) Peter Morrow via Lists.Yoctoprojec=
t.Org wrote:

> On Wed, 2019-12-11 at 10:18 +0800, Yi Zhao via Lists.Yoctoproject.Org
> wrote:
> >=20
> >=20
> > On 12/5/19 9:46 PM, Peter Morrow via Lists.Yoctoproject.Org wrote:
> >=20
> > > Hi Folks,
> > >=20
> > > I'm trying to upgrade the meta-selinux layer to use a newer version
> > > of
> > > the selinux userspace tools (from 2.8 to 2.9), in doing so these
> > > newer
> > > userspace tools now depend on python3 instead of python2.  This
> > > unfortunately has created a build time dependency loop in yocto:
> > >=20
> > > python3 --> util-linux --> libselinux --> python3 (used to be
> > > python2
> > > with 2.8 selinux userspace).
> >=20
> >=20
> > Hi Peter,
> > I had sent a series patches to update selinux usersapce tools from
> > 2.8 ot 2.9:=20
> > https://www.yoctoproject.org/pipermail/yocto/2019-November/047329.html
> > After switch to python3, there is a loop dependency error with
> > libselinux-python package when build libselinux. So I split the
> > original libselinux recipe into  libselinux and libselinux-python.
> > You can refer my patchset.
>=20
> Hi Yi,
>=20
> Great!  Is there anything stopping these patches being merged?

No, no issue as far as I can tell, I'm preparing another merge to master
in the next couple of days.  This includes Yi's patches, my update
refpolicy purge feature and a few other things currently pending on the
list from the last few weeks.

-J.

> Thanks,
> Peter.
>=20
>=20
> >=20
> >=20
> > //Yi
> >=20
> >=20
> > > Running "bitbake libselinux" results in a pile of loops, the one
> > > below
> > > illustrates the point.
> > >=20
> > > ERROR:
> > > Dependency loop #1 found:
> > >   Task /workspace/git/yocto-selinux/meta-selinux/recipes-
> > > security/selinux/libselinux_2.9.bb:do_package (dependent Tasks
> > > ['gcc-
> > > runtime_9.2.bb:do_packagedata', 'libsepol_2.9.bb:do_packagedata',
> > > 'rpm_4.14.2.1.bb:do_populate_sysroot',
> > > 'glibc_2.30.bb:do_packagedata',
> > > 'python3_3.7.5.bb:do_packagedata',
> > > 'libpcre_8.43.bb:do_packagedata',
> > > 'pseudo_git.bb:do_populate_sysroot',
> > > 'dwarfsrcfiles.bb:do_populate_sysroot',
> > > 'libselinux_2.9.bb:do_install'])
> > >   Task /workspace/git/yocto-selinux/meta-selinux/recipes-
> > > security/selinux/libselinux_2.9.bb:do_packagedata (dependent Tasks
> > > ['libselinux_2.9.bb:do_package'])
> > >   Task /workspace/git/yocto-selinux/poky/meta/recipes-
> > > extended/pam/libpam_1.3.1.bb:do_package (dependent Tasks ['gcc-
> > > runtime_9.2.bb:do_packagedata',
> > > 'rpm_4.14.2.1.bb:do_populate_sysroot',
> > > 'glibc_2.30.bb:do_packagedata', 'libselinux_2.9.bb:do_packagedata',
> > > 'flex_2.6.0.bb:do_packagedata',
> > > 'pseudo_git.bb:do_populate_sysroot',
> > > 'libxcrypt_4.4.8.bb:do_packagedata', 'libpam_1.3.1.bb:do_install',
> > > 'dwarfsrcfiles.bb:do_populate_sysroot',
> > > 'cracklib_2.9.5.bb:do_packagedata', 'libtool-
> > > cross_2.4.6.bb:do_packagedata'])
> > >   Task /workspace/git/yocto-selinux/poky/meta/recipes-
> > > extended/pam/libpam_1.3.1.bb:do_packagedata (dependent Tasks
> > > ['libpam_1.3.1.bb:do_package'])
> > >   Task /workspace/git/yocto-selinux/poky/meta/recipes-core/util-
> > > linux/util-linux_2.34.bb:do_package (dependent Tasks ['gcc-
> > > runtime_9.2.bb:do_packagedata',
> > > 'rpm_4.14.2.1.bb:do_populate_sysroot',
> > > 'bash-completion_2.9.bb:do_packagedata',
> > > 'zlib_1.2.11.bb:do_packagedata', 'glibc_2.30.bb:do_packagedata',
> > > 'libselinux_2.9.bb:do_packagedata',
> > > 'pseudo_git.bb:do_populate_sysroot',
> > > 'ncurses_6.1+20190803.bb:do_packagedata',
> > > 'libxcrypt_4.4.8.bb:do_packagedata', 'libcap-
> > > ng_0.7.9.bb:do_packagedata', 'opkg-utils_0.4.1.bb:do_packagedata',
> > > 'libpam_1.3.1.bb:do_packagedata', 'util-
> > > linux_2.34.bb:do_install_ptest_base',
> > > 'dwarfsrcfiles.bb:do_populate_sysroot', 'util-
> > > linux_2.34.bb:do_install', 'libtool-
> > > cross_2.4.6.bb:do_packagedata'])
> > >   Task /workspace/git/yocto-selinux/poky/meta/recipes-core/util-
> > > linux/util-linux_2.34.bb:do_packagedata (dependent Tasks ['util-
> > > linux_2.34.bb:do_package'])
> > >   Task /workspace/git/yocto-selinux/poky/meta/recipes-
> > > devtools/python/python3_3.7.5.bb:do_package (dependent Tasks
> > > ['xz_5.2.4.bb:do_packagedata', 'bzip2_1.0.8.bb:do_packagedata',
> > > 'gdbm_1.18.1.bb:do_packagedata', 'libnsl2_git.bb:do_packagedata',
> > > 'gcc-
> > > runtime_9.2.bb:do_packagedata',
> > > 'rpm_4.14.2.1.bb:do_populate_sysroot',
> > > 'python3_3.7.5.bb:do_install', 'libffi_3.3~rc0.bb:do_packagedata',
> > > 'pseudo_git.bb:do_populate_sysroot',
> > > 'sqlite3_3.29.0.bb:do_packagedata',
> > > 'openssl_1.1.1d.bb:do_packagedata',
> > > 'libtirpc_1.1.4.bb:do_packagedata',
> > > 'zlib_1.2.11.bb:do_packagedata',
> > > 'glibc_2.30.bb:do_packagedata',
> > > 'libxcrypt_4.4.8.bb:do_packagedata',
> > > 'python3_3.7.5.bb:do_install_ptest_base', 'util-
> > > linux_2.34.bb:do_packagedata', 'opkg-
> > > utils_0.4.1.bb:do_packagedata',
> > > 'readline_8.0.bb:do_packagedata',
> > > 'dwarfsrcfiles.bb:do_populate_sysroot', 'libtool-
> > > cross_2.4.6.bb:do_packagedata'])
> > >   Task /workspace/git/yocto-selinux/poky/meta/recipes-
> > > devtools/python/python3_3.7.5.bb:do_packagedata (dependent Tasks
> > > ['python3_3.7.5.bb:do_package'])
> > >=20
> > > Python3 (3.7.5) appears to depend on util-linux for libuuid
> > > support, so
> > > I don't think anything can be done with regards to
> > > this.  libselinux
> > > now depends on python3 as of 2.9, so again not much can be done
> > > here.=20
> > > It's proving a bit harder to track down the util-linux dependency
> > > on
> > > libselinux but I believe this is a hard depdency as well.
> > >=20
> > > I'm using the master branch of both poky and meta-selinux for
> > > testing,
> > > my local.conf file has the following to enable testing:
> > >=20
> > > DISTRO_FEATURES_append=3D" acl xattr pam selinux"
> > >=20
> > > The crux of the libselinux recipe change is really just changing
> > > the
> > > python2 deps over to python3 ones in meta-selinux/recipes-
> > > security/selinux/libselinux.inc.
> > >=20
> > > At this point I'd be trying to look for places where recipes can be
> > > split out to remove the loop, but nothing jumps out at me.
> > >=20
> > > Can anyone offer any advice or pointers on how to get around
> > > this?  Or
> > > am I just stuffed?
> > >=20
> > > Many Thanks,
> > > Peter.
> > >=20
> > >=20
> > >=20
> > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > > Links: You receive all messages sent to this group.
> > >=20
> > > View/Reply Online (#47570):=20
> > > https://lists.yoctoproject.org/g/yocto/message/47570
> > >=20
> > > Mute This Topic:=20
> > > https://lists.yoctoproject.org/mt/66953299/3616783
> > >=20
> > > Group Owner:=20
> > > yocto+owner@lists.yoctoproject.org
> > >=20
> > > Unsubscribe:=20
> > > https://lists.yoctoproject.org/g/yocto/unsub
> > >   [
> > > yi.zhao@windriver.com
> > > ]
> > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >=20
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> >=20
> > View/Reply Online (#47623):=20
> > https://nam06.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flis=
ts.yoctoproject.org%2Fg%2Fyocto%2Fmessage%2F47623&amp;data=3D02%7C01%7Cpete=
r.morrow%40microsoft.com%7Cf3b2a9c85ae945b3a0e008d77de064c2%7C72f988bf86f14=
1af91ab2d7cd011db47%7C1%7C0%7C637116275033359425&amp;sdata=3DtI784Zq%2BnoD%=
2BGVMjaWOfjRkqo5pJMN74RGfK4k9tQLI%3D&amp;reserved=3D0
> >=20
> > Mute This Topic:=20
> > https://nam06.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flis=
ts.yoctoproject.org%2Fmt%2F66953299%2F3618499&amp;data=3D02%7C01%7Cpeter.mo=
rrow%40microsoft.com%7Cf3b2a9c85ae945b3a0e008d77de064c2%7C72f988bf86f141af9=
1ab2d7cd011db47%7C1%7C0%7C637116275033359425&amp;sdata=3DIWzv8oKNUERzRgWWwR=
aBkh7fWwrQN14KJ1rhR73W484%3D&amp;reserved=3D0
> >=20
> > Group Owner:=20
> > yocto+owner@lists.yoctoproject.org
> >=20
> > Unsubscribe:=20
> > https://nam06.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flis=
ts.yoctoproject.org%2Fg%2Fyocto%2Funsub&amp;data=3D02%7C01%7Cpeter.morrow%4=
0microsoft.com%7Cf3b2a9c85ae945b3a0e008d77de064c2%7C72f988bf86f141af91ab2d7=
cd011db47%7C1%7C0%7C637116275033359425&amp;sdata=3DmA9oeKX5%2Fq8B1WiUP6avWH=
P3%2BBY8OFcEHV%2BfqaJmClo%3D&amp;reserved=3D0
> >   [
> > peter.morrow@microsoft.com
> > ]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >=20
>=20

> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
>=20
> View/Reply Online (#47629): https://lists.yoctoproject.org/g/yocto/messag=
e/47629
> Mute This Topic: https://lists.yoctoproject.org/mt/66953299/1150288
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [joe@deserted.=
net]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-


--=20
-Joe MacDonald.
:wq

--VbJkn9YxBvnuCH5J
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRjqRhJknEwCqrWVXzAW9yWWiDRfAUCXfDx6wAKCRDAW9yWWiDR
fKYTAJ93t7ll4i8tZOb1Q6gizDjP4VShAACfZLpBVelv4xWZcnFXAo0wMyvTMZk=
=2uGo
-----END PGP SIGNATURE-----

--VbJkn9YxBvnuCH5J--
