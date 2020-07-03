Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
 by mx.groups.io with SMTP id smtpd.web11.5810.1593762015959208792
 for <yocto@lists.yoctoproject.org>;
 Fri, 03 Jul 2020 00:40:17 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.14, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 49yn1R2MWJz5tlM;
	Fri,  3 Jul 2020 09:40:11 +0200 (CEST)
Date: Fri, 3 Jul 2020 09:40:09 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Pankaj Vinadrao Joshi <pankaj.vj@exaleapsemi.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] The following packages have unmet dependencies: packagegroup-core-x11-base : Depends: packagegroup-core-x11-xserver but it is not going to be installed #yocto
Message-ID: <20200703074009.73wy7gzs3gehejb4@qschulz>
References: <10822.1593680079768378665@lists.yoctoproject.org>
 <6208.1593761482623104508@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <6208.1593761482623104508@lists.yoctoproject.org>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Pankaj,

On Fri, Jul 03, 2020 at 12:31:22AM -0700, Pankaj  Vinadrao Joshi wrote:
> Hi Quentin,
> Missing x11 in DISTRO_FEATURES in your distro.
> http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-graphics=
/packagegroups/packagegroup-core-x11-xserver.bb?h=3Dmaster#n12=A0=A0(the sa=
me is present in ( http://cgit.openembedded.org/openembedded-core/tree/meta=
/recipes-graphics/packagegroups/packagegroup-core-x11-xserver.bb?h=3Dmaster=
#n12 ) openembedded-core/tree/meta/recipes-graphics/packagegroups ( http://=
cgit.openembedded.org/openembedded-core/tree/meta/recipes-graphics/packageg=
roups/packagegroup-core-x11-xserver.bb?h=3Dmaster#n12 ) ) ( http://cgit.ope=
nembedded.org/openembedded-core/tree/meta/recipes-graphics/packagegroups/pa=
ckagegroup-core-x11-xserver.bb?h=3Dmaster#n12 )
>=20
> i have added x11=A0 in DISTRO_FEATURES but it seems i am facing the same =
issue , i am attaching the few parameters from local.conf
>=20
> EXTRA_IMAGE_FEATURES ?=3D " debug-tweaks *packagegroup-core-x11-xserver* =
 allow-empty-password allow-root-login bash-completion-pkgs dbg-pkgs debug-=
tweaks dev-pkgs doc doc-pkgs eclipse-debug empty-root-password hwcodecs nfs=
-client nfs-server package-management post-install-logging ptest-pkgs read-=
only-rootfs splash src-pkgs ssh-server-dropbear ssh-server-openssh stateles=
s-rootfs staticdev-pkgs tools-debug tools-profile tools-sdk tools-testapps =
x11 x11-base x11-sato " ENABLE_UART =3D "1" CORE_IMAGE_EXTRA_INSTALL +=3D "=
git ruby bsdtar pseudo os-release lsb-release openssh cmake apt" DISTRO_FEA=
TURES_append =3D "opengl python3-pip " IMAGE_FEATURES_append =3D "tools-deb=
ug tools-sdk dev-pkgs" EXTRA_IMAGE_FEATURES_append +=3D "src-pkgs package-m=
anagement ssh-server-dropbear ssh-server-openssh stateless-rootfs " IMAGE_I=
NSTALL_append +=3D " dhcp-client dhcp-server " CORE_IMAGE_EXTRA_INSTALL +=
=3D " python3 util-linux mtd-utils-jffs2 mtd-utils-misc" EXTRA_IMAGE_FEATUR=
ES +=3D "staticdev-pkgs" *DISTRO_FEATURES +=3D "x11"* DISTRO_FEATURES +=3D =
"wifi ipv4 ipv6 nfs usbgadget keyboard usbhost pci cramfs glx" IMAGE_INSTAL=
L_append =3D "perf dbus libnss-mdns minicom rsync dbus dstat hostapd dhcpcd=
 nasm ncurses-libncurses ncurses-tools ncurses-terminfo-base python3-matplo=
tlib python3-flask" IMAGE_INSTALL +=3D "vim lzo dosfstools nfs-utils unzip =
make mtd-utils e2fsprogs " IMAGE_INSTALL +=3D " pciutils man-pages iperf3 "=
 IMAGE_INSTALL +=3D " libtirpc libsdl2 " but still i am getting the followi=
ng error,
> Loading cache: 100% | | ETA: --:--:-- Loaded 0 entries from dependency ca=
che. Parsing recipes: 100% |###############################################=
###########################################################################=
############################################| Time: 0:00:11 Parsing of 2316=
 .bb files complete (0 cached, 2316 parsed). 3545 targets, 213 skipped, 0 m=
asked, 0 errors. ERROR: Nothing PROVIDES 'core-image-sato' core-image-sato =
was skipped: 'packagegroup-core-x11-xserver' in IMAGE_FEATURES (added via E=
XTRA_IMAGE_FEATURES) is not a valid image feature. Valid features: allow-em=
pty-password allow-root-login bash-completion-pkgs dbg-pkgs debug-tweaks de=
v-pkgs doc doc-pkgs eclipse-debug empty-root-password hwcodecs nfs-client n=
fs-server package-management post-install-logging ptest-pkgs read-only-root=
fs splash src-pkgs ssh-server-dropbear ssh-server-openssh stateless-rootfs =
staticdev-pkgs tools-debug tools-profile tools-sdk tools-testapps x11 x11-b=
ase x11-sato

packagegroup-core-x11-server is a recipe (well, both a recipe and a
package) not a feature.

If you want to add packagegroup-core-x11-server package to your image,
you need to add it to IMAGE_INSTALL.

If I can suggest spending a bit of time reading some of the extensive
documentations available here: https://www.yoctoproject.org/docs/

Or a good way to get started rather quickly with the basics of Yocto,
watch a few of the Youtube Live Coding videos available here:
https://www.youtube.com/user/TheYoctoProject/videos
That should make your life easier for the beginning :)

(and you still haven't added the leading space in
IMAGE_FEATURES_append, DISTRO_FEATURES_append and IMAGE_INSTALL_append)

Quentin
