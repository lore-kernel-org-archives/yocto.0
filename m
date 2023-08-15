Return-Path: <Martin.Jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0669EC001B0
	for <webhook@archiver.kernel.org>; Tue, 15 Aug 2023 14:42:53 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.web11.136024.1692110562227089112
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Aug 2023 07:42:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=VFol67xK;
 spf=pass (domain: gmail.com, ip: 209.85.221.53, mailfrom: martin.jansa@gmail.com)
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-3175f17a7baso4592150f8f.0
        for <yocto@lists.yoctoproject.org>; Tue, 15 Aug 2023 07:42:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692110560; x=1692715360;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9yxNuEIDuicvk6UTdroYB0SliFX5Yc6eibAy6FVG4rU=;
        b=VFol67xKBxpx8itQmq8i99nicHuMXj9C4WmQPk/lcdFov42BuZPvM/vyDPyDqjCv4Z
         InwKxZ1Fx6tkhNmv75dj9qIJx3loasUZvRyuRr5IH13WsJ21hXlM+lgBv6isSObl37/T
         5GivWc+K8PZzD3QHY6ZwH0SwOnMLch0l7G88eWxHfiTaQYWQURlno5PKD7pL2krbe2lE
         0shdlfcPq+ufrxYNu2IlY9BWRLK6EcpXatNHjM84M0RAQfQ3uQGNq2nosPC02Xd1EkCm
         nFBceOyfwJcgf0gMzqJJZrvmukLpwXjO2u8z8/xTv3K0+A8QSuJTYsfLgun/4xeDhVxq
         Ecsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692110560; x=1692715360;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9yxNuEIDuicvk6UTdroYB0SliFX5Yc6eibAy6FVG4rU=;
        b=H/NxCaoUTTVDdZmGIY9eYOQt7nCgcqz82frO1o8K076bw3Yru9mV/1TOTcT8lBP5lt
         eKQFkW1dmjOwjxzBh+8MqR7C2MzIGAEU58QIbOUNzS5T4+zbO15pesRONybizDEEiDpn
         hqD4qRAJysieFeElUfG4wazxQtqw8IuuuvlSa+dW8edMxnj1B91wCR3C8QbLLuai/jSg
         h73jweGlECskmiIPcbBH6rT5vl4Kyb6+UpJjCfqy7B5Gsz8pLwb6dngMwiIX1fhvMKNB
         KzM+rmen/u0I43O0djmwN4KwCjEZPPnWJFSuwdHI/AUsntCk5C7pt1N2m6kf2HTLyY0H
         DT1A==
X-Gm-Message-State: AOJu0Yxcy5ls+/H+/z7P5avSAtKQODj3E0VY3MoJRvSyOqsbdMSCWFqA
	xFxtVANsBpoHxOd6Su0y4MYlJAAnKTRKxD2TLKM=
X-Google-Smtp-Source: AGHT+IH2cU04O0hYvFhakZF3j2tgoKJwzr/asOWLPI69CiLvG+OPXHwgh7F04ASuw98R0fqa7QITPr7cYR2j1Eh6C84=
X-Received: by 2002:adf:fa0c:0:b0:317:e025:5a5c with SMTP id
 m12-20020adffa0c000000b00317e0255a5cmr8991395wrr.48.1692110560309; Tue, 15
 Aug 2023 07:42:40 -0700 (PDT)
MIME-Version: 1.0
References: <n9Hl.1691564423269187466.55AD@lists.yoctoproject.org>
 <CA+chaQc-YD5K9u1nxLxEZu_-3W4YOEAu32NtFCsSYJx-ODSOwQ@mail.gmail.com> <MN2PR19MB34400FAF1F57306E4411BC20DD14A@MN2PR19MB3440.namprd19.prod.outlook.com>
In-Reply-To: <MN2PR19MB34400FAF1F57306E4411BC20DD14A@MN2PR19MB3440.namprd19.prod.outlook.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Tue, 15 Aug 2023 16:42:22 +0200
Message-ID: <CA+chaQdXfNiXzDZNSLv6xKmivVkffp=qnzRHYSckwQ7c+-Qk5A@mail.gmail.com>
Subject: Re: [EXT] Re: [yocto] [Poky-Kirkstone][Ubuntu 18.04] The last
 poky-kirkstone can't work on ubuntu 18.04.
To: Ming Wen <mwen@ambarella.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/related; boundary="000000000000dea89c0602f73002"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 15 Aug 2023 14:42:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60800

--000000000000dea89c0602f73002
Content-Type: multipart/alternative; boundary="000000000000dea89b0602f73001"

--000000000000dea89b0602f73001
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

uninative 4.1 was already released, you can backport:
https://git.openembedded.org/openembedded-core/commit/?id=3D1c5c8ff97ba0a7f=
9adc592d702b865b3d166a24b
instead to fix this.

On Tue, Aug 15, 2023 at 4:06=E2=80=AFPM Ming Wen <mwen@ambarella.com> wrote=
:

> *Hi Martin:*
>
>
>
> Nice to meet you and thanks for the help. We will take a try soon.
>
>
>
> *Best Regards!*
> ------------------------------
>
> [image: Ambarella AI Envisioned] <https://www.ambarella.com/>
>
>
>
>
>
>
>
> *Ming Wen (**=E9=97=BB=E6=98=8E**)*
>
> SDK Team | Ambarella Shanghai
>
>
>
> *Phone: *+86-021-60880608-511
>
> *Email: *mwen@ambarella.com
>
>
>
>
>
> *From:* yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> *On
> Behalf Of *Martin Jansa
> *Sent:* Friday, August 11, 2023 1:35 AM
> *To:* Ming Wen <mwen@ambarella.com>
> *Cc:* yocto@lists.yoctoproject.org
> *Subject:* [EXT] Re: [yocto] [Poky-Kirkstone][Ubuntu 18.04] The last
> poky-kirkstone can't work on ubuntu 18.04.
>
>
>
> See
> https://patchwork.yoctoproject.org/project/oe-core/patch/20230623093323.4=
058529-1-Martin.Jansa@gmail.com/
> <https://urldefense.com/v3/__https:/patchwork.yoctoproject.org/project/oe=
-core/patch/20230623093323.4058529-1-Martin.Jansa@gmail.com/__;!!PeEy7nZLVv=
0!mGazcAcBmVhkAt-fFXp4dSVyIKGWUeiJengnAmsESk_cQOAHxwFsMngyUlF3XKh2SxG2BIWLa=
2erj0sJlUJl$>
> which is easy to backport work around to fix uninative-3.9 and 4.0.
>
>
>
> Until uninative-4.1 with more proper fix (
> https://patchwork.yoctoproject.org/project/oe-core/patch/20230731191005.3=
466888-1-Martin.Jansa@gmail.com/
> <https://urldefense.com/v3/__https:/patchwork.yoctoproject.org/project/oe=
-core/patch/20230731191005.3466888-1-Martin.Jansa@gmail.com/__;!!PeEy7nZLVv=
0!mGazcAcBmVhkAt-fFXp4dSVyIKGWUeiJengnAmsESk_cQOAHxwFsMngyUlF3XKh2SxG2BIWLa=
2erj8F9otaB$>)
> is released and configured to be used in dunfell, kirkstone, mickledore a=
nd
> master.
>
>
>
> Regards,
>
>
>
> On Wed, Aug 9, 2023 at 9:00=E2=80=AFAM Ming Wen <mwen@ambarella.com> wrot=
e:
>
> Hi,
>
> We're using Poky-Kirkstone for Yocto. Now we're trying to upgrade it to
> the latest version. But sadly, hit below error when trying to use it to
> compile the code on *ubuntu 18.04*. For comparison, ubuntu 22.04 is OK.
>
> Through narrowing down, we found below clues. It should be caused by some
> of recent updates to Poky.
> It is appreciated if any of Yocto maintainer could help to give a quick
> fix. :)
>
> *To make things simper, the test example is from* *official quick build
> manual( https://docs.yoctoproject.org/4.0.11/brief-yoctoprojectqs/index.h=
tml
> <https://urldefense.com/v3/__https:/docs.yoctoproject.org/4.0.11/brief-yo=
ctoprojectqs/index.html__;!!PeEy7nZLVv0!mGazcAcBmVhkAt-fFXp4dSVyIKGWUeiJeng=
nAmsESk_cQOAHxwFsMngyUlF3XKh2SxG2BIWLa2erj_YmEl0K$> ).*
>
> =3D=3D=3D=3D *Segmentation fault of mkfs.ext4, which is provided by the p=
ackage
> of e2fsprogs-native .* =3D=3D=3D=3D
>
>
>
> jleng@jleng:~/data/cbuild-ng/build/qemux86-64$ bitbake core-image-minimal
>
> WARNING: You are using a local hash equivalence server but have configure=
d
> an sstate mirror. This will likely mean no sstate will match from the
> mirror. You may wish to disable the hash equivalence use (BB_HASHSERVE), =
or
> use a hash equivalence server alongside the sstate mirror.
>
> Loading cache: 100% |
>
>   | ETA:  --:--:--
>
> Loaded 0 entries from dependency cache.
>
> Parsing recipes: 100%
> |########################################################################=
##########################################################|
> Time: 0:00:17
>
> Parsing of 886 .bb files complete (0 cached, 886 parsed). 1648 targets, 4=
5
> skipped, 0 masked, 0 errors.
>
> NOTE: Resolving any missing task queue dependencies
>
>
>
> Build Configuration:
>
> BB_VERSION           =3D "2.0.0"
>
> BUILD_SYS            =3D "x86_64-linux"
>
> NATIVELSBSTRING      =3D "ubuntu-18.04"
>
> TARGET_SYS           =3D "x86_64-poky-linux"
>
> MACHINE              =3D "qemux86-64"
>
> DISTRO               =3D "poky"
>
> DISTRO_VERSION       =3D "4.0.12"
>
> TUNE_FEATURES        =3D "m64 core2"
>
> TARGET_FPU           =3D ""
>
> meta
>
> meta-poky
>
> meta-yocto-bsp       =3D "kirkstone:d6b8790370500b99ca11f0d8a05c39b661ab2=
ba6"
>
> meta-cbuild          =3D "main:fd1231d7002a0bd6e563d80782140b7c6eb549c1"
>
>
>
> Initialising tasks: 100%
> |########################################################################=
#######################################################|
> Time: 0:00:01
>
> Checking sstate mirror object availability: 100%
> |########################################################################=
###############################|
> Time: 0:00:05
>
> Sstate summary: Wanted 1397 Local 647 Mirrors 0 Missed 750 Current 0 (46%
> match, 0% complete)
>
> NOTE: Executing Tasks
>
> WARNING: openssl-native-3.0.10-r0 do_fetch: Failed to fetch URL
> http://www.openssl.org/source/openssl-3.0.10.tar.gz
> <https://urldefense.com/v3/__http:/www.openssl.org/source/openssl-3.0.10.=
tar.gz__;!!PeEy7nZLVv0!mGazcAcBmVhkAt-fFXp4dSVyIKGWUeiJengnAmsESk_cQOAHxwFs=
MngyUlF3XKh2SxG2BIWLa2erj-Kh_brC$>,
> attempting MIRRORS if available
>
> ERROR: core-image-minimal-1.0-r0 do_image_ext4:
> ExecutionError('/home/jleng/data/cbuild-ng/build/qemux86-64/tmp/work/qemu=
x86_64-poky-linux/core-image-minimal/1.0-r0/temp/run.do_image_ext4.22796',
> 139, None, None)
>
> ERROR: Logfile of failure stored in:
> /home/jleng/data/cbuild-ng/build/qemux86-64/tmp/work/qemux86_64-poky-linu=
x/core-image-minimal/1.0-r0/temp/log.do_image_ext4.22796
>
> Log data follows:
>
> | DEBUG: Executing python function extend_recipe_sysroot
>
> | NOTE: Direct dependencies are
> ['/home/jleng/data/cbuild-ng/build/poky/meta/recipes-core/glibc/cross-loc=
aledef-native_2.35.bb:do_populate_sysroot',
> '/home/jleng/data/cbuild-ng/build/poky/meta/recipes-core/glibc/ldconfig-n=
ative_2.12.1.bb:do_populate_sysroot',
> '/home/jleng/data/cbuild-ng/build/poky/meta/recipes-devtools/qemu/qemuwra=
pper-cross_1.0.bb:do_populate_sysroot',
> '/home/jleng/data/cbuild-ng/build/poky/meta/recipes-kernel/kmod/depmodwra=
pper-cross_1.0.bb:do_populate_sysroot',
> 'virtual:native:/home/jleng/data/cbuild-ng/build/poky/meta/recipes-core/u=
pdate-rc.d/update-rc.d_0.8.bb:do_populate_sysroot',
> 'virtual:native:/home/jleng/data/cbuild-ng/build/poky/meta/recipes-devtoo=
ls/createrepo-c/createrepo-c_0.19.0.bb:do_populate_sysroot',
> 'virtual:native:/home/jleng/data/cbuild-ng/build/poky/meta/recipes-devtoo=
ls/dnf/dnf_4.11.1.bb:do_populate_sysroot',
> 'virtual:native:/home/jleng/data/cbuild-ng/build/poky/meta/recipes-devtoo=
ls/e2fsprogs/e2fsprogs_1.46.5.bb:do_populate_sysroot',
> 'virtual:native:/home/jleng/data/cbuild-ng/build/poky/meta/recipes-devtoo=
ls/makedevs/makedevs_1.0.1.bb:do_populate_sysroot',
> 'virtual:native:/home/jleng/data/cbuild-ng/build/poky/meta/recipes-devtoo=
ls/opkg-utils/opkg-utils_0.5.0.bb:do_populate_sysroot',
> 'virtual:native:/home/jleng/data/cbuild-ng/build/poky/meta/recipes-devtoo=
ls/opkg/opkg_0.5.0.bb:do_populate_sysroot',
> 'virtual:native:/home/jleng/data/cbuild-ng/build/poky/meta/recipes-devtoo=
ls/pseudo/pseudo_git.bb:do_populate_sysroot',
> 'virtual:native:/home/jleng/data/cbuild-ng/build/poky/meta/recipes-devtoo=
ls/rpm/rpm_4.17.1.bb:do_populate_sysroot',
> 'virtual:native:/home/jleng/data/cbuild-ng/build/poky/meta/recipes-extend=
ed/pbzip2/pbzip2_1.1.13.bb:do_populate_sysroot',
> 'virtual:native:/home/jleng/data/cbuild-ng/build/poky/meta/recipes-extend=
ed/pigz/pigz_2.7.bb:
> do_populate_sysroot']
>
> | NOTE: Installed into sysroot: ['e2fsprogs-native']
>
> | NOTE: Skipping as already exists in sysroot: ['cross-localedef-native',
> 'ldconfig-native', 'qemuwrapper-cross', 'depmodwrapper-cross',
> 'update-rc.d-native', 'createrepo-c-native', 'dnf-native',
> 'makedevs-native', 'opkg-utils-native', 'opkg-native', 'pseudo-native',
> 'rpm-native', 'pbzip2-native', 'pigz-native', 'bzip2-native',
> 'librepo-native', 'gettext-minimal-native', 'libdnf-native',
> 'python3-iniparse-native', 'libcomps-native', 'cmake-native',
> 'python3-native', 'perl-native', 'zlib-native', 'attr-native',
> 'libtool-native', 'texinfo-dummy-native', 'util-linux-native',
> 'openssl-native', 'debianutils-native', 'kmod-native', 'shadow-native',
> 'shared-mime-info-native', 'file-native', 'lua-native', 'sqlite3-native',
> 'zstd-native', 'popt-native', 'libgcrypt-native', 'xz-native',
> 'elfutils-native', 'qemu-native', 'curl-native', 'libxml2-native',
> 'glib-2.0-native', 'expat-native', 'libarchive-native', 'libsolv-native',
> 'gpgme-native', 'libmodulemd-native', 'gobject-introspection-native',
> 'libcheck-native', 'json-c-native', 'swig-native', 'python3-six-native',
> 'python3-wheel-native', 'python3-setuptools-native',
> 'python3-installer-native', 'ncurses-native', 'libnsl2-native',
> 'libffi-native', 'libtirpc-native', 'util-linux-libuuid-native',
> 'gdbm-native', 'readline-native', 'make-native', 'libpcre2-native',
> 'libcap-ng-native', 'itstool-native', 'libgpg-error-native',
> 'libcap-native', 'libmicrohttpd-native', 'gettext-native',
> 'libpcre-native', 'lzo-native', 'libassuan-native', 'libyaml-native',
> 'flex-native', 'python3-flit-core-native', 'unzip-native', 'gnutls-native=
',
> 'm4-native', 'nettle-native', 'libunistring-native', 'gmp-native',
> 'libidn2-native', 'gnu-config-native']
>
> | DEBUG: sed -e
> 's:^[^/]*/:/home/jleng/data/cbuild-ng/build/qemux86-64/tmp/work/qemux86_6=
4-poky-linux/core-image-minimal/1.0-r0/recipe-sysroot-native/:g'
> /home/jleng/data/cbuild-ng/build/qemux86-64/tmp/sysroots-components/x86_6=
4/e2fsprogs-native/fixmepath
> | xargs sed -i -e
> 's:FIXMESTAGINGDIRTARGET:/home/jleng/data/cbuild-ng/build/qemux86-64/tmp/=
work/qemux86_64-poky-linux/core-image-minimal/1.0-r0/recipe-sysroot:g;
> s:FIXMESTAGINGDIRHOST:/home/jleng/data/cbuild-ng/build/qemux86-64/tmp/wor=
k/qemux86_64-poky-linux/core-image-minimal/1.0-r0/recipe-sysroot-native:g'
> -e
> 's:FIXME_PSEUDO_SYSROOT:/home/jleng/data/cbuild-ng/build/qemux86-64/tmp/s=
ysroots-components/x86_64/pseudo-native:g'
> -e
> 's:FIXME_HOSTTOOLS_DIR:/home/jleng/data/cbuild-ng/build/qemux86-64/tmp/ho=
sttools:g'
> -e
> 's:FIXME_PKGDATA_DIR:/home/jleng/data/cbuild-ng/build/qemux86-64/tmp/pkgd=
ata/qemux86-64:g'
> -e
> 's:FIXME_PSEUDO_LOCALSTATEDIR:/home/jleng/data/cbuild-ng/build/qemux86-64=
/tmp/work/qemux86_64-poky-linux/core-image-minimal/1.0-r0/pseudo/:g'
> -e
> 's:FIXME_LOGFIFO:/home/jleng/data/cbuild-ng/build/qemux86-64/tmp/work/qem=
ux86_64-poky-linux/core-image-minimal/1.0-r0/temp/fifo.22796:g'
>
> | DEBUG: Python function extend_recipe_sysroot finished
>
> | DEBUG: Executing python function set_image_size
>
> | DEBUG: 27409.200000 =3D 21084 * 1.300000
>
> | DEBUG: 27409.200000 =3D max(27409.200000, 8192)[27409.200000] + 0
>
> | DEBUG: 27410.000000 =3D int(27409.200000)
>
> | DEBUG: 27410 =3D aligned(27410)
>
> | DEBUG: returning 27410
>
> | DEBUG: Python function set_image_size finished
>
> | DEBUG: Executing shell function do_image_ext4
>
> | DEBUG: Executing dd if=3D/dev/zero
> of=3D/home/jleng/data/cbuild-ng/build/qemux86-64/tmp/work/qemux86_64-poky=
-linux/core-image-minimal/1.0-r0/deploy-core-image-minimal-image-complete/c=
ore-image-minimal-qemux86-64-20230808061549.rootfs.ext4
> seek=3D27410 count=3D0 bs=3D1024
>
> | 0+0 records in
>
> | 0+0 records out
>
> | 0 bytes copied, 6.4388e-05 s, 0.0 kB/s
>
> | DEBUG: Actual Rootfs size:  19988
> /home/jleng/data/cbuild-ng/build/qemux86-64/tmp/work/qemux86_64-poky-linu=
x/core-image-minimal/1.0-r0/rootfs
>
> | DEBUG: Actual Partion size: 28067840
>
> | DEBUG: Executing mkfs.ext4 -F -i 4096
> /home/jleng/data/cbuild-ng/build/qemux86-64/tmp/work/qemux86_64-poky-linu=
x/core-image-minimal/1.0-r0/deploy-core-image-minimal-image-complete/core-i=
mage-minimal-qemux86-64-20230808061549.rootfs.ext4
> -d
> /home/jleng/data/cbuild-ng/build/qemux86-64/tmp/work/qemux86_64-poky-linu=
x/core-image-minimal/1.0-r0/rootfs
>
> | WARNING: exit code 139 from a shell command.
>
> | Segmentation fault (core dumped)
>
> ERROR: Task
> (/home/jleng/data/cbuild-ng/build/poky/meta/recipes-core/images/core-imag=
e-minimal.bb:do_image_ext4)
> failed with exit code '1'
>
> NOTE: Tasks Summary: Attempted 3592 tasks of which 1187 didn't need to be
> rerun and 1 failed.
>
>
>
> Summary: 1 task failed:
>
>
> /home/jleng/data/cbuild-ng/build/poky/meta/recipes-core/images/core-image=
-minimal.bb:
> do_image_ext4
>
> Summary: There were 2 WARNING messages.
>
> Summary: There was 1 ERROR message, returning a non-zero exit code.
>
>
>
>
>
> =3D=3D=3D=3D* I rolled back the revision of poky  to check the issue,  th=
e commit
> of  "uninative: Upgrade to 3.10 to support gcc 13" introduced it.* =3D=3D=
=3D=3D
>
>
>
> commit aab6fc20de9473d8d7f277332601cbae70c53320
>
> Author: Michael Halstead <mhalstead@linuxfoundation.org>
>
> Date:   Fri May 26 10:21:48 2023 -0700
>
>
>
>     uninative: Upgrade to 3.10 to support gcc 13
>
>
>
>     (From OE-Core rev: dbf2a81d42b48c22864f64425672315158eb99cb)
>
>
>
>     Signed-off-by: Michael Halstead <mhalstead@linuxfoundation.org>
>
>     Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
>
>     (cherry picked from commit f811bffb861b23238e8291394bd6e8407f013619)
>
>     Signed-off-by: Steve Sakoman <steve@sakoman.com>
>
>
>
> commit 51d6afc92f621657f800171a992cea7708261d31
>
> Author: Richard Purdie <richard.purdie@linuxfoundation.org>
>
> Date:   Wed Jun 7 17:27:36 2023 +0100
>
>
>
>     selftest/reproducible: Allow native/cross reuse in test
>
>
>
>     We don't compare reproducibility of the native/cross components, only
> the
>
>     target ones. With the long build times of rust-native, the test now
> takes
>
>     crazy lengths of time so this tweak should allow us to reuse
> native/cross
>
>     artefacts from sstate whilst still testing the target output is
>
>     reproducible.
>
>
>
>     (From OE-Core rev: 18a9596ae711ba37ac7e44e46744298ba79ae320)
>
>
>
>     Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
>
>     (cherry picked from commit b494d83c639a877cefeb7cbab6d37195e492f059)
>
>     Signed-off-by: Steve Sakoman <steve@sakoman.com>
>
>
>
>
>
> ------------------------------
>
> This EXTERNAL email has been scanned by Proofpoint Email Protect service.
> ------------------------------
> This email and attachments contain Ambarella Proprietary and/or
> Confidential Information and is intended solely for the use of the
> individual(s) to whom it is addressed. Any unauthorized review, use,
> disclosure, distribute, copy, or print is prohibited. If you are not an
> intended recipient, please contact the sender by reply email and destroy
> all copies of the original message. Thank you.
>

--000000000000dea89b0602f73001
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">uninative 4.1 was already released, you can backport:<div>=
<a href=3D"https://git.openembedded.org/openembedded-core/commit/?id=3D1c5c=
8ff97ba0a7f9adc592d702b865b3d166a24b">https://git.openembedded.org/openembe=
dded-core/commit/?id=3D1c5c8ff97ba0a7f9adc592d702b865b3d166a24b</a><br></di=
v><div>instead to fix this.</div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Tue, Aug 15, 2023 at 4:06=E2=80=AFPM Mi=
ng Wen &lt;<a href=3D"mailto:mwen@ambarella.com">mwen@ambarella.com</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div cla=
ss=3D"msg5257285528623900626">





<div lang=3D"EN-US">
<div class=3D"m_5257285528623900626WordSection1">
<p class=3D"MsoNormal" style=3D"text-align:justify"><b><span style=3D"font-=
size:11pt;color:rgb(0,112,192)">Hi Martin:</span></b><span style=3D"font-si=
ze:10.5pt;font-family:Calibri,sans-serif;color:black"><u></u><u></u></span>=
</p>
<p class=3D"MsoNormal" style=3D"text-align:justify"><span style=3D"font-siz=
e:11pt;font-family:Arial,sans-serif;color:rgb(46,116,181)">=C2=A0<u></u><u>=
</u></span></p>
<p class=3D"MsoNormal" style=3D"text-align:justify"><span style=3D"font-siz=
e:11pt;font-family:Arial,sans-serif;color:rgb(46,116,181)">Nice to meet you=
 and thanks for the help. We will take a try soon.<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-align:justify"><span style=3D"font-siz=
e:11pt;font-family:Arial,sans-serif;color:rgb(46,116,181)">=C2=A0<u></u><u>=
</u></span></p>
<p class=3D"MsoNormal" style=3D"text-align:justify"><b><i><span style=3D"fo=
nt-size:11pt;color:rgb(0,112,192)">Best Regards!</span></i></b><i><span sty=
le=3D"font-size:10.5pt;font-family:Calibri,sans-serif;color:black"><u></u><=
u></u></span></i></p>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span=
 style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,125=
)">
<hr size=3D"2" width=3D"100%" align=3D"center">
</span></div>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"500" style=
=3D"width:375pt;border-collapse:collapse">
<tbody>
<tr style=3D"height:0.25in">
<td width=3D"150" rowspan=3D"5" style=3D"width:112.5pt;padding:0.75pt;heigh=
t:0.25in">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><a href=
=3D"https://www.ambarella.com/" title=3D"&quot;Ambarella Official Website&q=
uot;" target=3D"_blank"><span style=3D"font-size:11pt;font-family:Calibri,s=
ans-serif;text-decoration:none"><img border=3D"0" width=3D"150" height=3D"9=
0" id=3D"m_5257285528623900626Picture_x0020_2" src=3D"cid:189f9a53af35b16b2=
1" alt=3D"Ambarella AI Envisioned"></span></a><span style=3D"font-size:11pt=
;font-family:Calibri,sans-serif;color:rgb(31,73,125)"><u></u><u></u></span>=
</p>
</td>
<td width=3D"10" rowspan=3D"5" style=3D"width:7.5pt;padding:0.75pt;height:0=
.25in">
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">=C2=A0<u></u><u></u></span></p>
</td>
<td width=3D"2" rowspan=3D"5" style=3D"width:1.15pt;background:rgb(91,155,2=
13);padding:0.75pt;height:0.25in">
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">=C2=A0<u></u><u></u></span></p>
</td>
<td width=3D"20" rowspan=3D"5" style=3D"width:15pt;padding:0.75pt;height:0.=
25in">
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">=C2=A0<u></u><u></u></span></p>
</td>
<td width=3D"500" valign=3D"bottom" style=3D"width:375pt;padding:0.75pt;hei=
ght:0.25in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:15pt;font-family:Arial,s=
ans-serif;color:rgb(68,114,196)">Ming Wen (</span></b><b><span lang=3D"ZH-C=
N" style=3D"font-size:15pt;font-family:=E7=AD=89=E7=BA=BF;color:rgb(68,114,=
196)">=E9=97=BB=E6=98=8E</span></b><b><span style=3D"font-size:15pt;font-fa=
mily:Arial,sans-serif;color:rgb(68,114,196)">)</span></b><span style=3D"fon=
t-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,125)"><u></u><u>=
</u></span></p>
</td>
</tr>
<tr style=3D"height:13.5pt">
<td width=3D"500" valign=3D"top" style=3D"width:375pt;padding:0.75pt;height=
:13.5pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Arial,sans=
-serif;color:rgb(68,114,196)">SDK Team | Ambarella Shanghai</span><span sty=
le=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,125)"><=
u></u><u></u></span></p>
</td>
</tr>
<tr style=3D"height:7.5pt">
<td width=3D"500" style=3D"width:375pt;padding:0.75pt;height:7.5pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(68,114,196)">=C2=A0</span><span style=3D"font-size:11pt;=
font-family:Calibri,sans-serif;color:rgb(31,73,125)"><u></u><u></u></span><=
/p>
</td>
</tr>
<tr style=3D"height:13.5pt">
<td width=3D"500" valign=3D"bottom" style=3D"width:375pt;padding:0.75pt;hei=
ght:13.5pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:9pt;font-family:&quot;Co=
urier New&quot;;color:rgb(146,208,80)">Phone:
</span></b><span style=3D"font-size:9pt;font-family:Arial,sans-serif;color:=
rgb(68,114,196)">+86-021-60880608-511</span><span style=3D"font-size:11pt;f=
ont-family:Calibri,sans-serif;color:rgb(31,73,125)"><u></u><u></u></span></=
p>
</td>
</tr>
<tr style=3D"height:13.5pt">
<td width=3D"500" valign=3D"top" style=3D"width:375pt;padding:0.75pt;height=
:13.5pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:9pt;font-family:&quot;Co=
urier New&quot;;color:rgb(146,208,80)">Email:
</span></b><span style=3D"font-size:9pt;font-family:Arial,sans-serif;color:=
rgb(68,114,196)"><a href=3D"mailto:mwen@ambarella.com" target=3D"_blank">mw=
en@ambarella.com</a></span><span style=3D"font-size:11pt;font-family:Calibr=
i,sans-serif;color:rgb(31,73,125)"><u></u><u></u></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:Calibri,=
sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:11pt;font-family:Calibri=
,sans-serif">From:</span></b><span style=3D"font-size:11pt;font-family:Cali=
bri,sans-serif"> <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"=
_blank">yocto@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.=
yoctoproject.org" target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt;
<b>On Behalf Of </b>Martin Jansa<br>
<b>Sent:</b> Friday, August 11, 2023 1:35 AM<br>
<b>To:</b> Ming Wen &lt;<a href=3D"mailto:mwen@ambarella.com" target=3D"_bl=
ank">mwen@ambarella.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank=
">yocto@lists.yoctoproject.org</a><br>
<b>Subject:</b> [EXT] Re: [yocto] [Poky-Kirkstone][Ubuntu 18.04] The last p=
oky-kirkstone can&#39;t work on ubuntu 18.04.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<p class=3D"MsoNormal">See=C2=A0<a href=3D"https://urldefense.com/v3/__http=
s:/patchwork.yoctoproject.org/project/oe-core/patch/20230623093323.4058529-=
1-Martin.Jansa@gmail.com/__;!!PeEy7nZLVv0!mGazcAcBmVhkAt-fFXp4dSVyIKGWUeiJe=
ngnAmsESk_cQOAHxwFsMngyUlF3XKh2SxG2BIWLa2erj0sJlUJl$" target=3D"_blank">htt=
ps://patchwork.yoctoproject.org/project/oe-core/patch/20230623093323.405852=
9-1-Martin.Jansa@gmail.com/</a>
 which is easy to backport work around to fix uninative-3.9 and 4.0.<u></u>=
<u></u></p>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Until uninative-4.1 with more proper fix (<a href=3D=
"https://urldefense.com/v3/__https:/patchwork.yoctoproject.org/project/oe-c=
ore/patch/20230731191005.3466888-1-Martin.Jansa@gmail.com/__;!!PeEy7nZLVv0!=
mGazcAcBmVhkAt-fFXp4dSVyIKGWUeiJengnAmsESk_cQOAHxwFsMngyUlF3XKh2SxG2BIWLa2e=
rj8F9otaB$" target=3D"_blank">https://patchwork.yoctoproject.org/project/oe=
-core/patch/20230731191005.3466888-1-Martin.Jansa@gmail.com/</a>)
 is released and configured to be used in dunfell, kirkstone, mickledore an=
d master.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Regards,<u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">On Wed, Aug 9, 2023 at 9:00=E2=80=AFAM Ming Wen &lt;=
<a href=3D"mailto:mwen@ambarella.com" target=3D"_blank">mwen@ambarella.com<=
/a>&gt; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border-top:none;border-right:none;border-bottom:none;b=
order-left:1pt solid rgb(204,204,204);padding:0in 0in 0in 6pt;margin-left:4=
.8pt;margin-right:0in">
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt">Hi,<br>
<br>
We&#39;re using Poky-Kirkstone for Yocto. Now we&#39;re trying to upgrade i=
t to the latest version. But sadly, hit below error when trying to use it t=
o compile the code on
<strong>ubuntu 18.04</strong>. For comparison, ubuntu 22.04 is OK.<br>
<br>
Through narrowing down, we found below clues. It should be caused by some o=
f recent updates to Poky.<br>
It is appreciated if any of Yocto maintainer could help to give a quick fix=
. :)<u></u><u></u></p>
<p style=3D"margin-right:0in;margin-bottom:12pt;margin-left:0in">
<strong><span style=3D"font-family:Aptos;color:black">To make things simper=
, the test example is from</span></strong><span style=3D"font-family:Aptos;=
color:black">=C2=A0<strong><span style=3D"font-family:Aptos">official quick=
 build manual(=C2=A0<a href=3D"https://urldefense.com/v3/__https:/docs.yoct=
oproject.org/4.0.11/brief-yoctoprojectqs/index.html__;!!PeEy7nZLVv0!mGazcAc=
BmVhkAt-fFXp4dSVyIKGWUeiJengnAmsESk_cQOAHxwFsMngyUlF3XKh2SxG2BIWLa2erj_YmEl=
0K$" id=3D"m_5257285528623900626m_-5232823600945184026LPlnk522337" target=
=3D"_blank">https://docs.yoctoproject.org/4.0.11/brief-yoctoprojectqs/index=
.html</a>=C2=A0).</span></strong></span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">=3D=3D=3D=3D
<strong><span style=3D"font-family:Aptos;background:yellow">Segmentation fa=
ult of mkfs.ext4, which is provided by the package of e2fsprogs-native .</s=
pan></strong> =3D=3D=3D=3D</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">=C2=A0</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">jleng@jleng:~/data/cbuild-ng/build/qemux86-64$ bitbake core-image-m=
inimal
</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">WARNING: You are using a local hash equivalence server but have con=
figured an sstate mirror. This will likely mean no sstate will match from t=
he mirror. You may wish to
 disable the hash equivalence use (BB_HASHSERVE), or use a hash equivalence=
 server alongside the sstate mirror.</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">Loading cache: 100% | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | ETA: =C2=A0--:--:--</span><u></=
u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">Loaded 0 entries from dependency cache.</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">Parsing recipes: 100% |############################################=
###########################################################################=
###########| Time: 0:00:17</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">Parsing of 886 .bb files complete (0 cached, 886 parsed). 1648 targ=
ets, 45 skipped, 0 masked, 0 errors.</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">NOTE: Resolving any missing task queue dependencies</span><u></u><u=
></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">=C2=A0</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">Build Configuration:</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">BB_VERSION =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;2.0.0&quot;=
</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">BUILD_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;x86_64=
-linux&quot;</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">NATIVELSBSTRING =C2=A0 =C2=A0 =C2=A0=3D &quot;ubuntu-18.04&quot;</s=
pan><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">TARGET_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;x86_64-poky=
-linux&quot;</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">MACHINE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;q=
emux86-64&quot;</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">DISTRO =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;p=
oky&quot;</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">DISTRO_VERSION =C2=A0 =C2=A0 =C2=A0 =3D &quot;4.0.12&quot;</span><u=
></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">TUNE_FEATURES =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;m64 core2&quot;<=
/span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">TARGET_FPU =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;&quot;</spa=
n><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">meta =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">meta-poky =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</span><u></u><u=
></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">meta-yocto-bsp =C2=A0 =C2=A0 =C2=A0 =3D &quot;kirkstone:d6b87903705=
00b99ca11f0d8a05c39b661ab2ba6&quot;</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">meta-cbuild =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;main:fd1231=
d7002a0bd6e563d80782140b7c6eb549c1&quot;</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">=C2=A0</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">Initialising tasks: 100% |#########################################=
###########################################################################=
###########| Time: 0:00:01</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">Checking sstate mirror object availability: 100% |#################=
###########################################################################=
###########| Time: 0:00:05</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">Sstate summary: Wanted 1397 Local 647 Mirrors 0 Missed 750 Current =
0 (46% match, 0% complete)</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">NOTE: Executing Tasks</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">WARNING: openssl-native-3.0.10-r0 do_fetch: Failed to fetch URL
<a href=3D"https://urldefense.com/v3/__http:/www.openssl.org/source/openssl=
-3.0.10.tar.gz__;!!PeEy7nZLVv0!mGazcAcBmVhkAt-fFXp4dSVyIKGWUeiJengnAmsESk_c=
QOAHxwFsMngyUlF3XKh2SxG2BIWLa2erj-Kh_brC$" target=3D"_blank">
http://www.openssl.org/source/openssl-3.0.10.tar.gz</a>, attempting MIRRORS=
 if available</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">ERROR: core-image-minimal-1.0-r0 do_image_ext4: ExecutionError(&#39=
;/home/jleng/data/cbuild-ng/build/qemux86-64/tmp/work/qemux86_64-poky-linux=
/core-image-minimal/1.0-r0/temp/run.do_image_ext4.22796&#39;,
 139, None, None)</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">ERROR: Logfile of failure stored in: /home/jleng/data/cbuild-ng/bui=
ld/qemux86-64/tmp/work/qemux86_64-poky-linux/core-image-minimal/1.0-r0/temp=
/log.do_image_ext4.22796</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">Log data follows:</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">| DEBUG: Executing python function extend_recipe_sysroot</span><u><=
/u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">| NOTE: Direct dependencies are [&#39;/home/jleng/data/cbuild-ng/bu=
ild/poky/meta/recipes-core/glibc/cross-localedef-native_2.35.bb:do_populate=
_sysroot&#39;, &#39;/home/jleng/data/cbuild-ng/build/poky/meta/recipes-core=
/glibc/ldconfig-native_2.12.1.bb:do_populate_sysroot&#39;,
 &#39;/home/jleng/data/cbuild-ng/build/poky/meta/recipes-devtools/qemu/qemu=
wrapper-cross_1.0.bb:do_populate_sysroot&#39;, &#39;/home/jleng/data/cbuild=
-ng/build/poky/meta/recipes-kernel/kmod/depmodwrapper-cross_1.0.bb:do_popul=
ate_sysroot&#39;, &#39;virtual:native:/home/jleng/data/cbuild-ng/build/poky=
/meta/recipes-core/update-rc.d/update-rc.d_0.8.bb:do_populate_sysroot&#39;,
 &#39;virtual:native:/home/jleng/data/cbuild-ng/build/poky/meta/recipes-dev=
tools/createrepo-c/createrepo-c_0.19.0.bb:do_populate_sysroot&#39;, &#39;vi=
rtual:native:/home/jleng/data/cbuild-ng/build/poky/meta/recipes-devtools/dn=
f/dnf_4.11.1.bb:do_populate_sysroot&#39;, &#39;virtual:native:/home/jleng/d=
ata/cbuild-ng/build/poky/meta/recipes-devtools/e2fsprogs/e2fsprogs_1.46.5.b=
b:do_populate_sysroot&#39;,
 &#39;virtual:native:/home/jleng/data/cbuild-ng/build/poky/meta/recipes-dev=
tools/makedevs/makedevs_1.0.1.bb:do_populate_sysroot&#39;, &#39;virtual:nat=
ive:/home/jleng/data/cbuild-ng/build/poky/meta/recipes-devtools/opkg-utils/=
opkg-utils_0.5.0.bb:do_populate_sysroot&#39;, &#39;virtual:native:/home/jle=
ng/data/cbuild-ng/build/poky/meta/recipes-devtools/opkg/opkg_0.5.0.bb:do_po=
pulate_sysroot&#39;,
 &#39;virtual:native:/home/jleng/data/cbuild-ng/build/poky/meta/recipes-dev=
tools/pseudo/pseudo_git.bb:do_populate_sysroot&#39;, &#39;virtual:native:/h=
ome/jleng/data/cbuild-ng/build/poky/meta/recipes-devtools/rpm/rpm_4.17.1.bb=
:do_populate_sysroot&#39;, &#39;virtual:native:/home/jleng/data/cbuild-ng/b=
uild/poky/meta/recipes-extended/pbzip2/pbzip2_1.1.13.bb:do_populate_sysroot=
&#39;,
 &#39;virtual:native:/home/jleng/data/cbuild-ng/build/poky/meta/recipes-ext=
ended/pigz/pigz_2.7.bb:do_populate_sysroot&#39;]</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">| NOTE: Installed into sysroot: [&#39;e2fsprogs-native&#39;]</span>=
<u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">| NOTE: Skipping as already exists in sysroot: [&#39;cross-localede=
f-native&#39;, &#39;ldconfig-native&#39;, &#39;qemuwrapper-cross&#39;, &#39=
;depmodwrapper-cross&#39;, &#39;update-rc.d-native&#39;, &#39;createrepo-c-=
native&#39;,
 &#39;dnf-native&#39;, &#39;makedevs-native&#39;, &#39;opkg-utils-native&#3=
9;, &#39;opkg-native&#39;, &#39;pseudo-native&#39;, &#39;rpm-native&#39;, &=
#39;pbzip2-native&#39;, &#39;pigz-native&#39;, &#39;bzip2-native&#39;, &#39=
;librepo-native&#39;, &#39;gettext-minimal-native&#39;, &#39;libdnf-native&=
#39;, &#39;python3-iniparse-native&#39;, &#39;libcomps-native&#39;, &#39;cm=
ake-native&#39;,
 &#39;python3-native&#39;, &#39;perl-native&#39;, &#39;zlib-native&#39;, &#=
39;attr-native&#39;, &#39;libtool-native&#39;, &#39;texinfo-dummy-native&#3=
9;, &#39;util-linux-native&#39;, &#39;openssl-native&#39;, &#39;debianutils=
-native&#39;, &#39;kmod-native&#39;, &#39;shadow-native&#39;, &#39;shared-m=
ime-info-native&#39;, &#39;file-native&#39;, &#39;lua-native&#39;, &#39;sql=
ite3-native&#39;,
 &#39;zstd-native&#39;, &#39;popt-native&#39;, &#39;libgcrypt-native&#39;, =
&#39;xz-native&#39;, &#39;elfutils-native&#39;, &#39;qemu-native&#39;, &#39=
;curl-native&#39;, &#39;libxml2-native&#39;, &#39;glib-2.0-native&#39;, &#3=
9;expat-native&#39;, &#39;libarchive-native&#39;, &#39;libsolv-native&#39;,=
 &#39;gpgme-native&#39;, &#39;libmodulemd-native&#39;, &#39;gobject-introsp=
ection-native&#39;,
 &#39;libcheck-native&#39;, &#39;json-c-native&#39;, &#39;swig-native&#39;,=
 &#39;python3-six-native&#39;, &#39;python3-wheel-native&#39;, &#39;python3=
-setuptools-native&#39;, &#39;python3-installer-native&#39;, &#39;ncurses-n=
ative&#39;, &#39;libnsl2-native&#39;, &#39;libffi-native&#39;, &#39;libtirp=
c-native&#39;, &#39;util-linux-libuuid-native&#39;, &#39;gdbm-native&#39;,
 &#39;readline-native&#39;, &#39;make-native&#39;, &#39;libpcre2-native&#39=
;, &#39;libcap-ng-native&#39;, &#39;itstool-native&#39;, &#39;libgpg-error-=
native&#39;, &#39;libcap-native&#39;, &#39;libmicrohttpd-native&#39;, &#39;=
gettext-native&#39;, &#39;libpcre-native&#39;, &#39;lzo-native&#39;, &#39;l=
ibassuan-native&#39;, &#39;libyaml-native&#39;, &#39;flex-native&#39;,
 &#39;python3-flit-core-native&#39;, &#39;unzip-native&#39;, &#39;gnutls-na=
tive&#39;, &#39;m4-native&#39;, &#39;nettle-native&#39;, &#39;libunistring-=
native&#39;, &#39;gmp-native&#39;, &#39;libidn2-native&#39;, &#39;gnu-confi=
g-native&#39;]</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">| DEBUG: sed -e &#39;s:^[^/]*/:/home/jleng/data/cbuild-ng/build/qem=
ux86-64/tmp/work/qemux86_64-poky-linux/core-image-minimal/1.0-r0/recipe-sys=
root-native/:g&#39; /home/jleng/data/cbuild-ng/build/qemux86-64/tmp/sysroot=
s-components/x86_64/e2fsprogs-native/fixmepath
 | xargs sed -i -e &#39;s:FIXMESTAGINGDIRTARGET:/home/jleng/data/cbuild-ng/=
build/qemux86-64/tmp/work/qemux86_64-poky-linux/core-image-minimal/1.0-r0/r=
ecipe-sysroot:g; s:FIXMESTAGINGDIRHOST:/home/jleng/data/cbuild-ng/build/qem=
ux86-64/tmp/work/qemux86_64-poky-linux/core-image-minimal/1.0-r0/recipe-sys=
root-native:g&#39;
 -e &#39;s:FIXME_PSEUDO_SYSROOT:/home/jleng/data/cbuild-ng/build/qemux86-64=
/tmp/sysroots-components/x86_64/pseudo-native:g&#39; -e &#39;s:FIXME_HOSTTO=
OLS_DIR:/home/jleng/data/cbuild-ng/build/qemux86-64/tmp/hosttools:g&#39; -e=
 &#39;s:FIXME_PKGDATA_DIR:/home/jleng/data/cbuild-ng/build/qemux86-64/tmp/p=
kgdata/qemux86-64:g&#39;
 -e &#39;s:FIXME_PSEUDO_LOCALSTATEDIR:/home/jleng/data/cbuild-ng/build/qemu=
x86-64/tmp/work/qemux86_64-poky-linux/core-image-minimal/1.0-r0/pseudo/:g&#=
39; -e &#39;s:FIXME_LOGFIFO:/home/jleng/data/cbuild-ng/build/qemux86-64/tmp=
/work/qemux86_64-poky-linux/core-image-minimal/1.0-r0/temp/fifo.22796:g&#39=
;</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">| DEBUG: Python function extend_recipe_sysroot finished</span><u></=
u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">| DEBUG: Executing python function set_image_size</span><u></u><u><=
/u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">| DEBUG: 27409.200000 =3D 21084 * 1.300000</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">| DEBUG: 27409.200000 =3D max(27409.200000, 8192)[27409.200000] + 0=
</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">| DEBUG: 27410.000000 =3D int(27409.200000)</span><u></u><u></u></p=
>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">| DEBUG: 27410 =3D aligned(27410)</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">| DEBUG: returning 27410</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">| DEBUG: Python function set_image_size finished</span><u></u><u></=
u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">| DEBUG: Executing shell function do_image_ext4</span><u></u><u></u=
></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">| DEBUG: Executing dd if=3D/dev/zero of=3D/home/jleng/data/cbuild-n=
g/build/qemux86-64/tmp/work/qemux86_64-poky-linux/core-image-minimal/1.0-r0=
/deploy-core-image-minimal-image-complete/core-image-minimal-qemux86-64-202=
30808061549.rootfs.ext4
 seek=3D27410 count=3D0 bs=3D1024</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">| 0+0 records in</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">| 0+0 records out</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">| 0 bytes copied, 6.4388e-05 s, 0.0 kB/s</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">| DEBUG: Actual Rootfs size: =C2=A019988=E2=80=82/home/jleng/data/c=
build-ng/build/qemux86-64/tmp/work/qemux86_64-poky-linux/core-image-minimal=
/1.0-r0/rootfs</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">| DEBUG: Actual Partion size: 28067840</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">| DEBUG: Executing mkfs.ext4 -F -i 4096 /home/jleng/data/cbuild-ng/=
build/qemux86-64/tmp/work/qemux86_64-poky-linux/core-image-minimal/1.0-r0/d=
eploy-core-image-minimal-image-complete/core-image-minimal-qemux86-64-20230=
808061549.rootfs.ext4
 -d /home/jleng/data/cbuild-ng/build/qemux86-64/tmp/work/qemux86_64-poky-li=
nux/core-image-minimal/1.0-r0/rootfs</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">| WARNING: exit code 139 from a shell command.</span><u></u><u></u>=
</p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">| Segmentation fault (core dumped)</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">ERROR: Task (/home/jleng/data/cbuild-ng/build/poky/meta/recipes-cor=
e/images/core-image-minimal.bb:do_image_ext4) failed with exit code &#39;1&=
#39;</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">NOTE: Tasks Summary: Attempted 3592 tasks of which 1187 didn&#39;t =
need to be rerun and 1 failed.</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">=C2=A0</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">Summary: 1 task failed:</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">=C2=A0 /home/jleng/data/cbuild-ng/build/poky/meta/recipes-core/imag=
es/core-image-minimal.bb:do_image_ext4</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">Summary: There were 2 WARNING messages.</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">Summary: There was 1 ERROR message, returning a non-zero exit code.=
</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">=C2=A0</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">=C2=A0</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">=3D=3D=3D=3D<strong><span style=3D"font-family:Aptos;background:yel=
low"> I rolled back the revision of poky=C2=A0 to check the issue,=C2=A0 th=
e commit of=C2=A0 &quot;uninative: Upgrade to 3.10 to support
 gcc 13&quot; introduced it.</span></strong>=C2=A0=3D=3D=3D=3D</span><u></u=
><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">=C2=A0</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">commit aab6fc20de9473d8d7f277332601cbae70c53320
</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">Author: Michael Halstead &lt;<a href=3D"mailto:mhalstead@linuxfound=
ation.org" target=3D"_blank">mhalstead@linuxfoundation.org</a>&gt;</span><u=
></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">Date: =C2=A0 Fri May 26 10:21:48 2023 -0700</span><u></u><u></u></p=
>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">=C2=A0</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">=C2=A0 =C2=A0 uninative: Upgrade to 3.10 to support gcc 13</span><u=
></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">=C2=A0 =C2=A0
</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">=C2=A0 =C2=A0 (From OE-Core rev: dbf2a81d42b48c22864f64425672315158=
eb99cb)</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">=C2=A0 =C2=A0
</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">=C2=A0 =C2=A0 Signed-off-by: Michael Halstead &lt;<a href=3D"mailto=
:mhalstead@linuxfoundation.org" target=3D"_blank">mhalstead@linuxfoundation=
.org</a>&gt;</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">=C2=A0 =C2=A0 Signed-off-by: Richard Purdie &lt;<a href=3D"mailto:r=
ichard.purdie@linuxfoundation.org" target=3D"_blank">richard.purdie@linuxfo=
undation.org</a>&gt;</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">=C2=A0 =C2=A0 (cherry picked from commit f811bffb861b23238e8291394b=
d6e8407f013619)</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">=C2=A0 =C2=A0 Signed-off-by: Steve Sakoman &lt;<a href=3D"mailto:st=
eve@sakoman.com" target=3D"_blank">steve@sakoman.com</a>&gt;</span><u></u><=
u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">=C2=A0</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">commit 51d6afc92f621657f800171a992cea7708261d31</span><u></u><u></u=
></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">Author: Richard Purdie &lt;<a href=3D"mailto:richard.purdie@linuxfo=
undation.org" target=3D"_blank">richard.purdie@linuxfoundation.org</a>&gt;<=
/span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">Date: =C2=A0 Wed Jun 7 17:27:36 2023 +0100</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">=C2=A0</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">=C2=A0 =C2=A0 selftest/reproducible: Allow native/cross reuse in te=
st</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">=C2=A0 =C2=A0
</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">=C2=A0 =C2=A0 We don&#39;t compare reproducibility of the native/cr=
oss components, only the</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">=C2=A0 =C2=A0 target ones. With the long build times of rust-native=
, the test now takes</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">=C2=A0 =C2=A0 crazy lengths of time so this tweak should allow us t=
o reuse native/cross</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">=C2=A0 =C2=A0 artefacts from sstate whilst still testing the target=
 output is</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">=C2=A0 =C2=A0 reproducible.</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">=C2=A0 =C2=A0
</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">=C2=A0 =C2=A0 (From OE-Core rev: 18a9596ae711ba37ac7e44e46744298ba7=
9ae320)</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">=C2=A0 =C2=A0
</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">=C2=A0 =C2=A0 Signed-off-by: Richard Purdie &lt;<a href=3D"mailto:r=
ichard.purdie@linuxfoundation.org" target=3D"_blank">richard.purdie@linuxfo=
undation.org</a>&gt;</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">=C2=A0 =C2=A0 (cherry picked from commit b494d83c639a877cefeb7cbab6=
d37195e492f059)</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:Aptos;color=
:black">=C2=A0 =C2=A0 Signed-off-by: Steve Sakoman &lt;<a href=3D"mailto:st=
eve@sakoman.com" target=3D"_blank">steve@sakoman.com</a>&gt;</span><u></u><=
u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><strong><span style=3D"font-family:Apt=
os;color:black">=C2=A0</span></strong><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><br>
<br>
<u></u><u></u></p>
</blockquote>
</div>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">
<hr size=3D"2" width=3D"100%" align=3D"center">
</div>
<p class=3D"MsoNormal">This EXTERNAL email has been scanned by Proofpoint E=
mail Protect service.<u></u><u></u></p>
</div>

<hr>This email and attachments contain Ambarella Proprietary and/or Confide=
ntial Information and is intended solely for the use of the individual(s) t=
o whom it is addressed. Any unauthorized review, use, disclosure, distribut=
e, copy, or print is prohibited. If you are not an intended recipient, plea=
se contact the sender by reply email and destroy all copies of the original=
 message. Thank you.<br>
</div>

</div></blockquote></div>

--000000000000dea89b0602f73001--

--000000000000dea89c0602f73002
Content-Type: image/png; name="image002.png"
Content-Disposition: inline; filename="image002.png"
Content-Transfer-Encoding: base64
Content-ID: <189f9a53af35b16b21>
X-Attachment-Id: 189f9a53af35b16b21

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
zaQAAAAASUVORK5CYII=
--000000000000dea89c0602f73002--

