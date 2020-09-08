Subject: do_rootfs: Could not invoke dnf
To: yocto@lists.yoctoproject.org
From: majid.nasiry65@gmail.com
X-Originating-Location: Frankfurt am Main, Hesse, DE (212.103.50.163)
X-Originating-Platform: Windows Chrome 85
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 08 Sep 2020 03:31:42 -0700
Message-ID: <bAma.1599561102693362770.4pvi@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Xl646Q0OCbj0zWAaktqu"

--Xl646Q0OCbj0zWAaktqu
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello
I trying to create an image but when I add a library ( opendnp3 ( https://=
github.com/dnp3/opendnp3 ) ) to image I got below error.

DEBUG: Executing python function extend_recipe_sysroot
NOTE: Direct dependencies are ['virtual:native:/home/majid/myir-imx-manife=
st/sources/poky/meta/recipes-core/update-rc.d/update-rc.d_0.8.bb:do_populat=
e_sysroot', '/home/majid/myir-imx-manifest/sources/poky/meta/recipes-devtoo=
ls/qemu/qemuwrapper-cross_1.0.bb:do_populate_sysroot', '/home/majid/myir-im=
x-manifest/sources/poky/meta/recipes-core/glibc/ldconfig-native_2.12.1.bb:d=
o_populate_sysroot', 'virtual:native:/home/majid/myir-imx-manifest/sources/=
poky/meta/recipes-extended/pbzip2/pbzip2_1.1.13.bb:do_populate_sysroot', 'v=
irtual:native:/home/majid/myir-imx-manifest/sources/poky/meta/recipes-devto=
ols/dnf/dnf_4.2.2.bb:do_populate_sysroot', '/home/majid/myir-imx-manifest/s=
ources/meta-myir/meta-bsp/recipes-security/optee-imx/optee-os_3.7.0.imx.bb:=
do_populate_sysroot', '/home/majid/myir-imx-manifest/sources/meta-myir/meta=
-bsp/recipes-bsp/u-boot/u-boot-imx_2019.04.bb:do_populate_sysroot', '/home/=
majid/myir-imx-manifest/sources/poky/meta/recipes-core/glibc/cross-localede=
f-native_2.30.bb:do_populate_sysroot', 'virtual:native:/home/majid/myir-imx=
-manifest/sources/poky/meta/recipes-devtools/opkg/opkg_0.4.1.bb:do_populate=
_sysroot', 'virtual:native:/home/majid/myir-imx-manifest/sources/poky/meta/=
recipes-devtools/createrepo-c/createrepo-c_0.15.0.bb:do_populate_sysroot', =
'virtual:native:/home/majid/myir-imx-manifest/sources/poky/meta/recipes-sup=
port/bmap-tools/bmap-tools_3.5.bb:do_populate_sysroot', 'virtual:native:/ho=
me/majid/myir-imx-manifest/sources/poky/meta/recipes-extended/pigz/pigz_2.4=
.bb:do_populate_sysroot', 'virtual:native:/home/majid/myir-imx-manifest/sou=
rces/poky/meta/recipes-devtools/prelink/prelink_git.bb:do_populate_sysroot'=
, 'virtual:native:/home/majid/myir-imx-manifest/sources/poky/meta/recipes-d=
evtools/e2fsprogs/e2fsprogs_1.45.3.bb:do_populate_sysroot', '/home/majid/my=
ir-imx-manifest/sources/poky/meta/recipes-kernel/kmod/depmodwrapper-cross_1=
.0.bb:do_populate_sysroot', 'virtual:native:/home/majid/myir-imx-manifest/s=
ources/poky/meta/recipes-devtools/pseudo/pseudo_git.bb:do_populate_sysroot'=
, 'virtual:native:/home/majid/myir-imx-manifest/sources/poky/meta/recipes-d=
evtools/opkg-utils/opkg-utils_0.4.1.bb:do_populate_sysroot', 'virtual:nativ=
e:/home/majid/myir-imx-manifest/sources/poky/meta/recipes-devtools/makedevs=
/makedevs_1.0.1.bb:do_populate_sysroot', '/home/majid/myir-imx-manifest/sou=
rces/poky/meta/recipes-devtools/mklibs/mklibs-native_0.1.44.bb:do_populate_=
sysroot', 'virtual:native:/home/majid/myir-imx-manifest/sources/poky/meta/r=
ecipes-devtools/rpm/rpm_4.14.2.1.bb:do_populate_sysroot']
NOTE: Installed into sysroot: []
NOTE: Skipping as already exists in sysroot: ['update-rc.d-native', 'qemuw=
rapper-cross', 'ldconfig-native', 'pbzip2-native', 'dnf-native', 'optee-os'=
, 'u-boot-imx', 'cross-localedef-native', 'opkg-native', 'createrepo-c-nati=
ve', 'bmap-tools-native', 'pigz-native', 'prelink-native', 'e2fsprogs-nativ=
e', 'depmodwrapper-cross', 'pseudo-native', 'opkg-utils-native', 'makedevs-=
native', 'mklibs-native', 'rpm-native', 'systemd-systemctl-native', 'shadow=
-native', 'quilt-native', 'qemu-native', 'kmod-native', 'bzip2-native', 'py=
thon3-native', 'ninja-native', 'gettext-minimal-native', 'librepo-native', =
'libcomps-native', 'cmake-native', 'libdnf-native', 'python3-iniparse-nativ=
e', 'gcc-runtime', 'glibc', 'libtool-native', 'autoconf-native', 'gnu-confi=
g-native', 'automake-native', 'libsolv-native', 'pkgconfig-native', 'libarc=
hive-native', 'curl-native', 'expat-native', 'file-native', 'sqlite3-native=
', 'zlib-native', 'xz-native', 'glib-2.0-native', 'libxml2-native', 'libmod=
ulemd-native', 'openssl-native', 'python3-setuptools-native', 'python3-six-=
native', 'binutils-native', 'elfutils-native', 'texinfo-dummy-native', 'uti=
l-linux-native', 'attr-native', 'perl-native', 'dbus-native', 'nss-native',=
 'popt-native', 'db-native', 'debianutils-native', 'gtk-doc-native', 'gdbm-=
native', 'libtirpc-native', 'libffi-native', 'libnsl2-native', 'readline-na=
tive', 're2c-native', 'gpgme-native', 'libcheck-native', 'ncurses-native', =
'gobject-introspection-native', 'swig-native', 'json-c-native', 'libgcc', '=
linux-libc-headers', 'm4-native', 'lzo-native', 'libpcre-native', 'gettext-=
native', 'meson-native', 'libyaml-native', 'unzip-native', 'flex-native', '=
libcap-ng-native', 'nspr-native', 'libgpg-error-native', 'libassuan-native'=
]
DEBUG: Python function extend_recipe_sysroot finished
DEBUG: Executing python function do_rootfs
NOTE: Initializing intercept dir for /home/majid/myir-imx-manifest/build/t=
mp/work/myd_y6ull14x14-poky-linux-gnueabi/myir-image-core/1.0-r0/rootfs
DEBUG: Collected intercepts:
/home/majid/myir-imx-manifest/sources/poky/scripts/postinst-intercepts/del=
ay_to_first_boot
/home/majid/myir-imx-manifest/sources/poky/scripts/postinst-intercepts/pos=
tinst_intercept
/home/majid/myir-imx-manifest/sources/poky/scripts/postinst-intercepts/upd=
ate_font_cache
/home/majid/myir-imx-manifest/sources/poky/scripts/postinst-intercepts/upd=
ate_gio_module_cache
/home/majid/myir-imx-manifest/sources/poky/scripts/postinst-intercepts/upd=
ate_gtk_icon_cache
/home/majid/myir-imx-manifest/sources/poky/scripts/postinst-intercepts/upd=
ate_gtk_immodules_cache
/home/majid/myir-imx-manifest/sources/poky/scripts/postinst-intercepts/upd=
ate_pixbuf_cache
/home/majid/myir-imx-manifest/sources/poky/scripts/postinst-intercepts/upd=
ate_udev_hwdb

NOTE: ###### Generate rootfs #######
NOTE: Executing '/home/majid/myir-imx-manifest/build/tmp/work/myd_y6ull14x=
14-poky-linux-gnueabi/myir-image-core/1.0-r0/recipe-sysroot-native/usr/bin/=
createrepo_c --update -q /home/majid/myir-imx-manifest/build/tmp/work/myd_y=
6ull14x14-poky-linux-gnueabi/myir-image-core/1.0-r0/oe-rootfs-repo' ...
NOTE: Running /home/majid/myir-imx-manifest/build/tmp/work/myd_y6ull14x14-=
poky-linux-gnueabi/myir-image-core/1.0-r0/recipe-sysroot-native/usr/bin/dnf=
 -v --rpmverbosity=3Dinfo -y -c /home/majid/myir-imx-manifest/build/tmp/wor=
k/myd_y6ull14x14-poky-linux-gnueabi/myir-image-core/1.0-r0/rootfs/etc/dnf/d=
nf.conf --setopt=3Dreposdir=3D/home/majid/myir-imx-manifest/build/tmp/work/=
myd_y6ull14x14-poky-linux-gnueabi/myir-image-core/1.0-r0/rootfs/etc/yum.rep=
os.d --installroot=3D/home/majid/myir-imx-manifest/build/tmp/work/myd_y6ull=
14x14-poky-linux-gnueabi/myir-image-core/1.0-r0/rootfs --setopt=3Dlogdir=3D=
/home/majid/myir-imx-manifest/build/tmp/work/myd_y6ull14x14-poky-linux-gnue=
abi/myir-image-core/1.0-r0/temp --repofrompath=3Doe-repo,/home/majid/myir-i=
mx-manifest/build/tmp/work/myd_y6ull14x14-poky-linux-gnueabi/myir-image-cor=
e/1.0-r0/oe-rootfs-repo makecache --refresh
DEBUG: DNF version: 4.2.2
cachedir: /home/majid/myir-imx-manifest/build/tmp/work/myd_y6ull14x14-poky=
-linux-gnueabi/myir-image-core/1.0-r0/rootfs/var/cache/dnf
Added oe-repo repo from /home/majid/myir-imx-manifest/build/tmp/work/myd_y=
6ull14x14-poky-linux-gnueabi/myir-image-core/1.0-r0/oe-rootfs-repo
Making cache files for all metadata files.
oe-repo: has expired and will be refreshed.
repo: downloading from remote: oe-repo
oe-repo=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=
=C2=A0127 MB/s | 1.3 MB=C2=A0 =C2=A0 =C2=A000:00
not found other for:
not found modules for:
not found deltainfo for:
not found updateinfo for:
oe-repo: using metadata from Tue 08 Sep 2020 09:48:47 AM UTC.
Last metadata expiration check: 0:00:01 ago on Tue 08 Sep 2020 09:48:47 AM=
 UTC.
No module defaults found
Metadata cache created.

NOTE: Running /home/majid/myir-imx-manifest/build/tmp/work/myd_y6ull14x14-=
poky-linux-gnueabi/myir-image-core/1.0-r0/recipe-sysroot-native/usr/bin/dnf=
 -v --rpmverbosity=3Dinfo -y -c /home/majid/myir-imx-manifest/build/tmp/wor=
k/myd_y6ull14x14-poky-linux-gnueabi/myir-image-core/1.0-r0/rootfs/etc/dnf/d=
nf.conf --setopt=3Dreposdir=3D/home/majid/myir-imx-manifest/build/tmp/work/=
myd_y6ull14x14-poky-linux-gnueabi/myir-image-core/1.0-r0/rootfs/etc/yum.rep=
os.d --installroot=3D/home/majid/myir-imx-manifest/build/tmp/work/myd_y6ull=
14x14-poky-linux-gnueabi/myir-image-core/1.0-r0/rootfs --setopt=3Dlogdir=3D=
/home/majid/myir-imx-manifest/build/tmp/work/myd_y6ull14x14-poky-linux-gnue=
abi/myir-image-core/1.0-r0/temp --repofrompath=3Doe-repo,/home/majid/myir-i=
mx-manifest/build/tmp/work/myd_y6ull14x14-poky-linux-gnueabi/myir-image-cor=
e/1.0-r0/oe-rootfs-repo --nogpgcheck install locale-base-en-us locale-base-=
en-gb psplash start-service myir-rc-local staticip-network packagegroup-cor=
e-boot packagegroup-base-extended ppp-quectel u-boot-imx-fw-utils opendnp3 =
packagegroup-core-nfs-server alsa-utils packagegroup-core-ssh-dropbear pack=
agegroup-fsl-optee-imx run-postinsts
ERROR: Could not invoke dnf. Command '/home/majid/myir-imx-manifest/build/=
tmp/work/myd_y6ull14x14-poky-linux-gnueabi/myir-image-core/1.0-r0/recipe-sy=
sroot-native/usr/bin/dnf -v --rpmverbosity=3Dinfo -y -c /home/majid/myir-im=
x-manifest/build/tmp/work/myd_y6ull14x14-poky-linux-gnueabi/myir-image-core=
/1.0-r0/rootfs/etc/dnf/dnf.conf --setopt=3Dreposdir=3D/home/majid/myir-imx-=
manifest/build/tmp/work/myd_y6ull14x14-poky-linux-gnueabi/myir-image-core/1=
.0-r0/rootfs/etc/yum.repos.d --installroot=3D/home/majid/myir-imx-manifest/=
build/tmp/work/myd_y6ull14x14-poky-linux-gnueabi/myir-image-core/1.0-r0/roo=
tfs --setopt=3Dlogdir=3D/home/majid/myir-imx-manifest/build/tmp/work/myd_y6=
ull14x14-poky-linux-gnueabi/myir-image-core/1.0-r0/temp --repofrompath=3Doe=
-repo,/home/majid/myir-imx-manifest/build/tmp/work/myd_y6ull14x14-poky-linu=
x-gnueabi/myir-image-core/1.0-r0/oe-rootfs-repo --nogpgcheck install locale=
-base-en-us locale-base-en-gb psplash start-service myir-rc-local staticip-=
network packagegroup-core-boot packagegroup-base-extended ppp-quectel u-boo=
t-imx-fw-utils opendnp3 packagegroup-core-nfs-server alsa-utils packagegrou=
p-core-ssh-dropbear packagegroup-fsl-optee-imx run-postinsts' returned 1:
DNF version: 4.2.2
cachedir: /home/majid/myir-imx-manifest/build/tmp/work/myd_y6ull14x14-poky=
-linux-gnueabi/myir-image-core/1.0-r0/rootfs/var/cache/dnf
Added oe-repo repo from /home/majid/myir-imx-manifest/build/tmp/work/myd_y=
6ull14x14-poky-linux-gnueabi/myir-image-core/1.0-r0/oe-rootfs-repo
repo: using cache for: oe-repo
not found other for:
not found modules for:
not found deltainfo for:
not found updateinfo for:
oe-repo: using metadata from Tue 08 Sep 2020 09:48:47 AM UTC.
Last metadata expiration check: 0:00:01 ago on Tue 08 Sep 2020 09:48:47 AM=
 UTC.
No module defaults found
No match for argument: opendnp3
Error: Unable to find a match

DEBUG: Python function do_rootfs finished

What is the problem?

Regards

--Xl646Q0OCbj0zWAaktqu
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello<br />I trying to create an image but when I add a library (<a href=3D=
"https://github.com/dnp3/opendnp3" target=3D"_blank" rel=3D"noopener">opend=
np3</a>) to image I got below error.<br /><br />
<div>DEBUG: Executing python function extend_recipe_sysroot</div>
<div>NOTE: Direct dependencies are ['virtual:native:/home/majid/myir-imx-m=
anifest/sources/poky/meta/recipes-core/update-rc.d/update-rc.d_0.8.bb:do_po=
pulate_sysroot', '/home/majid/myir-imx-manifest/sources/poky/meta/recipes-d=
evtools/qemu/qemuwrapper-cross_1.0.bb:do_populate_sysroot', '/home/majid/my=
ir-imx-manifest/sources/poky/meta/recipes-core/glibc/ldconfig-native_2.12.1=
.bb:do_populate_sysroot', 'virtual:native:/home/majid/myir-imx-manifest/sou=
rces/poky/meta/recipes-extended/pbzip2/pbzip2_1.1.13.bb:do_populate_sysroot=
', 'virtual:native:/home/majid/myir-imx-manifest/sources/poky/meta/recipes-=
devtools/dnf/dnf_4.2.2.bb:do_populate_sysroot', '/home/majid/myir-imx-manif=
est/sources/meta-myir/meta-bsp/recipes-security/optee-imx/optee-os_3.7.0.im=
x.bb:do_populate_sysroot', '/home/majid/myir-imx-manifest/sources/meta-myir=
/meta-bsp/recipes-bsp/u-boot/u-boot-imx_2019.04.bb:do_populate_sysroot', '/=
home/majid/myir-imx-manifest/sources/poky/meta/recipes-core/glibc/cross-loc=
aledef-native_2.30.bb:do_populate_sysroot', 'virtual:native:/home/majid/myi=
r-imx-manifest/sources/poky/meta/recipes-devtools/opkg/opkg_0.4.1.bb:do_pop=
ulate_sysroot', 'virtual:native:/home/majid/myir-imx-manifest/sources/poky/=
meta/recipes-devtools/createrepo-c/createrepo-c_0.15.0.bb:do_populate_sysro=
ot', 'virtual:native:/home/majid/myir-imx-manifest/sources/poky/meta/recipe=
s-support/bmap-tools/bmap-tools_3.5.bb:do_populate_sysroot', 'virtual:nativ=
e:/home/majid/myir-imx-manifest/sources/poky/meta/recipes-extended/pigz/pig=
z_2.4.bb:do_populate_sysroot', 'virtual:native:/home/majid/myir-imx-manifes=
t/sources/poky/meta/recipes-devtools/prelink/prelink_git.bb:do_populate_sys=
root', 'virtual:native:/home/majid/myir-imx-manifest/sources/poky/meta/reci=
pes-devtools/e2fsprogs/e2fsprogs_1.45.3.bb:do_populate_sysroot', '/home/maj=
id/myir-imx-manifest/sources/poky/meta/recipes-kernel/kmod/depmodwrapper-cr=
oss_1.0.bb:do_populate_sysroot', 'virtual:native:/home/majid/myir-imx-manif=
est/sources/poky/meta/recipes-devtools/pseudo/pseudo_git.bb:do_populate_sys=
root', 'virtual:native:/home/majid/myir-imx-manifest/sources/poky/meta/reci=
pes-devtools/opkg-utils/opkg-utils_0.4.1.bb:do_populate_sysroot', 'virtual:=
native:/home/majid/myir-imx-manifest/sources/poky/meta/recipes-devtools/mak=
edevs/makedevs_1.0.1.bb:do_populate_sysroot', '/home/majid/myir-imx-manifes=
t/sources/poky/meta/recipes-devtools/mklibs/mklibs-native_0.1.44.bb:do_popu=
late_sysroot', 'virtual:native:/home/majid/myir-imx-manifest/sources/poky/m=
eta/recipes-devtools/rpm/rpm_4.14.2.1.bb:do_populate_sysroot']</div>
<div>NOTE: Installed into sysroot: []</div>
<div>NOTE: Skipping as already exists in sysroot: ['update-rc.d-native', '=
qemuwrapper-cross', 'ldconfig-native', 'pbzip2-native', 'dnf-native', 'opte=
e-os', 'u-boot-imx', 'cross-localedef-native', 'opkg-native', 'createrepo-c=
-native', 'bmap-tools-native', 'pigz-native', 'prelink-native', 'e2fsprogs-=
native', 'depmodwrapper-cross', 'pseudo-native', 'opkg-utils-native', 'make=
devs-native', 'mklibs-native', 'rpm-native', 'systemd-systemctl-native', 's=
hadow-native', 'quilt-native', 'qemu-native', 'kmod-native', 'bzip2-native'=
, 'python3-native', 'ninja-native', 'gettext-minimal-native', 'librepo-nati=
ve', 'libcomps-native', 'cmake-native', 'libdnf-native', 'python3-iniparse-=
native', 'gcc-runtime', 'glibc', 'libtool-native', 'autoconf-native', 'gnu-=
config-native', 'automake-native', 'libsolv-native', 'pkgconfig-native', 'l=
ibarchive-native', 'curl-native', 'expat-native', 'file-native', 'sqlite3-n=
ative', 'zlib-native', 'xz-native', 'glib-2.0-native', 'libxml2-native', 'l=
ibmodulemd-native', 'openssl-native', 'python3-setuptools-native', 'python3=
-six-native', 'binutils-native', 'elfutils-native', 'texinfo-dummy-native',=
 'util-linux-native', 'attr-native', 'perl-native', 'dbus-native', 'nss-nat=
ive', 'popt-native', 'db-native', 'debianutils-native', 'gtk-doc-native', '=
gdbm-native', 'libtirpc-native', 'libffi-native', 'libnsl2-native', 'readli=
ne-native', 're2c-native', 'gpgme-native', 'libcheck-native', 'ncurses-nati=
ve', 'gobject-introspection-native', 'swig-native', 'json-c-native', 'libgc=
c', 'linux-libc-headers', 'm4-native', 'lzo-native', 'libpcre-native', 'get=
text-native', 'meson-native', 'libyaml-native', 'unzip-native', 'flex-nativ=
e', 'libcap-ng-native', 'nspr-native', 'libgpg-error-native', 'libassuan-na=
tive']</div>
<div>DEBUG: Python function extend_recipe_sysroot finished</div>
<div>DEBUG: Executing python function do_rootfs</div>
<div>NOTE: Initializing intercept dir for /home/majid/myir-imx-manifest/bu=
ild/tmp/work/myd_y6ull14x14-poky-linux-gnueabi/myir-image-core/1.0-r0/rootf=
s</div>
<div>DEBUG: Collected intercepts:</div>
<div>&nbsp; /home/majid/myir-imx-manifest/sources/poky/scripts/postinst-in=
tercepts/delay_to_first_boot</div>
<div>&nbsp; /home/majid/myir-imx-manifest/sources/poky/scripts/postinst-in=
tercepts/postinst_intercept</div>
<div>&nbsp; /home/majid/myir-imx-manifest/sources/poky/scripts/postinst-in=
tercepts/update_font_cache</div>
<div>&nbsp; /home/majid/myir-imx-manifest/sources/poky/scripts/postinst-in=
tercepts/update_gio_module_cache</div>
<div>&nbsp; /home/majid/myir-imx-manifest/sources/poky/scripts/postinst-in=
tercepts/update_gtk_icon_cache</div>
<div>&nbsp; /home/majid/myir-imx-manifest/sources/poky/scripts/postinst-in=
tercepts/update_gtk_immodules_cache</div>
<div>&nbsp; /home/majid/myir-imx-manifest/sources/poky/scripts/postinst-in=
tercepts/update_pixbuf_cache</div>
<div>&nbsp; /home/majid/myir-imx-manifest/sources/poky/scripts/postinst-in=
tercepts/update_udev_hwdb</div>
<div>&nbsp;</div>
<div>NOTE: ###### Generate rootfs #######</div>
<div>NOTE: Executing '/home/majid/myir-imx-manifest/build/tmp/work/myd_y6u=
ll14x14-poky-linux-gnueabi/myir-image-core/1.0-r0/recipe-sysroot-native/usr=
/bin/createrepo_c --update -q /home/majid/myir-imx-manifest/build/tmp/work/=
myd_y6ull14x14-poky-linux-gnueabi/myir-image-core/1.0-r0/oe-rootfs-repo' ..=
.</div>
<div>NOTE: Running /home/majid/myir-imx-manifest/build/tmp/work/myd_y6ull1=
4x14-poky-linux-gnueabi/myir-image-core/1.0-r0/recipe-sysroot-native/usr/bi=
n/dnf -v --rpmverbosity=3Dinfo -y -c /home/majid/myir-imx-manifest/build/tm=
p/work/myd_y6ull14x14-poky-linux-gnueabi/myir-image-core/1.0-r0/rootfs/etc/=
dnf/dnf.conf --setopt=3Dreposdir=3D/home/majid/myir-imx-manifest/build/tmp/=
work/myd_y6ull14x14-poky-linux-gnueabi/myir-image-core/1.0-r0/rootfs/etc/yu=
m.repos.d --installroot=3D/home/majid/myir-imx-manifest/build/tmp/work/myd_=
y6ull14x14-poky-linux-gnueabi/myir-image-core/1.0-r0/rootfs --setopt=3Dlogd=
ir=3D/home/majid/myir-imx-manifest/build/tmp/work/myd_y6ull14x14-poky-linux=
-gnueabi/myir-image-core/1.0-r0/temp --repofrompath=3Doe-repo,/home/majid/m=
yir-imx-manifest/build/tmp/work/myd_y6ull14x14-poky-linux-gnueabi/myir-imag=
e-core/1.0-r0/oe-rootfs-repo makecache --refresh</div>
<div>DEBUG: DNF version: 4.2.2</div>
<div>cachedir: /home/majid/myir-imx-manifest/build/tmp/work/myd_y6ull14x14=
-poky-linux-gnueabi/myir-image-core/1.0-r0/rootfs/var/cache/dnf</div>
<div>Added oe-repo repo from /home/majid/myir-imx-manifest/build/tmp/work/=
myd_y6ull14x14-poky-linux-gnueabi/myir-image-core/1.0-r0/oe-rootfs-repo</di=
v>
<div>Making cache files for all metadata files.</div>
<div>oe-repo: has expired and will be refreshed.</div>
<div>repo: downloading from remote: oe-repo</div>
<div>oe-repo&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;127 MB/s | 1.3 MB&nbsp; &nbsp; &nbsp;00:00&nbsp; &nbsp;&nbsp;</div=
>
<div>not found other for:&nbsp;</div>
<div>not found modules for:&nbsp;</div>
<div>not found deltainfo for:&nbsp;</div>
<div>not found updateinfo for:&nbsp;</div>
<div>oe-repo: using metadata from Tue 08 Sep 2020 09:48:47 AM UTC.</div>
<div>Last metadata expiration check: 0:00:01 ago on Tue 08 Sep 2020 09:48:=
47 AM UTC.</div>
<div>No module defaults found</div>
<div>Metadata cache created.</div>
<div>&nbsp;</div>
<div>NOTE: Running /home/majid/myir-imx-manifest/build/tmp/work/myd_y6ull1=
4x14-poky-linux-gnueabi/myir-image-core/1.0-r0/recipe-sysroot-native/usr/bi=
n/dnf -v --rpmverbosity=3Dinfo -y -c /home/majid/myir-imx-manifest/build/tm=
p/work/myd_y6ull14x14-poky-linux-gnueabi/myir-image-core/1.0-r0/rootfs/etc/=
dnf/dnf.conf --setopt=3Dreposdir=3D/home/majid/myir-imx-manifest/build/tmp/=
work/myd_y6ull14x14-poky-linux-gnueabi/myir-image-core/1.0-r0/rootfs/etc/yu=
m.repos.d --installroot=3D/home/majid/myir-imx-manifest/build/tmp/work/myd_=
y6ull14x14-poky-linux-gnueabi/myir-image-core/1.0-r0/rootfs --setopt=3Dlogd=
ir=3D/home/majid/myir-imx-manifest/build/tmp/work/myd_y6ull14x14-poky-linux=
-gnueabi/myir-image-core/1.0-r0/temp --repofrompath=3Doe-repo,/home/majid/m=
yir-imx-manifest/build/tmp/work/myd_y6ull14x14-poky-linux-gnueabi/myir-imag=
e-core/1.0-r0/oe-rootfs-repo --nogpgcheck install locale-base-en-us locale-=
base-en-gb psplash start-service myir-rc-local staticip-network packagegrou=
p-core-boot packagegroup-base-extended ppp-quectel u-boot-imx-fw-utils open=
dnp3 packagegroup-core-nfs-server alsa-utils packagegroup-core-ssh-dropbear=
 packagegroup-fsl-optee-imx run-postinsts</div>
<div>ERROR: Could not invoke dnf. Command '/home/majid/myir-imx-manifest/b=
uild/tmp/work/myd_y6ull14x14-poky-linux-gnueabi/myir-image-core/1.0-r0/reci=
pe-sysroot-native/usr/bin/dnf -v --rpmverbosity=3Dinfo -y -c /home/majid/my=
ir-imx-manifest/build/tmp/work/myd_y6ull14x14-poky-linux-gnueabi/myir-image=
-core/1.0-r0/rootfs/etc/dnf/dnf.conf --setopt=3Dreposdir=3D/home/majid/myir=
-imx-manifest/build/tmp/work/myd_y6ull14x14-poky-linux-gnueabi/myir-image-c=
ore/1.0-r0/rootfs/etc/yum.repos.d --installroot=3D/home/majid/myir-imx-mani=
fest/build/tmp/work/myd_y6ull14x14-poky-linux-gnueabi/myir-image-core/1.0-r=
0/rootfs --setopt=3Dlogdir=3D/home/majid/myir-imx-manifest/build/tmp/work/m=
yd_y6ull14x14-poky-linux-gnueabi/myir-image-core/1.0-r0/temp --repofrompath=
=
=3Doe-repo,/home/majid/myir-imx-manifest/build/tmp/work/myd_y6ull14x14-pok=
y-linux-gnueabi/myir-image-core/1.0-r0/oe-rootfs-repo --nogpgcheck install =
locale-base-en-us locale-base-en-gb psplash start-service myir-rc-local sta=
ticip-network packagegroup-core-boot packagegroup-base-extended ppp-quectel=
 u-boot-imx-fw-utils opendnp3 packagegroup-core-nfs-server alsa-utils packa=
gegroup-core-ssh-dropbear packagegroup-fsl-optee-imx run-postinsts' returne=
d 1:</div>
<div>DNF version: 4.2.2</div>
<div>cachedir: /home/majid/myir-imx-manifest/build/tmp/work/myd_y6ull14x14=
-poky-linux-gnueabi/myir-image-core/1.0-r0/rootfs/var/cache/dnf</div>
<div>Added oe-repo repo from /home/majid/myir-imx-manifest/build/tmp/work/=
myd_y6ull14x14-poky-linux-gnueabi/myir-image-core/1.0-r0/oe-rootfs-repo</di=
v>
<div>repo: using cache for: oe-repo</div>
<div>not found other for:&nbsp;</div>
<div>not found modules for:&nbsp;</div>
<div>not found deltainfo for:&nbsp;</div>
<div>not found updateinfo for:&nbsp;</div>
<div>oe-repo: using metadata from Tue 08 Sep 2020 09:48:47 AM UTC.</div>
<div>Last metadata expiration check: 0:00:01 ago on Tue 08 Sep 2020 09:48:=
47 AM UTC.</div>
<div>No module defaults found</div>
<div>No match for argument: opendnp3</div>
<div>Error: Unable to find a match</div>
<div>&nbsp;</div>
<div>DEBUG: Python function do_rootfs finished<br /><br />What is the prob=
lem?<br /><br />Regards</div>

--Xl646Q0OCbj0zWAaktqu--
