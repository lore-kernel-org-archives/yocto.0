Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7B3EE00A10; Fri,  1 Jul 2016 14:35:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47C23E009C9
	for <yocto@yoctoproject.org>; Fri,  1 Jul 2016 14:35:24 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga102.fm.intel.com with ESMTP; 01 Jul 2016 14:35:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,559,1459839600"; 
	d="asc'?scan'208";a="728100124"
Received: from alimonb-mobl1.zpn.intel.com (HELO [10.219.5.159])
	([10.219.5.159])
	by FMSMGA003.fm.intel.com with ESMTP; 01 Jul 2016 14:35:24 -0700
To: recipe-report@yoctoproject.org, yocto@yoctoproject.org
References: <20160701213105.6733.63437@packages.yoctoproject.org>
From: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
Message-ID: <5776E227.3040909@linux.intel.com>
Date: Fri, 1 Jul 2016 16:35:35 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <20160701213105.6733.63437@packages.yoctoproject.org>
Subject: Re: [Recipe reporting system] Upgradable recipe name list
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
X-List-Received-Date: Fri, 01 Jul 2016 21:35:26 -0000
X-Groupsio-MsgNum: 30861
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="5frDxmeXgsVvk39rhstePPmrllKgR0ffF"

--5frDxmeXgsVvk39rhstePPmrllKgR0ffF
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable



On 07/01/2016 04:31 PM, recipe-report@yoctoproject.org wrote:
> This mail was sent out by Recipe reporting system.
>=20
> This message list those recipes which need to be upgraded. If maintaine=
rs
> believe some of them needn't to upgrade at this time, they can fill
> RECIPE_NO_UPDATE_REASON in respective recipe file to ignore this remain=
der
> until newer upstream version was detected.
>=20
> Example:
> RECIPE_NO_UPDATE_REASON =3D "Version 2.0 is unstable"
>=20
> You can check the detail information at:
>=20
> http://recipes.yoctoproject.org/
>=20
> Package               Version        Upstream version      Maintainer  =
         NoUpgradeReason
> --------------------  -------------  --------------------  ------------=
-------  ------------------------------
> perl                  5.22.1         5.24.0                Alejandro He=
rnandez
> texinfo               6.0            6.1                   Alejandro He=
rnandez
> ruby                  2.2.5          2.3.1                 Alejandro He=
rnandez
> python3               3.5.1          3.5.2                 Alejandro He=
rnandez
> python-native         2.7.11         2.7.12                Alejandro He=
rnandez
> python3-git           1.0.2          2.0.6                 Alejandro He=
rnandez
> cronie                1.5.0          1.5.1                 Alejandro He=
rnandez
> swig                  3.0.8          3.0.10                Alejandro He=
rnandez
> python-git            2.0.5          2.0.6                 Alejandro He=
rnandez
> python3-setuptools    22.0.5         23.1.0                Alejandro He=
rnandez
> python-setuptools     22.0.5         23.1.0                Alejandro He=
rnandez
> perl-native           5.22.1         5.24.0                Alejandro He=
rnandez
> python3-native        3.5.1          3.5.2                 Alejandro He=
rnandez
> python                2.7.11         2.7.12                Alejandro He=
rnandez
> liberation-fonts      1.04           2.00.1                Alexander Ka=
navin    2.x depends on fontforge pa...
> bdwgc                 7.4.2          7.4.4                 Alexander Ka=
navin
> vala                  0.30.1         0.32.1                Alexander Ka=
navin
> epiphany              3.18.4         3.20.3                Alexander Ka=
navin
> libwnck3              3.14.1         3.20.1                Alexander Ka=
navin
> nss                   3.23           3.24                  Alexander Ka=
navin
> libarchive            3.2.0          3.2.1                 Alexander Ka=
navin
> gnutls                3.4.11         3.5.1                 Alexander Ka=
navin
> ffmpeg                3.0.2          3.1.1                 Alexander Ka=
navin
> bash-completion       2.1            2.3                   Alexander Ka=
navin
> btrfs-tools           4.5.3          4.6.1                 Alexander Ka=
navin
> mpg123                1.23.4         1.23.6                Alexander Ka=
navin
> babeltrace            1.3.2          1.4.0                 Alexander Ka=
navin
> mkelfimage            4.0+gitX       4.4+gitAUTOINC+58...  Alexander Ka=
navin    mkelfimage has been removed...
> desktop-file-util...  0.22           0.23                  Alexander Ka=
navin
> apt                   1.0.10.1       1.2.14                An=C3=ADbal =
Lim=C3=B3n
> apt-native            1.0.10.1       1.2.14                An=C3=ADbal =
Lim=C3=B3n
> pinentry              0.9.2          0.9.7                 Armin Kuster=

> linux-libc-headers    4.4            4.6.3                 Bruce Ashfie=
ld
> guilt-native          0.35+gitX      0.36+gitAUTOINC+2...  Bruce Ashfie=
ld
> at                    3.1.18         3.1.20                Chen Qi
> byacc                 20160324       20160606              Chen Qi
> cups                  2.1.3          2.1.4                 Chen Qi
> sudo                  1.8.16         1.8.17p1              Chen Qi
> sysstat               11.3.4         11.3.5                Chen Qi
> u-boot-fw-utils       v2016.03+gitX  v2016.05+gitAUTOI...  Denys Dmytri=
yenko
> u-boot-mkimage        v2016.03+gitX  v2016.05+gitAUTOI...  Denys Dmytri=
yenko
> u-boot                v2016.03+gitX  v2016.05+gitAUTOI...  Denys Dmytri=
yenko
> createrepo            0.4.11         0.10.4                Hongxu Jia  =
         Versions after 0.9.* use YU...
> ncurses               6.0+20160319   6.0+20160625          Hongxu Jia
> libgcrypt             1.7.0          1.7.1                 Hongxu Jia
> gnupg                 2.1.12         2.1.13                Hongxu Jia
> libinput              1.3.0          1.3.3                 Jussi Kukkon=
en
> weston                1.10.0         1.11.0                Jussi Kukkon=
en
> matchbox-config-gtk   0.2            2                     Jussi Kukkon=
en
> matchbox-terminal     0.1            2                     Jussi Kukkon=
en
> sato-screenshot       0.2            2                     Jussi Kukkon=
en
> settings-daemon       0.0.2          2                     Jussi Kukkon=
en
> xf86-input-evdev      2.10.2         2.10.3                Jussi Kukkon=
en
> xf86-input-synaptics  1.8.3          1.8.99.1              Jussi Kukkon=
en
> matchbox-theme-sato   0.2            2                     Jussi Kukkon=
en
> sgmlspl-native        1.1+gitX       1.03+gitAUTOINC+f...  Jussi Kukkon=
en
> wayland               1.10.0         1.11.0                Jussi Kukkon=
en
> libevdev              1.5.1          1.5.2                 Jussi Kukkon=
en
> libxfixes             5.0.1          5.0.2                 Jussi Kukkon=
en
> augeas                1.4.0          1.5.0                 Jussi Kukkon=
en
> libgpg-error          1.22           1.23                  Jussi Kukkon=
en
> xf86-input-libinput   0.16.0         0.19.0                Jussi Kukkon=
en
> xkeyboard-config      2.17           2.18                  Jussi Kukkon=
en
> vte                   0.44.1         0.44.2                Jussi Kukkon=
en
> expat                 2.1.1          2.2.0                 Jussi Kukkon=
en
> wayland-protocols     1.3            1.4                   Jussi Kukkon=
en
> librsvg               2.40.15        2.40.16               Jussi Kukkon=
en
> cairo                 1.14.6         1.15.2                Jussi Kukkon=
en
> fontconfig            2.11.95        2.12.0                Jussi Kukkon=
en
> linuxdoc-tools-na...  0.9.69         0.9.72                Jussi Kukkon=
en
> slang                 2.2.4          2.3.0                 Kai Kang
> uclibc-initial        1.0.12+gitX    1.0.15                Khem Raj
> uclibc                1.0.12+gitX    1.0.15                Khem Raj
> prelink               1.0+gitX       20151030.+gitAUTO...  Mark Hatle
> db                    6.0.30         6.2.23                Mark Hatle  =
         latest db does not work wit...
> rpm                   5.4.16         5.4.17                Mark Hatle
> libpfm4               4.6.0          4.7.0                 Matthew McCl=
intock
> ifupdown              0.8.2          0.8.13                Maxin B. Joh=
n
> libpng                1.6.22         1.6.23                Maxin B. Joh=
n
> ethtool               4.5            4.6                   Maxin B. Joh=
n
> libsolv               0.6.21         0.6.22                Maxin B. Joh=
n
> screen                4.3.1          4.4.0                 Maxin B. Joh=
n
> libatomic-ops         7.4.2          7.4.4                 Maxin B. Joh=
n
> gdb-cross-canadia...  7.11           7.11.1                No maintaine=
r
> gdb-cross-i586        7.11           7.11.1                No maintaine=
r
> gnome-themes-stan...  3.18.0         3.20.2                No maintaine=
r
> binutils-cross-ca...  2.26           2.26.1                No maintaine=
r
> binutils-cross-i586   2.26           2.26.1                No maintaine=
r
> binutils-crosssdk...  2.26           2.26.1                No maintaine=
r
> subversion            1.9.3          1.9.4                 Richard Purd=
ie
> lttng-tools           2.7.1+gitX     2.8.0+gitAUTOINC+...  Richard Purd=
ie
> lttng-ust             2.7.1+gitX     2.8.1+gitAUTOINC+...  Richard Purd=
ie
> gdb                   7.11           7.11.1                Richard Purd=
ie
> lttng-modules         2.7.3+gitX     2.8.0+gitAUTOINC+...  Richard Purd=
ie
> nasm                  2.11.08        2.12.01               Richard Purd=
ie
> gnu-efi               3.0.3          3.0.4                 Robert Yang
> debianutils           4.7            4.8                   Robert Yang
> libpcre               8.38           8.39                  Robert Yang
> ltp                   20160126       20160510              Robert Yang
> binutils              2.26           2.26.1                Robert Yang
> e2fsprogs             1.43           1.43.1                Robert Yang
> file                  5.27           5.28                  Robert Yang
> wget                  1.17.1         1.18                  Robert Yang
> git                   2.8.4          2.9.0                 Robert Yang
> gmp                   6.1.0          6.1.1                 Robert Yang
> base-passwd           3.5.29         3.5.39                Ross Burton =
         Version 3.5.38 requires cde...
> lsbinitscripts        9.64           9.66                  Ross Burton
> libsndfile1           1.0.26         1.0.27                Tanu Kaskine=
n
> pulseaudio            8.0            9.0                   Tanu Kaskine=
n
> gettext               0.19.6         0.19.8.1              Wenzong Fan
> ccache                3.2.4          3.2.5                 Wenzong Fan
> chkconfig             1.3.58         1.8                   Wenzong Fan =
         Version 1.5 requires selinux
>=20
> Upgradable count: 106
> Upgradable total count: 112
>=20
> The based commit is:
>=20
> commit 3143920c541b55b543b9dcc12b18af4e0e4b7ae1
> Author: Bruce Ashfield <bruce.ashfield@windriver.com>
> Date:   Tue Jul 21 11:21:06 2015 -0400
>=20
>     linux-libc-headers: update to 4.1
>    =20
>     Updating the libc-headers to match the 4.1 LTSI kernel version.
>    =20
>     We also tweak the logic in linux-libc-headers.inc to look in the
>     4.x subdirectory if a 4.x kernel is specified as the header source.=

>    =20
>     Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
>     Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
>=20

This commit hash was an error due to upgrade RRS for work in Python 3
the right commit is 53fcfe4348a2ca727844f2b0bd3fca2902cbdda0.

Sent new email,

https://lists.yoctoproject.org/pipermail/yocto/2016-July/030933.html

> Any problem, please contact Anibal Limon <anibal.limon@intel.com>=20
>=20


--5frDxmeXgsVvk39rhstePPmrllKgR0ffF
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBAgAGBQJXduIrAAoJEGJqcE9h3glg5D4P/AiI/R4LjKMFfqj6dlzk/Dt3
V8xjdM9IU6lcdZEd/c54uJSlJwHDVJXY/qqkkFE1Or0WMEWr0Z+95B8gYOUtTtDb
I1PKJq2b5i3T1ZsX08HwniLJ4wIQ3zRz7X5kH1i4jmF/cR9BQdRtDEdI+vAeMH3Y
UtOKonV0NjdLH1aS27+2gM1e5QcD9H22a5pjwT7TKu8zqoTbSKrqBkfq+EoO6bOb
tfJ382SlacxPF0MsgdHVwan4fhLV5f0nOb/RZ+0Dv9PZ5n/7PrpHHt7FRDeCThdw
yaDoqzlwp+vZXfPR+NLajVNeh6HuHyTG40l6Unpkaru+Zh61DuNPtz/4rCz2yFnU
Zaz1EvNTz1jRn2QY1JacblySQHnl/0qflu1JJLmXJc9XL/0U4H3RLRGjzMhKVEK4
wmiSjrxe9FchyaiFWTCDLI59qqYlzG8ggqx1MvvB436HoBUvjpUUK01L5mZlSqvy
UicsxrowwOniy4h87nDkiX34G+OKNttpTKTBKMdtTroVPWKTDYhOud8RRXO4TW/E
jWwQqooB3JxSdCq4Pw9I9r9w/kjfW0yka7QSkCOISPc490latw8c/xLdKPSfeA0V
+6MAA0d7dE9xfQ37osJbWN4WfyHjuxoZKqdM/OINB0I0Jnk5gTXHDl2sbb4fT9sx
rhPDRqUq/n7Vr8CKY28y
=WiMS
-----END PGP SIGNATURE-----

--5frDxmeXgsVvk39rhstePPmrllKgR0ffF--
