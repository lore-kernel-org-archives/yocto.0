Subject: Re: The following packages have unmet dependencies: packagegroup-core-x11-base : Depends: packagegroup-core-x11-xserver but it is not going to be installed #yocto
To: yocto@lists.yoctoproject.org
From: "Pankaj  Vinadrao Joshi" <pankaj.vj@exaleapsemi.com>
X-Originating-Location: Pune, Maharashtra, IN (49.35.219.96)
X-Originating-Platform: Windows Chrome 83
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 03 Jul 2020 00:31:22 -0700
References: <10822.1593680079768378665@lists.yoctoproject.org>
In-Reply-To: <10822.1593680079768378665@lists.yoctoproject.org>
Message-ID: <6208.1593761482623104508@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="hbMLR2ecoAOgLRqjGReP"

--hbMLR2ecoAOgLRqjGReP
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Quentin,
Missing x11 in DISTRO_FEATURES in your distro.
http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-graphics/=
packagegroups/packagegroup-core-x11-xserver.bb?h=3Dmaster#n12=C2=A0=C2=A0(t=
he same is present in ( http://cgit.openembedded.org/openembedded-core/tree=
/meta/recipes-graphics/packagegroups/packagegroup-core-x11-xserver.bb?h=3Dm=
aster#n12 ) openembedded-core/tree/meta/recipes-graphics/packagegroups ( ht=
tp://cgit.openembedded.org/openembedded-core/tree/meta/recipes-graphics/pac=
kagegroups/packagegroup-core-x11-xserver.bb?h=3Dmaster#n12 ) ) ( http://cgi=
t.openembedded.org/openembedded-core/tree/meta/recipes-graphics/packagegrou=
ps/packagegroup-core-x11-xserver.bb?h=3Dmaster#n12 )

i have added x11=C2=A0 in DISTRO_FEATURES but it seems i am facing the sam=
e issue , i am attaching the few parameters from local.conf

EXTRA_IMAGE_FEATURES ?=3D " debug-tweaks *packagegroup-core-x11-xserver* a=
llow-empty-password allow-root-login bash-completion-pkgs dbg-pkgs debug-tw=
eaks dev-pkgs doc doc-pkgs eclipse-debug empty-root-password hwcodecs nfs-c=
lient nfs-server package-management post-install-logging ptest-pkgs read-on=
ly-rootfs splash src-pkgs ssh-server-dropbear ssh-server-openssh stateless-=
rootfs staticdev-pkgs tools-debug tools-profile tools-sdk tools-testapps x1=
1 x11-base x11-sato " ENABLE_UART =3D "1" CORE_IMAGE_EXTRA_INSTALL +=3D "gi=
t ruby bsdtar pseudo os-release lsb-release openssh cmake apt" DISTRO_FEATU=
RES_append =3D "opengl python3-pip " IMAGE_FEATURES_append =3D "tools-debug=
 tools-sdk dev-pkgs" EXTRA_IMAGE_FEATURES_append +=3D "src-pkgs package-man=
agement ssh-server-dropbear ssh-server-openssh stateless-rootfs " IMAGE_INS=
TALL_append +=3D " dhcp-client dhcp-server " CORE_IMAGE_EXTRA_INSTALL +=3D =
" python3 util-linux mtd-utils-jffs2 mtd-utils-misc" EXTRA_IMAGE_FEATURES +=
=
=3D "staticdev-pkgs" *DISTRO_FEATURES +=3D "x11"* DISTRO_FEATURES +=3D "wi=
fi ipv4 ipv6 nfs usbgadget keyboard usbhost pci cramfs glx" IMAGE_INSTALL_a=
ppend =3D "perf dbus libnss-mdns minicom rsync dbus dstat hostapd dhcpcd na=
sm ncurses-libncurses ncurses-tools ncurses-terminfo-base python3-matplotli=
b python3-flask" IMAGE_INSTALL +=3D "vim lzo dosfstools nfs-utils unzip mak=
e mtd-utils e2fsprogs " IMAGE_INSTALL +=3D " pciutils man-pages iperf3 " IM=
AGE_INSTALL +=3D " libtirpc libsdl2 " but still i am getting the following =
error,
Loading cache: 100% | | ETA: --:--:-- Loaded 0 entries from dependency cac=
he. Parsing recipes: 100% |################################################=
###########################################################################=
###########################################| Time: 0:00:11 Parsing of 2316 =
.bb files complete (0 cached, 2316 parsed). 3545 targets, 213 skipped, 0 ma=
sked, 0 errors. ERROR: Nothing PROVIDES 'core-image-sato' core-image-sato w=
as skipped: 'packagegroup-core-x11-xserver' in IMAGE_FEATURES (added via EX=
TRA_IMAGE_FEATURES) is not a valid image feature. Valid features: allow-emp=
ty-password allow-root-login bash-completion-pkgs dbg-pkgs debug-tweaks dev=
-pkgs doc doc-pkgs eclipse-debug empty-root-password hwcodecs nfs-client nf=
s-server package-management post-install-logging ptest-pkgs read-only-rootf=
s splash src-pkgs ssh-server-dropbear ssh-server-openssh stateless-rootfs s=
taticdev-pkgs tools-debug tools-profile tools-sdk tools-testapps x11 x11-ba=
se x11-sato
Can you suggest where modify exactly??Kindly suggest

Thanks!

--hbMLR2ecoAOgLRqjGReP
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Quentin,<br /><span style=3D"white-space: pre-wrap;">Missing x11 in DIST=
RO_FEATURES in your distro.</span><br style=3D"white-space: pre-wrap;" /><a=
 style=3D"background-color: #ffffff; white-space: pre-wrap;" href=3D"http:/=
/cgit.openembedded.org/openembedded-core/tree/meta/recipes-graphics/package=
groups/packagegroup-core-x11-xserver.bb?h=3Dmaster#n12" target=3D"_blank" r=
el=3D"noopener">http://cgit.openembedded.org/openembedded-core/tree/meta/re=
cipes-graphics/packagegroups/packagegroup-core-x11-xserver.bb?h=3Dmaster#n1=
2&nbsp;&nbsp;(the same is present in </a><a style=3D"background-color: #fff=
fff; color: #23527c; outline: 0px;" href=3D"http://cgit.openembedded.org/op=
enembedded-core/tree/meta/recipes-graphics/packagegroups/packagegroup-core-=
x11-xserver.bb?h=3Dmaster#n12" target=3D"_blank" rel=3D"noopener">openembed=
ded-core/tree/meta/recipes-graphics/packagegroups</a><a style=3D"background=
-color: #ffffff; white-space: pre-wrap;" href=3D"http://cgit.openembedded.o=
rg/openembedded-core/tree/meta/recipes-graphics/packagegroups/packagegroup-=
core-x11-xserver.bb?h=3Dmaster#n12" target=3D"_blank" rel=3D"noopener"> )</=
a><br /><br />i have added x11&nbsp; in&nbsp;<span style=3D"white-space: pr=
e-wrap;"> DISTRO_FEATURES but it seems i am facing the same issue , i am at=
taching the few parameters from local.conf</span><br /><br /><span style=3D=
"white-space: pre-wrap;">EXTRA_IMAGE_FEATURES ?=3D " debug-tweaks <strong> =
packagegroup-core-x11-xserver</strong> allow-empty-password allow-root-logi=
n bash-completion-pkgs dbg-pkgs debug-tweaks dev-pkgs doc doc-pkgs eclipse-=
debug empty-root-password hwcodecs nfs-client nfs-server package-management=
 post-install-logging ptest-pkgs read-only-rootfs splash src-pkgs ssh-serve=
r-dropbear ssh-server-openssh stateless-rootfs staticdev-pkgs tools-debug t=
ools-profile tools-sdk tools-testapps x11 x11-base x11-sato " ENABLE_UART =
=3D "1" CORE_IMAGE_EXTRA_INSTALL +=3D "git ruby bsdtar pseudo os-release l=
sb-release openssh cmake apt" DISTRO_FEATURES_append =3D "opengl python3-pi=
p " IMAGE_FEATURES_append =3D "tools-debug tools-sdk dev-pkgs" EXTRA_IMAGE_=
FEATURES_append +=3D "src-pkgs package-management ssh-server-dropbear ssh-s=
erver-openssh stateless-rootfs " IMAGE_INSTALL_append +=3D " dhcp-client dh=
cp-server " CORE_IMAGE_EXTRA_INSTALL +=3D " python3 util-linux mtd-utils-jf=
fs2 mtd-utils-misc" EXTRA_IMAGE_FEATURES +=3D "staticdev-pkgs" <strong>DIST=
RO_FEATURES +=3D "x11"</strong> DISTRO_FEATURES +=3D "wifi ipv4 ipv6 nfs us=
bgadget keyboard usbhost pci cramfs glx" IMAGE_INSTALL_append =3D "perf dbu=
s libnss-mdns minicom rsync dbus dstat hostapd dhcpcd nasm ncurses-libncurs=
es ncurses-tools ncurses-terminfo-base python3-matplotlib python3-flask" IM=
AGE_INSTALL +=3D "vim lzo dosfstools nfs-utils unzip make mtd-utils e2fspro=
gs " IMAGE_INSTALL +=3D " pciutils man-pages iperf3 " IMAGE_INSTALL +=3D " =
libtirpc libsdl2 " but still i am getting the following error,</span><br />=
<span style=3D"white-space: pre-wrap;">Loading cache: 100% | | ETA: --:--:-=
- Loaded 0 entries from dependency cache. Parsing recipes: 100% |##########=
###########################################################################=
###########################################################################=
######| Time: 0:00:11 Parsing of 2316 .bb files complete (0 cached, 2316 pa=
rsed). 3545 targets, 213 skipped, 0 masked, 0 errors. ERROR: Nothing PROVID=
ES 'core-image-sato' core-image-sato was skipped: 'packagegroup-core-x11-xs=
erver' in IMAGE_FEATURES (added via EXTRA_IMAGE_FEATURES) is not a valid im=
age feature. Valid features: allow-empty-password allow-root-login bash-com=
pletion-pkgs dbg-pkgs debug-tweaks dev-pkgs doc doc-pkgs eclipse-debug empt=
y-root-password hwcodecs nfs-client nfs-server package-management post-inst=
all-logging ptest-pkgs read-only-rootfs splash src-pkgs ssh-server-dropbear=
 ssh-server-openssh stateless-rootfs staticdev-pkgs tools-debug tools-profi=
le tools-sdk tools-testapps x11 x11-base x11-sato </span><br />Can you sugg=
est where modify exactly??Kindly suggest&nbsp;<br /><br />Thanks!

--hbMLR2ecoAOgLRqjGReP--
