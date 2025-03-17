Return-Path: <lpmeyer@ics.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EE722C282EC
	for <webhook@archiver.kernel.org>; Mon, 17 Mar 2025 18:09:21 +0000 (UTC)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
 by mx.groups.io with SMTP id smtpd.web10.60009.1742234952098682524
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Mar 2025 11:09:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ics.com header.s=google header.b=a1s07rZV;
 spf=pass (domain: ics.com, ip: 209.85.208.52, mailfrom: lpmeyer@ics.com)
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5e5b6f3025dso6938680a12.1
        for <yocto@lists.yoctoproject.org>; Mon, 17 Mar 2025 11:09:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ics.com; s=google; t=1742234950; x=1742839750; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=V15tmZCu9mZ9aZuo5gdG+4ty9gw5dnyTwnpKD2PRjgE=;
        b=a1s07rZVeEKmU8gpHRhcvTINm3Xx7727lG0NlxtAy71ZHE4ncRHhlBIXbMYRS6mxVG
         fT8e8Obk+IBrJf5oBiXmkRlgOyDKBEkIydHsuLRpX34vGUHovTso7L4d6uNdfJoQBw/l
         69BQLE7jOdz6r7U2DuKoffVeaZyv+s8RvUX/mIW0inuCzD1rxONVSPi4moO+tQ5N1VG9
         CPPNACd3H9EmS6wnbDJOrp9QAcZ7b5dtfFqpBVtaWlb3ZdgmvxG6jvhSoHI4hi/niJLr
         IU1dQd6OPKdEVVnhh1YoM9Ydeq6VkiMuzMx/mi1dTVjfM09B1bLF2l5XpJnccAZ8R87r
         DuiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742234950; x=1742839750;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=V15tmZCu9mZ9aZuo5gdG+4ty9gw5dnyTwnpKD2PRjgE=;
        b=IgXTUjRfyO66+xkyUr41e/DyNMnPL8vD6oRki7LNO8YKwNDVdzf305aLFUsPk/8kN4
         owYHuci7a13vQCUHaX2XwtVdXEIpxDFh2QaZmaDgkt7H4nkVBVR+u0q5skG7u9pxywWu
         vwwsbz1JmeKxfwQvhSbgh9cvqWdXJcPt/mWyI1rriFhd9gMa8vZjZ2BNJe4EJC04WHWb
         9CM8U5gDAqp2jTkF/vOMdGa+w5I593GSbWZCuyfenet0hU7mvj+zzxIkZCKyPpdrJHfm
         S+U2awcNDNjUW2bmFsRpCJ2WkvYc3OBCulWeM+WZp20IWJ+CreJHz+JdXdJrOZoHupTc
         luCw==
X-Gm-Message-State: AOJu0YwD617q1sIZ0gS2yG6B2qEH/Shw42E4H0uiQEYaSZn13F0pBCLZ
	Ly308b9h7KVrXhVYsH9SbIrqmGt5NhONr4dO7gVfdjd4ip7BHkVE6A/LbI+/wzXNcuW7OaZdfIG
	oO/TWO0XevHkuO0eMrSPys1xQSZuWysGfn5BUyvhj1zqfRlbx1fw=
X-Gm-Gg: ASbGncv2zj4jG953+oyi7MwMmTsqIFKQCZHEWyTSXi7lBMiWyJtesVImYJXvkCEFzCW
	taD1Tv3lJgTRyXglSmjFN0Nezpm1uRGWZv0FVBU4YCJ1+LvzOeJKDQ0DWhYRpq/3veL9SvqN8/e
	4GLzbxGfDcfcLzmDx/ysC3q+KRpeBi2mCLJJrPC+U=
X-Google-Smtp-Source: AGHT+IFlaqVm414PX5PEgr9xx1NlEg+6d/wRHqBT2YSn2bqRhQErMWMQMxFfFP1YJEQQ9vAl593ea4Bfpnfd9Uo1RAk=
X-Received: by 2002:a05:6402:2688:b0:5e5:edf8:88f2 with SMTP id
 4fb4d7f45d1cf-5eb1df62a34mr474336a12.23.1742234949845; Mon, 17 Mar 2025
 11:09:09 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Lisandro_P=C3=A9rez_Meyer?= <lpmeyer@ics.com>
Date: Mon, 17 Mar 2025 15:08:54 -0300
X-Gm-Features: AQ5f1Jop0Sk0W8p-yKUJ_PyFaoWpBuleG-Q8--DDXbam1sFwomuNIW15bosvY80
Message-ID: <CABqjNW8MPXLqFxubZKJ5LF=7HAyW_ft5GxK5y1TUe0DkPCCycg@mail.gmail.com>
Subject: Kernel with initramfs: issues with packaging, out of source modules
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000004d2a4c06308daf55"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 17 Mar 2025 18:09:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64965

--0000000000004d2a4c06308daf55
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm building a Scarthgap-based system with a Variscite iMX8M-Plus SoC which
needs a kernel with initramfs embedded into it. Following the doc I created
a initramfs recipe, enabled/set:

# On a linux-variscite's bbappend
INITRAMFS_IMAGE =3D "theproject-initramfs-image"

# Machine conf
INITRAMFS_IMAGE_BUNDLE =3D "1"
IMAGE_BOOT_FILES:prepend =3D " ${KERNEL_IMAGETPYE}-initramfs-${MACHINE}.bin=
"

Up to that point everything is OK: kernel + bundled initramfs is created, I
can copy it to the board, boot with it, run scripts, etc.

But after the above I am finding an issue with kernel versioning. The
function `do_bundle_initramfs` is being run after `do_package`, which means
I can not create a package of the kernel with initramfs on it. Moreover I
can no longer build out of kernel modules, because the git commit id
changes, and thus KERNEL_VERSION.

Maybe `do_bundle_initramfs` happens after `do_package` to avoid a circular
dependency somehow? Maybe I could try to hack the class to avoid building
the image without the initramfs and building the version with it before
`do_package` is called? Maybe there is some other approach?

Thanks in advance, Lisandro.

--=20
Lisandro P=C3=A9rez Meyer
Embedded Platform Engineer

--0000000000004d2a4c06308daf55
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,<br><br>I&#39;m building a Scarthgap-based system =
with a Variscite iMX8M-Plus SoC which needs a kernel with initramfs embedde=
d into it. Following the doc I created a initramfs recipe, enabled/set:<br>=
<br># On a linux-variscite&#39;s bbappend<br>INITRAMFS_IMAGE =3D &quot;thep=
roject-initramfs-image&quot; <br><br># Machine conf<br>INITRAMFS_IMAGE_BUND=
LE =3D &quot;1&quot;<br>IMAGE_BOOT_FILES:prepend =3D &quot; ${KERNEL_IMAGET=
PYE}-initramfs-${MACHINE}.bin&quot;<br><br>Up to that point everything is O=
K: kernel + bundled initramfs is created, I can copy it to the board, boot =
with it, run scripts, etc.<br><br>But after the above I am finding an issue=
 with kernel versioning. The function `do_bundle_initramfs` is being run af=
ter `do_package`, which means I can not create a package of the kernel with=
 initramfs on it. Moreover I can no longer build out of kernel modules, bec=
ause the git commit id changes, and thus KERNEL_VERSION.<br><br>Maybe `do_b=
undle_initramfs` happens after `do_package` to avoid a circular dependency =
somehow? Maybe I could try to hack the class to avoid building the image wi=
thout the initramfs and building the version with it before `do_package` is=
 called? Maybe there is some other approach?<br><br>Thanks in advance, Lisa=
ndro.</div><br><span class=3D"gmail_signature_prefix">-- </span><br><div di=
r=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div=
 dir=3D"ltr"><div>Lisandro P=C3=A9rez Meyer<br></div>Embedded Platform Engi=
neer<br></div></div></div>

--0000000000004d2a4c06308daf55--

