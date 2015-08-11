Return-Path: <Joe_MacDonald@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8FDD7E00A9A; Tue, 11 Aug 2015 06:38:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [192.94.38.131 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A63EEE00A92
	for <yocto@yoctoproject.org>; Tue, 11 Aug 2015 06:38:28 -0700 (PDT)
Received: from svr-orw-fem-03.mgc.mentorg.com ([147.34.97.39])
	by relay1.mentorg.com with esmtp 
	id 1ZP9l5-0003k2-Rv from Joe_MacDonald@mentor.com ;
	Tue, 11 Aug 2015 06:38:27 -0700
Received: from burninator (147.34.91.1) by svr-orw-fem-03.mgc.mentorg.com
	(147.34.97.39) with Microsoft SMTP Server id 14.3.224.2;
	Tue, 11 Aug 2015 06:38:27 -0700
Received: by burninator (Postfix, from userid 1000)	id 097405832A5; Tue, 11
	Aug 2015 09:37:45 -0400 (EDT)
Date: Tue, 11 Aug 2015 09:37:45 -0400
From: Joe MacDonald <Joe_MacDonald@mentor.com>
To: Shrikant Bobade <bobadeshrikant@gmail.com>
Message-ID: <20150811133745.GE4802@mentor.com>
References: <1438248304-7884-1-git-send-email-bobadeshrikant@gmail.com>
	<CALwQErr1fTKQ=Nc8OXJ0m-itC-NzoNz5bsc4R6gsCN3cJC9ciw@mail.gmail.com>
	<55C983A2.4050002@twobit.us>
	<CALwQErqbQWUmMP0b=+tXhMd--ETNRMsrZzuiBVbg4XUxnRoyPA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CALwQErqbQWUmMP0b=+tXhMd--ETNRMsrZzuiBVbg4XUxnRoyPA@mail.gmail.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-704 http://www.vim.org
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org, Shrikant Bobade <shrikant_bobade@mentor.com>
Subject: Re: [meta-selinux][PATCH v1] libpam: use wildcard for version and cleanup
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
X-List-Received-Date: Tue, 11 Aug 2015 13:38:32 -0000
X-Groupsio-MsgNum: 26027
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="pY3vCvL1qV+PayAL"
Content-Disposition: inline

--pY3vCvL1qV+PayAL
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[Re: [yocto] [meta-selinux][PATCH v1] libpam: use wildcard for version and =
cleanup] On 15.08.11 (Tue 16:39) Shrikant Bobade wrote:

> Hi Philip,
>=20
>=20
> On Tue, Aug 11, 2015 at 10:39 AM, Philip Tricca <flihp@twobit.us> wrote:
>=20
>     Hey Shrikant,
>   =20
>     On 07/30/2015 02:31 AM, Shrikant Bobade wrote:
>     > This patch provides green build for core-image-selinux
>     > (meta-selinux:master & poky:master) against libpam upgrade from 1.1=
=2E6 to
>     > 1.2.1,
>     > image boots fine,but I am unable to login at target. I have prepared
>     > build for qemuarm, does anyone else facing similar issue? please ad=
vice.
>     >
>     > Observed the login issue appears even with disabled selinux support
>     > (selinux=3D0).
>=20
>     I just tested this again after Joe merged the commits from the backlo=
g.
>     I'm not longer able to reproduce the failed login. Are you still havi=
ng
>     login problems?
>=20
>=20
> I also got similar results:
> With the check on latest bits: the login issue is not reproducible on
> core-image-selinux(with poky-selinux distro)
> I can now login properly.

I'm glad to hear that, guys, because I wasn't able to reproduce the
login problem on my setup and was thinking I needed to spend time in the
next couple of days hunting down what's polluting my environment that I
was getting different results than you.  :-)  This is a nice treat.

-J.

>=20
>=20
> Build Configuration:
> BB_VERSION        =3D "1.27.1"
> BUILD_SYS         =3D "x86_64-linux"
> NATIVELSBSTRING   =3D "Ubuntu-12.04"
> TARGET_SYS        =3D "arm-poky-linux-gnueabi"
> MACHINE           =3D "qemuarm"
> DISTRO            =3D "poky-selinux"
> DISTRO_VERSION    =3D "1.8+snapshot-20150811"
> TUNE_FEATURES     =3D "arm armv5 thumb dsp"
> TARGET_FPU        =3D "soft"
> meta            =20
> meta-yocto      =20
> meta-yocto-bsp    =3D "master:a16e0b4014173af46ef80d643bb71055219b0dab"
> meta-selinux      =3D "master:684ee9401f33db7c9d5b183988d89c688c9dd0be"
>=20
> Thanks!
> Shrikant
>=20
>=20
>=20
>=20
>     Philip
>   =20
>     > On Thu, Jul 30, 2015 at 2:55 PM, Shrikant Bobade
>     > <bobadeshrikant@gmail.com <mailto:bobadeshrikant@gmail.com>> wrote:
>     >
>     >     From: Shrikant Bobade <shrikant_bobade@mentor.com
>     >     <mailto:shrikant_bobade@mentor.com>>
>     >
>     >     use wildcard for version: adopting libpam upgrade from 1.1.6 to
>     1.2.1,
>     >     cleanup older recipe and remove patch
>     sepermit-add-DESTDIR-prefix.patch
>     >     since the changes already available with latest source.
>     >
>     >     Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com
>     >     <mailto:shrikant_bobade@mentor.com>>
>     >     ---
>     >      .../pam/libpam/sepermit-add-DESTDIR-prefix.patch   |   31
>     >     --------------------
>     >      recipes-extended/pam/libpam_%.bbappend             |    3 ++
>     >      recipes-extended/pam/libpam_1.1.6.bbappend         |   10 ----=
---
>     >      3 files changed, 3 insertions(+), 41 deletions(-)
>     >      delete mode 100644
>     >     recipes-extended/pam/libpam/sepermit-add-DESTDIR-prefix.patch
>     >      create mode 100644 recipes-extended/pam/libpam_%.bbappend
>     >      delete mode 100644 recipes-extended/pam/libpam_1.1.6.bbappend
>     >
>     >     diff --git
>     >     a/recipes-extended/pam/libpam/sepermit-add-DESTDIR-prefix.patch
>     >     b/recipes-extended/pam/libpam/sepermit-add-DESTDIR-prefix.patch
>     >     deleted file mode 100644
>     >     index d48d386..0000000
>     >     --- a/recipes-extended/pam/libpam/sepermit-add-DESTDIR-prefix.p=
atch
>     >     +++ /dev/null
>     >     @@ -1,31 +0,0 @@
>     >     -Subject: [PATCH] libpam: add missing DESTDIR prefix
>     >     -
>     >     -The DESTDIR prefix is missing, this will cause build failures =
for
>     >     -mkdir /var/run/sepermit on the host.
>     >     -
>     >     -| mkdir -p /var/run/sepermit
>     >     -| mkdir: cannot create directory `/var/run/sepermit': Permissi=
on
>     denied
>     >     -
>     >     -Upstream-Status: Pending
>     >     -
>     >     -Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com
>     >     <mailto:Xin.Ouyang@windriver.com>>
>     >     ----
>     >     - modules/pam_sepermit/Makefile.am |    2 +-
>     >     - 1 files changed, 1 insertions(+), 1 deletions(-)
>     >     -
>     >     -diff --git a/modules/pam_sepermit/Makefile.am
>     >     b/modules/pam_sepermit/Makefile.am
>     >     -index cfc5594..bc82275 100644
>     >     ---- a/modules/pam_sepermit/Makefile.am
>     >     -+++ b/modules/pam_sepermit/Makefile.am
>     >     -@@ -35,7 +35,7 @@ if HAVE_LIBSELINUX
>     >     -   securelib_LTLIBRARIES =3D pam_sepermit.la <http://pam_seper=
mit.la>
>     >     -
>     >     - install-data-local:
>     >     --      mkdir -p $(sepermitlockdir)
>     >     -+      mkdir -p $(DESTDIR)$(sepermitlockdir)
>     >     - endif
>     >     - if ENABLE_REGENERATE_MAN
>     >     - noinst_DATA =3D README pam_sepermit.8 sepermit.conf.5
>     >     ---
>     >     -1.7.5.4
>     >     -
>     >     diff --git a/recipes-extended/pam/libpam_%.bbappend
>     >     b/recipes-extended/pam/libpam_%.bbappend
>     >     new file mode 100644
>     >     index 0000000..adcf938
>     >     --- /dev/null
>     >     +++ b/recipes-extended/pam/libpam_%.bbappend
>     >     @@ -0,0 +1,3 @@
>     >     +inherit enable-selinux
>     >     +
>     >     +RDEPENDS_${PN}-runtime +=3D "${@target_selinux(d,
>     'pam-plugin-selinux')}"
>     >     diff --git a/recipes-extended/pam/libpam_1.1.6.bbappend
>     >     b/recipes-extended/pam/libpam_1.1.6.bbappend
>     >     deleted file mode 100644
>     >     index 71acecc..0000000
>     >     --- a/recipes-extended/pam/libpam_1.1.6.bbappend
>     >     +++ /dev/null
>     >     @@ -1,10 +0,0 @@
>     >     -#FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>     >     -FILESPATH_append :=3D ":${@base_set_filespath(['${THISDIR}/${P=
N}'],
>     d)}"
>     >     -
>     >     -SRC_URI +=3D "file://sepermit-add-DESTDIR-prefix.patch"
>     >     -
>     >     -PR .=3D ".4"
>     >     -
>     >     -inherit enable-selinux
>     >     -
>     >     -RDEPENDS_${PN}-runtime +=3D "${@target_selinux(d,
>     'pam-plugin-selinux')}"
>     >     --
>     >     1.7.9.5
>     >
>     >
>     >
>     >
>=20
>=20
>=20

--=20
-Joe MacDonald.
:wq

--pY3vCvL1qV+PayAL
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJVyfqpAAoJEEn8ffcsOfaWXCUH/RCXUO2fjTNx/2LScXI8q0g5
fTDK79bt1yPJIETtXQ0Fol+K3allO+znoQ8OepqpIKqif57mwzHJ/1cuHP6XskaB
yBfmDAfrUiILf2XzUZgEy7FrFQ8mVjIdU8ALABiulgXcDL9CaqW1MrLIiAztK8As
I7pCP6gQavcM5cQ4TaXRSBqtSBdqbqCAwOzhFo6ukABDX7hnCSFayv0TXJg+I2hp
HWNKVk+ABi8k+tHAPw/5pn3drmt/sNqLETV9LCYPUpB5XMPDamkPyRTsIrIuhmNf
c6Ke0OHHrNyeixzZCONIcQ7Pn6AgcmMoffCWqMIDRplH5VaeAg0hl6NSAv1B3Uo=
=U0Te
-----END PGP SIGNATURE-----

--pY3vCvL1qV+PayAL--
