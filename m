Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 522E5E00CCC; Mon,  7 Jan 2019 11:32:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBEA0E009B1;
	Mon,  7 Jan 2019 11:32:47 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	07 Jan 2019 11:32:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.56,451,1539673200"; d="scan'208";a="124023686"
Received: from paolienk-mobl1.gar.corp.intel.com (HELO localhost.localdomain)
	([10.255.167.72])
	by FMSMGA003.fm.intel.com with ESMTP; 07 Jan 2019 11:32:43 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 08 Jan 2019 08:32:39 +1300
Message-ID: <3847059.mRjBMpplpY@localhost.localdomain>
Organization: Intel Corporation
In-Reply-To: <CAJTo0Lau=yftGi8+3KktfUoaVH8ZuFrg+8nYVY5uH5z-PE-t9g@mail.gmail.com>
References: <20190107050058.27491.16171@packages.yoctoproject.org>
	<CANNYZj_VuJT4Z04eVc22yGHrAaPx+iaBJHXDN9QN938zahDJxg@mail.gmail.com>
	<CAJTo0Lau=yftGi8+3KktfUoaVH8ZuFrg+8nYVY5uH5z-PE-t9g@mail.gmail.com>
MIME-Version: 1.0
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
X-List-Received-Date: Mon, 07 Jan 2019 19:32:49 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

I think the RRS still serves a purpose, if it's putting out correct informa=
tion of course.=20
I have spent quite a bit of time reworking it, but Michael hasn't had the t=
ime to do
the upgrade yet. I will ping him again.

Cheers,
Paul

On Monday, 7 January 2019 11:35:01 PM NZDT Burton, Ross wrote:
> Yes, AUH pretty much replaces this I'd say.
>=20
> Ross
>=20
> On Mon, 7 Jan 2019 at 10:26, Alexander Kanavin <alex.kanavin@gmail.com> w=
rote:
> >
> > Looks like this has regressed and is sending out outdated, misleading
> > information (probably related to recent distrodata-releated changes).
> >
> > Shall we switch it off for now?
> >
> > AUH has largely superseded this report anyway, and I have a feeling
> > most people tune it out already.
> >
> > Alex
> >
> > On Mon, 7 Jan 2019 at 06:01, <recipe-report@yoctoproject.org> wrote:
> > >
> > > This mail was sent out by Recipe reporting system.
> > >
> > > This message list those recipes which need to be upgraded. If maintai=
ners
> > > believe some of them needn't to upgrade at this time, they can fill
> > > RECIPE_NO_UPDATE_REASON in respective recipe file to ignore this rema=
inder
> > > until newer upstream version was detected.
> > >
> > > Example:
> > > RECIPE_NO_UPDATE_REASON =3D "Version 2.0 is unstable"
> > >
> > > You can check the detail information at:
> > >
> > > http://recipes.yoctoproject.org/
> > >
> > > Package               Version          Upstream version      Maintain=
er           NoUpgradeReason
> > > --------------------  ---------------  --------------------  --------=
=2D----------  ------------------------------
> > > libgloss              3.0.0            3.0.0.20180831        Alejandr=
o Hernandez
> > > newlib                3.0.0            3.0.0.20180831        Alejandr=
o Hernandez
> > > libmodulemd           1.7.0            2.0.0                 Alexande=
r Kanavin
> > > pcmanfm               1.3.0            1.3.1                 Alexande=
r Kanavin
> > > webkitgtk             2.22.4           2.22.5                Alexande=
r Kanavin
> > > boost                 1.68.0           1.69.0                Alexande=
r Kanavin
> > > libfm-extra           1.3.0.2          1.3.1                 Alexande=
r Kanavin
> > > libfm                 1.3.0.2          1.3.1                 Alexande=
r Kanavin
> > > nativesdk-meson       0.47.2           0.49.0                Alexande=
r Kanavin
> > > ffmpeg                4.0.2            4.1                   Alexande=
r Kanavin
> > > libcomps              0.1.8+gitX       0.1.9                 Alexande=
r Kanavin
> > > librepo               1.9.2            1.9.3                 Alexande=
r Kanavin
> > > meson                 0.47.2           0.49.0                Alexande=
r Kanavin
> > > dnf                   4.0.9            4.0.10                Alexande=
r Kanavin
> > > libdnf                0.22.3           0.24.1                Alexande=
r Kanavin
> > > lighttpd              1.4.51           1.4.52                Alexande=
r Kanavin
> > > gobject-introspec...  1.58.1           1.58.2                Alexande=
r Kanavin
> > > btrfs-tools           4.19             4.19.1                Alexande=
r Kanavin
> > > bjam-native           1.68.0           1.69.0                Alexande=
r Kanavin
> > > createrepo-c          0.11.1+gitX      0.12.0                Alexande=
r Kanavin
> > > busybox               1.29.2           1.29.3                Andrej V=
alek
> > > apt                   1.2.24           1.4.8                 An=EDbal=
 Lim=F3n
> > > apt-native            1.2.24           1.4.8                 An=EDbal=
 Lim=F3n
> > > dpkg                  1.18.24          1.19.2                An=EDbal=
 Lim=F3n
> > > puzzles               0.0+gitX         0.0-new-commits-a...  Anuj Mit=
tal
> > > libpcap               1.8.1            1.9.0                 Anuj Mit=
tal
> > > base-passwd           3.5.29           3.5.45                Anuj Mit=
tal          Version 3.5.38 requires cde...
> > > ifupdown              0.8.16           0.8.33                Anuj Mit=
tal
> > > glib-2.0              2.58.0           2.58.1                Anuj Mit=
tal
> > > glib-networking       2.54.1           2.58.0                Anuj Mit=
tal
> > > pixman                0.34.0           0.36.0                Anuj Mit=
tal
> > > harfbuzz              2.1.3            2.2.0                 Anuj Mit=
tal
> > > gst-examples          0.0.1+gitX       0.0.1-new-commits...  Anuj Mit=
tal
> > > sqlite3               3.25.3           3.26.0                Anuj Mit=
tal
> > > vte                   0.52.2           0.54.3                Anuj Mit=
tal
> > > gsettings-desktop...  3.28.0           3.28.1                Anuj Mit=
tal
> > > libsolv               0.7.1            0.7.2                 Anuj Mit=
tal
> > > eudev                 3.2.5            3.2.7                 Anuj Mit=
tal
> > > atk                   2.28.1           2.30.0                Anuj Mit=
tal
> > > librsvg               2.40.20          2.44.10               Anuj Mit=
tal          Versions from 2.41.0 requir...
> > > cairo                 1.14.12          1.16.2                Anuj Mit=
tal
> > > i2c-tools             4.0              4.1                   Anuj Mit=
tal
> > > libatomic-ops         7.6.6+gitX       7.6.8                 Anuj Mit=
tal
> > > libpng                1.6.35           1.6.36                Anuj Mit=
tal
> > > at-spi2-atk           2.26.2           2.30.0                Anuj Mit=
tal
> > > mmc-utils             0.1              0.1-new-commits-a...  Anuj Mit=
tal
> > > libjpeg-turbo         2.0.0            2.0.1                 Anuj Mit=
tal
> > > mtools                4.0.19           4.0.23                Anuj Mit=
tal
> > > libassuan             2.5.1            2.5.2                 Armin Ku=
ster
> > > netbase               5.4              5.5                   Armin Ku=
ster
> > > openssh               7.9p1+git        7.9.                  Armin Ku=
ster
> > > curl                  7.62.0           7.63.0                Armin Ku=
ster
> > > gnutls                3.6.4            3.6.5                 Armin Ku=
ster
> > > nss                   3.40             3.41                  Armin Ku=
ster
> > > bind                  9.11.5           9.13.5                Armin Ku=
ster         9.11 is LTS 2021
> > > nettle                3.4              3.4.1                 Armin Ku=
ster
> > > linux-libc-headers    4.18             4.19.10               Bruce As=
hfield
> > > kern-tools-native     0.2+gitX         0.2-new-commits-a...  Bruce As=
hfield
> > > linux-yocto           4.18.14+gitX     4.19.8                Bruce As=
hfield
> > > linux-yocto-rt        4.18.14+gitX     4.19.8                Bruce As=
hfield
> > > linux-yocto-tiny      4.18.14+gitX     4.19.8                Bruce As=
hfield
> > > kmscube               git              git-new-commits-a...  Carlos R=
afael Giani
> > > wpa-supplicant        2.6              2.7                   Changhye=
ok Bae
> > > iptables              1.6.2            1.8.2                 Changhye=
ok Bae
> > > dbus-test             1.12.10          1.12.12               Chen Qi
> > > acl                   2.2.52           2.2.53                Chen Qi
> > > attr                  2.4.47           2.4.48                Chen Qi
> > > systemd-conf          1.0              239                   Chen Qi
> > > dbus                  1.12.10          1.12.12               Chen Qi
> > > cups                  2.2.9            2.2.10                Chen Qi
> > > flex                  2.6.0            2.6.4                 Chen Qi
> > > util-linux            2.32.1           2.33                  Chen Qi
> > > bison                 3.0.4            3.2.2                 Chen Qi
> > > sed                   4.2.2            4.5                   Chen Qi
> > > sysstat               12.1.1           12.1.2                Chen Qi
> > > lzop                  1.03             1.04                  Denys Dm=
ytriyenko
> > > lz4                   1.8.2            1.8.3                 Denys Dm=
ytriyenko
> > > hdparm                9.56             9.58                  Denys Dm=
ytriyenko
> > > wayland-protocols     1.16             1.17                  Denys Dm=
ytriyenko
> > > python3-pygobject     3.28.3           3.30.4                Derek St=
raka
> > > python3               3.5.6            3.7.1                 Derek St=
raka
> > > python3-pbr           4.2.0            5.1.1                 Derek St=
raka
> > > python3-setuptools    40.0.0           40.6.3                Derek St=
raka
> > > python3-pip           18.0             18.1                  Derek St=
raka
> > > python-numpy          1.14.5           1.15.4                Derek St=
raka
> > > python3-numpy         1.14.5           1.15.4                Derek St=
raka
> > > python-setuptools     40.0.0           40.6.3                Derek St=
raka
> > > python3-six           1.11.0           1.12.0                Derek St=
raka
> > > python3-gitdb         2.0.4            2.0.5                 Derek St=
raka
> > > python3-pycairo       1.15.6           1.18.0                Derek St=
raka
> > > python3-native        3.5.6            3.7.1                 Derek St=
raka
> > > acpica                20180508         20181213              Fathi Bo=
udra
> > > libgpg-error          1.32             1.33                  Hongxu J=
ia
> > > gnupg                 2.2.11           2.2.12                Hongxu J=
ia
> > > help2man-native       1.47.6           1.47.8                Hongxu J=
ia
> > > libxcrypt             4.1.1            4.4.1                 Khem Raj
> > > go-runtime            1.11.1           1.11.4                Khem Raj
> > > go                    1.11.1           1.11.4                Khem Raj
> > > binutils              2.31             2.31.1                Khem Raj
> > > go-native             1.11.1           1.11.4                Khem Raj
> > > prelink               1.0+gitX         1.0-new-commits-a...  Mark Hat=
le
> > > db                    5.3.28           5.3.28+dfsg1          Mark Hat=
le
> > > binutils-cross-ca...  2.31             2.31.1                No maint=
ainer
> > > binutils-cross-i586   2.31             2.31.1                No maint=
ainer
> > > go-cross-canadian...  1.11.1           1.11.4                No maint=
ainer
> > > go-crosssdk-x86_6...  1.11.1           1.11.4                No maint=
ainer
> > > binutils-crosssdk...  2.31             2.31.1                No maint=
ainer
> > > go-cross-i586         1.11.1           1.11.4                No maint=
ainer
> > > mesa                  18.1.9           18.3.1                Otavio S=
alvador
> > > linux-firmware        0.0+gitX         0.0-new-commits-a...  Otavio S=
alvador
> > > mesa-gl               18.1.9           18.3.1                Otavio S=
alvador
> > > cmake                 3.12.2           3.13.2                Pascal B=
ach
> > > cmake-native          3.12.2           3.13.2                Pascal B=
ach
> > > build-compare         2015.02.10+gitX  2015.02.10-new-co...  Paul Egg=
leton
> > > build-appliance-i...  15.0.0           20.0.0                Richard =
Purdie
> > > gnu-config            20180713+gitX    20180713-new-comm...  Robert Y=
ang
> > > squashfs-tools        4.3+gitrX        4.3-new-commits-a...  Robert Y=
ang
> > > e2fsprogs             1.44.3           1.44.5                Robert Y=
ang
> > > ccache                3.4.2            3.5                   Robert Y=
ang
> > > git                   2.18.1           2.20.1                Robert Y=
ang
> > > mklibs-native         0.1.43           0.1.44                Robert Y=
ang
> > > piglit                1.0+gitrX        1.0-new-commits-a...  Ross Bur=
ton
> > > acpid                 2.0.30           2.0.31                Ross Bur=
ton
> > > libinput              1.12.3           1.12.4                Ross Bur=
ton
> > > vulkan-demos          git              git-new-commits-a...  Ross Bur=
ton
> > > perl                  5.24.4           5.28.1                Ross Bur=
ton
> > > gtk-icon-utils-na...  3.22.30          3.24.2                Ross Bur=
ton
> > > ofono                 1.25             1.26                  Ross Bur=
ton
> > > libical               2.0.0            3.0.4                 Ross Bur=
ton
> > > vulkan                1.1.73.0         1.1.92.1              Ross Bur=
ton
> > > lsbinitscripts        9.79             10.01                 Ross Bur=
ton
> > > sysvinit              2.88dsf          2.93                  Ross Bur=
ton
> > > adwaita-icon-theme    3.28.0           3.30.1                Ross Bur=
ton
> > > fontconfig            2.12.6           2.13.1                Ross Bur=
ton
> > > gdk-pixbuf            2.36.11          2.38.0                Ross Bur=
ton
> > > gtk+3                 3.24.1           3.24.2                Ross Bur=
ton
> > > pkgconf               1.5.3            1.5.4                 Ross Bur=
ton
> > > perl-native           5.24.4           5.28.1                Ross Bur=
ton
> > > alsa-tools            1.1.6            1.1.7                 Tanu Kas=
kinen
> > > alsa-plugins          1.1.6            1.1.7                 Tanu Kas=
kinen
> > > alsa-utils-scripts    1.1.6            1.1.7                 Tanu Kas=
kinen
> > > alsa-lib              1.1.6            1.1.7                 Tanu Kas=
kinen
> > > alsa-utils            1.1.6            1.1.7                 Tanu Kas=
kinen
> > > gnu-efi               3.0.8            3.0.9                 Yi Zhao
> > > libcap                2.25             2.26                  Yi Zhao
> > > chkconfig             1.3.58           1.8                   Yi Zhao =
             Version 1.5 requires selinux
> > > logrotate             3.14.0           3.15.0                Yi Zhao
> > > file                  5.34             5.35                  Yi Zhao
> > > wget                  1.19.5           1.20                  Yi Zhao
> > > json-glib             1.4.2            1.4.4                 Yi Zhao
> > > libsdl2               2.0.8            2.0.9                 Yi Zhao
> > >
> > > Upgradable count: 147
> > > Upgradable total count: 151
> > >
> > > The based commit is:
> > >
> > > commit c22b0bf66a28324da66caf0660f171cc279a1f2b
> > > Author: Robert Yang <liezhi.yang@windriver.com>
> > > Date:   Tue Dec 18 17:48:22 2018 +0800
> > >
> > >     cmake-native: Set --parallel for configure
> > >
> > >     This can save do_configure's time from 330s to 60s on my host.
> > >
> > >     Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
> > >     Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> > >
> > > Any problem, please contact Jose Lamego <jose.a.lamego@intel.com>
> > >
> > > --
> > > _______________________________________________
> > > yocto mailing list
> > > yocto@yoctoproject.org
> > > https://lists.yoctoproject.org/listinfo/yocto
>=20


=2D-=20

Paul Eggleton
Intel Open Source Technology Centre



