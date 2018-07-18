Return-Path: <ticotimo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 799E4E0140B; Wed, 18 Jul 2018 12:18:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.217.181 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ticotimo[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f181.google.com (mail-ua0-f181.google.com
	[209.85.217.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77011E00B6C
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2018 12:18:50 -0700 (PDT)
Received: by mail-ua0-f181.google.com with SMTP id k8-v6so3626296uaq.12
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2018 12:18:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=8YtJ5WT+8dN4fMmgMtFDMg4jg/oypd2sYxz7JY3L2m8=;
	b=nX6EFN+c80/+q+TGyHtyXEt6BOBWvyhujRd3bpeG3IGsoV34liKwi/LvFBEkoF6TNF
	iWM7KB97BndHVB7Y+86L/qbGLkQWEgnND7KifLbs42b9Er0UUBfe+Bi70t59r7WyUejq
	t0SYCpCGPTMMx0wDO7iOyDlukhfIayZDVU6svNib2174vBWZ+r75A5L1T74ZI2CGAhBP
	aVdJZBvNYbqE4YBA/fuPCHH6cVTCd2/iKR2CgD7MJDCi/WJSWetY9LNY2kSHbgbijpUw
	/1acm3xHOSJJZGekZm+LYjtQlLDpe++AOksbAaUW2kOWH46CTW+IiAhIWKOsPLBATirv
	MzkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=8YtJ5WT+8dN4fMmgMtFDMg4jg/oypd2sYxz7JY3L2m8=;
	b=NqXpvzoqCYtxGA5XHgyeAPQvAjUoHGSMf7+R4aEmFlHJz3UrUYDIkCCuA1JgshxRVs
	XPSrJkccj3p399jHdHs9hmGredEpFXPAU/bxfHvdj5+AFFgCMRJG1GZJ0Oz3VBZf37gR
	IHMvirDkrzSxxzEFGYFXv+zmZUXH7nCS9lu8G0tOZ3kW+yZfTwSBur6AYIZy/Vwt4uVn
	O5dDEa7sAwj/QJJdkPIgR7Gmfw+0hEcn31MvkDxCajuieuvS/fIXgy1AwDURSOd/RgKA
	z80fyi2pFrC5xUGA+JKU0zUe6uwcR15ih4k/a7K5xTAW4tPN0DaGADGkVfjf7D8c16LP
	zCxw==
X-Gm-Message-State: AOUpUlEzmiyRk79h3XuTDLf1XR6Q1Fuq0HMGy8OEXT1cUO9gWQG90mrr
	UztBHEeEtkBfXvGyzjuDD6EFAKVA/9fF67yjq+U=
X-Google-Smtp-Source: AAOMgpdC7usMTYhiQGP6V/Ys++OAejPYh3tZ/Z3bFconIYhv22aQtjFnXmoaQMnWD36PGxCgLC9yZtYRYrkQjkzYqOY=
X-Received: by 2002:ab0:16dc:: with SMTP id g28-v6mr4711487uaf.7.1531941529461;
	Wed, 18 Jul 2018 12:18:49 -0700 (PDT)
MIME-Version: 1.0
References: <C2DED9B8-2FBD-4283-8836-5AE585649243@sierrawireless.com>
	<HE1PR0502MB3817F337F79A9ACA4117A7468A5C0@HE1PR0502MB3817.eurprd05.prod.outlook.com>
	<CY1PR02MB14134D0BF85693B9E830FD0CB2530@CY1PR02MB1413.namprd02.prod.outlook.com>
In-Reply-To: <CY1PR02MB14134D0BF85693B9E830FD0CB2530@CY1PR02MB1413.namprd02.prod.outlook.com>
From: Tim Orling <ticotimo@gmail.com>
Date: Wed, 18 Jul 2018 12:18:36 -0700
Message-ID: <CANx9H-Aybhrz9En8Q-4qY6onwkQE7cKYbpPB=rUABhvy7TJK3g@mail.gmail.com>
To: Darcy Watkins <dwatkins@sierrawireless.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Error in do_image_wic in Docker container
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
X-List-Received-Date: Wed, 18 Jul 2018 19:18:53 -0000
Content-Type: multipart/alternative; boundary="000000000000ae294b05714aeed5"

--000000000000ae294b05714aeed5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mac and Windows you need a samba volume.
See:
https://github.com/crops/docker-win-mac-docs/wiki


On Wed, Jul 18, 2018 at 11:44 AM Darcy Watkins <dwatkins@sierrawireless.com=
>
wrote:

> Hi Will,
>
>
>
> I managed to get a docker Yocto build under Linux working, but using a
> simplified volume mounting scheme.  I ran into an issue building with
> CentOS 7.5 so I used CentOS 7.4 in a container (since the build used to
> always work before the CentOS update).  I haven=E2=80=99t gotten back to =
trying it
> under MacOS.
>
>
>
>
>
> *Regards,*
>
>
>
> *Darcy*
>
>
>
> *Darcy Watkins ::  Senior Staff Engineer, Firmware*
>
>
>
> *SIERRA WIRELESS*
>
> Direct  +1 604 233 7989   ::  Fax  +1 604 231 1109  ::  Main  +1 604 231
> 1100
>
> 13811 Wireless Way  :: Richmond, BC Canada V6V 3A4
>
> [P2]
>
> *dwatkins@sierrawireless.com <dwatkins@sierrawireless.com>* ::
> www.sierrawireless.com
>
>
>
> *From:* Frazer, Will <Will.Frazer@eurotech.com>
> *Sent:* July-17-18 9:32 AM
> *To:* Darcy Watkins <dwatkins@sierrawireless.com>; yocto@yoctoproject.org
> *Subject:* RE: Error in do_image_wic in Docker container
>
>
>
> Hi Darcy,
>
>
>
> Don=E2=80=99t suppose you solved this?
>
>
>
> I have a yocto 2.3 build that works OK in a virtual machine but seems to
> throw a v.similar error to what you have reported below.
>
>
>
> Similarly I have various mounts outside of the container to inject
> pre-build components & pick up build artifacts.
>
>
>
> Thanks,
>
> Will
>
>
>
> Will Frazer | EUROTECH | direct  +44 (0) 1223 403431 | mobile: +44 (0)
> 7736 198115
>
>
>
>
>
>
>
>
>
> *From:* yocto-bounces@yoctoproject.org [
> mailto:yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org>] *=
On
> Behalf Of *Darcy Watkins
> *Sent:* 25 March 2018 17:41
> *To:* yocto@yoctoproject.org
> *Subject:* [yocto] Error in do_image_wic in Docker container
>
>
>
> Hi,
>
>
>
> This is near end of a build based on rocko branch plus a custom BSP layer=
,
> etc.  I have had it build OK previously under Linux (CentOS 7).  This run
> is inside a Docker container running on my MacBook.  From what I gather
> from google search results, is the underlying OS filesystem doesn=E2=80=
=99t support
> an operation.
>
>
>
> I use a volume mount scheme as follows=E2=80=A6
>
>
>
> docker run -it \
>
>     --volume=3D${PWD}:/home/build:cached \
>
>     --volume=3D${HOME}/.ssh:/home/build/.ssh \
>
>     --volume=3D${PWD}/downloads:/home/build/downloads:delegated \
>
>     --rm --volume=3D${WS_NAME}_build_vol:/home/build/build \
>
>     --volume=3D${PWD}/build/conf:/home/build/build/conf:cached \
>
>     --volume=3D${PWD}/build/deploy:/home/build/build/tmp/deploy:delegated=
 \
>
>     --volume=3D${TARPIT}:/home/public/tarballs:cached \
>
>     $DIMG bash
>
>
>
> The checkout is mounted from MacOS at /home/build to keep source meta-dat=
a
> accessible by MacOS text editors.
>
>
>
> The build directory is inside a docker volume so that it doesn=E2=80=99t =
have case
> insensitivity issues.
>
>
>
> The deploy dir and the conf dir are mounted inside this volume so that
> when docker exits I still have MacOS access to the conf and the deployed
> content.
>
>
>
> The TARPIT is a premirror implementation and DIMG is the docker container
> used.
>
>
>
> Does WIC do weird filesystem stuff (obviously =E2=80=98yes=E2=80=99), but=
 does it do this
> in the deploy dir rather than in one of the work dirs?
>
>
>
> I think I missed something (almost like a =E2=80=9Cfool=E2=80=99s mate=E2=
=80=9D in Chess, LOL).
> Any insight on this appreciated.
>
>
>
> Does deploy dir have to be entirely inside the volume, or is this a
> limitation of Docker implementation itself?
>
>
>
> Thanks!
>
>
>
> ---
>
>
>
> *ERROR*: core-image-minimal-1.0-r0 do_image_wic: Function failed:
> do_image_wic (log file is located at
> /home/build/build/tmp/work/mg90-poky-linux-gnueabi/core-image-minimal/1.0=
-r0/temp/log.do_image_wic.15406)
>
> *ERROR*: Logfile of failure stored in:
> /home/build/build/tmp/work/mg90-poky-linux-gnueabi/core-image-minimal/1.0=
-r0/temp/log.do_image_wic.15406
>
> Log data follows:
>
> | DEBUG: Executing python function set_image_size
>
> | DEBUG: Python function set_image_size finished
>
> | DEBUG: Executing python function extend_recipe_sysroot
>
> | NOTE: Direct dependencies are
> ['/home/build/upstream/yocto/poky/meta/recipes-devtools/python/python-nat=
ive_2.7.13.bb:do_populate_sysroot',
> 'virtual:native:/home/build/upstream/yocto/poky/meta/recipes-devtools/fdi=
sk/gptfdisk_1.0.3.bb:do_populate_sysroot',
> 'virtual:native:/home/build/upstream/yocto/poky/meta/recipes-devtools/opk=
g/opkg_0.3.5.bb:do_populate_sysroot',
> '/home/build/upstream/yocto/poky/meta/recipes-devtools/qemu/qemuwrapper-c=
ross_1.0.bb:do_populate_sysroot',
> 'virtual:native:/home/build/upstream/yocto/poky/meta/recipes-devtools/tcl=
tk/tcl_8.6.7.bb:do_populate_sysroot',
> '/home/build/upstream/yocto/poky/meta/recipes-devtools/mklibs/mklibs-nati=
ve_0.1.43.bb:do_populate_sysroot',
> 'virtual:native:/home/build/upstream/yocto/poky/meta/recipes-devtools/dos=
fstools/dosfstools_4.1.bb:do_populate_sysroot',
> 'virtual:native:/home/build/upstream/yocto/poky/meta/recipes-devtools/mak=
edevs/makedevs_1.0.1.bb:do_populate_sysroot',
> '/home/build/upstream/yocto/poky/meta/recipes-kernel/kmod/kmod-native_git=
.bb:do_populate_sysroot',
> 'virtual:native:/home/build/upstream/yocto/poky/meta/recipes-core/update-=
rc.d/update-rc.d_0.7.bb:do_populate_sysroot',
> 'virtual:native:/home/build/upstream/yocto/poky/meta/recipes-extended/bc/=
bc_1.06.bb:do_populate_sysroot',
> '/home/build/upstream/yocto/poky/meta/recipes-devtools/binutils/binutils-=
cross_2.29.1.bb:do_populate_sysroot',
> 'virtual:native:/home/build/upstream/yocto/poky/meta/recipes-devtools/cre=
aterepo-c/createrepo-c_git.bb:do_populate_sysroot',
> 'virtual:native:/home/build/upstream/yocto/poky/meta/recipes-devtools/rpm=
/rpm_git.bb:do_populate_sysroot',
> '/home/build/upstream/yocto/poky/meta/recipes-core/glibc/glibc_2.26.bb:do=
_populate_sysroot',
> 'virtual:native:/home/build/upstream/yocto/poky/meta/recipes-connectivity=
/openssl/openssl_1.0.2n.bb:do_populate_sysroot',
> 'virtual:native:/home/build/upstream/yocto/meta-freescale/recipes-bsp/cha=
nge-file-endianess/change-file-endianess.bb:do_populate_sysroot',
> 'virtual:native:/home/build/upstream/yocto/poky/meta/recipes-devtools/sub=
version/subversion_1.9.6.bb:do_populate_sysroot',
> 'virtual:native:/home/build/upstream/yocto/poky/meta/recipes-devtools/e2f=
sprogs/e2fsprogs_1.43.5.bb:do_populate_sysroot',
> 'virtual:native:/home/build/upstream/yocto/poky/meta/recipes-bsp/u-boot/u=
-boot-mkimage_2017.09.bb:do_populate_sysroot',
> '/home/build/upstream/linaro/meta-linaro/meta-linaro-toolchain/recipes-de=
vtools/gcc/libgcc_linaro-7.1.bb:do_populate_sysroot',
> '/home/build/upstream/yocto/poky/meta/recipes-kernel/kmod/depmodwrapper-c=
ross_1.0.bb:do_populate_sysroot',
> 'virtual:native:/home/build/upstream/yocto/poky/meta/recipes-kernel/dtc/d=
tc_1.4.4.bb:do_populate_sysroot',
> '/home/build/upstream/linaro/meta-linaro/meta-linaro-toolchain/recipes-de=
vtools/gcc/gcc-runtime_linaro-7.1.bb:do_populate_sysroot',
> 'virtual:native:/home/build/upstream/yocto/poky/meta/recipes-devtools/mto=
ols/mtools_4.0.18.bb:do_populate_sysroot',
> 'virtual:native:/home/build/upstream/openembedded/meta-openembedded/meta-=
python/recipes-devtools/python/python-pyyaml_3.12.bb:do_populate_sysroot',
> 'virtual:native:/home/build/upstream/yocto/poky/meta/recipes-devtools/dnf=
/dnf_2.6.3.bb:do_populate_sysroot',
> '/home/build/upstream/yocto/poky/meta/recipes-core/glibc/ldconfig-native_=
2.12.1.bb:do_populate_sysroot',
> 'virtual:native:/home/build/upstream/yocto/poky/meta/recipes-extended/pig=
z/pigz_2.3.4.bb:do_populate_sysroot',
> 'virtual:native:/home/build/upstream/yocto/poky/meta/recipes-support/lzop=
/lzop_1.03.bb:do_populate_sysroot',
> 'virtual:native:/home/build/upstream/yocto/poky/meta/recipes-extended/par=
ted/parted_3.2.bb:do_populate_sysroot',
> '/home/build/upstream/yocto/poky/meta/recipes-devtools/quilt/quilt-native=
_0.65.bb:do_populate_sysroot',
> '/home/build/upstream/yocto/meta-freescale/recipes-bsp/u-boot/u-boot-qori=
q_2017.09.bb:do_populate_sysroot',
> '/home/build/upstream/yocto/meta-freescale/recipes-bsp/qe-ucode/qe-ucode_=
git.bb:do_populate_sysroot',
> '/home/build/upstream/linaro/meta-linaro/meta-linaro-toolchain/recipes-de=
vtools/gcc/gcc-cross_linaro-7.1.bb:do_populate_sysroot',
> '/home/build/meta-MG-os-bsp/recipes-bsp/fec/fec_3.0.1.bb:do_populate_sysr=
oot',
> '/home/build/upstream/yocto/meta-freescale/recipes-kernel/linux/linux-qor=
iq_4.9.bb:do_populate_sysroot',
> 'virtual:native:/home/build/upstream/yocto/poky/meta/recipes-devtools/opk=
g-utils/opkg-utils_0.3.5.bb:do_populate_sysroot',
> '/home/build/meta-MG-os-bsp/recipes-bsp/omg-hardware/omg-hardware_svn.bb:=
do_populate_sysroot',
> 'virtual:native:/home/build/upstream/yocto/poky/meta/recipes-support/bmap=
-tools/bmap-tools_3.4.bb:do_populate_sysroot',
> 'virtual:native:/home/build/upstream/yocto/poky/meta/recipes-devtools/pse=
udo/pseudo_1.8.2.bb:do_populate_sysroot',
> 'virtual:native:/home/build/upstream/yocto/poky/meta/recipes-devtools/pre=
link/prelink_git.bb:
> do_populate_sysroot']
>
> | NOTE: Installed into sysroot: ['python-native', 'gptfdisk-native',
> 'tcl-native', 'dosfstools-native', 'bc-native', 'binutils-cross-arm',
> 'change-file-endianess-native', 'subversion-native', 'mtools-native',
> 'python-pyyaml-native', 'lzop-native', 'parted-native', 'gcc-cross-arm',
> 'linux-qoriq', 'apr-util-native', 'serf-native',
> 'python-setuptools-native', 'python-cython-native', 'libyaml-native',
> 'mpfr-native', 'libmpc-native', 'gmp-native', 'apr-native', 'gdbm-native'=
,
> 'python-scons-native']
>
> | NOTE: Skipping as already exists in sysroot: ['opkg-native',
> 'qemuwrapper-cross', 'mklibs-native', 'makedevs-native', 'kmod-native',
> 'update-rc.d-native', 'createrepo-c-native', 'rpm-native', 'glibc',
> 'openssl-native', 'e2fsprogs-native', 'u-boot-mkimage-native', 'libgcc',
> 'depmodwrapper-cross', 'dtc-native', 'gcc-runtime', 'dnf-native',
> 'ldconfig-native', 'pigz-native', 'quilt-native', 'u-boot-qoriq',
> 'qe-ucode', 'fec', 'opkg-utils-native', 'omg-hardware',
> 'bmap-tools-native', 'pseudo-native', 'prelink-native', 'sqlite3-native',
> 'libtool-native', 'bzip2-native', 'autoconf-native', 'expat-native',
> 'xz-native', 'gnu-config-native', 'readline-native', 'pkgconfig-native',
> 'zlib-native', 'automake-native', 'qemu-native', 'util-linux-native',
> 'popt-native', 'ncurses-native', 'libarchive-native', 'libsolv-native',
> 'gettext-minimal-native', 'gtk-doc-native', 'texinfo-dummy-native',
> 'flex-native', 'bison-native', 'glib-2.0-native', 'cmake-native',
> 'python3-native', 'libxml2-native', 'file-native', 'curl-native',
> 'dbus-native', 'nss-native', 'elfutils-native', 'db-native',
> 'linux-libc-headers', 'cryptodev-linux-native', 'makedepend-native',
> 'attr-native', 'shadow-native', 'librepo-native',
> 'python3-iniparse-native', 'libdnf-native', 'libcomps-native',
> 'lzo-native', 'omg-mcu', 'python3-setuptools-native', 'binutils-native',
> 'm4-native', 'alsa-lib-native', 'libsdl-native', 'pixman-native',
> 'libffi-native', 'libpcre-native', 'gettext-native', 'nspr-native',
> 'xproto-native', 'util-macros-native', 'unzip-native', 'libcheck-native',
> 'gpgme-native', 'python3-six-native', 'gobject-introspection-native',
> 'libxrender-native', 'libxrandr-native', 'libxext-native', 'libx11-native=
',
> 'libpng-native', 'swig-native', 'libassuan-native', 'libgpg-error-native'=
,
> 'renderproto-native', 'randrproto-native', 'xextproto-native',
> 'libxcb-native', 'inputproto-native', 'xtrans-native', 'kbproto-native',
> 'libxau-native', 'libxdmcp-native', 'libpthread-stubs-native',
> 'xcb-proto-native']
>
> | DEBUG: sed -e
> 's:^[^/]*/:/home/build/build/tmp/work/mg90-poky-linux-gnueabi/core-image-=
minimal/1.0-r0/recipe-sysroot-native/:g'
> /home/build/build/tmp/sysroots-components/x86_64/python-native/fixmepath
> /home/build/build/tmp/sysroots-components/x86_64/tcl-native/fixmepath
> /home/build/build/tmp/sysroots-components/x86_64/gcc-cross-arm/fixmepath
> /home/build/build/tmp/sysroots-components/x86_64/apr-util-native/fixmepat=
h
> /home/build/build/tmp/sysroots-components/x86_64/python-setuptools-native=
/fixmepath
> /home/build/build/tmp/sysroots-components/x86_64/gmp-native/fixmepath
> /home/build/build/tmp/sysroots-components/x86_64/apr-native/fixmepath |
> xargs sed -i -e
> 's:FIXMESTAGINGDIRTARGET:/home/build/build/tmp/work/mg90-poky-linux-gnuea=
bi/core-image-minimal/1.0-r0/recipe-sysroot:g;
> s:FIXMESTAGINGDIRHOST:/home/build/build/tmp/work/mg90-poky-linux-gnueabi/=
core-image-minimal/1.0-r0/recipe-sysroot-native:g'
> -e 's:FIXME_COMPONENTS_DIR:/home/build/build/tmp/sysroots-components:g' -=
e
> 's:FIXME_HOSTTOOLS_DIR:/home/build/build/tmp/hosttools:g' -e
> 's:FIXME_PKGDATA_DIR:/home/build/build/tmp/pkgdata/mg90:g' -e
> 's:FIXME_PSEUDO_LOCALSTATEDIR:/home/build/build/tmp/work/mg90-poky-linux-=
gnueabi/core-image-minimal/1.0-r0/pseudo/:g'
> -e
> 's:FIXME_LOGFIFO:/home/build/build/tmp/work/mg90-poky-linux-gnueabi/core-=
image-minimal/1.0-r0/temp/fifo.15406:g'
>
> | DEBUG: Python function extend_recipe_sysroot finished
>
> | DEBUG: Executing shell function do_image_wic
>
> | INFO: Creating image(s)...
>
> |
>
> | Traceback (most recent call last):
>
> |   File "/home/build/upstream/yocto/poky/scripts/lib/wic/filemap.py",
> line 385, in _invoke_fiemap
>
> |     fcntl.ioctl(self._f_image, _FIEMAP_IOCTL, self._buf, 1)
>
> | OSError: [Errno 95] Operation not supported
>
> |
>
> | During handling of the above exception, another exception occurred:
>
> |
>
> | Traceback (most recent call last):
>
> |   File "/home/build/upstream/yocto/poky/scripts/lib/wic/filemap.py",
> line 525, in filemap
>
> |     return FilemapFiemap(image, log)
>
> |   File "/home/build/upstream/yocto/poky/scripts/lib/wic/filemap.py",
> line 359, in __init__
>
> |     self.block_is_mapped(0)
>
> |   File "/home/build/upstream/yocto/poky/scripts/lib/wic/filemap.py",
> line 406, in block_is_mapped
>
> |     struct_fiemap =3D self._invoke_fiemap(block, 1)
>
> |   File "/home/build/upstream/yocto/poky/scripts/lib/wic/filemap.py",
> line 393, in _invoke_fiemap
>
> |     raise ErrorNotSupp(errstr)
>
> | wic.filemap.ErrorNotSupp: FilemapFiemap: the FIEMAP ioctl is not
> supported by the file-system
>
> |
>
> | During handling of the above exception, another exception occurred:
>
> |
>
> | Traceback (most recent call last):
>
> |   File "/home/build/upstream/yocto/poky/scripts/wic", line 525, in
> <module>
>
> |     sys.exit(main(sys.argv[1:]))
>
> |   File "/home/build/upstream/yocto/poky/scripts/wic", line 520, in main
>
> |     return hlp.invoke_subcommand(args, parser, hlp.wic_help_usage,
> subcommands)
>
> |   File "/home/build/upstream/yocto/poky/scripts/lib/wic/help.py", line
> 98, in invoke_subcommand
>
> |     subcmd[0](args, usage)
>
> |   File "/home/build/upstream/yocto/poky/scripts/wic", line 227, in
> wic_create_subcommand
>
> |     native_sysroot, options)
>
> |   File "/home/build/upstream/yocto/poky/scripts/lib/wic/engine.py",
> line 202, in wic_create
>
> |     plugin.do_create()
>
> |   File
> "/home/build/upstream/yocto/poky/scripts/lib/wic/plugins/imager/direct.py=
",
> line 99, in do_create
>
> |     self.create()
>
> |   File
> "/home/build/upstream/yocto/poky/scripts/lib/wic/plugins/imager/direct.py=
",
> line 194, in create
>
> |     self._image.prepare(self)
>
> |   File
> "/home/build/upstream/yocto/poky/scripts/lib/wic/plugins/imager/direct.py=
",
> line 352, in prepare
>
> |     imager.kernel_dir, imager.native_sysroot)
>
> |   File "/home/build/upstream/yocto/poky/scripts/lib/wic/partition.py",
> line 185, in prepare
>
> |     kernel_dir, rootfs_dir, native_sysroot)
>
> |   File
> "/home/build/upstream/yocto/poky/scripts/lib/wic/plugins/source/rawcopy.p=
y",
> line 78, in do_prepare_partition
>
> |     sparse_copy(src, dst)
>
> |   File "/home/build/upstream/yocto/poky/scripts/lib/wic/filemap.py",
> line 543, in sparse_copy
>
> |     fmap =3D api(src_fname)
>
> |   File "/home/build/upstream/yocto/poky/scripts/lib/wic/filemap.py",
> line 527, in filemap
>
> |     return FilemapSeek(image, log)
>
> |   File "/home/build/upstream/yocto/poky/scripts/lib/wic/filemap.py",
> line 206, in __init__
>
> |     self._probe_seek_hole()
>
> |   File "/home/build/upstream/yocto/poky/scripts/lib/wic/filemap.py",
> line 241, in _probe_seek_hole
>
> |     raise ErrorNotSupp("the file-system does not support "
>
> | wic.filemap.ErrorNotSupp: the file-system does not support "SEEK_HOLE"
> and "SEEK_DATA" but only provides a stub implementation
>
> | WARNING:
> /home/build/build/tmp/work/mg90-poky-linux-gnueabi/core-image-minimal/1.0=
-r0/temp/run.do_image_wic.15406:1
> exit 1 from 'BUILDDIR=3D"/home/build/build" wic create "$wks" --vars
> "/home/build/build/tmp/sysroots/mg90/imgdata/" -e "core-image-minimal" -o
> "$out/"'
>
> | ERROR: Function failed: do_image_wic (log file is located at
> /home/build/build/tmp/work/mg90-poky-linux-gnueabi/core-image-minimal/1.0=
-r0/temp/log.do_image_wic.15406)
>
> *ERROR*: Task
> (/home/build/upstream/yocto/poky/meta/recipes-core/images/core-image-mini=
mal.bb:do_image_wic)
> failed with exit code '1'
>
> *NOTE*: Tasks Summary: Attempted 3411 tasks of which 2614 didn't need to
> be rerun and 1 failed.
>
>
>
> Summary: 1 task failed:
>
>
> /home/build/upstream/yocto/poky/meta/recipes-core/images/core-image-minim=
al.bb:
> do_image_wic
>
> Summary: There were 13 WARNING messages shown.
>
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>
>
>
>
>
>
>
>
>
> *Regards,*
>
>
>
> *Darcy*
>
>
>
> *Darcy Watkins ::  Senior Staff Engineer, Firmware*
>
>
>
> *SIERRA WIRELESS*
>
> Direct  +1 604 233 7989   ::  Fax  +1 604 231 1109  ::  Main  +1 604 231
> 1100
>
> 13811 Wireless Way  :: Richmond, BC Canada V6V 3A4
>
> [M4]
>
> dwatkins@sierrawireless.com :: www.sierrawireless.com
> <https://na01.safelinks.protection.outlook.com/?url=3Dhttp%3A%2F%2Fwww.si=
errawireless.com%2F&data=3D02%7C01%7Cdwatkins%40sierrawireless.com%7C9c74be=
6213f14e8d315308d5ec02e29c%7C08059a4c248643dd89e33a747e0dcbe8%7C1%7C0%7C636=
674419524916074&sdata=3DUFp9oHJq%2FWno%2FSvypBUhCFkrVPhHbY82BUls%2FnU0L3M%3=
D&reserved=3D0>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000ae294b05714aeed5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><div dir=3D"auto">On Mac and Windows you need a samba v=
olume.</div><div dir=3D"auto">See:</div><div dir=3D"auto"><div><a href=3D"h=
ttps://github.com/crops/docker-win-mac-docs/wiki">https://github.com/crops/=
docker-win-mac-docs/wiki</a></div><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr">On Wed, Jul 18, 2018 at 11:44 AM Darcy Watkins &lt;<a href=
=3D"mailto:dwatkins@sierrawireless.com">dwatkins@sierrawireless.com</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex">





<div lang=3D"EN-CA" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"m_-6407129561190528086WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hi Will,<u></u><u><=
/u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><u></u>=C2=A0<u></u=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">I managed to get a =
docker Yocto build under Linux working, but using a simplified volume mount=
ing scheme.=C2=A0 I ran into an issue building with CentOS 7.5 so I used Ce=
ntOS 7.4 in a
 container (since the build used to always work before the CentOS update).=
=C2=A0 I haven=E2=80=99t gotten back to trying it under MacOS.<u></u><u></u=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><u></u>=C2=A0<u></u=
></span></p>
<div></div></div></div><div lang=3D"EN-CA" link=3D"#0563C1" vlink=3D"#954F7=
2"><div class=3D"m_-6407129561190528086WordSection1"><div>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><b><span lang=3D"EN-US=
" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
#656565"><u></u>=C2=A0<u></u></span></b></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><b><span lang=3D"EN-US=
" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
#656565">Regards,<u></u><u></u></span></b></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><b><span lang=3D"EN-US=
" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
#656565"><u></u>=C2=A0<u></u></span></b></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><b><span lang=3D"EN-US=
" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
#656565">Darcy<u></u><u></u></span></b></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><b><span lang=3D"EN-US=
" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
#656565"><u></u>=C2=A0<u></u></span></b></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><b><span lang=3D"EN-US=
" style=3D"font-size:7.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#=
656565">Darcy Watkins ::=C2=A0=C2=A0Senior Staff Engineer, Firmware<u></u><=
u></u></span></b></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><b><span lang=3D"EN-US=
" style=3D"font-size:7.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#=
e33a2f"><u></u>=C2=A0<u></u></span></b></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><b><span lang=3D"EN-US=
" style=3D"font-size:7.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#=
e33a2f">SIERRA WIRELESS<u></u><u></u></span></b></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN-US" s=
tyle=3D"font-size:7.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#e33=
a2f">Direct</span><span lang=3D"EN-US" style=3D"font-size:7.5pt;font-family=
:&quot;Arial&quot;,sans-serif;color:#656565">=C2=A0 +1 604 233 7989=C2=A0
 =C2=A0::=C2=A0 </span><span lang=3D"EN-US" style=3D"font-size:7.5pt;font-f=
amily:&quot;Arial&quot;,sans-serif;color:#e33a2f">Fax=C2=A0
</span><span lang=3D"EN-US" style=3D"font-size:7.5pt;font-family:&quot;Aria=
l&quot;,sans-serif;color:#656565">+1 604 231 1109=C2=A0 ::=C2=A0
</span><span lang=3D"EN-US" style=3D"font-size:7.5pt;font-family:&quot;Aria=
l&quot;,sans-serif;color:#c00000">Main</span><span lang=3D"EN-US" style=3D"=
font-size:7.5pt;font-family:&quot;Arial&quot;,sans-serif">=C2=A0
<span style=3D"color:#656565">+1 604 231 1100</span><u></u><u></u></span></=
p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN-US" s=
tyle=3D"font-size:7.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#656=
565">13811 Wireless Way=C2=A0 ::=C2=A0Richmond, BC Canada V6V 3A4<u></u><u>=
</u></span></p>
</div></div></div><div lang=3D"EN-CA" link=3D"#0563C1" vlink=3D"#954F72"><d=
iv class=3D"m_-6407129561190528086WordSection1"><div><p class=3D"MsoNormal"=
 style=3D"text-autospace:none"><span lang=3D"EN-US" style=3D"font-size:7.5p=
t;font-family:&quot;Arial&quot;,sans-serif;color:#656565">[P2]<u></u><u></u=
></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><u><span lang=3D"EN-US=
" style=3D"font-size:7.5pt;font-family:&quot;Arial&quot;,sans-serif;color:b=
lue"><a href=3D"mailto:dwatkins@sierrawireless.com" target=3D"_blank"><span=
 style=3D"color:blue">dwatkins@sierrawireless.com</span></a></span></u><spa=
n lang=3D"EN-US" style=3D"font-size:7.5pt;font-family:&quot;Arial&quot;,san=
s-serif;color:#e43b30">
 :: <a href=3D"http://www.sierrawireless.com/" target=3D"_blank"><span styl=
e=3D"color:blue">www.sierrawireless.com</span></a><u></u><u></u></span></p>
</div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><u></u>=C2=A0<u></u=
></span></p>
<div>
<div style=3D"border:none;border-top:solid #e1e1e1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11.0pt">F=
rom:</span></b><span lang=3D"EN-US" style=3D"font-size:11.0pt"> Frazer, Wil=
l &lt;<a href=3D"mailto:Will.Frazer@eurotech.com" target=3D"_blank">Will.Fr=
azer@eurotech.com</a>&gt;
<br>
<b>Sent:</b> July-17-18 9:32 AM<br>
<b>To:</b> Darcy Watkins &lt;<a href=3D"mailto:dwatkins@sierrawireless.com"=
 target=3D"_blank">dwatkins@sierrawireless.com</a>&gt;; <a href=3D"mailto:y=
octo@yoctoproject.org" target=3D"_blank">yocto@yoctoproject.org</a><br>
<b>Subject:</b> RE: Error in do_image_wic in Docker container<u></u><u></u>=
</span></p>
</div>
</div></div></div><div lang=3D"EN-CA" link=3D"#0563C1" vlink=3D"#954F72"><d=
iv class=3D"m_-6407129561190528086WordSection1">
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:11.0pt">Hi D=
arcy,<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:11.0pt"><u><=
/u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:11.0pt">Don=
=E2=80=99t suppose you solved this?<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:11.0pt"><u><=
/u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:11.0pt">I ha=
ve a yocto 2.3 build that works OK in a virtual machine but seems to throw =
a v.similar error to what you have reported below.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:11.0pt"><u><=
/u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:11.0pt">Simi=
larly I have various mounts outside of the container to inject pre-build co=
mponents &amp; pick up build artifacts.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:11.0pt"><u><=
/u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:11.0pt">Than=
ks,<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:11.0pt">Will=
=C2=A0 <u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:11.0pt"><u><=
/u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:11.0pt">Will=
 Frazer | EUROTECH | direct=C2=A0 +44 (0) 1223 403431 | mobile: +44 (0) 773=
6 198115<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:11.0pt"><u><=
/u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:11.0pt"><u><=
/u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:11.0pt"><u><=
/u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:11.0pt"><u><=
/u>=C2=A0<u></u></span></p>
<div>
<div style=3D"border:none;border-top:solid #e1e1e1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11.0pt">F=
rom:</span></b><span lang=3D"EN-US" style=3D"font-size:11.0pt">
<a href=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank">yocto-b=
ounces@yoctoproject.org</a> [<a href=3D"mailto:yocto-bounces@yoctoproject.o=
rg" target=3D"_blank">mailto:yocto-bounces@yoctoproject.org</a>]
<b>On Behalf Of </b>Darcy Watkins<br>
<b>Sent:</b> 25 March 2018 17:41<br>
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> [yocto] Error in do_image_wic in Docker container<u></u><u>=
</u></span></p>
</div>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hi,<u></u><u></u></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><u></u>=C2=A0<u></u=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">This is near end of=
 a build based on rocko branch plus a custom BSP layer, etc.=C2=A0 I have h=
ad it build OK previously under Linux (CentOS 7).=C2=A0 This run is inside =
a Docker container running on my MacBook.=C2=A0 From
 what I gather from google search results, is the underlying OS filesystem =
doesn=E2=80=99t support an operation.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><u></u>=C2=A0<u></u=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">I use a volume moun=
t scheme as follows=E2=80=A6<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><u></u>=C2=A0<u></u=
></span></p>
<p class=3D"MsoNormal" style=3D"line-height:13.5pt;background:white"><span =
style=3D"font-size:9.0pt;font-family:Menlo;color:black">docker run -it \<u>=
</u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"line-height:13.5pt;background:white"><span =
style=3D"font-size:9.0pt;font-family:Menlo;color:black">=C2=A0=C2=A0=C2=A0=
=C2=A0--volume=3D</span><span style=3D"font-size:9.0pt;font-family:Menlo;co=
lor:#001080">${PWD}</span><span style=3D"font-size:9.0pt;font-family:Menlo;=
color:black">:/home/build:cached
 \<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"line-height:13.5pt;background:white"><span =
style=3D"font-size:9.0pt;font-family:Menlo;color:black">=C2=A0=C2=A0=C2=A0 =
--volume=3D</span><span style=3D"font-size:9.0pt;font-family:Menlo;color:#0=
01080">${HOME}</span><span style=3D"font-size:9.0pt;font-family:Menlo;color=
:black">/.ssh:/home/build/.ssh
 \<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"line-height:13.5pt;background:white"><span =
style=3D"font-size:9.0pt;font-family:Menlo;color:black">=C2=A0=C2=A0=C2=A0=
=C2=A0--volume=3D</span><span style=3D"font-size:9.0pt;font-family:Menlo;co=
lor:#001080">${PWD}</span><span style=3D"font-size:9.0pt;font-family:Menlo;=
color:black">/downloads:/home/build/downloads:delegated
 \<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"line-height:13.5pt;background:white"><span =
style=3D"font-size:9.0pt;font-family:Menlo;color:black">=C2=A0=C2=A0=C2=A0=
=C2=A0--rm --volume=3D</span><span style=3D"font-size:9.0pt;font-family:Men=
lo;color:#001080">${WS_NAME}</span><span style=3D"font-size:9.0pt;font-fami=
ly:Menlo;color:black">_build_vol:/home/build/build
 \<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"line-height:13.5pt;background:white"><span =
style=3D"font-size:9.0pt;font-family:Menlo;color:black">=C2=A0=C2=A0=C2=A0=
=C2=A0--volume=3D</span><span style=3D"font-size:9.0pt;font-family:Menlo;co=
lor:#001080">${PWD}</span><span style=3D"font-size:9.0pt;font-family:Menlo;=
color:black">/build/conf:/home/build/build/conf:cached
 \<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"line-height:13.5pt;background:white"><span =
style=3D"font-size:9.0pt;font-family:Menlo;color:black">=C2=A0=C2=A0=C2=A0=
=C2=A0--volume=3D</span><span style=3D"font-size:9.0pt;font-family:Menlo;co=
lor:#001080">${PWD}</span><span style=3D"font-size:9.0pt;font-family:Menlo;=
color:black">/build/deploy:/home/build/build/tmp/deploy:delegated
 \<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"line-height:13.5pt;background:white"><span =
style=3D"font-size:9.0pt;font-family:Menlo;color:black">=C2=A0=C2=A0=C2=A0=
=C2=A0--volume=3D</span><span style=3D"font-size:9.0pt;font-family:Menlo;co=
lor:#001080">${TARPIT}</span><span style=3D"font-size:9.0pt;font-family:Men=
lo;color:black">:/home/public/tarballs:cached
 \<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"line-height:13.5pt;background:white"><span =
style=3D"font-size:9.0pt;font-family:Menlo;color:black">=C2=A0=C2=A0=C2=A0=
=C2=A0</span><span style=3D"font-size:9.0pt;font-family:Menlo;color:#001080=
">$DIMG</span><span style=3D"font-size:9.0pt;font-family:Menlo;color:black"=
>
 bash<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"line-height:13.5pt;background:white"><span =
style=3D"font-size:9.0pt;font-family:Menlo;color:black"><u></u>=C2=A0<u></u=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">The checkout is mou=
nted from MacOS at /home/build to keep source meta-data accessible by MacOS=
 text editors.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><u></u>=C2=A0<u></u=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">The build directory=
 is inside a docker volume so that it doesn=E2=80=99t have case insensitivi=
ty issues.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><u></u>=C2=A0<u></u=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">The deploy dir and =
the conf dir are mounted inside this volume so that when docker exits I sti=
ll have MacOS access to the conf and the deployed content.<u></u><u></u></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><u></u>=C2=A0<u></u=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">The TARPIT is a pre=
mirror implementation and DIMG is the docker container used.<u></u><u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><u></u>=C2=A0<u></u=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Does WIC do weird f=
ilesystem stuff (obviously =E2=80=98yes=E2=80=99), but does it do this in t=
he deploy dir rather than in one of the work dirs?<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><u></u>=C2=A0<u></u=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">I think I missed so=
mething (almost like a =E2=80=9Cfool=E2=80=99s mate=E2=80=9D in Chess, LOL)=
.=C2=A0 Any insight on this appreciated.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><u></u>=C2=A0<u></u=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Does deploy dir hav=
e to be entirely inside the volume, or is this a limitation of Docker imple=
mentation itself?<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><u></u>=C2=A0<u></u=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Thanks!<u></u><u></=
u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><u></u>=C2=A0<u></u=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---<u></u><u></u></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><u></u>=C2=A0<u></u=
></span></p>
<p class=3D"m_-6407129561190528086p1"><span class=3D"m_-6407129561190528086=
s1"><b>ERROR</b></span><span class=3D"m_-6407129561190528086s2">: </span><s=
pan class=3D"m_-6407129561190528086s1">core-image-minimal-1.0-r0 do_image_w=
ic: Function failed: do_image_wic (log file is located at /home/build/build=
/tmp/work/mg90-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp/log.do_ima=
ge_wic.15406)</span><u></u><u></u></p>
<p class=3D"m_-6407129561190528086p1"><span class=3D"m_-6407129561190528086=
s1"><b>ERROR</b></span><span class=3D"m_-6407129561190528086s2">: </span><s=
pan class=3D"m_-6407129561190528086s1">Logfile of failure stored in: /home/=
build/build/tmp/work/mg90-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp=
/log.do_image_wic.15406</span><u></u><u></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">Log data follows:</span><u></u><u></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">| DEBUG: Executing python function set_image_size</span><u></u><u></u><=
/p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">| DEBUG: Python function set_image_size finished</span><u></u><u></u></=
p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">| DEBUG: Executing python function extend_recipe_sysroot</span><u></u><=
u></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">| NOTE: Direct dependencies are [&#39;/home/build/upstream/yocto/poky/m=
eta/recipes-devtools/python/python-native_2.7.13.bb:do_populate_sysroot&#39=
;, &#39;virtual:native:/home/build/upstream/yocto/poky/meta/recipes-devtool=
s/fdisk/gptfdisk_1.0.3.bb:do_populate_sysroot&#39;,
 &#39;virtual:native:/home/build/upstream/yocto/poky/meta/recipes-devtools/=
opkg/opkg_0.3.5.bb:do_populate_sysroot&#39;, &#39;/home/build/upstream/yoct=
o/poky/meta/recipes-devtools/qemu/qemuwrapper-cross_1.0.bb:do_populate_sysr=
oot&#39;, &#39;virtual:native:/home/build/upstream/yocto/poky/meta/recipes-=
devtools/tcltk/tcl_8.6.7.bb:do_populate_sysroot&#39;,
 &#39;/home/build/upstream/yocto/poky/meta/recipes-devtools/mklibs/mklibs-n=
ative_0.1.43.bb:do_populate_sysroot&#39;, &#39;virtual:native:/home/build/u=
pstream/yocto/poky/meta/recipes-devtools/dosfstools/dosfstools_4.1.bb:do_po=
pulate_sysroot&#39;, &#39;virtual:native:/home/build/upstream/yocto/poky/me=
ta/recipes-devtools/makedevs/makedevs_1.0.1.bb:do_populate_sysroot&#39;,
 &#39;/home/build/upstream/yocto/poky/meta/recipes-kernel/kmod/kmod-native_=
git.bb:do_populate_sysroot&#39;, &#39;virtual:native:/home/build/upstream/y=
octo/poky/meta/recipes-core/update-rc.d/update-rc.d_0.7.bb:do_populate_sysr=
oot&#39;, &#39;virtual:native:/home/build/upstream/yocto/poky/meta/recipes-=
extended/bc/bc_1.06.bb:do_populate_sysroot&#39;,
 &#39;/home/build/upstream/yocto/poky/meta/recipes-devtools/binutils/binuti=
ls-cross_2.29.1.bb:do_populate_sysroot&#39;, &#39;virtual:native:/home/buil=
d/upstream/yocto/poky/meta/recipes-devtools/createrepo-c/createrepo-c_git.b=
b:do_populate_sysroot&#39;, &#39;virtual:native:/home/build/upstream/yocto/=
poky/meta/recipes-devtools/rpm/rpm_git.bb:do_populate_sysroot&#39;,
 &#39;/home/build/upstream/yocto/poky/meta/recipes-core/glibc/glibc_2.26.bb=
:do_populate_sysroot&#39;, &#39;virtual:native:/home/build/upstream/yocto/p=
oky/meta/recipes-connectivity/openssl/openssl_1.0.2n.bb:do_populate_sysroot=
&#39;, &#39;virtual:native:/home/build/upstream/yocto/meta-freescale/recipe=
s-bsp/change-file-endianess/change-file-endianess.bb:do_populate_sysroot&#3=
9;,
 &#39;virtual:native:/home/build/upstream/yocto/poky/meta/recipes-devtools/=
subversion/subversion_1.9.6.bb:do_populate_sysroot&#39;, &#39;virtual:nativ=
e:/home/build/upstream/yocto/poky/meta/recipes-devtools/e2fsprogs/e2fsprogs=
_1.43.5.bb:do_populate_sysroot&#39;, &#39;virtual:native:/home/build/upstre=
am/yocto/poky/meta/recipes-bsp/u-boot/u-boot-mkimage_2017.09.bb:do_populate=
_sysroot&#39;,
 &#39;/home/build/upstream/linaro/meta-linaro/meta-linaro-toolchain/recipes=
-devtools/gcc/libgcc_linaro-7.1.bb:do_populate_sysroot&#39;, &#39;/home/bui=
ld/upstream/yocto/poky/meta/recipes-kernel/kmod/depmodwrapper-cross_1.0.bb:=
do_populate_sysroot&#39;, &#39;virtual:native:/home/build/upstream/yocto/po=
ky/meta/recipes-kernel/dtc/dtc_1.4.4.bb:do_populate_sysroot&#39;,
 &#39;/home/build/upstream/linaro/meta-linaro/meta-linaro-toolchain/recipes=
-devtools/gcc/gcc-runtime_linaro-7.1.bb:do_populate_sysroot&#39;, &#39;virt=
ual:native:/home/build/upstream/yocto/poky/meta/recipes-devtools/mtools/mto=
ols_4.0.18.bb:do_populate_sysroot&#39;, &#39;virtual:native:/home/build/ups=
tream/openembedded/meta-openembedded/meta-python/recipes-devtools/python/py=
thon-pyyaml_3.12.bb:do_populate_sysroot&#39;,
 &#39;virtual:native:/home/build/upstream/yocto/poky/meta/recipes-devtools/=
dnf/dnf_2.6.3.bb:do_populate_sysroot&#39;, &#39;/home/build/upstream/yocto/=
poky/meta/recipes-core/glibc/ldconfig-native_2.12.1.bb:do_populate_sysroot&=
#39;, &#39;virtual:native:/home/build/upstream/yocto/poky/meta/recipes-exte=
nded/pigz/pigz_2.3.4.bb:do_populate_sysroot&#39;,
 &#39;virtual:native:/home/build/upstream/yocto/poky/meta/recipes-support/l=
zop/lzop_1.03.bb:do_populate_sysroot&#39;, &#39;virtual:native:/home/build/=
upstream/yocto/poky/meta/recipes-extended/parted/parted_3.2.bb:do_populate_=
sysroot&#39;, &#39;/home/build/upstream/yocto/poky/meta/recipes-devtools/qu=
ilt/quilt-native_0.65.bb:do_populate_sysroot&#39;,
 &#39;/home/build/upstream/yocto/meta-freescale/recipes-bsp/u-boot/u-boot-q=
oriq_2017.09.bb:do_populate_sysroot&#39;, &#39;/home/build/upstream/yocto/m=
eta-freescale/recipes-bsp/qe-ucode/qe-ucode_git.bb:do_populate_sysroot&#39;=
, &#39;/home/build/upstream/linaro/meta-linaro/meta-linaro-toolchain/recipe=
s-devtools/gcc/gcc-cross_linaro-7.1.bb:do_populate_sysroot&#39;,
 &#39;/home/build/meta-MG-os-bsp/recipes-bsp/fec/fec_3.0.1.bb:do_populate_s=
ysroot&#39;, &#39;/home/build/upstream/yocto/meta-freescale/recipes-kernel/=
linux/linux-qoriq_4.9.bb:do_populate_sysroot&#39;, &#39;virtual:native:/hom=
e/build/upstream/yocto/poky/meta/recipes-devtools/opkg-utils/opkg-utils_0.3=
.5.bb:do_populate_sysroot&#39;,
 &#39;/home/build/meta-MG-os-bsp/recipes-bsp/omg-hardware/omg-hardware_svn.=
bb:do_populate_sysroot&#39;, &#39;virtual:native:/home/build/upstream/yocto=
/poky/meta/recipes-support/bmap-tools/bmap-tools_3.4.bb:do_populate_sysroot=
&#39;, &#39;virtual:native:/home/build/upstream/yocto/poky/meta/recipes-dev=
tools/pseudo/pseudo_1.8.2.bb:do_populate_sysroot&#39;,
 &#39;virtual:native:/home/build/upstream/yocto/poky/meta/recipes-devtools/=
prelink/prelink_git.bb:do_populate_sysroot&#39;]</span><u></u><u></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">| NOTE: Installed into sysroot: [&#39;python-native&#39;, &#39;gptfdisk=
-native&#39;, &#39;tcl-native&#39;, &#39;dosfstools-native&#39;, &#39;bc-na=
tive&#39;, &#39;binutils-cross-arm&#39;, &#39;change-file-endianess-native&=
#39;, &#39;subversion-native&#39;, &#39;mtools-native&#39;, &#39;python-pyy=
aml-native&#39;,
 &#39;lzop-native&#39;, &#39;parted-native&#39;, &#39;gcc-cross-arm&#39;, &=
#39;linux-qoriq&#39;, &#39;apr-util-native&#39;, &#39;serf-native&#39;, &#3=
9;python-setuptools-native&#39;, &#39;python-cython-native&#39;, &#39;libya=
ml-native&#39;, &#39;mpfr-native&#39;, &#39;libmpc-native&#39;, &#39;gmp-na=
tive&#39;, &#39;apr-native&#39;, &#39;gdbm-native&#39;, &#39;python-scons-n=
ative&#39;]</span><u></u><u></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">| NOTE: Skipping as already exists in sysroot: [&#39;opkg-native&#39;, =
&#39;qemuwrapper-cross&#39;, &#39;mklibs-native&#39;, &#39;makedevs-native&=
#39;, &#39;kmod-native&#39;, &#39;update-rc.d-native&#39;, &#39;createrepo-=
c-native&#39;, &#39;rpm-native&#39;, &#39;glibc&#39;, &#39;openssl-native&#=
39;, &#39;e2fsprogs-native&#39;,
 &#39;u-boot-mkimage-native&#39;, &#39;libgcc&#39;, &#39;depmodwrapper-cros=
s&#39;, &#39;dtc-native&#39;, &#39;gcc-runtime&#39;, &#39;dnf-native&#39;, =
&#39;ldconfig-native&#39;, &#39;pigz-native&#39;, &#39;quilt-native&#39;, &=
#39;u-boot-qoriq&#39;, &#39;qe-ucode&#39;, &#39;fec&#39;, &#39;opkg-utils-n=
ative&#39;, &#39;omg-hardware&#39;, &#39;bmap-tools-native&#39;, &#39;pseud=
o-native&#39;,
 &#39;prelink-native&#39;, &#39;sqlite3-native&#39;, &#39;libtool-native&#3=
9;, &#39;bzip2-native&#39;, &#39;autoconf-native&#39;, &#39;expat-native&#3=
9;, &#39;xz-native&#39;, &#39;gnu-config-native&#39;, &#39;readline-native&=
#39;, &#39;pkgconfig-native&#39;, &#39;zlib-native&#39;, &#39;automake-nati=
ve&#39;, &#39;qemu-native&#39;, &#39;util-linux-native&#39;, &#39;popt-nati=
ve&#39;,
 &#39;ncurses-native&#39;, &#39;libarchive-native&#39;, &#39;libsolv-native=
&#39;, &#39;gettext-minimal-native&#39;, &#39;gtk-doc-native&#39;, &#39;tex=
info-dummy-native&#39;, &#39;flex-native&#39;, &#39;bison-native&#39;, &#39=
;glib-2.0-native&#39;, &#39;cmake-native&#39;, &#39;python3-native&#39;, &#=
39;libxml2-native&#39;, &#39;file-native&#39;, &#39;curl-native&#39;,
 &#39;dbus-native&#39;, &#39;nss-native&#39;, &#39;elfutils-native&#39;, &#=
39;db-native&#39;, &#39;linux-libc-headers&#39;, &#39;cryptodev-linux-nativ=
e&#39;, &#39;makedepend-native&#39;, &#39;attr-native&#39;, &#39;shadow-nat=
ive&#39;, &#39;librepo-native&#39;, &#39;python3-iniparse-native&#39;, &#39=
;libdnf-native&#39;, &#39;libcomps-native&#39;, &#39;lzo-native&#39;,
 &#39;omg-mcu&#39;, &#39;python3-setuptools-native&#39;, &#39;binutils-nati=
ve&#39;, &#39;m4-native&#39;, &#39;alsa-lib-native&#39;, &#39;libsdl-native=
&#39;, &#39;pixman-native&#39;, &#39;libffi-native&#39;, &#39;libpcre-nativ=
e&#39;, &#39;gettext-native&#39;, &#39;nspr-native&#39;, &#39;xproto-native=
&#39;, &#39;util-macros-native&#39;, &#39;unzip-native&#39;, &#39;libcheck-=
native&#39;,
 &#39;gpgme-native&#39;, &#39;python3-six-native&#39;, &#39;gobject-introsp=
ection-native&#39;, &#39;libxrender-native&#39;, &#39;libxrandr-native&#39;=
, &#39;libxext-native&#39;, &#39;libx11-native&#39;, &#39;libpng-native&#39=
;, &#39;swig-native&#39;, &#39;libassuan-native&#39;, &#39;libgpg-error-nat=
ive&#39;, &#39;renderproto-native&#39;, &#39;randrproto-native&#39;,
 &#39;xextproto-native&#39;, &#39;libxcb-native&#39;, &#39;inputproto-nativ=
e&#39;, &#39;xtrans-native&#39;, &#39;kbproto-native&#39;, &#39;libxau-nati=
ve&#39;, &#39;libxdmcp-native&#39;, &#39;libpthread-stubs-native&#39;, &#39=
;xcb-proto-native&#39;]</span><u></u><u></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">| DEBUG: sed -e &#39;s:^[^/]*/:/home/build/build/tmp/work/mg90-poky-lin=
ux-gnueabi/core-image-minimal/1.0-r0/recipe-sysroot-native/:g&#39; /home/bu=
ild/build/tmp/sysroots-components/x86_64/python-native/fixmepath /home/buil=
d/build/tmp/sysroots-components/x86_64/tcl-native/fixmepath
 /home/build/build/tmp/sysroots-components/x86_64/gcc-cross-arm/fixmepath /=
home/build/build/tmp/sysroots-components/x86_64/apr-util-native/fixmepath /=
home/build/build/tmp/sysroots-components/x86_64/python-setuptools-native/fi=
xmepath /home/build/build/tmp/sysroots-components/x86_64/gmp-native/fixmepa=
th
 /home/build/build/tmp/sysroots-components/x86_64/apr-native/fixmepath | xa=
rgs sed -i -e &#39;s:FIXMESTAGINGDIRTARGET:/home/build/build/tmp/work/mg90-=
poky-linux-gnueabi/core-image-minimal/1.0-r0/recipe-sysroot:g; s:FIXMESTAGI=
NGDIRHOST:/home/build/build/tmp/work/mg90-poky-linux-gnueabi/core-image-min=
imal/1.0-r0/recipe-sysroot-native:g&#39;
 -e &#39;s:FIXME_COMPONENTS_DIR:/home/build/build/tmp/sysroots-components:g=
&#39; -e &#39;s:FIXME_HOSTTOOLS_DIR:/home/build/build/tmp/hosttools:g&#39; =
-e &#39;s:FIXME_PKGDATA_DIR:/home/build/build/tmp/pkgdata/mg90:g&#39; -e &#=
39;s:FIXME_PSEUDO_LOCALSTATEDIR:/home/build/build/tmp/work/mg90-poky-linux-=
gnueabi/core-image-minimal/1.0-r0/pseudo/:g&#39;
 -e &#39;s:FIXME_LOGFIFO:/home/build/build/tmp/work/mg90-poky-linux-gnueabi=
/core-image-minimal/1.0-r0/temp/fifo.15406:g&#39;</span><u></u><u></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">| DEBUG: Python function extend_recipe_sysroot finished</span><u></u><u=
></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">| DEBUG: Executing shell function do_image_wic</span><u></u><u></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">| INFO: Creating image(s)...</span><u></u><u></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">|</span><span class=3D"m_-6407129561190528086apple-converted-space">=C2=
=A0</span><u></u><u></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">| Traceback (most recent call last):</span><u></u><u></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">| </span><span class=3D"m_-6407129561190528086apple-converted-space">=
=C2=A0 </span>
<span class=3D"m_-6407129561190528086s1">File &quot;/home/build/upstream/yo=
cto/poky/scripts/lib/wic/filemap.py&quot;, line 385, in _invoke_fiemap</spa=
n><u></u><u></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">| </span><span class=3D"m_-6407129561190528086apple-converted-space">=
=C2=A0 =C2=A0 </span>
<span class=3D"m_-6407129561190528086s1">fcntl.ioctl(self._f_image, _FIEMAP=
_IOCTL, self._buf, 1)</span><u></u><u></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">| OSError: [Errno 95] Operation not supported</span><u></u><u></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">|</span><span class=3D"m_-6407129561190528086apple-converted-space">=C2=
=A0</span><u></u><u></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">| During handling of the above exception, another exception occurred:</=
span><u></u><u></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">|</span><span class=3D"m_-6407129561190528086apple-converted-space">=C2=
=A0</span><u></u><u></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">| Traceback (most recent call last):</span><u></u><u></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">| </span><span class=3D"m_-6407129561190528086apple-converted-space">=
=C2=A0 </span>
<span class=3D"m_-6407129561190528086s1">File &quot;/home/build/upstream/yo=
cto/poky/scripts/lib/wic/filemap.py&quot;, line 525, in filemap</span><u></=
u><u></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">| </span><span class=3D"m_-6407129561190528086apple-converted-space">=
=C2=A0 =C2=A0 </span>
<span class=3D"m_-6407129561190528086s1">return FilemapFiemap(image, log)</=
span><u></u><u></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">| </span><span class=3D"m_-6407129561190528086apple-converted-space">=
=C2=A0 </span>
<span class=3D"m_-6407129561190528086s1">File &quot;/home/build/upstream/yo=
cto/poky/scripts/lib/wic/filemap.py&quot;, line 359, in __init__</span><u><=
/u><u></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">| </span><span class=3D"m_-6407129561190528086apple-converted-space">=
=C2=A0 =C2=A0 </span>
<span class=3D"m_-6407129561190528086s1">self.block_is_mapped(0)</span><u><=
/u><u></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">| </span><span class=3D"m_-6407129561190528086apple-converted-space">=
=C2=A0 </span>
<span class=3D"m_-6407129561190528086s1">File &quot;/home/build/upstream/yo=
cto/poky/scripts/lib/wic/filemap.py&quot;, line 406, in block_is_mapped</sp=
an><u></u><u></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">| </span><span class=3D"m_-6407129561190528086apple-converted-space">=
=C2=A0 =C2=A0 </span>
<span class=3D"m_-6407129561190528086s1">struct_fiemap =3D self._invoke_fie=
map(block, 1)</span><u></u><u></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">| </span><span class=3D"m_-6407129561190528086apple-converted-space">=
=C2=A0 </span>
<span class=3D"m_-6407129561190528086s1">File &quot;/home/build/upstream/yo=
cto/poky/scripts/lib/wic/filemap.py&quot;, line 393, in _invoke_fiemap</spa=
n><u></u><u></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">| </span><span class=3D"m_-6407129561190528086apple-converted-space">=
=C2=A0 =C2=A0 </span>
<span class=3D"m_-6407129561190528086s1">raise ErrorNotSupp(errstr)</span><=
u></u><u></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">| wic.filemap.ErrorNotSupp: FilemapFiemap: the FIEMAP ioctl is not supp=
orted by the file-system</span><u></u><u></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">|</span><span class=3D"m_-6407129561190528086apple-converted-space">=C2=
=A0</span><u></u><u></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">| During handling of the above exception, another exception occurred:</=
span><u></u><u></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">|</span><span class=3D"m_-6407129561190528086apple-converted-space">=C2=
=A0</span><u></u><u></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">| Traceback (most recent call last):</span><u></u><u></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">| </span><span class=3D"m_-6407129561190528086apple-converted-space">=
=C2=A0 </span>
<span class=3D"m_-6407129561190528086s1">File &quot;/home/build/upstream/yo=
cto/poky/scripts/wic&quot;, line 525, in &lt;module&gt;</span><u></u><u></u=
></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">| </span><span class=3D"m_-6407129561190528086apple-converted-space">=
=C2=A0 =C2=A0 </span>
<span class=3D"m_-6407129561190528086s1">sys.exit(main(sys.argv[1:]))</span=
><u></u><u></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">| </span><span class=3D"m_-6407129561190528086apple-converted-space">=
=C2=A0 </span>
<span class=3D"m_-6407129561190528086s1">File &quot;/home/build/upstream/yo=
cto/poky/scripts/wic&quot;, line 520, in main</span><u></u><u></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">| </span><span class=3D"m_-6407129561190528086apple-converted-space">=
=C2=A0 =C2=A0 </span>
<span class=3D"m_-6407129561190528086s1">return hlp.invoke_subcommand(args,=
 parser, hlp.wic_help_usage, subcommands)</span><u></u><u></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">| </span><span class=3D"m_-6407129561190528086apple-converted-space">=
=C2=A0 </span>
<span class=3D"m_-6407129561190528086s1">File &quot;/home/build/upstream/yo=
cto/poky/scripts/lib/wic/help.py&quot;, line 98, in invoke_subcommand</span=
><u></u><u></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">| </span><span class=3D"m_-6407129561190528086apple-converted-space">=
=C2=A0 =C2=A0 </span>
<span class=3D"m_-6407129561190528086s1">subcmd[0](args, usage)</span><u></=
u><u></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">| </span><span class=3D"m_-6407129561190528086apple-converted-space">=
=C2=A0 </span>
<span class=3D"m_-6407129561190528086s1">File &quot;/home/build/upstream/yo=
cto/poky/scripts/wic&quot;, line 227, in wic_create_subcommand</span><u></u=
><u></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">| </span><span class=3D"m_-6407129561190528086apple-converted-space">=
=C2=A0 =C2=A0 </span>
<span class=3D"m_-6407129561190528086s1">native_sysroot, options)</span><u>=
</u><u></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">| </span><span class=3D"m_-6407129561190528086apple-converted-space">=
=C2=A0 </span>
<span class=3D"m_-6407129561190528086s1">File &quot;/home/build/upstream/yo=
cto/poky/scripts/lib/wic/engine.py&quot;, line 202, in wic_create</span><u>=
</u><u></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">| </span><span class=3D"m_-6407129561190528086apple-converted-space">=
=C2=A0 =C2=A0 </span>
<span class=3D"m_-6407129561190528086s1">plugin.do_create()</span><u></u><u=
></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">| </span><span class=3D"m_-6407129561190528086apple-converted-space">=
=C2=A0 </span>
<span class=3D"m_-6407129561190528086s1">File &quot;/home/build/upstream/yo=
cto/poky/scripts/lib/wic/plugins/imager/direct.py&quot;, line 99, in do_cre=
ate</span><u></u><u></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">| </span><span class=3D"m_-6407129561190528086apple-converted-space">=
=C2=A0 =C2=A0 </span>
<span class=3D"m_-6407129561190528086s1">self.create()</span><u></u><u></u>=
</p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">| </span><span class=3D"m_-6407129561190528086apple-converted-space">=
=C2=A0 </span>
<span class=3D"m_-6407129561190528086s1">File &quot;/home/build/upstream/yo=
cto/poky/scripts/lib/wic/plugins/imager/direct.py&quot;, line 194, in creat=
e</span><u></u><u></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">| </span><span class=3D"m_-6407129561190528086apple-converted-space">=
=C2=A0 =C2=A0 </span>
<span class=3D"m_-6407129561190528086s1">self._image.prepare(self)</span><u=
></u><u></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">| </span><span class=3D"m_-6407129561190528086apple-converted-space">=
=C2=A0 </span>
<span class=3D"m_-6407129561190528086s1">File &quot;/home/build/upstream/yo=
cto/poky/scripts/lib/wic/plugins/imager/direct.py&quot;, line 352, in prepa=
re</span><u></u><u></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">| </span><span class=3D"m_-6407129561190528086apple-converted-space">=
=C2=A0 =C2=A0 </span>
<span class=3D"m_-6407129561190528086s1">imager.kernel_dir, imager.native_s=
ysroot)</span><u></u><u></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">| </span><span class=3D"m_-6407129561190528086apple-converted-space">=
=C2=A0 </span>
<span class=3D"m_-6407129561190528086s1">File &quot;/home/build/upstream/yo=
cto/poky/scripts/lib/wic/partition.py&quot;, line 185, in prepare</span><u>=
</u><u></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">| </span><span class=3D"m_-6407129561190528086apple-converted-space">=
=C2=A0 =C2=A0 </span>
<span class=3D"m_-6407129561190528086s1">kernel_dir, rootfs_dir, native_sys=
root)</span><u></u><u></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">| </span><span class=3D"m_-6407129561190528086apple-converted-space">=
=C2=A0 </span>
<span class=3D"m_-6407129561190528086s1">File &quot;/home/build/upstream/yo=
cto/poky/scripts/lib/wic/plugins/source/rawcopy.py&quot;, line 78, in do_pr=
epare_partition</span><u></u><u></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">| </span><span class=3D"m_-6407129561190528086apple-converted-space">=
=C2=A0 =C2=A0 </span>
<span class=3D"m_-6407129561190528086s1">sparse_copy(src, dst)</span><u></u=
><u></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">| </span><span class=3D"m_-6407129561190528086apple-converted-space">=
=C2=A0 </span>
<span class=3D"m_-6407129561190528086s1">File &quot;/home/build/upstream/yo=
cto/poky/scripts/lib/wic/filemap.py&quot;, line 543, in sparse_copy</span><=
u></u><u></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">| </span><span class=3D"m_-6407129561190528086apple-converted-space">=
=C2=A0 =C2=A0 </span>
<span class=3D"m_-6407129561190528086s1">fmap =3D api(src_fname)</span><u><=
/u><u></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">| </span><span class=3D"m_-6407129561190528086apple-converted-space">=
=C2=A0 </span>
<span class=3D"m_-6407129561190528086s1">File &quot;/home/build/upstream/yo=
cto/poky/scripts/lib/wic/filemap.py&quot;, line 527, in filemap</span><u></=
u><u></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">| </span><span class=3D"m_-6407129561190528086apple-converted-space">=
=C2=A0 =C2=A0 </span>
<span class=3D"m_-6407129561190528086s1">return FilemapSeek(image, log)</sp=
an><u></u><u></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">| </span><span class=3D"m_-6407129561190528086apple-converted-space">=
=C2=A0 </span>
<span class=3D"m_-6407129561190528086s1">File &quot;/home/build/upstream/yo=
cto/poky/scripts/lib/wic/filemap.py&quot;, line 206, in __init__</span><u><=
/u><u></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">| </span><span class=3D"m_-6407129561190528086apple-converted-space">=
=C2=A0 =C2=A0 </span>
<span class=3D"m_-6407129561190528086s1">self._probe_seek_hole()</span><u><=
/u><u></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">| </span><span class=3D"m_-6407129561190528086apple-converted-space">=
=C2=A0 </span>
<span class=3D"m_-6407129561190528086s1">File &quot;/home/build/upstream/yo=
cto/poky/scripts/lib/wic/filemap.py&quot;, line 241, in _probe_seek_hole</s=
pan><u></u><u></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">| </span><span class=3D"m_-6407129561190528086apple-converted-space">=
=C2=A0 =C2=A0 </span>
<span class=3D"m_-6407129561190528086s1">raise ErrorNotSupp(&quot;the file-=
system does not support &quot;</span><u></u><u></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">| wic.filemap.ErrorNotSupp: the file-system does not support &quot;SEEK=
_HOLE&quot; and &quot;SEEK_DATA&quot; but only provides a stub implementati=
on</span><u></u><u></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">| WARNING: /home/build/build/tmp/work/mg90-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/temp/run.do_image_wic.15406:1 exit 1 from &#39;BUILDDIR=3D=
&quot;/home/build/build&quot; wic create &quot;$wks&quot; --vars &quot;/hom=
e/build/build/tmp/sysroots/mg90/imgdata/&quot;
 -e &quot;core-image-minimal&quot; -o &quot;$out/&quot;&#39;</span><u></u><=
u></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">| ERROR: Function failed: do_image_wic (log file is located at /home/bu=
ild/build/tmp/work/mg90-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp/l=
og.do_image_wic.15406)</span><u></u><u></u></p>
<p class=3D"m_-6407129561190528086p1"><span class=3D"m_-6407129561190528086=
s1"><b>ERROR</b></span><span class=3D"m_-6407129561190528086s2">: </span><s=
pan class=3D"m_-6407129561190528086s1">Task (/home/build/upstream/yocto/pok=
y/meta/recipes-core/images/core-image-minimal.bb:do_image_wic) failed with =
exit code &#39;1&#39;</span><u></u><u></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1"><b>NOTE</b>: Tasks Summary: Attempted 3411 tasks of which 2614 didn&#39=
;t need to be rerun and 1 failed.</span><u></u><u></u></p>
<p class=3D"m_-6407129561190528086p3"><u></u>=C2=A0<u></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">Summary: 1 task failed:</span><u></u><u></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
apple-converted-space">=C2=A0 </span><span class=3D"m_-6407129561190528086s=
1">/home/build/upstream/yocto/poky/meta/recipes-core/images/core-image-mini=
mal.bb:do_image_wic</span><u></u><u></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">Summary: There were 13 WARNING messages shown.</span><u></u><u></u></p>
<p class=3D"m_-6407129561190528086p2"><span class=3D"m_-6407129561190528086=
s1">Summary: There was 1 ERROR message shown, returning a non-zero exit cod=
e.</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><u></u>=C2=A0<u></u=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><u></u>=C2=A0<u></u=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt">=C2=
=A0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11.0pt">=
=C2=A0</span></b><span lang=3D"EN-US" style=3D"font-size:11.0pt"><u></u><u>=
</u></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11.0pt">R=
egards,</span></b><span lang=3D"EN-US" style=3D"font-size:11.0pt"><u></u><u=
></u></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11.0pt">=
=C2=A0</span></b><span lang=3D"EN-US" style=3D"font-size:11.0pt"><u></u><u>=
</u></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11.0pt">D=
arcy</span></b><span lang=3D"EN-US" style=3D"font-size:11.0pt"><u></u><u></=
u></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11.0pt">=
=C2=A0</span></b><span lang=3D"EN-US" style=3D"font-size:11.0pt"><u></u><u>=
</u></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11.0pt">D=
arcy Watkins ::=C2=A0=C2=A0Senior Staff Engineer, Firmware</span></b><span =
lang=3D"EN-US" style=3D"font-size:11.0pt"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11.0pt">=
=C2=A0</span></b><span lang=3D"EN-US" style=3D"font-size:11.0pt"><u></u><u>=
</u></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11.0pt;co=
lor:red">SIERRA WIRELESS</span></b><span lang=3D"EN-US" style=3D"font-size:=
11.0pt;color:red"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt">Dire=
ct=C2=A0 +1 604 233 7989=C2=A0 =C2=A0::=C2=A0=C2=A0Fax=C2=A0=C2=A0+1 604 23=
1 1109=C2=A0 ::=C2=A0=C2=A0Main=C2=A0=C2=A0+1 604 231 1100<u></u><u></u></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt">1381=
1 Wireless Way=C2=A0 ::=C2=A0Richmond, BC Canada V6V 3A4<u></u><u></u></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt">[M4]=
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt"><a h=
ref=3D"mailto:dwatkins@sierrawireless.com" target=3D"_blank">dwatkins@sierr=
awireless.com</a>=C2=A0::=C2=A0<a href=3D"https://na01.safelinks.protection=
.outlook.com/?url=3Dhttp%3A%2F%2Fwww.sierrawireless.com%2F&amp;data=3D02%7C=
01%7Cdwatkins%40sierrawireless.com%7C9c74be6213f14e8d315308d5ec02e29c%7C080=
59a4c248643dd89e33a747e0dcbe8%7C1%7C0%7C636674419524916074&amp;sdata=3DUFp9=
oHJq%2FWno%2FSvypBUhCFkrVPhHbY82BUls%2FnU0L3M%3D&amp;reserved=3D0" target=
=3D"_blank">www.sierrawireless.com</a>
</span><u></u><u></u></p>
</div></div>

-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>

--000000000000ae294b05714aeed5--
