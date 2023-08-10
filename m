Return-Path: <Martin.Jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC37AC001DE
	for <webhook@archiver.kernel.org>; Thu, 10 Aug 2023 17:35:17 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
 by mx.groups.io with SMTP id smtpd.web10.24052.1691688910011300304
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Aug 2023 10:35:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=X9RMpjsU;
 spf=pass (domain: gmail.com, ip: 209.85.128.52, mailfrom: martin.jansa@gmail.com)
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-3fe1d9a8ec6so13313255e9.1
        for <yocto@lists.yoctoproject.org>; Thu, 10 Aug 2023 10:35:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691688908; x=1692293708;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=VNviDDNk0raViU5BziLNdoisQAHTQ46PEms+7d5acE0=;
        b=X9RMpjsU6COrcL55IFU3Ip3rAW6+A4TH4d097qwiw/GK4rSiwtZgdqAhi0ZaX2y+XV
         xEx7rdHindnk/YSAVuMQOWCaJYVVqej3m3YmSJ/yHYW+u1g7nbAtULO/Y1+DyMXEYGLt
         6Yth4c2rTcXH46+2MqL5ketCLnJ9G9U+9RcaF2s2Ns4uWR8xkmT7qjHOVQZ2DkO8fGUk
         lKBJDUiceprz+4knMQITLWrykDMmg2VoJgEKky3keJOKeQFwkHz5JqOsj8c/FKv+TjIt
         a6+2Vg8HZSjyIejDwV5EccASkBblVK9IHt/vdtv+R2fJTPLGgHtM1RtsA+On+4NdCVMx
         QVWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691688908; x=1692293708;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VNviDDNk0raViU5BziLNdoisQAHTQ46PEms+7d5acE0=;
        b=O/qdChMsZoAVOh0xP70U9szlchG4bPOziO/e3sQX8Gtcs7l1GYZgHsrprGvP+4QVkP
         UG2vsLlYNMDDyeSJ4pwZadOVNw75yBVzb1gdCoa3D8xbRxS8FteNTgBlqz6ICVEWtBZ7
         pfs1RhvbYB5tCfKEZq7PNm5gnEAzuGvNGh6Uq2wSxj7cf/1OxAiDn+CHguixzEGY3PJ4
         He8q2bkGbeCbOwNQsnQjz9AXCFefOprRY0Wn7A0aw8eOZchpgsZ1BllgVGJbOYTGFGZW
         wFjqjQtrbOJIP10zxGTw5F59KsxYsgJ038Ua03cM9rqQEJJ4OIomYiKLaiznVJhssrlk
         Uy8w==
X-Gm-Message-State: AOJu0YykojTYJORyIGJ5vkKh1AGEyk3Wz2mFMuVl6TDZyGD00jJzly2r
	or28YFV+TNYUgVABuol9H403/wPZ9/bkt9K34Yk=
X-Google-Smtp-Source: AGHT+IGzZpb+wQWZa8C7qRMGMW3APNfybmh/0rb+ka7plWbaEIc+keHD5LFAuLxa8eN8p7KBZXHk5EnsrXr3j2RC5bA=
X-Received: by 2002:a5d:4528:0:b0:317:650d:f7ce with SMTP id
 j8-20020a5d4528000000b00317650df7cemr2327768wra.29.1691688907895; Thu, 10 Aug
 2023 10:35:07 -0700 (PDT)
MIME-Version: 1.0
References: <n9Hl.1691564423269187466.55AD@lists.yoctoproject.org>
In-Reply-To: <n9Hl.1691564423269187466.55AD@lists.yoctoproject.org>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Thu, 10 Aug 2023 19:34:53 +0200
Message-ID: <CA+chaQc-YD5K9u1nxLxEZu_-3W4YOEAu32NtFCsSYJx-ODSOwQ@mail.gmail.com>
Subject: Re: [yocto] [Poky-Kirkstone][Ubuntu 18.04] The last poky-kirkstone
 can't work on ubuntu 18.04.
To: Ming Wen <mwen@ambarella.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000006cf9f60602950409"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 10 Aug 2023 17:35:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60774

--0000000000006cf9f60602950409
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

See
https://patchwork.yoctoproject.org/project/oe-core/patch/20230623093323.405=
8529-1-Martin.Jansa@gmail.com/
which is easy to backport work around to fix uninative-3.9 and 4.0.

Until uninative-4.1 with more proper fix (
https://patchwork.yoctoproject.org/project/oe-core/patch/20230731191005.346=
6888-1-Martin.Jansa@gmail.com/)
is released and configured to be used in dunfell, kirkstone, mickledore and
master.

Regards,

On Wed, Aug 9, 2023 at 9:00=E2=80=AFAM Ming Wen <mwen@ambarella.com> wrote:

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
> *To make things simper, the test example is from*
>
> *official quick build
> manual( https://docs.yoctoproject.org/4.0.11/brief-yoctoprojectqs/index.h=
tml
> <https://docs.yoctoproject.org/4.0.11/brief-yoctoprojectqs/index.html> ).=
*
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
> http://www.openssl.org/source/openssl-3.0.10.tar.gz, attempting MIRRORS
> if available
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
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60757):
> https://lists.yoctoproject.org/g/yocto/message/60757
> Mute This Topic: https://lists.yoctoproject.org/mt/100638466/3617156
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> Martin.Jansa@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--0000000000006cf9f60602950409
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">See=C2=A0<a href=3D"https://patchwork.yoctoproject.org/pro=
ject/oe-core/patch/20230623093323.4058529-1-Martin.Jansa@gmail.com/">https:=
//patchwork.yoctoproject.org/project/oe-core/patch/20230623093323.4058529-1=
-Martin.Jansa@gmail.com/</a> which is easy to backport work around to fix u=
ninative-3.9 and 4.0.<div><br></div><div>Until uninative-4.1 with more prop=
er fix (<a href=3D"https://patchwork.yoctoproject.org/project/oe-core/patch=
/20230731191005.3466888-1-Martin.Jansa@gmail.com/">https://patchwork.yoctop=
roject.org/project/oe-core/patch/20230731191005.3466888-1-Martin.Jansa@gmai=
l.com/</a>) is released and configured to be used in dunfell, kirkstone, mi=
ckledore and master.</div><div><br></div><div>Regards,</div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Aug 9, =
2023 at 9:00=E2=80=AFAM Ming Wen &lt;<a href=3D"mailto:mwen@ambarella.com">=
mwen@ambarella.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">Hi,<br><br>We&#39;re using Poky-Kirkstone for Yocto. Now =
we&#39;re trying to upgrade it to the latest version. But sadly, hit below =
error when trying to use it to compile the code on <strong>ubuntu 18.04</st=
rong>. For comparison, ubuntu 22.04 is OK.<br><br>Through narrowing down, w=
e found below clues. It should be caused by some of recent updates to Poky.=
<br>It is appreciated if any of Yocto maintainer could help to give a quick=
 fix. :)<br><br>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black"><stro=
ng>To make things simper, the test example is from</strong>=C2=A0</span><st=
rong><span style=3D"font-size:12pt;font-family:Aptos;color:black">official =
quick build manual(=C2=A0<a id=3D"m_-5232823600945184026LPlnk522337" href=
=3D"https://docs.yoctoproject.org/4.0.11/brief-yoctoprojectqs/index.html" t=
arget=3D"_blank">https://docs.yoctoproject.org/4.0.11/brief-yoctoprojectqs/=
index.html</a>=C2=A0).<br><br></span></strong></p>
<p style=3D"margin:0px"><span><span style=3D"font-family:Aptos;color:black;=
background-image:initial;background-position:initial;background-size:initia=
l;background-repeat:initial;background-origin:initial;background-clip:initi=
al">=3D=3D=3D=3D </span></span><span><strong><span style=3D"font-family:Apt=
os;color:black;background:yellow">Segmentation fault of mkfs.ext4, which is=
 provided by the package of e2fsprogs-native .</span></strong></span><span>=
<span style=3D"font-family:Aptos;color:black;background-image:initial;backg=
round-position:initial;background-size:initial;background-repeat:initial;ba=
ckground-origin:initial;background-clip:initial"> =3D=3D=3D=3D</span></span=
><span style=3D"font-family:Aptos;color:black"></span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">=C2=
=A0</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">jleng=
@jleng:~/data/cbuild-ng/build/qemux86-64$ bitbake core-image-minimal </span=
></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">WARNI=
NG: You are using a local hash equivalence server but have configured an ss=
tate mirror. This will likely mean no sstate will match from the mirror. Yo=
u may wish to disable the hash equivalence use (BB_HASHSERVE), or use a has=
h equivalence server alongside the sstate mirror.</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">Loadi=
ng cache: 100% | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | ETA: =C2=A0--:--:--</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">Loade=
d 0 entries from dependency cache.</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">Parsi=
ng recipes: 100% |#########################################################=
#########################################################################| =
Time: 0:00:17</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">Parsi=
ng of 886 .bb files complete (0 cached, 886 parsed). 1648 targets, 45 skipp=
ed, 0 masked, 0 errors.</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">NOTE:=
 Resolving any missing task queue dependencies</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">=C2=
=A0</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">Build=
 Configuration:</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">BB_VE=
RSION =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;2.0.0&quot;</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">BUILD=
_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;x86_64-linux&quot;<=
/span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">NATIV=
ELSBSTRING =C2=A0 =C2=A0 =C2=A0=3D &quot;ubuntu-18.04&quot;</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">TARGE=
T_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;x86_64-poky-linux&quot;<=
/span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">MACHI=
NE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;qemux86-64&quo=
t;</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">DISTR=
O =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;poky&quot;</sp=
an></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">DISTR=
O_VERSION =C2=A0 =C2=A0 =C2=A0 =3D &quot;4.0.12&quot;</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">TUNE_=
FEATURES =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;m64 core2&quot;</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">TARGE=
T_FPU =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;&quot;</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">meta =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 </span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">meta-=
poky =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">meta-=
yocto-bsp =C2=A0 =C2=A0 =C2=A0 =3D &quot;kirkstone:d6b8790370500b99ca11f0d8=
a05c39b661ab2ba6&quot;</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">meta-=
cbuild =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;main:fd1231d7002a0bd6e56=
3d80782140b7c6eb549c1&quot;</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">=C2=
=A0</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">Initi=
alising tasks: 100% |######################################################=
#########################################################################| =
Time: 0:00:01</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">Check=
ing sstate mirror object availability: 100% |##############################=
#########################################################################| =
Time: 0:00:05</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">Sstat=
e summary: Wanted 1397 Local 647 Mirrors 0 Missed 750 Current 0 (46% match,=
 0% complete)</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">NOTE:=
 Executing Tasks</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">WARNI=
NG: openssl-native-3.0.10-r0 do_fetch: Failed to fetch URL <a href=3D"http:=
//www.openssl.org/source/openssl-3.0.10.tar.gz" target=3D"_blank">http://ww=
w.openssl.org/source/openssl-3.0.10.tar.gz</a>, attempting MIRRORS if avail=
able</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">ERROR=
: core-image-minimal-1.0-r0 do_image_ext4: ExecutionError(&#39;/home/jleng/=
data/cbuild-ng/build/qemux86-64/tmp/work/qemux86_64-poky-linux/core-image-m=
inimal/1.0-r0/temp/run.do_image_ext4.22796&#39;, 139, None, None)</span></p=
>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">ERROR=
: Logfile of failure stored in: /home/jleng/data/cbuild-ng/build/qemux86-64=
/tmp/work/qemux86_64-poky-linux/core-image-minimal/1.0-r0/temp/log.do_image=
_ext4.22796</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">Log d=
ata follows:</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">| DEB=
UG: Executing python function extend_recipe_sysroot</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">| NOT=
E: Direct dependencies are [&#39;/home/jleng/data/cbuild-ng/build/poky/meta=
/recipes-core/glibc/cross-localedef-native_2.35.bb:do_populate_sysroot&#39;=
, &#39;/home/jleng/data/cbuild-ng/build/poky/meta/recipes-core/glibc/ldconf=
ig-native_2.12.1.bb:do_populate_sysroot&#39;, &#39;/home/jleng/data/cbuild-=
ng/build/poky/meta/recipes-devtools/qemu/qemuwrapper-cross_1.0.bb:do_popula=
te_sysroot&#39;, &#39;/home/jleng/data/cbuild-ng/build/poky/meta/recipes-ke=
rnel/kmod/depmodwrapper-cross_1.0.bb:do_populate_sysroot&#39;, &#39;virtual=
:native:/home/jleng/data/cbuild-ng/build/poky/meta/recipes-core/update-rc.d=
/update-rc.d_0.8.bb:do_populate_sysroot&#39;, &#39;virtual:native:/home/jle=
ng/data/cbuild-ng/build/poky/meta/recipes-devtools/createrepo-c/createrepo-=
c_0.19.0.bb:do_populate_sysroot&#39;, &#39;virtual:native:/home/jleng/data/=
cbuild-ng/build/poky/meta/recipes-devtools/dnf/dnf_4.11.1.bb:do_populate_sy=
sroot&#39;, &#39;virtual:native:/home/jleng/data/cbuild-ng/build/poky/meta/=
recipes-devtools/e2fsprogs/e2fsprogs_1.46.5.bb:do_populate_sysroot&#39;, &#=
39;virtual:native:/home/jleng/data/cbuild-ng/build/poky/meta/recipes-devtoo=
ls/makedevs/makedevs_1.0.1.bb:do_populate_sysroot&#39;, &#39;virtual:native=
:/home/jleng/data/cbuild-ng/build/poky/meta/recipes-devtools/opkg-utils/opk=
g-utils_0.5.0.bb:do_populate_sysroot&#39;, &#39;virtual:native:/home/jleng/=
data/cbuild-ng/build/poky/meta/recipes-devtools/opkg/opkg_0.5.0.bb:do_popul=
ate_sysroot&#39;, &#39;virtual:native:/home/jleng/data/cbuild-ng/build/poky=
/meta/recipes-devtools/pseudo/pseudo_git.bb:do_populate_sysroot&#39;, &#39;=
virtual:native:/home/jleng/data/cbuild-ng/build/poky/meta/recipes-devtools/=
rpm/rpm_4.17.1.bb:do_populate_sysroot&#39;, &#39;virtual:native:/home/jleng=
/data/cbuild-ng/build/poky/meta/recipes-extended/pbzip2/pbzip2_1.1.13.bb:do=
_populate_sysroot&#39;, &#39;virtual:native:/home/jleng/data/cbuild-ng/buil=
d/poky/meta/recipes-extended/pigz/pigz_2.7.bb:do_populate_sysroot&#39;]</sp=
an></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">| NOT=
E: Installed into sysroot: [&#39;e2fsprogs-native&#39;]</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">| NOT=
E: Skipping as already exists in sysroot: [&#39;cross-localedef-native&#39;=
, &#39;ldconfig-native&#39;, &#39;qemuwrapper-cross&#39;, &#39;depmodwrappe=
r-cross&#39;, &#39;update-rc.d-native&#39;, &#39;createrepo-c-native&#39;, =
&#39;dnf-native&#39;, &#39;makedevs-native&#39;, &#39;opkg-utils-native&#39=
;, &#39;opkg-native&#39;, &#39;pseudo-native&#39;, &#39;rpm-native&#39;, &#=
39;pbzip2-native&#39;, &#39;pigz-native&#39;, &#39;bzip2-native&#39;, &#39;=
librepo-native&#39;, &#39;gettext-minimal-native&#39;, &#39;libdnf-native&#=
39;, &#39;python3-iniparse-native&#39;, &#39;libcomps-native&#39;, &#39;cma=
ke-native&#39;, &#39;python3-native&#39;, &#39;perl-native&#39;, &#39;zlib-=
native&#39;, &#39;attr-native&#39;, &#39;libtool-native&#39;, &#39;texinfo-=
dummy-native&#39;, &#39;util-linux-native&#39;, &#39;openssl-native&#39;, &=
#39;debianutils-native&#39;, &#39;kmod-native&#39;, &#39;shadow-native&#39;=
, &#39;shared-mime-info-native&#39;, &#39;file-native&#39;, &#39;lua-native=
&#39;, &#39;sqlite3-native&#39;, &#39;zstd-native&#39;, &#39;popt-native&#3=
9;, &#39;libgcrypt-native&#39;, &#39;xz-native&#39;, &#39;elfutils-native&#=
39;, &#39;qemu-native&#39;, &#39;curl-native&#39;, &#39;libxml2-native&#39;=
, &#39;glib-2.0-native&#39;, &#39;expat-native&#39;, &#39;libarchive-native=
&#39;, &#39;libsolv-native&#39;, &#39;gpgme-native&#39;, &#39;libmodulemd-n=
ative&#39;, &#39;gobject-introspection-native&#39;, &#39;libcheck-native&#3=
9;, &#39;json-c-native&#39;, &#39;swig-native&#39;, &#39;python3-six-native=
&#39;, &#39;python3-wheel-native&#39;, &#39;python3-setuptools-native&#39;,=
 &#39;python3-installer-native&#39;, &#39;ncurses-native&#39;, &#39;libnsl2=
-native&#39;, &#39;libffi-native&#39;, &#39;libtirpc-native&#39;, &#39;util=
-linux-libuuid-native&#39;, &#39;gdbm-native&#39;, &#39;readline-native&#39=
;, &#39;make-native&#39;, &#39;libpcre2-native&#39;, &#39;libcap-ng-native&=
#39;, &#39;itstool-native&#39;, &#39;libgpg-error-native&#39;, &#39;libcap-=
native&#39;, &#39;libmicrohttpd-native&#39;, &#39;gettext-native&#39;, &#39=
;libpcre-native&#39;, &#39;lzo-native&#39;, &#39;libassuan-native&#39;, &#3=
9;libyaml-native&#39;, &#39;flex-native&#39;, &#39;python3-flit-core-native=
&#39;, &#39;unzip-native&#39;, &#39;gnutls-native&#39;, &#39;m4-native&#39;=
, &#39;nettle-native&#39;, &#39;libunistring-native&#39;, &#39;gmp-native&#=
39;, &#39;libidn2-native&#39;, &#39;gnu-config-native&#39;]</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">| DEB=
UG: sed -e &#39;s:^[^/]*/:/home/jleng/data/cbuild-ng/build/qemux86-64/tmp/w=
ork/qemux86_64-poky-linux/core-image-minimal/1.0-r0/recipe-sysroot-native/:=
g&#39; /home/jleng/data/cbuild-ng/build/qemux86-64/tmp/sysroots-components/=
x86_64/e2fsprogs-native/fixmepath | xargs sed -i -e &#39;s:FIXMESTAGINGDIRT=
ARGET:/home/jleng/data/cbuild-ng/build/qemux86-64/tmp/work/qemux86_64-poky-=
linux/core-image-minimal/1.0-r0/recipe-sysroot:g; s:FIXMESTAGINGDIRHOST:/ho=
me/jleng/data/cbuild-ng/build/qemux86-64/tmp/work/qemux86_64-poky-linux/cor=
e-image-minimal/1.0-r0/recipe-sysroot-native:g&#39; -e &#39;s:FIXME_PSEUDO_=
SYSROOT:/home/jleng/data/cbuild-ng/build/qemux86-64/tmp/sysroots-components=
/x86_64/pseudo-native:g&#39; -e &#39;s:FIXME_HOSTTOOLS_DIR:/home/jleng/data=
/cbuild-ng/build/qemux86-64/tmp/hosttools:g&#39; -e &#39;s:FIXME_PKGDATA_DI=
R:/home/jleng/data/cbuild-ng/build/qemux86-64/tmp/pkgdata/qemux86-64:g&#39;=
 -e &#39;s:FIXME_PSEUDO_LOCALSTATEDIR:/home/jleng/data/cbuild-ng/build/qemu=
x86-64/tmp/work/qemux86_64-poky-linux/core-image-minimal/1.0-r0/pseudo/:g&#=
39; -e &#39;s:FIXME_LOGFIFO:/home/jleng/data/cbuild-ng/build/qemux86-64/tmp=
/work/qemux86_64-poky-linux/core-image-minimal/1.0-r0/temp/fifo.22796:g&#39=
;</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">| DEB=
UG: Python function extend_recipe_sysroot finished</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">| DEB=
UG: Executing python function set_image_size</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">| DEB=
UG: 27409.200000 =3D 21084 * 1.300000</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">| DEB=
UG: 27409.200000 =3D max(27409.200000, 8192)[27409.200000] + 0</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">| DEB=
UG: 27410.000000 =3D int(27409.200000)</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">| DEB=
UG: 27410 =3D aligned(27410)</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">| DEB=
UG: returning 27410</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">| DEB=
UG: Python function set_image_size finished</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">| DEB=
UG: Executing shell function do_image_ext4</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">| DEB=
UG: Executing dd if=3D/dev/zero of=3D/home/jleng/data/cbuild-ng/build/qemux=
86-64/tmp/work/qemux86_64-poky-linux/core-image-minimal/1.0-r0/deploy-core-=
image-minimal-image-complete/core-image-minimal-qemux86-64-20230808061549.r=
ootfs.ext4 seek=3D27410 count=3D0 bs=3D1024</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">| 0+0=
 records in</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">| 0+0=
 records out</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">| 0 b=
ytes copied, 6.4388e-05 s, 0.0 kB/s</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">| DEB=
UG: Actual Rootfs size: =C2=A019988=E2=80=82/home/jleng/data/cbuild-ng/buil=
d/qemux86-64/tmp/work/qemux86_64-poky-linux/core-image-minimal/1.0-r0/rootf=
s</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">| DEB=
UG: Actual Partion size: 28067840</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">| DEB=
UG: Executing mkfs.ext4 -F -i 4096 /home/jleng/data/cbuild-ng/build/qemux86=
-64/tmp/work/qemux86_64-poky-linux/core-image-minimal/1.0-r0/deploy-core-im=
age-minimal-image-complete/core-image-minimal-qemux86-64-20230808061549.roo=
tfs.ext4 -d /home/jleng/data/cbuild-ng/build/qemux86-64/tmp/work/qemux86_64=
-poky-linux/core-image-minimal/1.0-r0/rootfs</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">| WAR=
NING: exit code 139 from a shell command.</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">| Seg=
mentation fault (core dumped)</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">ERROR=
: Task (/home/jleng/data/cbuild-ng/build/poky/meta/recipes-core/images/core=
-image-minimal.bb:do_image_ext4) failed with exit code &#39;1&#39;</span></=
p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">NOTE:=
 Tasks Summary: Attempted 3592 tasks of which 1187 didn&#39;t need to be re=
run and 1 failed.</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">=C2=
=A0</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">Summa=
ry: 1 task failed:</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">=C2=
=A0 /home/jleng/data/cbuild-ng/build/poky/meta/recipes-core/images/core-ima=
ge-minimal.bb:do_image_ext4</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">Summa=
ry: There were 2 WARNING messages.</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">Summa=
ry: There was 1 ERROR message, returning a non-zero exit code.</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">=C2=
=A0</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">=C2=
=A0</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">=3D=
=3D=3D=3D<strong><span style=3D"background:yellow"> I rolled back the revis=
ion of poky=C2=A0 to check the issue,=C2=A0 the commit of=C2=A0 &quot;<span=
>uninative: Upgrade to 3.10 to support gcc 13&quot; introduced it.</span></=
span></strong><span><span style=3D"background-image:initial;background-posi=
tion:initial;background-size:initial;background-repeat:initial;background-o=
rigin:initial;background-clip:initial">=C2=A0</span></span>=3D=3D=3D=3D</sp=
an></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">=C2=
=A0</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">commi=
t aab6fc20de9473d8d7f277332601cbae70c53320 </span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">Autho=
r: Michael Halstead &lt;<a href=3D"mailto:mhalstead@linuxfoundation.org" ta=
rget=3D"_blank">mhalstead@linuxfoundation.org</a>&gt;</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">Date:=
 =C2=A0 Fri May 26 10:21:48 2023 -0700</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">=C2=
=A0</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">=C2=
=A0 =C2=A0 uninative: Upgrade to 3.10 to support gcc 13</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">=C2=
=A0 =C2=A0 </span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">=C2=
=A0 =C2=A0 (From OE-Core rev: dbf2a81d42b48c22864f64425672315158eb99cb)</sp=
an></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">=C2=
=A0 =C2=A0 </span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">=C2=
=A0 =C2=A0 Signed-off-by: Michael Halstead &lt;<a href=3D"mailto:mhalstead@=
linuxfoundation.org" target=3D"_blank">mhalstead@linuxfoundation.org</a>&gt=
;</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">=C2=
=A0 =C2=A0 Signed-off-by: Richard Purdie &lt;<a href=3D"mailto:richard.purd=
ie@linuxfoundation.org" target=3D"_blank">richard.purdie@linuxfoundation.or=
g</a>&gt;</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">=C2=
=A0 =C2=A0 (cherry picked from commit f811bffb861b23238e8291394bd6e8407f013=
619)</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">=C2=
=A0 =C2=A0 Signed-off-by: Steve Sakoman &lt;<a href=3D"mailto:steve@sakoman=
.com" target=3D"_blank">steve@sakoman.com</a>&gt;</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">=C2=
=A0</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">commi=
t 51d6afc92f621657f800171a992cea7708261d31</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">Autho=
r: Richard Purdie &lt;<a href=3D"mailto:richard.purdie@linuxfoundation.org"=
 target=3D"_blank">richard.purdie@linuxfoundation.org</a>&gt;</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">Date:=
 =C2=A0 Wed Jun 7 17:27:36 2023 +0100</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">=C2=
=A0</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">=C2=
=A0 =C2=A0 selftest/reproducible: Allow native/cross reuse in test</span></=
p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">=C2=
=A0 =C2=A0 </span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">=C2=
=A0 =C2=A0 We don&#39;t compare reproducibility of the native/cross compone=
nts, only the</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">=C2=
=A0 =C2=A0 target ones. With the long build times of rust-native, the test =
now takes</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">=C2=
=A0 =C2=A0 crazy lengths of time so this tweak should allow us to reuse nat=
ive/cross</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">=C2=
=A0 =C2=A0 artefacts from sstate whilst still testing the target output is<=
/span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">=C2=
=A0 =C2=A0 reproducible.</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">=C2=
=A0 =C2=A0 </span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">=C2=
=A0 =C2=A0 (From OE-Core rev: 18a9596ae711ba37ac7e44e46744298ba79ae320)</sp=
an></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">=C2=
=A0 =C2=A0 </span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">=C2=
=A0 =C2=A0 Signed-off-by: Richard Purdie &lt;<a href=3D"mailto:richard.purd=
ie@linuxfoundation.org" target=3D"_blank">richard.purdie@linuxfoundation.or=
g</a>&gt;</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">=C2=
=A0 =C2=A0 (cherry picked from commit b494d83c639a877cefeb7cbab6d37195e492f=
059)</span></p>
<p style=3D"margin:0px"><span style=3D"font-family:Aptos;color:black">=C2=
=A0 =C2=A0 Signed-off-by: Steve Sakoman &lt;<a href=3D"mailto:steve@sakoman=
.com" target=3D"_blank">steve@sakoman.com</a>&gt;</span></p>
<p style=3D"margin:0px"><strong><span style=3D"font-size:12pt;font-family:A=
ptos;color:black">=C2=A0</span></strong></p>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#60757): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/60757" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/60757</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/100638466/361=
7156" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/100638466/3617156</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:Martin.Jansa@gmail.com" target=3D"_blank">Martin=
.Jansa@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--0000000000006cf9f60602950409--

