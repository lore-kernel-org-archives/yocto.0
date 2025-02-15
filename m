Return-Path: <ecordonnier@snap.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7F593C021A0
	for <webhook@archiver.kernel.org>; Sat, 15 Feb 2025 13:31:56 +0000 (UTC)
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
 by mx.groups.io with SMTP id smtpd.web10.8868.1739626308217123694
 for <yocto@lists.yoctoproject.org>;
 Sat, 15 Feb 2025 05:31:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@snap.com header.s=google header.b=BlGh7/NT;
 spf=pass (domain: snapchat.com, ip: 209.85.218.46, mailfrom: ecordonnier@snapchat.com)
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-abb7f539c35so56214766b.1
        for <yocto@lists.yoctoproject.org>; Sat, 15 Feb 2025 05:31:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=snap.com; s=google; t=1739626306; x=1740231106; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Ttt9xN4vM1MUlOYRgxPmrAW8+tpt34Y8tM94CWHrRRA=;
        b=BlGh7/NT5lLimkKO1XuqupX8njLAsSviMC2duVMOr3bB6X0Wp4xEwd9Jqe17fldxzE
         oEBeOxdXWpZJM60hpFn4higeOmEQHfY5YSaCSC6PJxWvqk8mcoFQBmEsxDmAfQX3O3zu
         R/AMHUTO67n6R7lXUl5EYstqQKQRoJDkOSis0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739626306; x=1740231106;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ttt9xN4vM1MUlOYRgxPmrAW8+tpt34Y8tM94CWHrRRA=;
        b=oWX/H3ZFy9kEW1EKZCgKekXvZmAfps2O83jzpiOH3Nxs9o4e2bHoscf77+RlVR7tmF
         J1kxmmccACFiEfwctewYx2GHQb0KUhsJXjaxDL/pGZ/AcuyhgJEq9QwDHfucPzaThFWP
         PZ5j+UnFHTjRe1MKOFDZUUymStT0ObTeBcqSPgnlrkaIFNq1lX2Whs6MxtMxfmbKPvSe
         +1PveHBezq4M5ZDXGKR0A2hF/c08rGocPP1kYSEUd/TukAhqTNmINeIW0/c1i1uoUDBT
         wNowwJFzve+2z61UYZQkCvYEPNxr2WzdIshcD9PSp47EYyrrb2jfiIF5ksIOeA0wL0w4
         Vm9A==
X-Gm-Message-State: AOJu0YxKMcD3NnXS6Di0Cg8DMmXyk52B6Q/gJpOtDjReaZLgNJwiLGzY
	91P5x71c/9tPnCl1JO4yGIMUfrj3CTWk/RoMwouN5HXIM1soBxDTRfaKqYvdZtU/7aWxlS3mRlZ
	EdXoXbOR5K8FjFj2LQ9fWBn4IQOH2VSqb4KfzWvcCgYeyHu8i8h8=
X-Gm-Gg: ASbGncu9b4V5FRzX1Z9cYC+V3Pf7K+ewP53sC/kg9DA9YEDlG3vXTCmuN6rZTG/qd4L
	yR1mL+mjCAwvd3ES4r2aMtVIY9b2RbNGC7jGGvp8p9rS3uo1HZx+MjxewJ2Ba1HepnUi0RRqk
X-Google-Smtp-Source: AGHT+IHfle1WkB8hMNdgdVQmDOmd4QaZWT4v0wgTm5GfdI8V7h59ToRO2ZR/SoWO0ERdwVRfmNwu88gLZsYF2MGgByg=
X-Received: by 2002:a17:907:c02:b0:ab6:d575:9540 with SMTP id
 a640c23a62f3a-abb70df619emr251466166b.50.1739626305784; Sat, 15 Feb 2025
 05:31:45 -0800 (PST)
MIME-Version: 1.0
From: Etienne Cordonnier <ecordonnier@snap.com>
Date: Sat, 15 Feb 2025 14:31:34 +0100
X-Gm-Features: AWEUYZn3w3_zJZlXZK_r1Wl5gzWm6qo7ittZaBkQcyvaAEJss87JZUMEVdrm-xk
Message-ID: <CAHUKmYaLizUAnDyGZ0Tew9LT8NR54fFdtFtBW0r5iSTpc=jziw@mail.gmail.com>
Subject: libstd-rs bug when updating to 5.0.7
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000ffb994062e2e4f69"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 15 Feb 2025 13:31:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64815

--000000000000ffb994062e2e4f69
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,
I'm working on a proper fix, but just wanted to give a heads up:

When updating from 5.0.6 to 5.0.7, a patch in binutils  (
1e47fd8e4427f9d84048139804f75b83471bab28 ) causes a rebuild of libstd-rs.
For some unclear reason, libstd-rs then installs a second version of the
rust standard library into
e.g. tmp/work/armv8a-poky-linux/libstd-rs/1.75.0/sysroot-destdir/usr/lib/ru=
stlib/aarch64-poky-linux-gnu/lib/

This then creates an error compiling rust code down the line:

error[E0464]: multiple candidates for `rmeta` dependency `core` found

followed by tons of rustc errors related to all standard rust keywords
being unknown.

The work-around is to cleansstate libstd-rs

=C3=89tienne

--000000000000ffb994062e2e4f69
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br>I&#39;m working on a proper fix, but just wanted to=
 give a heads up:<br><br>When updating from 5.0.6 to 5.0.7, a patch in binu=
tils=C2=A0 ( 1e47fd8e4427f9d84048139804f75b83471bab28 ) causes a rebuild of=
 libstd-rs. For some unclear reason, libstd-rs then installs a second versi=
on of the rust standard library into e.g.=C2=A0tmp/work/armv8a-poky-linux/l=
ibstd-rs/1.75.0/sysroot-destdir/usr/lib/rustlib/aarch64-poky-linux-gnu/lib/=
<br><br>This then creates an error compiling rust code down the line:<br><b=
r>error[E0464]: multiple candidates for `rmeta` dependency `core` found<br>=
<br>followed by tons of rustc errors related to all standard rust keywords =
being unknown.<br><br>The work-around is to cleansstate libstd-rs<br><br>=
=C3=89tienne</div>

--000000000000ffb994062e2e4f69--

