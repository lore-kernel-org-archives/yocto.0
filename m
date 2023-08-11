Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2108C001B0
	for <webhook@archiver.kernel.org>; Fri, 11 Aug 2023 11:54:32 +0000 (UTC)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
 by mx.groups.io with SMTP id smtpd.web10.40879.1691754863005390219
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Aug 2023 04:54:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=WkgNdHVB;
 spf=pass (domain: gmail.com, ip: 209.85.167.48, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-4fe0d5f719dso3114984e87.2
        for <yocto@lists.yoctoproject.org>; Fri, 11 Aug 2023 04:54:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691754861; x=1692359661;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kbcSpVfUh8b7WrZEmU6ihdvQ4eN4P0EN9amB1OPEZKM=;
        b=WkgNdHVBu7L+x4bwq2Mfsjy5X1lAz1GWXJgCNXcmFzYXcpGr6it5vPCdtuPDK1hnvC
         YNUlDNnCcyu1ww3pqjYmEu0RO6XdKS7zCe7fHNjmPLTsPjbsY5t1WFmyneVEa/hLJ8Ki
         wUBs+umJgXCrKuJNAN1BWFNP2MD0JCK/gC4vFhMHuaaKIIhq4QFLyV4m4ioq1NPMD1Fe
         2koCQe1Aj/ye6uQlehFADps2YWOADy1RLkzsVhGSLPYq1FRLdLfyhWtYvw89Ty9N9QJC
         e5n+5kd3i7n03XQHMRwnaNEd44Qt6htzM2fo3d9j6FGaYgN1OcYWbysTCCxHJNLRrtbb
         5+6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691754861; x=1692359661;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kbcSpVfUh8b7WrZEmU6ihdvQ4eN4P0EN9amB1OPEZKM=;
        b=QNc9Q3wKz6EpbihGlPk07dtygoG1357EJXc6DTSSbWBjdNz6bVgy3Fk5975hvsjJFi
         D6R23sAyoMgVkgf1N6NQxeDJ+UbATECWTIDwtl3lKUxAw+ND8AT4Cz7epaGg1bsng1sW
         +02yaLuaayRRUmtrWfPCkf5NMTjAQ9Cj4sEfQiGul0vFMooDoaiDa7X6RQ6q6/0zjFJz
         FzekSDbFPXEZIe8ngkSHIN3eJEboSTEesh18WQLzMQFbh+SE5Uy66HusSm1pNOxHUFlS
         psWwdqG9Rm7dlEYsOhyn1K4bwgtQ+RpRdLK9b1Niv39xuY8ReThudYSXEqkbg7cH6BEI
         ROzQ==
X-Gm-Message-State: AOJu0Yz9gdtPpHCOnTI76wc6W9eo1byUz8g3+O+8cENOyP5gVxejdpig
	l8IR+uwhoz2fFYDCh1ZSWAj0YQSTyfFQbBLXRZ4=
X-Google-Smtp-Source: AGHT+IEZZl/DR+2OsRVC3f2zUS7gR/XrVCzDvEbIVsgtEtE7VhnAXti5JwFf4M+g+qPiDAJxInZowJ7GJFLHt+0J6Pg=
X-Received: by 2002:a05:6512:3dac:b0:4fe:7e1f:766a with SMTP id
 k44-20020a0565123dac00b004fe7e1f766amr1385386lfv.24.1691754860585; Fri, 11
 Aug 2023 04:54:20 -0700 (PDT)
MIME-Version: 1.0
References: <8A4J.1691735918881680780.WtwR@lists.yoctoproject.org>
In-Reply-To: <8A4J.1691735918881680780.WtwR@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 11 Aug 2023 13:54:09 +0200
Message-ID: <CANNYZj-9Pey+OO_YmjK77LL_qE7c-vzgYKN3YjiV9qQWD346Zw@mail.gmail.com>
Subject: Re: [yocto] libudev-zero recipe issue
To: Rob Kramer <rob@teegee.cloud>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 11 Aug 2023 11:54:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60782

The recipe looks ok. Can you reproduce it with a plain poky build (no
extra layers, no custom distros, no weird BSPs :) ?

Alex

On Fri, 11 Aug 2023 at 08:38, Rob Kramer <rob@teegee.cloud> wrote:
>
> Hi all,
>
> I added a new recipe for libudev-zero, which provides a minimal daemon-le=
ss udev implementation. The recipe works, but has an issue that pops up reg=
ularly where it causes an exception during rootfs:
>
> Exception: FileNotFoundError: [Errno 2] No such file or directory: '/ssd/=
opt/oe/yocto/kirkstone/build-weston/tmp-glibc/deploy/ipk/core2-64/libudev1_=
1.0.2-r1_core2-64.ipk' -> '/ssd/opt/oe/yocto/kirkstone/build-weston/tmp-gli=
bc/work/generic64-oe-linux/sollinux-ble-weston/1.0-r0/oe-rootfs-repo/core2-=
64/libudev1_1.0.2-r1_core2-64.ipk'
>
> It seems like for some reason the ipk has been removed from deploy/ipk. T=
o recover from this, a 'bitbake -c clean libudev-zero' will restore things =
the next time the rootfs is run.
>
> Does anyone have an idea what could cause this? Appended below is the rec=
ipe, and the full error message.
>
> Cheers,
>
>      Rob
>
>
> libudev-zero_1.0.2.bb:
> DESCRIPTION =3D "Daemon-less libudev replacement"
> SECTION =3D "base"
> LICENSE=3D"ISC"
> LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D09eac32a84c5d70c105cbfce173a16=
1d"
>
> PR =3D "r1"
> SRCREV =3D "04a727df50fde3f69127aed4bc48e6cff5430175"
> SRC_URI =3D "git://github.com/illiliti/${BPN};branch=3Dmaster;protocol=3D=
https"
>
> SRC_URI[sha256sum] =3D "29dff942cab9519994fb92ba6407f57e08d3dd6e6c0b86bb9=
3d7b1d681994ff8"
>
> PROVIDES =3D "udev"
>
> inherit features_check
>
> CONFLICT_DISTRO_FEATURES =3D "systemd"
>
> S =3D "${WORKDIR}/git"
>
> PACKAGES +=3D "${PN}-netlink"
> FILES:${PN} =3D "${libdir}"
> FILES:${PN}-netlink =3D "${bindir}"
>
> RPROVIDES:${PN} =3D "hotplug udev"
>
> do_configure:prepend() {
>     sed -i 's;PREFIX =3D /usr/local;PREFIX =3D /usr;' ${S}/Makefile
> }
>
> do_compile:append() {
>     $CCLD $LDFLAGS -o contrib/netlink-forward contrib/helper.c
> }
>
> do_install() {
>     oe_runmake install DESTDIR=3D${D}
>
>     install -d ${D}${bindir}
>     install -m 755 contrib/netlink-forward ${D}${bindir}
> }
>
>
>
> Error message:
> ERROR: sollinux-ble-weston-1.0-r0 do_rootfs: Error executing a python fun=
ction in exec_func_python() autogenerated:
>
> The stack trace of python calls that resulted in this exception/failure w=
as:
> File: 'exec_func_python() autogenerated', lineno: 2, function: <module>
>      0001:
>  *** 0002:do_rootfs(d)
>      0003:
> File: '/opt/oe/yocto/kirkstone/oe-core/meta/classes/image.bbclass', linen=
o: 255,
>  function: do_rootfs
>      0251:    progress_reporter.next_stage()
>      0252:
>      0253:    # generate rootfs
>      0254:    d.setVarFlag('REPRODUCIBLE_TIMESTAMP_ROOTFS', 'export', '1'=
)
>  *** 0255:    create_rootfs(d, progress_reporter=3Dprogress_reporter, log=
catcher=3Dl
> ogcatcher)
>      0256:
>      0257:    progress_reporter.finish()
>      0258:}
>      0259:do_rootfs[dirs] =3D "${TOPDIR}"
> File: '/opt/oe/yocto/kirkstone/oe-core/meta/lib/oe/rootfs.py', lineno: 38=
1, func
> tion: create_rootfs
>      0377:
>      0378:    img_type =3D d.getVar('IMAGE_PKGTYPE')
>      0379:
>      0380:    cls =3D get_class_for_type(img_type)
>  *** 0381:    cls(d, manifest_dir, progress_reporter, logcatcher).create(=
)
>      0382:    os.environ.clear()
>      0383:    os.environ.update(env_bkp)
>      0384:
>      0385:
> File: '/opt/oe/yocto/kirkstone/oe-core/meta/lib/oe/package_manager/ipk/ro=
otfs.py
> ', lineno: 136, function: __init__
>      0132:
>      0133:        self.inc_opkg_image_gen =3D self.d.getVar('INC_IPK_IMAG=
E_GEN') o
> r ""
>      0134:        if self._remove_old_rootfs():
>      0135:            bb.utils.remove(self.image_rootfs, True)
>  *** 0136:            self.pm =3D OpkgPM(d,
>      0137:                             self.image_rootfs,
>      0138:                             self.opkg_conf,
>      0139:                             self.pkg_archs)
>      0140:        else:
> File: '/opt/oe/yocto/kirkstone/oe-core/meta/lib/oe/package_manager/ipk/__=
init__.
> py', lineno: 175, function: __init__
>      0171:        self.opkg_args =3D "--volatile-cache -f %s -t %s -o %s =
" % (self
> .config_file, self.d.expand('${T}/ipktemp/') ,target_rootfs)
>      0172:        self.opkg_args +=3D self.d.getVar("OPKG_ARGS")
>      0173:
>      0174:        if prepare_index:
>  *** 0175:            create_packages_dir(self.d, self.deploy_dir, d.getV=
ar("DEP
> LOY_DIR_IPK"), "package_write_ipk", filterbydependencies)
>      0176:
>      0177:        self.opkg_dir =3D oe.path.join(target_rootfs, self.d.ge=
tVar('OPK
> GLIBDIR'), "opkg")
>      0178:        bb.utils.mkdirhier(self.opkg_dir)
>      0179:
> File: '/opt/oe/yocto/kirkstone/oe-core/meta/lib/oe/package_manager/__init=
__.py',
>  lineno: 525, function: create_packages_dir
>      0521:                if destdir not in seendirs:
>      0522:                    bb.utils.mkdirhier(destdir)
>      0523:                    seendirs.add(destdir)
>      0524:                try:
>  *** 0525:                    os.link(l, dest)
>      0526:                except OSError as err:
>      0527:                    if err.errno =3D=3D errno.EXDEV:
>      0528:                        bb.utils.copyfile(l, dest)
>      0529:                    else:
> Exception: FileNotFoundError: [Errno 2] No such file or directory: '/ssd/=
opt/oe/yocto/kirkstone/build-weston/tmp-glibc/deploy/ipk/core2-64/libudev1_=
1.0.2-r1_core2-64.ipk' -> '/ssd/opt/oe/yocto/kirkstone/build-weston/tmp-gli=
bc/work/generic64-oe-linux/sollinux-ble-weston/1.0-r0/oe-rootfs-repo/core2-=
64/libudev1_1.0.2-r1_core2-64.ipk'
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60777): https://lists.yoctoproject.org/g/yocto/messag=
e/60777
> Mute This Topic: https://lists.yoctoproject.org/mt/100679184/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

