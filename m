Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 33B1CEB64DD
	for <webhook@archiver.kernel.org>; Wed,  9 Aug 2023 07:04:25 +0000 (UTC)
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
 by mx.groups.io with SMTP id smtpd.web10.82992.1691564656957272925
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Aug 2023 00:04:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=NOzGddLK;
 spf=pass (domain: gmail.com, ip: 209.85.208.170, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2b9bb097c1bso99280211fa.0
        for <yocto@lists.yoctoproject.org>; Wed, 09 Aug 2023 00:04:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691564655; x=1692169455;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/+COuXs6RcMB9ibmkDYQM6ju8apLiMX62Ad7ihZv7ZM=;
        b=NOzGddLKck50nyLvhkO7cFeb/uWbiVmUVR4l5xSK1YJhmVaJojC/YuSdk/SkCqGlO2
         BCpTffKF8dCz2Qzrgh3ubNTD5nTI/S1LpIawfqUJvRBjGHfScVmcN/9x58TYletWZkz0
         uAiMG0oBx9Y1aC3cxYa7mszq+Ke3y6TMRdYiCrLyK+6igBPFm/2dDwv1ANd3m5gQlFOe
         TfHzpzo3FZ4TzraoV6tHDQYCd+R23rS90FjTxBWIYGgj/qTjqN36p0uaXCkQ4MqOLNAa
         1KO65XTg8cImZdQQMOF2luJQWF8ax9/CZ/03l9MUKbD72KiLzYExkMDsQXIjwAIAyIMU
         /qYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691564655; x=1692169455;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/+COuXs6RcMB9ibmkDYQM6ju8apLiMX62Ad7ihZv7ZM=;
        b=cR2ZMmLE5F0pQWjv7C+aOy0LQlFQs6hz5ga2ZAc6wTxO11yno8dxV0OiIIGUpfaT2p
         lmzRLplBJCsyh9qbrivuGMY+fkej7hJJB8lUJ8UEB2/QAdT8uisLxUD6N3M5BSpKdehf
         ipRyNPr3PzB7m/wJ2ECu90ELqyPfYVj5hR/aGcLnUJNfIN5BFq+i9sn+0CZAPxYlJy+D
         DLe2RHcXwvyG4SaW3eGyhkngOGlW5EiUX7nFVwMcN2I56r8Ighwp2nfhYW98s9tc5hzP
         mE0TbI3pbLN2JhT5oX0YEdweaRor/uH7JoNyzGDL5cPKCJiLQ0SH7K/fZ+xn4Ryk404v
         uK5Q==
X-Gm-Message-State: AOJu0YzzpX4pFi/yn9NaVHLaRmgdm1hFedVvq95AFr3D22JmHGymfHE3
	jrmNEP0wvJoRjZhoS1XcrgifrD0ScWIWHMdzfsmOmH5f
X-Google-Smtp-Source: AGHT+IH+JcBGcaqFflmuLLG/ud0l0gJyVFtUMjCcH8uWrVQSDR4hWHRXwEfGTsRTprsnGachBezN9eizboOIJPO/UXY=
X-Received: by 2002:a2e:98d6:0:b0:2b6:e625:ba55 with SMTP id
 s22-20020a2e98d6000000b002b6e625ba55mr1060705ljj.41.1691564654446; Wed, 09
 Aug 2023 00:04:14 -0700 (PDT)
MIME-Version: 1.0
References: <n9Hl.1691564423269187466.55AD@lists.yoctoproject.org>
In-Reply-To: <n9Hl.1691564423269187466.55AD@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 9 Aug 2023 09:04:02 +0200
Message-ID: <CANNYZj9DCaw5W+4SB0WJmwHhzB9n09gKdViPy2vgrwg9q6Dckg@mail.gmail.com>
Subject: Re: [yocto] [Poky-Kirkstone][Ubuntu 18.04] The last poky-kirkstone
 can't work on ubuntu 18.04.
To: Ming Wen <mwen@ambarella.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Aug 2023 07:04:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60758

 I need to remind everyone that Ubuntu 18.04 went out of support on
31st of May this year, and it is no longer possible for the general
public to run that version securely. Please keep that in mind, whether
or not issues are fixed (I'd rather drop 18.04 from support list, and
as soon as possible, i.e. when the AB workers are updated).

Alex

On Wed, 9 Aug 2023 at 09:00, Ming Wen <mwen@ambarella.com> wrote:
>
> Hi,
>
> We're using Poky-Kirkstone for Yocto. Now we're trying to upgrade it to t=
he latest version. But sadly, hit below error when trying to use it to comp=
ile the code on ubuntu 18.04. For comparison, ubuntu 22.04 is OK.
>
> Through narrowing down, we found below clues. It should be caused by some=
 of recent updates to Poky.
> It is appreciated if any of Yocto maintainer could help to give a quick f=
ix. :)
>
> To make things simper, the test example is from official quick build manu=
al( https://docs.yoctoproject.org/4.0.11/brief-yoctoprojectqs/index.html ).
>
> =3D=3D=3D=3D Segmentation fault of mkfs.ext4, which is provided by the pa=
ckage of e2fsprogs-native . =3D=3D=3D=3D
>
>
>
> jleng@jleng:~/data/cbuild-ng/build/qemux86-64$ bitbake core-image-minimal
>
> WARNING: You are using a local hash equivalence server but have configure=
d an sstate mirror. This will likely mean no sstate will match from the mir=
ror. You may wish to disable the hash equivalence use (BB_HASHSERVE), or us=
e a hash equivalence server alongside the sstate mirror.
>
> Loading cache: 100% |                                                    =
                                                                           =
    | ETA:  --:--:--
>
> Loaded 0 entries from dependency cache.
>
> Parsing recipes: 100% |##################################################=
###########################################################################=
#####| Time: 0:00:17
>
> Parsing of 886 .bb files complete (0 cached, 886 parsed). 1648 targets, 4=
5 skipped, 0 masked, 0 errors.
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
> Initialising tasks: 100% |###############################################=
###########################################################################=
#####| Time: 0:00:01
>
> Checking sstate mirror object availability: 100% |#######################=
###########################################################################=
#####| Time: 0:00:05
>
> Sstate summary: Wanted 1397 Local 647 Mirrors 0 Missed 750 Current 0 (46%=
 match, 0% complete)
>
> NOTE: Executing Tasks
>
> WARNING: openssl-native-3.0.10-r0 do_fetch: Failed to fetch URL http://ww=
w.openssl.org/source/openssl-3.0.10.tar.gz, attempting MIRRORS if available
>
> ERROR: core-image-minimal-1.0-r0 do_image_ext4: ExecutionError('/home/jle=
ng/data/cbuild-ng/build/qemux86-64/tmp/work/qemux86_64-poky-linux/core-imag=
e-minimal/1.0-r0/temp/run.do_image_ext4.22796', 139, None, None)
>
> ERROR: Logfile of failure stored in: /home/jleng/data/cbuild-ng/build/qem=
ux86-64/tmp/work/qemux86_64-poky-linux/core-image-minimal/1.0-r0/temp/log.d=
o_image_ext4.22796
>
> Log data follows:
>
> | DEBUG: Executing python function extend_recipe_sysroot
>
> | NOTE: Direct dependencies are ['/home/jleng/data/cbuild-ng/build/poky/m=
eta/recipes-core/glibc/cross-localedef-native_2.35.bb:do_populate_sysroot',=
 '/home/jleng/data/cbuild-ng/build/poky/meta/recipes-core/glibc/ldconfig-na=
tive_2.12.1.bb:do_populate_sysroot', '/home/jleng/data/cbuild-ng/build/poky=
/meta/recipes-devtools/qemu/qemuwrapper-cross_1.0.bb:do_populate_sysroot', =
'/home/jleng/data/cbuild-ng/build/poky/meta/recipes-kernel/kmod/depmodwrapp=
er-cross_1.0.bb:do_populate_sysroot', 'virtual:native:/home/jleng/data/cbui=
ld-ng/build/poky/meta/recipes-core/update-rc.d/update-rc.d_0.8.bb:do_popula=
te_sysroot', 'virtual:native:/home/jleng/data/cbuild-ng/build/poky/meta/rec=
ipes-devtools/createrepo-c/createrepo-c_0.19.0.bb:do_populate_sysroot', 'vi=
rtual:native:/home/jleng/data/cbuild-ng/build/poky/meta/recipes-devtools/dn=
f/dnf_4.11.1.bb:do_populate_sysroot', 'virtual:native:/home/jleng/data/cbui=
ld-ng/build/poky/meta/recipes-devtools/e2fsprogs/e2fsprogs_1.46.5.bb:do_pop=
ulate_sysroot', 'virtual:native:/home/jleng/data/cbuild-ng/build/poky/meta/=
recipes-devtools/makedevs/makedevs_1.0.1.bb:do_populate_sysroot', 'virtual:=
native:/home/jleng/data/cbuild-ng/build/poky/meta/recipes-devtools/opkg-uti=
ls/opkg-utils_0.5.0.bb:do_populate_sysroot', 'virtual:native:/home/jleng/da=
ta/cbuild-ng/build/poky/meta/recipes-devtools/opkg/opkg_0.5.0.bb:do_populat=
e_sysroot', 'virtual:native:/home/jleng/data/cbuild-ng/build/poky/meta/reci=
pes-devtools/pseudo/pseudo_git.bb:do_populate_sysroot', 'virtual:native:/ho=
me/jleng/data/cbuild-ng/build/poky/meta/recipes-devtools/rpm/rpm_4.17.1.bb:=
do_populate_sysroot', 'virtual:native:/home/jleng/data/cbuild-ng/build/poky=
/meta/recipes-extended/pbzip2/pbzip2_1.1.13.bb:do_populate_sysroot', 'virtu=
al:native:/home/jleng/data/cbuild-ng/build/poky/meta/recipes-extended/pigz/=
pigz_2.7.bb:do_populate_sysroot']
>
> | NOTE: Installed into sysroot: ['e2fsprogs-native']
>
> | NOTE: Skipping as already exists in sysroot: ['cross-localedef-native',=
 'ldconfig-native', 'qemuwrapper-cross', 'depmodwrapper-cross', 'update-rc.=
d-native', 'createrepo-c-native', 'dnf-native', 'makedevs-native', 'opkg-ut=
ils-native', 'opkg-native', 'pseudo-native', 'rpm-native', 'pbzip2-native',=
 'pigz-native', 'bzip2-native', 'librepo-native', 'gettext-minimal-native',=
 'libdnf-native', 'python3-iniparse-native', 'libcomps-native', 'cmake-nati=
ve', 'python3-native', 'perl-native', 'zlib-native', 'attr-native', 'libtoo=
l-native', 'texinfo-dummy-native', 'util-linux-native', 'openssl-native', '=
debianutils-native', 'kmod-native', 'shadow-native', 'shared-mime-info-nati=
ve', 'file-native', 'lua-native', 'sqlite3-native', 'zstd-native', 'popt-na=
tive', 'libgcrypt-native', 'xz-native', 'elfutils-native', 'qemu-native', '=
curl-native', 'libxml2-native', 'glib-2.0-native', 'expat-native', 'libarch=
ive-native', 'libsolv-native', 'gpgme-native', 'libmodulemd-native', 'gobje=
ct-introspection-native', 'libcheck-native', 'json-c-native', 'swig-native'=
, 'python3-six-native', 'python3-wheel-native', 'python3-setuptools-native'=
, 'python3-installer-native', 'ncurses-native', 'libnsl2-native', 'libffi-n=
ative', 'libtirpc-native', 'util-linux-libuuid-native', 'gdbm-native', 'rea=
dline-native', 'make-native', 'libpcre2-native', 'libcap-ng-native', 'itsto=
ol-native', 'libgpg-error-native', 'libcap-native', 'libmicrohttpd-native',=
 'gettext-native', 'libpcre-native', 'lzo-native', 'libassuan-native', 'lib=
yaml-native', 'flex-native', 'python3-flit-core-native', 'unzip-native', 'g=
nutls-native', 'm4-native', 'nettle-native', 'libunistring-native', 'gmp-na=
tive', 'libidn2-native', 'gnu-config-native']
>
> | DEBUG: sed -e 's:^[^/]*/:/home/jleng/data/cbuild-ng/build/qemux86-64/tm=
p/work/qemux86_64-poky-linux/core-image-minimal/1.0-r0/recipe-sysroot-nativ=
e/:g' /home/jleng/data/cbuild-ng/build/qemux86-64/tmp/sysroots-components/x=
86_64/e2fsprogs-native/fixmepath | xargs sed -i -e 's:FIXMESTAGINGDIRTARGET=
:/home/jleng/data/cbuild-ng/build/qemux86-64/tmp/work/qemux86_64-poky-linux=
/core-image-minimal/1.0-r0/recipe-sysroot:g; s:FIXMESTAGINGDIRHOST:/home/jl=
eng/data/cbuild-ng/build/qemux86-64/tmp/work/qemux86_64-poky-linux/core-ima=
ge-minimal/1.0-r0/recipe-sysroot-native:g' -e 's:FIXME_PSEUDO_SYSROOT:/home=
/jleng/data/cbuild-ng/build/qemux86-64/tmp/sysroots-components/x86_64/pseud=
o-native:g' -e 's:FIXME_HOSTTOOLS_DIR:/home/jleng/data/cbuild-ng/build/qemu=
x86-64/tmp/hosttools:g' -e 's:FIXME_PKGDATA_DIR:/home/jleng/data/cbuild-ng/=
build/qemux86-64/tmp/pkgdata/qemux86-64:g' -e 's:FIXME_PSEUDO_LOCALSTATEDIR=
:/home/jleng/data/cbuild-ng/build/qemux86-64/tmp/work/qemux86_64-poky-linux=
/core-image-minimal/1.0-r0/pseudo/:g' -e 's:FIXME_LOGFIFO:/home/jleng/data/=
cbuild-ng/build/qemux86-64/tmp/work/qemux86_64-poky-linux/core-image-minima=
l/1.0-r0/temp/fifo.22796:g'
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
> | DEBUG: Executing dd if=3D/dev/zero of=3D/home/jleng/data/cbuild-ng/buil=
d/qemux86-64/tmp/work/qemux86_64-poky-linux/core-image-minimal/1.0-r0/deplo=
y-core-image-minimal-image-complete/core-image-minimal-qemux86-64-202308080=
61549.rootfs.ext4 seek=3D27410 count=3D0 bs=3D1024
>
> | 0+0 records in
>
> | 0+0 records out
>
> | 0 bytes copied, 6.4388e-05 s, 0.0 kB/s
>
> | DEBUG: Actual Rootfs size:  19988=E2=80=82/home/jleng/data/cbuild-ng/bu=
ild/qemux86-64/tmp/work/qemux86_64-poky-linux/core-image-minimal/1.0-r0/roo=
tfs
>
> | DEBUG: Actual Partion size: 28067840
>
> | DEBUG: Executing mkfs.ext4 -F -i 4096 /home/jleng/data/cbuild-ng/build/=
qemux86-64/tmp/work/qemux86_64-poky-linux/core-image-minimal/1.0-r0/deploy-=
core-image-minimal-image-complete/core-image-minimal-qemux86-64-20230808061=
549.rootfs.ext4 -d /home/jleng/data/cbuild-ng/build/qemux86-64/tmp/work/qem=
ux86_64-poky-linux/core-image-minimal/1.0-r0/rootfs
>
> | WARNING: exit code 139 from a shell command.
>
> | Segmentation fault (core dumped)
>
> ERROR: Task (/home/jleng/data/cbuild-ng/build/poky/meta/recipes-core/imag=
es/core-image-minimal.bb:do_image_ext4) failed with exit code '1'
>
> NOTE: Tasks Summary: Attempted 3592 tasks of which 1187 didn't need to be=
 rerun and 1 failed.
>
>
>
> Summary: 1 task failed:
>
>   /home/jleng/data/cbuild-ng/build/poky/meta/recipes-core/images/core-ima=
ge-minimal.bb:do_image_ext4
>
> Summary: There were 2 WARNING messages.
>
> Summary: There was 1 ERROR message, returning a non-zero exit code.
>
>
>
>
>
> =3D=3D=3D=3D I rolled back the revision of poky  to check the issue,  the=
 commit of  "uninative: Upgrade to 3.10 to support gcc 13" introduced it. =
=3D=3D=3D=3D
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
>     We don't compare reproducibility of the native/cross components, only=
 the
>
>     target ones. With the long build times of rust-native, the test now t=
akes
>
>     crazy lengths of time so this tweak should allow us to reuse native/c=
ross
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
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60757): https://lists.yoctoproject.org/g/yocto/messag=
e/60757
> Mute This Topic: https://lists.yoctoproject.org/mt/100638466/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

