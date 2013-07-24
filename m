Return-Path: <Amit.Kumar@lntinfotech.com>
Received: from mail1.bemta7.messagelabs.com (mail1.bemta7.messagelabs.com
	[216.82.254.108])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6407DE01363
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 09:35:41 -0700 (PDT)
Received: from [216.82.254.20:34993] by server-12.bemta-7.messagelabs.com id
	4B/E7-18680-D5200F15; Wed, 24 Jul 2013 16:35:41 +0000
X-Env-Sender: Amit.Kumar@lntinfotech.com
X-Msg-Ref: server-2.tower-47.messagelabs.com!1374683736!693954!1
X-Originating-IP: [203.101.96.8]
X-StarScan-Received: 
X-StarScan-Version: 6.9.11; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 15470 invoked from network); 24 Jul 2013 16:35:39 -0000
Received: from unknown (HELO BLRINMSHTCAS02.bglrodc.lntinfotech.com)
	(203.101.96.8)
	by server-2.tower-47.messagelabs.com with AES128-SHA encrypted SMTP;
	24 Jul 2013 16:35:39 -0000
Received: from blrinmsmbx01.bglrodc.lntinfotech.com ([169.254.2.40]) by
	BLRINMSHTCAS02.bglrodc.lntinfotech.com ([172.28.0.83]) with mapi;
	Wed, 24 Jul 2013 22:04:36 +0530
From: Amit Kumar <Amit.Kumar@lntinfotech.com>
To: Gary Thomas <gary@mlbassoc.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Wed, 24 Jul 2013 22:05:36 +0530
Thread-Topic: [yocto] FW:  Regarding offline build
Thread-Index: Ac6IdG6F8nzh2Tz3QiCnZYOLb2kZtwAAvnIp
Message-ID: <AF0985D076EB244693F2CCD71AAB10BC2C5E1101BB@BLRINMSMBX01.bglrodc.lntinfotech.com>
References: <AF0985D076EB244693F2CCD71AAB10BC2C5E364AEF@BLRINMSMBX01.bglrodc.lntinfotech.com>
	<687289320.4zlV4NqfiV@helios>
	<AF0985D076EB244693F2CCD71AAB10BC2C5E6AB4AB@BLRINMSMBX01.bglrodc.lntinfotech.com>,
	<13093998.oFjvbLO2OA@helios>
	<AF0985D076EB244693F2CCD71AAB10BC2C5E1101B5@BLRINMSMBX01.bglrodc.lntinfotech.com>
	<AF0985D076EB244693F2CCD71AAB10BC2C5E6AB9E0@BLRINMSMBX01.bglrodc.lntinfotech.com>,
	<51EFDAE9.7060805@mlbassoc.com>
In-Reply-To: <51EFDAE9.7060805@mlbassoc.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: FW: Regarding offline build
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
X-List-Received-Date: Wed, 24 Jul 2013 16:35:42 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> Hi,
>       I have tried the steps suggested by Mr. Paul.
> But still i am facing an error to build yocto project offline.
> First - I use the machine that have full Internet access and execute the =
 - bitbake -c fetchall core-image-minimal Before that i have enabled the DL=
_DIR in conf/local.conf file.
>
> One the fetching done, i remove the internet and build the image - bitbak=
e -k core-image-minimal But still i am facing an error, some packages still=
 required internet access during build.
>
> Please find the attached error log with this mail.
> Please let me know if i missed out any step.

This process should have worked.  What files were in your DL_DIR at
the end of the fetchall step?



      After the end of fetchall step.. the files avaliable under the downlo=
ad is -
////////////////////////////////////////////////////////////////////
amit@amit-HP:~/Downloads/poky-dylan-9.0.1/build$ cd downloads/
backport/    debian/      eglibc-2.17/ etc/         git2/        licenses/ =
   share/
amit@amit-HP:~/Downloads/poky-dylan-9.0.1/build$
///////////////////////////////////////////////////////////////////

Check again after the build error -
////////////////////////////////////////////////////////////////////

amit@amit-HP:~/Downloads/poky-dylan-9.0.1/build/downloads$ ls
0001-crtstuff.c-USE_PT_GNU_EH_FRAME-Define-for-systems-us.patch.done  host.=
conf.done
0001-eglibc-menuconfig-support.patch.done                             hostn=
ame.sh.done
0001-eglibc-run-libm-err-tab.pl-with-specific-dirs-in-S.patch.done    hosts=
.done
0001-Fixing-keyboard_force_release.sh-shell-script-path.patch.done    hwclo=
ck.sh.done
0001-libffi-update-for-3.0.11.patch.done                              impro=
ve_auto_header_gen.patch.done
0001-Makefile.in-vis_hide-gen-hide-list-Do-not-make-defin.patch.done  inetd=
.conf.done
0001-man-disable-man-page-generation-because-we-don-t-hav.patch.done  inetd=
.done
0001-R_ARM_TLS_DTPOFF32.patch.done                                    init.=
done
0002-eglibc-menuconfig-hex-string-options.patch.done                  initg=
roups_keys.patch.done
0003-eglibc-menuconfig-build-instructions.patch.done                  initt=
ab.done
04-default-is-optimized.patch.done                                    input=
.patch.done
05-enable-ctypes-cross-build.patch.done                               input=
rc.done
06-ctypes-libffi-fix-configure.patch.done                             insta=
ll.patch.done
100-uclibc-conf.patch.done                                            inter=
faces.done
10-distutils-fix-swig-parameter.patch.done                            int-i=
s-not-the-same-size-as-size_t.patch.done
11-distutils-never-modify-shebang-line.patch.done                     IO-ac=
quire-lock-fix.patch.done
12-distutils-prefix-is-inside-staging-area.patch.done                 issue=
.done
187b7b1646ee.patch.done                                               issue=
.net.done
200-uclibc-locale.patch.done                                          kconf=
ig-frontends-3.8.0.0.tar.xz
203-uclibc-locale-no__x.patch.done                                    kconf=
ig-frontends-3.8.0.0.tar.xz.done
204-uclibc-locale-wchar_fix.patch.done                                ldfla=
gs.patch.done
205-uclibc-locale-update.patch.done                                   lib-b=
uild-fix.patch.done
301-missing-execinfo_h.patch.done                                     libca=
p2_2.22.orig.tar.gz
302-c99-snprintf.patch.done                                           libca=
p2_2.22.orig.tar.gz.done
303-c99-complex-ugly-hack.patch.done                                  libff=
i-3.0.11.tar.gz
304-index_macro.patch.done                                            libff=
i-3.0.11.tar.gz.done
305-libmudflap-susv3-legacy.patch.done                                libgc=
c-sjlj-check.patch.done
306-libstdc++-namespace.patch.done                                    libgc=
rypt-1.5.0.tar.gz
64bithack.patch.done                                                  libgc=
rypt-1.5.0.tar.gz.done
740-sh-pr24836.patch.done                                             libgp=
g-error-1.11.tar.bz2
800-arm-bigendian.patch.done                                          libgp=
g-error-1.11.tar.bz2.done
aarch64-adding-build-support.patch.done                               libib=
erty_path_fix.patch.done
ac_config_links.patch.done                                            libmp=
c_fix_for_automake-1.12.patch.done
acinclude.m4.done                                                     libta=
sn1-2.14.tar.gz
acl-2.2.51.src.tar.gz                                                 libta=
sn1-2.14.tar.gz.done
acl-2.2.51.src.tar.gz.done                                            libta=
sn1_fix_for_automake_1.12.patch.done
aclocal.tgz.done                                                      libto=
ol-2.4.2.tar.gz
add-aarch64-support.patch.done                                        libto=
ol-2.4.2.tar.gz.done
add-md5module-support.patch.done                                      libto=
ol-2.4-update.patch.done
add-pkgconfig-support.patch.done                                      libto=
ol2.patch.done
add_resource_h_to_wait_h.patch.done                                   libto=
ol.patch.done
add-system.patch.done                                                 libto=
ol-rpath-fix.patch.done
adduser-empty_pwd.patch.done                                          libus=
b-1.0.9.tar.bz2
add-verbose.patch.done                                                libus=
b-1.0.9.tar.bz2.done
amd64.patch.done                                                      libus=
b-compat-0.1.4.tar.bz2
ansidecl.patch.done                                                   libus=
b-compat-0.1.4.tar.bz2.done
apr-1.4.6.tar.bz2                                                     libxm=
l2-2.9.0.tar.gz
apr-1.4.6.tar.bz2.done                                                libxm=
l2-2.9.0.tar.gz.done
apr-util-1.5.1.tar.gz                                                 libxm=
l2-CVE-2012-2871.patch.done
apr-util-1.5.1.tar.gz.done                                            libxm=
l-64bit.patch.done
ar-from-env.patch.done                                                libxs=
lt-1.1.28.tar.gz
argparse-1.2.1.tar.gz                                                 libxs=
lt-1.1.28.tar.gz.done
argparse-1.2.1.tar.gz.done                                            licen=
ses
arm-hard-float-loader.patch.done                                      links=
.conf.done
attr-2.4.46.src.tar.gz                                                linux=
-3.8.tar.bz2
attr-2.4.46.src.tar.gz.done                                           linux=
-3.8.tar.bz2.done
autoconf-2.69.tar.gz                                                  local=
extra.rules.done
autoconf-2.69.tar.gz.done                                             local=
.rules.done
autofoo.patch.done                                                    long-=
long-thumb.patch.done
autoheader-nonfatal-warnings.patch.done                               lzo-2=
.06.tar.gz
automake-1.12.6.tar.gz                                                lzo-2=
.06.tar.gz.done
automake-1.12.6.tar.gz.done                                           m4-1.=
4.16.tar.gz
automount.rules.done                                                  m4-1.=
4.16.tar.gz.done
autonet.rules.done                                                    m4.pa=
tch.done
autoreconf-exclude.patch.done                                         Makef=
ile.am.done
autoreconf-foreign.patch.done                                         Makef=
ile.in.in.done
autoreconf-gnuconfigize.patch.done                                    makef=
ile.patch.done
autoreconf-include.patch.done                                         Makef=
ile-ptest.patch.done
autotools.patch.done                                                  make_=
git_commands_conditional.patch.done
avoid_absolute_paths_for_general_utils.patch.done                     make_=
include.done
avoid_AM_PROG_MKDIR_P_warning_error_with_automake_1.12.patch.done     mbsal=
ign-license.patch.done
avoid-FORTIFY-warnings.patch.done                                     MCONF=
IG.done
avoid-oob-array-access.patch.done                                     mdev.=
conf.done
avoid_static.patch.done                                               mdev.=
done
B921600.patch.done                                                    mips6=
4-default-ld-emulation.patch.done
backport                                                              mips6=
4-default-n64.patch.done
banner.sh.done                                                        mips-=
rld-map-check.patch.done
base-passwd_3.5.26.tar.gz                                             modut=
ils.sh.done
base-passwd_3.5.26.tar.gz.done                                        motd.=
done
binutils-2.23.1.tar.bz2                                               mount=
all.sh.done
binutils-2.23.1.tar.bz2.done                                          mount=
.blacklist.done
binutils-armv5e.patch.done                                            mount=
.busybox.done
binutils-fix-over-array-bounds-issue.patch.done                       mount=
nfs.sh.done
binutils-poison.patch.done                                            mount=
.sh.done
binutils-uclibc-100-uclibc-conf.patch.done                            mpc-0=
.8.2.tar.gz
binutils-uclibc-300-001_ld_makefile_patch.patch.done                  mpc-0=
.8.2.tar.gz.done
binutils-uclibc-300-006_better_file_error.patch.done                  mpfr-=
3.1.1.tar.bz2
binutils-uclibc-300-012_check_ldrunpath_length.patch.done             mpfr-=
3.1.1.tar.bz2.done
binutils-uclibc-gas-needs-libm.patch.done                             multi=
lib.patch.done
binutils-x86_64_i386_biarch.patch.done                                multi=
lib_readlib.patch.done
bison-2.7.tar.gz                                                      ncurs=
es-5.9.tar.gz
bison-2.7.tar.gz.done                                                 ncurs=
es-5.9.tar.gz.done
bootlogd.init.done                                                    need.=
done
bootmisc.sh.done                                                      neon-=
0.29.6.tar.gz
builddir.patch.done                                                   neon-=
0.29.6.tar.gz.done
buildtest.patch.done                                                  netba=
se_5.0.tar.gz
busybox-1.20.2-kernel_ver.patch.done                                  netba=
se_5.0.tar.gz.done
busybox-1.20.2.tar.bz2                                                netwo=
rk.sh.done
busybox-1.20.2.tar.bz2.done                                           nfsro=
ot.done
busybox-appletlib-dependency.patch.done                               nobas=
h.patch.done
busybox-cron.done                                                     nohos=
tlibs.patch.done
busybox-httpd.done                                                    norm-=
rpath.patch.done
busybox-klogd.service.in.done                                         norpa=
th.patch.done
busybox-mkfs-minix-tests_bigendian.patch.done                         nsswi=
tch.conf.done
busybox-syslog.service.in.done                                        obsol=
ete_automake_macros.patch.done
busybox-udhcpc-no_deconfig.patch.done                                 ocf-l=
inux-20120127.tar.gz
busybox-udhcpd.done                                                   ocf-l=
inux-20120127.tar.gz.done
bzip2-1.0.6.tar.gz                                                    oe-ld=
flags.patch.done
bzip2-1.0.6.tar.gz.done                                               opens=
sl-1.0.1e.tar.gz
check-automake-cross-warning.patch.done                               opens=
sl-1.0.1e.tar.gz.done
checkfs.sh.done                                                       opens=
sl_fix_for_x32.patch.done
check-if-symlinks-are-valid.patch.done                                opens=
sl-fix-link.patch.done
checkroot.sh.done                                                     optio=
nal_head_check.patch.done
cleanup.patch.done                                                    optio=
nal_libstdc.patch.done
COLLECT_GCC_OPTIONS.patch.done                                        paral=
lel.patch.done
config.cache.done                                                     passw=
d_rotate_check.patch.done
configfix.patch.done                                                  pcimo=
dules-pciutils.diff.done
config-guess-uclibc.patch.done                                        pciut=
ils-3.1.10.tar.bz2
config.rpath.done                                                     pciut=
ils-3.1.10.tar.bz2.done
config_site.patch.done                                                PD.pa=
tch.done
configure.ac.done                                                     permi=
ssions.rules.done
configure_fixes.patch.done                                            pigz-=
2.3.tar.gz
configure-fix.patch.done                                              pigz-=
2.3.tar.gz.done
configure-libtool.patch.done                                          pkg-c=
onfig-0.25.tar.gz
configure.patch.done                                                  pkg-c=
onfig-0.25.tar.gz.done
configure-sbindir.patch.done                                          pkgco=
nfig_fix.patch.done
configure-targets.patch.done                                          pkg-c=
onfig-native.in.done
COPYING.done                                                          pkgco=
nfig.patch.done
copyright.done                                                        popul=
ate-volatile.sh.done
correct_rpl_gettimeofday_signature.patch.done                         ppce5=
500-e6500-support.patch.done
cpp-honor-sysroot.patch.done                                          ppc_n=
o_crtsavres.patch.done
crypt-lib.patch.done                                                  ppc_s=
low_ieee754_sqrt.patch.done
cvs-20040608.patch.done                                               ppc-s=
qrt_finite.patch.done
debian                                                                ppc_w=
ith_cpu.patch.done
debug.patch.done                                                      pr322=
19.patch.done
default.script.done                                                   prefe=
r-cpio-over-pax-for-ustar-archives.patch.done
defconfig.done                                                        prefi=
x.patch.done
define_insn_reservation.patch.done                                    profi=
le.done
defines.h.done                                                        progr=
am_prefix.patch.done
depmod-search.conf.done                                               provi=
de.done
devfs-udev.rules.done                                                 pseud=
o-1.5.1.tar.bz2
device_table.txt.done                                                 pseud=
o-1.5.1.tar.bz2.done
devpts.done                                                           py-co=
mpile-compile-only-optimized-byte-code.patch.done
devpts.sh.done                                                        Pytho=
n-2.7.3.tar.bz2
disable-legacy.patch.done                                             Pytho=
n-2.7.3.tar.bz2.done
disable_relax_pic_calls_flag.patch.done                               pytho=
n-libdir.patch.done
disablesdt.patch.done                                                 quilt=
-0.60.tar.gz
disable-texinfo-5.patch.done                                          quilt=
-0.60.tar.gz.done
dont-depend-on-help2man.patch.done                                    rc.do=
ne
eglibc-2.17                                                           rcS-d=
efault.done
eglibc-2.17-svnr22064.tar.bz2                                         rcS.d=
one
eglibc-2.17-svnr22064.tar.bz2.done                                    readl=
ine62-001
eglibc_fix_findidx_parameters.patch.done                              readl=
ine62-001.done
eglibc-svn-arm-lowlevellock-include-tls.patch.done                    readl=
ine62-002
engines-install-in-libdir-ssl.patch.done                              readl=
ine62-002.done
etc                                                                   readl=
ine62-003
expat-2.1.0.tar.gz                                                    readl=
ine62-003.done
expat-2.1.0.tar.gz.done                                               readl=
ine62-004
fail_on_no_media.patch.done                                           readl=
ine62-004.done
fbsetup.done                                                          readl=
ine-6.2.tar.gz
fileops-without-wchar-io.patch.done                                   readl=
ine-6.2.tar.gz.done
filesystems.done                                                      read-=
only-rootfs-hook.sh.done
find.pl.done                                                          reboo=
t.done
find-touchscreen.sh.done                                              relat=
ive-libdir.patch.done
fix-configure.patch.done                                              remov=
e-gets.patch.done
fix-conflicting-rand.patch.done                                       remov=
e-index.patch.done
fix-final-rpath.patch.done                                            remov=
e.ldconfig.call.patch.done
fix-for-spurious-testsuite-failure.patch.done                         remov=
e-potcdate.sin.done
fix-gettext-version.patch.done                                        remov=
e-usr-local-lib-from-m4.patch.done
fix-g++-sysroot.patch.done                                            renam=
e-with-sysroot.patch.done
fix-install-depends.patch.done                                        respe=
ct-fstack-protector.patch.done
fixinstall.patch.done                                                 rmnol=
ogin.sh.done
Fix-NULL-pointer-crash.patch.done                                     rotat=
ion.done
fix_path_xtra.patch.done                                              rs600=
0-tables.patch.done
fix-rpath.patch.done                                                  run-p=
arts.in.usr-bin.patch.done
fix-tibetian-locales.patch.done                                       run-p=
test.done
fix-undefined-O_CLOEXEC.patch.done                                    run.r=
ules.done
flex-2.5.35.tar.bz2                                                   save-=
rtc.sh.done
flex-2.5.35.tar.bz2.done                                              scrip=
ts-Makefile.headersinst-install-headers-from-sc.patch.done
fortran-cross-compile-hack.patch.done                                 sends=
igs.done
fsl-ppc-no-fsqrt.patch.done                                           setup=
tools-0.6c11.tar.gz
fstab.done                                                            setup=
tools-0.6c11.tar.gz.done
functions.done                                                        share
gcc-4.3.1-ARCH_FLAGS_FOR_TARGET.patch.done                            share=
d-libs.patch.done
gcc-4.3.3-SYSROOT_CFLAGS_FOR_TARGET.patch.done                        shell=
s.done
gcc-4.7.2.tar.bz2                                                     simpl=
e.script.done
gcc-4.7.2.tar.bz2.done                                                singl=
e.done
gcc-argument-list-too-long.patch.done                                 sqlit=
e-autoconf-3071502.tar.gz
gcc-armv4-pass-fix-v4bx-to-ld.patch.done                              sqlit=
e-autoconf-3071502.tar.gz.done
gcc-poison-dir-extend.patch.done                                      stat-=
usr-bin.patch.done
gcc-poison-system-directories.patch.done                              stric=
t-atime.patch.done
gcc-uclibc-locale-ctype_touplow_t.patch.done                          subve=
rsion-1.7.8.tar.bz2
gdbm-1.10.tar.gz                                                      subve=
rsion-1.7.8.tar.bz2.done
gdbm-1.10.tar.gz.done                                                 swapa=
rgs.h.done
generate-supported.mk.done                                            symve=
r.patch.done
generic-syscalls.patch.done                                           sysfs=
.sh.done
get_header_tar.patch.done                                             syslo=
g.done
gettext-0.18.2.tar.gz                                                 syslo=
g-startup.conf.done
gettext-0.18.2.tar.gz.done                                            sys_r=
esource.patch.done
git2                                                                  sysvi=
nit-2.88dsf.tar.bz2
git2_git.gnome.org.gtk-doc-stub.tar.gz                                sysvi=
nit-2.88dsf.tar.bz2.done
git2_git.gnome.org.gtk-doc-stub.tar.gz.done                           tests=
uite-du-du-k-works-fix-false-positive.patch.done
git2_github.com.philb.update-rc.d.git.tar.gz                          tic-h=
ang.patch.done
git2_github.com.philb.update-rc.d.git.tar.gz.done                     tinyl=
ogin-1.4.tar.bz2
git2_git.kernel.org.pub.scm.utils.kernel.kmod.kmod.git.tar.gz         tinyl=
ogin-1.4.tar.bz2.done
git2_git.kernel.org.pub.scm.utils.kernel.kmod.kmod.git.tar.gz.done    trail=
ingslash.patch.done
git2_git.yoctoproject.org.linux-yocto-3.8.git.tar.gz                  trunk=
_opkg.googlecode.com_.svn_649_.tar.gz
git2_git.yoctoproject.org.linux-yocto-3.8.git.tar.gz.done             trunk=
_opkg.googlecode.com_.svn_649_.tar.gz.done
git2_git.yoctoproject.org.yocto-kernel-tools.git.tar.gz               tzsel=
ect-awk.patch.done
git2_git.yoctoproject.org.yocto-kernel-tools.git.tar.gz.done          tzsel=
ect-sh.patch.done
glib-2.0_fix_for_x32.patch.done                                       uclib=
c-__progname-conflict.patch.done
glib-2.34.3.tar.xz                                                    udev-=
182.tar.gz
glib-2.34.3.tar.xz.done                                               udev-=
182.tar.gz.done
glibc_crypt_fix.patch.done                                            udev-=
cache.default.done
GLIBC_DYNAMIC_LINKER.patch.done                                       udev-=
cache.done
glibc.fix_sqrt2.patch.done                                            udev.=
rules.done
glibconfig-sysdefs.h.done                                             umoun=
t.busybox.done
glib-gettextize-dir.patch.done                                        umoun=
tfs.done
GLRO_dl_debug_mask.patch.done                                         umoun=
tnfs.sh.done
gmp-5.1.0a.tar.bz2                                                    unifd=
ef.c.done
gmp-5.1.0a.tar.bz2.done                                               unins=
tall_force.patch.done
gmp_fix_for_x32.patch.done                                            unixc=
compiler.patch.done
gnu-config-20120814.tar.bz2                                           urand=
om.done
gnu-config-20120814.tar.bz2.done                                      usbd.=
done
gnu-configize.in.done                                                 usb-d=
evices-avoid-dependency-on-bash.patch.done
gnutls-2.12.21.tar.bz2                                                usbut=
ils-006.tar.gz
gnutls-2.12.21.tar.bz2.done                                           usbut=
ils-006.tar.gz.done
gnutls_fix_for_automake_1.12.1.patch.done                             use-d=
efaults.h-and-t-oe-in-B.patch.done
gnutls-openssl.patch.done                                             use-i=
ncludedir.patch.done
gperf-3.0.4.tar.gz                                                    use-m=
l-conf-files-from-B.patch.done
gperf-3.0.4.tar.gz.done                                               use_O=
2_option.patch.done
GPLv2.patch.done                                                      use-s=
ysroot-in-libpath.patch.done
guess-fix.patch.done                                                  util-=
linux-2.22.2.tar.bz2
guilt_0.33.orig.tar.gz                                                util-=
linux-2.22.2.tar.bz2.done
guilt_0.33.orig.tar.gz.done                                           util-=
linux-ng-2.16-mount_lock_path.patch.done
guilt-bash.patch.done                                                 util-=
linux-ng-replace-siginterrupt.patch.done
guilt-import-commit.patch.done                                        v86d-=
0.1.10.tar.bz2
guilt-init.patch.done                                                 v86d-=
0.1.10.tar.bz2.done
guilt.patch.done                                                      volat=
iles.done
guilt-pop.patch.done                                                  watch=
.in.usr-bin.patch.done
guilt-push-no-series.patch.done                                       wcast=
-qual-PR55383.patch.done
guilt-push.patch.done                                                 wget_=
dl_dir_fix.patch.done
guilt-update-supported-git-versions-to-1.8.x.patch.done               zlib-=
1.2.7.tar.bz2
halt.done                                                             zlib-=
1.2.7.tar.bz2.done
amit@amit-HP:~/Downloads/poky-dylan-9.0.1/build/downloads$

////////////////////////////////////////////////////////////////////



________________________________________
From: yocto-bounces@yoctoproject.org [yocto-bounces@yoctoproject.org] On Be=
half Of Gary Thomas [gary@mlbassoc.com]
Sent: Wednesday, July 24, 2013 7:17 PM
To: yocto@yoctoproject.org
Subject: Re: [yocto] FW:  Regarding offline build

On 2013-07-24 06:48, Amit Kumar wrote:
>
>
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.o=
rg] On Behalf Of Amit Kumar
> Sent: Wednesday, July 24, 2013 8:10 AM
> To: Paul Eggleton
> Cc: yocto@yoctoproject.org; Lee_Ballard@Dell.com
> Subject: Re: [yocto] Regarding offline build
>
> Hi,
>       I have tried the steps suggested by Mr. Paul.
> But still i am facing an error to build yocto project offline.
> First - I use the machine that have full Internet access and execute the =
 - bitbake -c fetchall core-image-minimal Before that i have enabled the DL=
_DIR in conf/local.conf file.
>
> One the fetching done, i remove the internet and build the image - bitbak=
e -k core-image-minimal But still i am facing an error, some packages still=
 required internet access during build.
>
> Please find the attached error log with this mail.
> Please let me know if i missed out any step.

This process should have worked.  What files were in your DL_DIR at
the end of the fetchall step?

> ________________________________________
> From: Paul Eggleton [paul.eggleton@linux.intel.com]
> Sent: Tuesday, July 23, 2013 4:05 PM
> To: Amit Kumar
> Cc: Lee_Ballard@Dell.com; yocto@yoctoproject.org
> Subject: Re: [yocto] Regarding offline build
>
> Amit Kumar wrote:
>>> To build the Yocot Project offline, i have done the following- [1]
>>> Downloaded the Poky-<latest>.tar.bz2 [2] Untar it. and enter the
>>> poky dir.
>>> [3] execute the - source oe-init-build-env [4] edit the
>>> conf/local.conf file as per ur suggesion.
>>> [5] Build the image - bitbake core-image-minimal
>>>
>>> But still i am getting an error-
>>> To have to look into the error plz find the attached error log-
>
> The missing step is you haven't populated DL_DIR (defaults to downloads/ =
under the build directory) with files that would normally be downloaded by =
the system, so it is attempting to download them and stopping because BB_NO=
_NETWORK is set, hence:
>
> | ERROR: Function failed: Network access disabled through BB_NO_NETWORK
>
> The easiest thing to do is to go to a machine that does have full interne=
t access, untar poky, source oe-init-build-env and then run:
>
>   bitbake -c fetchall <imagename>
>
> Then copy the contents of DL_DIR to the machine without network access an=
d you should be ready to go.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>
> The contents of this e-mail and any attachment(s) may contain confidentia=
l or privileged information for the intended recipient(s). Unintended recip=
ients are prohibited from taking action on the basis of information in this=
 e-mail and  using or disseminating the information,  and must notify the s=
ender and delete it from their system. L&T Infotech will not accept respons=
ibility or liability for the accuracy or completeness of, or the presence o=
f any virus or disabling code in this e-mail"
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

