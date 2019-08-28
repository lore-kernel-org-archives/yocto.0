Return-Path: <joe@deserted.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D4A6E00DD3; Wed, 28 Aug 2019 10:20:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [68.232.129.153 listed in list.dnswl.org]
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Wed, 28 Aug 2019 10:20:24 PDT
Received: from esa1.mentor.iphmx.com (esa1.mentor.iphmx.com [68.232.129.153])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 267B3E0098A
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2019 10:20:24 -0700 (PDT)
IronPort-SDR: TnUKBVlmmaxmu7KzGkDhHPje0kQwzKg2ek04HiBo9xJdl+9IMWyCqScvWPlm4yov5DR3a9xD+e
	BsUt3F5FQsxojpb9v37nWzRY9l1jJ3onoM+/e/HvO/G8B0f3Y1yyDZbIM+fSFb6PKvgektXuR3
	X41U+YcsOK9FHjSv4IlX9k5ZbLHllpx8mEM1Y5xbLveMtWv/rj+boBbSp09xsKAj/JqwQJl5bc
	xyd8cUODrvVlTVMquFDPPVP3lzYZw9ZCsw6e3USS/d9BcXwtJPHMkvrjur0gRUbBVv3SWCDOBp
	A64=
X-IronPort-AV: E=Sophos;i="5.64,441,1559548800"; 
	d="asc'?scan'208";a="42652452"
Received: from orw-gwy-02-in.mentorg.com ([192.94.38.167])
	by esa1.mentor.iphmx.com with ESMTP; 28 Aug 2019 09:19:21 -0800
IronPort-SDR: vFijvKMvuJ1uww4/vta+CHvKKMuWW3cOinbwh0wvbTKloIleVORSZJfAl/YIOUnqAiY1uXYVwv
	J2sXXoZR8oexirQ28uvLUX/jVGCdNUu4646KrnSkPxhtdVzvxcyD1knboHx2VJnkuKwHG9QRQ5
	OG6AjvCBE4soAt+qcFNIfKHIpTs78aMY3NjgIVNXbs17GNPdQ6a8U1wdhwD0Hc8DvX8sm3OvJs
	I+yyNFGYf/9mKfHmQrcLyICIkLBRxVfgJL6IMjn7/U1TjvQO4h+R6GSrS/bUJKEt0VtmGfPGDh
	hdk=
Date: Wed, 28 Aug 2019 13:19:17 -0400
From: Joe MacDonald <joe@deserted.net>
To: Mikko Rapeli <mikko.rapeli@bmw.de>
Message-ID: <20190828171915.GA13881@deserted.net>
References: <1567006222-23574-1-git-send-email-mikko.rapeli@bmw.de>
MIME-Version: 1.0
In-Reply-To: <1567006222-23574-1-git-send-email-mikko.rapeli@bmw.de>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH 1/2] meson-selinux.bbclass: fix meson flags for glib-2.0-native
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
X-List-Received-Date: Wed, 28 Aug 2019 17:20:25 -0000
X-Groupsio-MsgNum: 46431
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="3V7upXqbjpZ4EhLz"
Content-Disposition: inline

--3V7upXqbjpZ4EhLz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Mikko,

Is this specifically for warrior (or thud), maybe?  The following commit
explains the current logic:

    commit bb0c9c3abcb935e4b362eb57985e1ee7fec0bfe0
    Author: Yi Zhao <yi.zhao@windriver.com>
    Date:   Wed Jun 12 15:53:20 2019 +0800
   =20
        glib-2.0: fix configure error for meson build
   =20
        In glib 2.60.x, it turns selinux into a meson feature. We should use
        '-Dselinux=3Denabled/disabled' rather than '-Dselinux=3Dtrue/false'=
 to
        enable/disable the feature.
   =20
        Add meso-enable-selinux.bbclass for this change and inherit it in
        glib-2.0 bbappend to fix the configure error.
   =20
        Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
        Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>

and the second patch is already present in tree:

    commit 087fe5c8144c246c6361bd8bcbd1ffd9e9b675bb
    Author: Yi Zhao <yi.zhao@windriver.com>
    Date:   Fri Aug 9 17:48:00 2019 +0800
   =20
        libselinux: fix build with glibc 2.30
   =20
        Fix build error:
        procattr.c:27:14: error: static declaration of 'gettid' follows
        non-static declaration
           27 | static pid_t gettid(void)
              |              ^~~~~~
        In file included from /buildarea/build/tmp/work/core2-64-poky-linux=
/libselinux/2.8-r0/recipe-sysroot/usr/include/unistd.h:1170,
                         from procattr.c:2:
        /buildarea/build/tmp/work/core2-64-poky-linux/libselinux/2.8-r0/rec=
ipe-sysroot/usr/include/bits/unistd_ext.h:34:16:
        note: previous declaration of 'gettid' was here
           34 | extern __pid_t gettid (void) __THROW;
              |                ^~~~~~
   =20
        Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
        Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>

This is what my current work tree looks like, for reference:

  $ repo forall -p -c git log -1 --pretty=3Doneline
  project meta-openembedded/
  2ebaa8df1257389161d0bee9e553c28f63e52005 python3-pyatspi: Add Dbus ATSPI =
recipe
 =20
  project meta-selinux/
  154654a6fe12206a6b9ad6d8c36a4dbe672bcc46 selinux-python: Fix dependency f=
or ntpath
 =20
  project yocto-mainline/
  ca2207f418b7847ffce4b8c53a5a442e5cf461d9 commands.py: fix typo

-J.

[[yocto] [meta-selinux][PATCH 1/2] meson-selinux.bbclass: fix meson flags f=
or glib-2.0-native] On 19.08.28 (Wed 18:30) Mikko Rapeli wrote:

> With latest poky master, glib-2.0-native fails to compile:
>=20
> | meson.build:1:0: ERROR: Value "false" for combo option is not one of th=
e choices. Possible choices are: "enabled",
>  "disabled", "auto".
>=20
> Thus use enabled and disabled when enabling and disabling flags
> with meson. Now glib-2.0-native compiles again.
>=20
> Signed-off-by: Mikko Rapeli <mikko.rapeli@bmw.de>
> ---
>  classes/meson-selinux.bbclass | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/classes/meson-selinux.bbclass b/classes/meson-selinux.bbclass
> index 77a763a..91c2a2b 100644
> --- a/classes/meson-selinux.bbclass
> +++ b/classes/meson-selinux.bbclass
> @@ -1,4 +1,4 @@
>  inherit selinux
> =20
>  PACKAGECONFIG_append =3D " ${@target_selinux(d)}"
> -PACKAGECONFIG[selinux] =3D "-Dselinux=3Dtrue,-Dselinux=3Dfalse,libselinu=
x,"
> +PACKAGECONFIG[selinux] =3D "-Dselinux=3Denabled,-Dselinux=3Ddisabled,lib=
selinux,"
> --=20
> 1.9.1
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
-Joe MacDonald.
:wq

--3V7upXqbjpZ4EhLz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRjqRhJknEwCqrWVXzAW9yWWiDRfAUCXWa3gAAKCRDAW9yWWiDR
fEeUAKCZMd7dRX/nUliOmq6g0CsmJYtchACgi30URDd5pYtJjUs7obcWlrftGro=
=Bedr
-----END PGP SIGNATURE-----

--3V7upXqbjpZ4EhLz--
