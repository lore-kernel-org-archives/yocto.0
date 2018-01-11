Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A5F33E00E38; Thu, 11 Jan 2018 11:45:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (marek.belisko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f42.google.com (mail-wm0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95BFBE008FB
	for <yocto@yoctoproject.org>; Thu, 11 Jan 2018 11:45:16 -0800 (PST)
Received: by mail-wm0-f42.google.com with SMTP id f140so7559324wmd.2
	for <yocto@yoctoproject.org>; Thu, 11 Jan 2018 11:45:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=3lK57gHuXwf1ss5WL/Qd49X6b99ygMsu/iU8pBco5xo=;
	b=FKl7IPDuZCikH0QnQRSYbGhw5FN2LW7Y6yMknQAWLzwCAqX7G+hLGkSi0iy45vtB4h
	NlNqBV/LrgUsk55fDhFAzDWJVos3ywfNknU+C/22iweNYALAunb2uKU/6SMW8aegXuR9
	QPkmukAniIX6847XjCsMvOXox1F8rGI5NzxlIvM8a+UKKBiakTA+JS+/MT472c02ZMVh
	THbw0iHjswYkEuR1+J7LDmCnmuhR4MkuO+7/+SXIPmjha7qrqEitfAJjVE4VimeZEbA3
	uvDOsUPErpSdEwxd+ZLPtLwJDtkCXfqySpdd+Nz2jj3QRf4ZSfmG9LlNPwc0Pw1NL7QA
	htmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=3lK57gHuXwf1ss5WL/Qd49X6b99ygMsu/iU8pBco5xo=;
	b=Tdx+VnO2+Uh4ghirOKA3FipEyXEG/KMv0V8sLvvo5vEGub5CR/kWe8AsjbkI3VxeMb
	rjrIhdWaARMgcfYWEPQJrpoWN2+YMFkq6wFaqhLpp8/mSyzcDxkVqUMgLBFjrdpYI3fL
	Tbjz+LmenBvzbU9IUoRFh79DV1g4zwzJGYbUyI0ws2aqqbZ6shA4FyEGBLpYU3jZf2QS
	6446/Zpqk1wkmlQN8wPuwm50x9CCN+VrQgLhzlMiOOoRkRsWpc7pzZWoK/G40cQ1e7fa
	iO48V7AtZn57Wdlf31a1eZNBZQkuBCjkEJ4FanR3l+LTw8S3pxRIRm2arZSyNKFlIw8G
	lCfQ==
X-Gm-Message-State: AKwxytesNFS3sn3wJWW9fCWAgE1vd0yw8m0TWt9EKjjA/awdi3J8rlgD
	l0F0ncM15hsFSu8NRsSRaQmrYx8Ue4K25hBd0N2WTg==
X-Google-Smtp-Source: ACJfBovw3hOwjiRH4pv9VKff8mTHhZHJRUBrA2hkG3VWp3RkeDS049t+AuUzcx+QlxlSXD0L5aYV90o4Rdb1dPp2Dls=
X-Received: by 10.28.147.81 with SMTP id v78mr2029666wmd.118.1515699914861;
	Thu, 11 Jan 2018 11:45:14 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.97.85 with HTTP; Thu, 11 Jan 2018 11:45:13 -0800 (PST)
From: Belisko Marek <marek.belisko@gmail.com>
Date: Thu, 11 Jan 2018 20:45:13 +0100
Message-ID: <CAAfyv37XU7O3xgTxYCYHQGugJ4_H12svGsj+rTRiV+cZ3hH6ow@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: wic error during creating sdimg
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
X-List-Received-Date: Thu, 11 Jan 2018 19:45:18 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

below error is from wic when creating SD image. I have no clue where
error can be. I'm portin mender to orangepi and already asked for
support but seems nobody really understand what is going on. Any help
appreciated.

error log:

DEBUG: Executing python function set_image_size
DEBUG: Python function set_image_size finished
DEBUG: Executing python function extend_recipe_sysroot
NOTE: Direct dependencies are
['virtual:native:/home/marek/projects/orangepi_plus/orange-pi-distro/poky/m=
eta/recipes-devtools/dosfstools/dosfstools_4.1.bb:do_populate_sysroot',
'virtual:native:/home/marek/projects/orangepi_plus/orange-pi-distro/poky/me=
ta/recipes-extended/parted/parted_3.2.bb:do_populate_sysroot',
'virtual:native:/home/marek/projects/orangepi_plus/orange-pi-distro/poky/me=
ta/recipes-devtools/rsync/rsync_3.1.2.bb:do_populate_sysroot',
'/home/marek/projects/orangepi_plus/orange-pi-distro/poky/meta/recipes-kern=
el/kmod/depmodwrapper-cross_1.0.bb:do_populate_sysroot',
'virtual:native:/home/marek/projects/orangepi_plus/orange-pi-distro/poky/me=
ta/recipes-devtools/prelink/prelink_git.bb:do_populate_sysroot',
'virtual:native:/home/marek/projects/orangepi_plus/orange-pi-distro/poky/me=
ta/recipes-devtools/fdisk/gptfdisk_1.0.3.bb:do_populate_sysroot',
'/home/marek/projects/orangepi_plus/orange-pi-distro/poky/meta/recipes-devt=
ools/mklibs/mklibs-native_0.1.43.bb:do_populate_sysroot',
'/home/marek/projects/orangepi_plus/orange-pi-distro/poky/meta/recipes-core=
/meta/wic-tools.bb:do_populate_sysroot',
'virtual:native:/home/marek/projects/orangepi_plus/orange-pi-distro/poky/me=
ta/recipes-devtools/pseudo/pseudo_1.8.2.bb:do_populate_sysroot',
'virtual:native:/home/marek/projects/orangepi_plus/orange-pi-distro/poky/me=
ta/recipes-core/update-rc.d/update-rc.d_0.7.bb:do_populate_sysroot',
'/home/marek/projects/orangepi_plus/orange-pi-distro/poky/meta/recipes-devt=
ools/qemu/qemuwrapper-cross_1.0.bb:do_populate_sysroot',
'virtual:native:/home/marek/projects/orangepi_plus/orange-pi-distro/poky/me=
ta/recipes-devtools/mtools/mtools_4.0.18.bb:do_populate_sysroot',
'virtual:native:/home/marek/projects/orangepi_plus/orange-pi-distro/poky/me=
ta/recipes-devtools/opkg-utils/opkg-utils_0.3.5.bb:do_populate_sysroot',
'virtual:native:/home/marek/projects/orangepi_plus/orange-pi-distro/poky/me=
ta/recipes-devtools/opkg/opkg_0.3.5.bb:do_populate_sysroot',
'virtual:native:/home/marek/projects/orangepi_plus/orange-pi-distro/poky/me=
ta/recipes-devtools/makedevs/makedevs_1.0.1.bb:do_populate_sysroot',
'/home/marek/projects/orangepi_plus/orange-pi-distro/poky/meta/recipes-core=
/glibc/ldconfig-native_2.12.1.bb:do_populate_sysroot',
'virtual:native:/home/marek/projects/orangepi_plus/orange-pi-distro/poky/me=
ta/recipes-extended/pigz/pigz_2.3.4.bb:do_populate_sysroot']
NOTE: Installed into sysroot: ['dosfstools-native', 'parted-native',
'rsync-native', 'gptfdisk-native', 'wic-tools', 'mtools-native',
'acl-native']
NOTE: Skipping as already exists in sysroot: ['depmodwrapper-cross',
'prelink-native', 'mklibs-native', 'pseudo-native',
'update-rc.d-native', 'qemuwrapper-cross', 'opkg-utils-native',
'opkg-native', 'makedevs-native', 'ldconfig-native', 'pigz-native',
'gnu-config-native', 'pkgconfig-native', 'quilt-native',
'autoconf-native', 'xz-native', 'automake-native', 'libtool-native',
'systemd-systemctl-native', 'readline-native', 'util-linux-native',
'texinfo-dummy-native', 'gettext-minimal-native', 'ncurses-native',
'shadow-native', 'popt-native', 'attr-native', 'nss-native',
'elfutils-native', 'binutils-native', 'zlib-native', 'openssl-native',
'debianutils-native', 'qemu-native', 'kmod-native',
'libarchive-native', 'libsolv-native', 'm4-native', 'lzo-native',
'sqlite3-native', 'nspr-native', 'flex-native', 'bison-native',
'cryptodev-linux-native', 'makedepend-native', 'pixman-native',
'libsdl-native', 'glib-2.0-native', 'alsa-lib-native', 'dtc-native',
'gtk-doc-native', 'bzip2-native', 'e2fsprogs-native', 'cmake-native',
'expat-native', 'rpm-native', 'util-macros-native', 'xproto-native',
'libpng-native', 'libx11-native', 'libxext-native',
'libxrandr-native', 'libxrender-native', 'libffi-native',
'gettext-native', 'libpcre-native', 'python3-native', 'curl-native',
'db-native', 'dbus-native', 'file-native', 'xtrans-native',
'inputproto-native', 'xextproto-native', 'kbproto-native',
'libxcb-native', 'randrproto-native', 'renderproto-native',
'libxdmcp-native', 'xcb-proto-native', 'libpthread-stubs-native',
'libxau-native']
DEBUG: Python function extend_recipe_sysroot finished
DEBUG: Executing shell function do_image_sdimg
+ mkdir -p /home/marek/projects/orangepi_plus/orange-pi-distro/build/tmp-gl=
ibc/work/orange_pi_pc_plus-oe-linux-gnueabi/opipcplus-minimal/1.0-r0
+ mkdir -p /home/marek/projects/orangepi_plus/orange-pi-distro/build/tmp-gl=
ibc/work/orange_pi_pc_plus-oe-linux-gnueabi/opipcplus-minimal/1.0-r0/rootfs
+ rm -rf /home/marek/projects/orangepi_plus/orange-pi-distro/build/tmp-glib=
c/work/orange_pi_pc_plus-oe-linux-gnueabi/opipcplus-minimal/1.0-r0/data
+ mkdir -p /home/marek/projects/orangepi_plus/orange-pi-distro/build/tmp-gl=
ibc/work/orange_pi_pc_plus-oe-linux-gnueabi/opipcplus-minimal/1.0-r0/data
+ '[' -n '' ']'
+ '[' -f /home/marek/projects/orangepi_plus/orange-pi-distro/build/tmp-glib=
c/deploy/images/orange-pi-pc-plus/data.tar
']'
+ cd /home/marek/projects/orangepi_plus/orange-pi-distro/build/tmp-glibc/wo=
rk/orange_pi_pc_plus-oe-linux-gnueabi/opipcplus-minimal/1.0-r0
+ tar xf /home/marek/projects/orangepi_plus/orange-pi-distro/build/tmp-glib=
c/deploy/images/orange-pi-pc-plus/data.tar
+ mkdir -p /home/marek/projects/orangepi_plus/orange-pi-distro/build/tmp-gl=
ibc/work/orange_pi_pc_plus-oe-linux-gnueabi/opipcplus-minimal/1.0-r0/data/m=
ender
+ echo device_type=3Dorange-pi-pc-plus
+ chmod 0444 /home/marek/projects/orangepi_plus/orange-pi-distro/build/tmp-=
glibc/work/orange_pi_pc_plus-oe-linux-gnueabi/opipcplus-minimal/1.0-r0/data=
/mender/device_type
+ dd if=3D/dev/zero
of=3D/home/marek/projects/orangepi_plus/orange-pi-distro/build/tmp-glibc/wo=
rk/orange_pi_pc_plus-oe-linux-gnueabi/opipcplus-minimal/1.0-r0/data.ext4
count=3D0 bs=3D1M seek=3D128
0+0 records in
0+0 records out
0 bytes copied, 8.1218e-05 s, 0.0 kB/s
+ mkfs.ext4 -F /home/marek/projects/orangepi_plus/orange-pi-distro/build/tm=
p-glibc/work/orange_pi_pc_plus-oe-linux-gnueabi/opipcplus-minimal/1.0-r0/da=
ta.ext4
-d /home/marek/projects/orangepi_plus/orange-pi-distro/build/tmp-glibc/work=
/orange_pi_pc_plus-oe-linux-gnueabi/opipcplus-minimal/1.0-r0/data
-L data
mke2fs 1.43.5 (04-Aug-2017)
Discarding device blocks: done
Creating filesystem with 131072 1k blocks and 32768 inodes
Filesystem UUID: a622b529-a817-44f1-9754-f119e6939f64
Superblock backups stored on blocks:
8193, 24577, 40961, 57345, 73729

Allocating group tables: done
Writing inode tables: done
Creating journal (4096 blocks): done
Copying files into the device: done
Writing superblocks and filesystem accounting information: done

+ wks=3D/home/marek/projects/orangepi_plus/orange-pi-distro/build/tmp-glibc=
/work/orange_pi_pc_plus-oe-linux-gnueabi/opipcplus-minimal/1.0-r0/mender-sd=
img.wks
+ rm -f /home/marek/projects/orangepi_plus/orange-pi-distro/build/tmp-glibc=
/work/orange_pi_pc_plus-oe-linux-gnueabi/opipcplus-minimal/1.0-r0/mender-sd=
img.wks
+ '[' -n '' ']'
+ true
+ '[' -n 8388608 ']'
++ expr 8388608 / 1024
+ boot_env_align_kb=3D8192
+ cat
+ cat
+ echo '### Contents of wks file ###'
### Contents of wks file ###
+ cat /home/marek/projects/orangepi_plus/orange-pi-distro/build/tmp-glibc/w=
ork/orange_pi_pc_plus-oe-linux-gnueabi/opipcplus-minimal/1.0-r0/mender-sdim=
g.wks
part --source rawcopy
--sourceparams=3D"file=3D/home/marek/projects/orangepi_plus/orange-pi-distr=
o/build/tmp-glibc/deploy/images/orange-pi-pc-plus/uboot.env"
--ondisk mmcblk0 --align 8192 --no-table
part --source bootimg-partition --ondisk mmcblk0 --fstype=3Dvfat --label
boot --align 8192 --active --fixed-size 16
part --source rootfs --ondisk mmcblk0 --fstype=3Dext4 --label primary
--align 8192 --fixed-size 425984k
part --source rootfs --ondisk mmcblk0 --fstype=3Dext4 --label secondary
--align 8192 --fixed-size 425984k
part --source rawcopy
--sourceparams=3Dfile=3D"/home/marek/projects/orangepi_plus/orange-pi-distr=
o/build/tmp-glibc/work/orange_pi_pc_plus-oe-linux-gnueabi/opipcplus-minimal=
/1.0-r0/data.ext4"
--ondisk mmcblk0 --fstype=3Dext4 --label data --align 8192 --fixed-size
128
bootloader --ptable msdos
+ echo '### End of contents of wks file ###'
### End of contents of wks file ###
+ outimgname=3D/home/marek/projects/orangepi_plus/orange-pi-distro/build/tm=
p-glibc/work/orange_pi_pc_plus-oe-linux-gnueabi/opipcplus-minimal/1.0-r0/de=
ploy-opipcplus-minimal-image-complete/opipcplus-minimal-orange-pi-pc-plus-2=
0180104184416.sdimg
+ wicout=3D/home/marek/projects/orangepi_plus/orange-pi-distro/build/tmp-gl=
ibc/work/orange_pi_pc_plus-oe-linux-gnueabi/opipcplus-minimal/1.0-r0/deploy=
-opipcplus-minimal-image-complete/opipcplus-minimal-orange-pi-pc-plus-20180=
104184416-sdimg
+ BUILDDIR=3D/home/marek/projects/orangepi_plus/orange-pi-distro/build
+ wic create /home/marek/projects/orangepi_plus/orange-pi-distro/build/tmp-=
glibc/work/orange_pi_pc_plus-oe-linux-gnueabi/opipcplus-minimal/1.0-r0/mend=
er-sdimg.wks
--vars /home/marek/projects/orangepi_plus/orange-pi-distro/build/tmp-glibc/=
sysroots/orange-pi-pc-plus/imgdata/
-e opipcplus-minimal -o
/home/marek/projects/orangepi_plus/orange-pi-distro/build/tmp-glibc/work/or=
ange_pi_pc_plus-oe-linux-gnueabi/opipcplus-minimal/1.0-r0/deploy-opipcplus-=
minimal-image-complete/opipcplus-minimal-orange-pi-pc-plus-20180104184416-s=
dimg/
INFO: Creating image(s)...

WARNING: overhead-factor was specified, but size was not, so bitbake
variables will be used for the size. In this case both
IMAGE_OVERHEAD_FACTOR and --overhead-factor will be applied
ERROR: _exec_cmd: export
PATH=3D/home/marek/projects/orangepi_plus/orange-pi-distro/build/tmp-glibc/=
work/orange_pi_pc_plus-oe-linux-gnueabi/opipcplus-minimal/1.0-r0/recipe-sys=
root-native/sbin:/home/marek/projects/orangepi_plus/orange-pi-distro/build/=
tmp-glibc/work/orange_pi_pc_plus-oe-linux-gnueabi/opipcplus-minimal/1.0-r0/=
recipe-sysroot-native/usr/sbin:/home/marek/projects/orangepi_plus/orange-pi=
-distro/build/tmp-glibc/work/orange_pi_pc_plus-oe-linux-gnueabi/opipcplus-m=
inimal/1.0-r0/recipe-sysroot-native/usr/bin:$PATH;mcopy
-i /home/marek/projects/orangepi_plus/orange-pi-distro/build/tmp-glibc/work=
/orange_pi_pc_plus-oe-linux-gnueabi/opipcplus-minimal/1.0-r0/deploy-opipcpl=
us-minimal-image-complete/opipcplus-minimal-orange-pi-pc-plus-2018010418441=
6-sdimg/tmp.wic.kkfh96cr/rootfs_boot.2.vfat
-s /home/marek/projects/orangepi_plus/orange-pi-distro/build/tmp-glibc/work=
/orange_pi_pc_plus-oe-linux-gnueabi/opipcplus-minimal/1.0-r0/deploy-opipcpl=
us-minimal-image-complete/opipcplus-minimal-orange-pi-pc-plus-2018010418441=
6-sdimg/tmp.wic.kkfh96cr/boot.2/*
::/ returned '1' instead of 0
output: /home/marek/projects/orangepi_plus/orange-pi-distro/build/tmp-glibc=
/work/orange_pi_pc_plus-oe-linux-gnueabi/opipcplus-minimal/1.0-r0/deploy-op=
ipcplus-minimal-image-complete/opipcplus-minimal-orange-pi-pc-plus-20180104=
184416-sdimg/tmp.wic.kkfh96cr/boot.2/*:
No such file or directory

+ bb_exit_handler
+ ret=3D1
+ case $ret in
+ case $BASH_VERSION in
+ echo 'WARNING:
/home/marek/projects/orangepi_plus/orange-pi-distro/build/tmp-glibc/work/or=
ange_pi_pc_plus-oe-linux-gnueabi/opipcplus-minimal/1.0-r0/temp/run.do_image=
_sdimg.31516:1
exit 1 from '\''BUILDDIR=3D"/home/marek/projects/orangepi_plus/orange-pi-di=
stro/build"
wic create "$wks" --vars
"/home/marek/projects/orangepi_plus/orange-pi-distro/build/tmp-glibc/sysroo=
ts/orange-pi-pc-plus/imgdata/"
-e "opipcplus-minimal" -o "$wicout/"'\'''
WARNING: /home/marek/projects/orangepi_plus/orange-pi-distro/build/tmp-glib=
c/work/orange_pi_pc_plus-oe-linux-gnueabi/opipcplus-minimal/1.0-r0/temp/run=
.do_image_sdimg.31516:1
exit 1 from 'BUILDDIR=3D"/home/marek/projects/orangepi_plus/orange-pi-distr=
o/build"
wic create "$wks" --vars
"/home/marek/projects/orangepi_plus/orange-pi-distro/build/tmp-glibc/sysroo=
ts/orange-pi-pc-plus/imgdata/"
-e "opipcplus-minimal" -o "$wicout/"'
+ exit 1
ERROR: Function failed: do_image_sdimg (log file is located at
/home/marek/projects/orangepi_plus/orange-pi-distro/build/tmp-glibc/work/or=
ange_pi_pc_plus-oe-linux-gnueabi/opipcplus-minimal/1.0-r0/temp/log.do_image=
_sdimg.31516)

BR,

marek
--=20
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

