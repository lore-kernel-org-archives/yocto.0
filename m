Return-Path: <mtownsend1973@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 42988C0015E
	for <webhook@archiver.kernel.org>; Mon, 17 Jul 2023 13:38:17 +0000 (UTC)
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com [209.85.210.44])
 by mx.groups.io with SMTP id smtpd.web11.8373.1689601087722598942
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Jul 2023 06:38:07 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=cDkpgYb/;
 spf=pass (domain: gmail.com, ip: 209.85.210.44, mailfrom: mtownsend1973@gmail.com)
Received: by mail-ot1-f44.google.com with SMTP id 46e09a7af769-6b9d68a7abaso580905a34.3
        for <yocto@lists.yoctoproject.org>; Mon, 17 Jul 2023 06:38:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689601086; x=1692193086;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=TyKrYKsGfm9VS3Yd4vRLyc0Eux8Pu4NpVw0+b6V6+7c=;
        b=cDkpgYb/SzS5cbYT1LNzsFyb8wyU/oQnUG4tDNRMX0z+yWV2QUFGniKICIpiqkVD8t
         +DgnBCm4LoVw47wkMN19fXoMJ8LgO6ktF9f8es6rXdRU9sXTd45GVv549AvfNUgOcz5o
         suic78jY7fjYUlLOxN0RVP6uAk7CGjzMMF/h3Cx14UT6A/Zg1dsKaHisSZP8QgGmmt6a
         7UpePQStoyZOjSsr2PraYTde/jRC2RUF6g7Q0r2oc1tlzPIKR9Mhol+oXuPLEzSmi0A2
         qvu4X4lSclEiX3MoEcXNGHOgd9CemcmIej/+RKxrkcyjDqGF77QrzR+jf1MZHflBwpGK
         cXLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689601086; x=1692193086;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TyKrYKsGfm9VS3Yd4vRLyc0Eux8Pu4NpVw0+b6V6+7c=;
        b=kbfxnBsKVHjPf9FtLs4jTro42IOq3iIDjB6x0uVslAlXRmqIYk5V5SgiD7U7iydeOR
         vqVKDhY22V//zvawhWd6mTN+ox3empUjdOwvHOZDcu+0NCV0Gqk50QEIjJnGn80D1MEi
         ttiJpWRV3+MFc53uPde604Xadc03eak6RSImrmdjblJBXlcRZHb20/CPZywarvmnCGzm
         UgPcpZfnEOTNIpx+EZ3aCWfcCQql9d/REDum1BaRjpUg6mFbn5GjNybxGsj5ylkWcQHB
         awro/HIbHcZdhl8zg/L94cnCl+oWG8DMsyCTda5F4BdlAiDeBafHUPPDnd6xTqeoUOOR
         u/og==
X-Gm-Message-State: ABy/qLai/n3QwxALtYKbi0LlICgoxKWBL1ZI8cHEeXF+39xPyHSBQgl/
	Xqlvj/YwQ6V4gmejFSGUN2fnUzA+f2ru5ECvfzLXXtEm
X-Google-Smtp-Source: APBJJlEeqS5CmHEiTzoEC3p9yNvLUStUAWvPcSM7p20CtYJTXGy2DWR6w9EtGVHnaK0+IOtMVMWEUCYRW6E6MFPkZAU=
X-Received: by 2002:a05:6358:7189:b0:133:b3b:ceb8 with SMTP id
 t9-20020a056358718900b001330b3bceb8mr8773189rwt.20.1689601086552; Mon, 17 Jul
 2023 06:38:06 -0700 (PDT)
MIME-Version: 1.0
From: Martin Townsend <mtownsend1973@gmail.com>
Date: Mon, 17 Jul 2023 14:37:55 +0100
Message-ID: <CABatt_zAugR2unmSVA=L7HmPxe9W11r0LEDkCPs7+drMtOApDA@mail.gmail.com>
Subject: libgcc dependency
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 17 Jul 2023 13:38:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60587

Hi,

I am trying to remove all GPLv3 packages from my image.  The clang
toolchain is used where possible and currently there are no
dependencies on libstdc++ and as far as I can see none on libgcc but
this library is installed in the rootfs.  I've created a script to
parse all elf binaries to see which one dynamically links against
libgcc but none do.  I think it's being installed due to libgcc being
in the BASEDEPENDS but I can't see what is adding libgcc to this
variable.  I'm using the dunfell version of yocto and base.bbclass has

def base_dep_prepend(d):
    if d.getVar('INHIBIT_DEFAULT_DEPS', False):
        return ""
    return "${BASE_DEFAULT_DEPS}"

BASE_DEFAULT_DEPS = "virtual/${TARGET_PREFIX}gcc
virtual/${TARGET_PREFIX}compilerlibs virtual/libc"

BASEDEPENDS = ""
BASEDEPENDS_class-target = "${@base_dep_prepend(d)}"
BASEDEPENDS_class-nativesdk = "${@base_dep_prepend(d)}"

but when I check the BASEDEPENDS for various recipes I get

BASEDEPENDS=" clang-cross-aarch64 virtual/libc  libgcc
virtual/aarch64-poky-linux-compilerlibs  gettext-native"
BASEDEPENDS_class-nativesdk=" clang-cross-aarch64 virtual/libc  libgcc
 virtual/aarch64-poky-linux-compilerlibs "
BASEDEPENDS_class-target=" clang-cross-aarch64 virtual/libc  libgcc
virtual/aarch64-poky-linux-compilerlibs "

Is it possible to remove libgcc from the BASEDEPENDS somehow?
Although we are using Dunfell I'm happy to move to another release if
it's easier to achieve this.

Best Regards,
Martin.

