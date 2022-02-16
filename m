Return-Path: <schnitzeltony@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3B367C433EF
	for <webhook@archiver.kernel.org>; Wed, 16 Feb 2022 17:46:14 +0000 (UTC)
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com
 [209.85.215.179])
 by mx.groups.io with SMTP id smtpd.web12.2343.1645033572925496905
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Feb 2022 09:46:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=mojareaH;
 spf=pass (domain: gmail.com, ip: 209.85.215.179,
 mailfrom: schnitzeltony@gmail.com)
Received: by mail-pg1-f179.google.com with SMTP id 75so2776855pgb.4
        for <yocto@lists.yoctoproject.org>;
 Wed, 16 Feb 2022 09:46:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=qrkuzmPMapGUVP+lJlSX6aycDQwj+SFOUMtaKWZV7nQ=;
        b=mojareaH/VjwpXE/565wMeb1/+tQs5p49ahAAmDzjCbfQa98CIpkCQUohFGleyi2+p
         ZScVICmX8JI6HnMBnj0fRRswq9LruNqbnyH5aS8OL7GAEr6iIKYt8HEAA6s50UuasDiN
         XdijsdiiYEkLgXT0MWyJq7GoG34UZNYnX00nfPDxAX6XB1N81+MdZEFHRG3GyAZgSJ/m
         qeBfF45vzkkV/zltNaq3gnleN55EGLAVnQklV03DMdT8l6YfjcHd8Pbqk2g3Rwa0XrLP
         UHaA1vvxCfFlxKW9dm1gJVjBUiy5flp5brtF2yBqiGyY+6FkbGMX6EEVgIQ0vo8/KHND
         KL5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=qrkuzmPMapGUVP+lJlSX6aycDQwj+SFOUMtaKWZV7nQ=;
        b=dkHj3+JMSCwAh69nkYiQaTmwCPrjZlc4aQEzklq1TFvcIhFvzYypHxtS0Ppp7hDxy8
         kxeTRIbRU7R1Q0+XfKiQXjKySH3dqOphwiRzq4GrKcaE8p6ola1oNCMGIxUY3aP6K9yV
         9CsQGP16jxpwpSdKhngshVM0fpso50KR8tm3gWLEHAWlQHJOznAgZSeGsyEySPoE/EiG
         cOULZ3lCJkNe1BQ18/QmoIiRc44wEpY7VimcuoycihiHBYr4f4Dk2amIvn7znfsAc3Ss
         AE2WQ/HXCpumIc/L4G0vhgf7J4cbXOY0ijqvMeBADkkdSOdyldsZYu0KmxjKvNmRucrm
         Pl5Q==
X-Gm-Message-State: AOAM53004olUuf1wxPqM5RgZx+ZW2+DV5CClizNKCAuVmyqcOvM21qlV
	NfRPWJuGKdmQ/nSbBP9Tb2GctFEPAPyz0M46tFc=
X-Google-Smtp-Source: 
 ABdhPJxn8KbU4kWhYv9Weff2wrqwYNnBkaA5b6Gfx9PqQj8cQUwTE4iquqKygOeTtbNwZwuJCTX1WeDcZRGFq7yvngI=
X-Received: by 2002:a05:6a00:893:b0:4de:8a29:c12a with SMTP id
 q19-20020a056a00089300b004de8a29c12amr80126pfj.2.1645033572212; Wed, 16 Feb
 2022 09:46:12 -0800 (PST)
MIME-Version: 1.0
References: <xiVX.1644583820851020529.t8hh@lists.yoctoproject.org>
In-Reply-To: <xiVX.1644583820851020529.t8hh@lists.yoctoproject.org>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@gmail.com>
Date: Wed, 16 Feb 2022 18:46:00 +0100
Message-ID: 
 <CALbNGRSA9HoTV7yaWVs6ypg2Kbzyja2r0yU_abrNGaM-R1K+HQ@mail.gmail.com>
Subject: Re: [yocto] freecell-solver fetch issue
To: sateesh m <sateesh0457@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Feb 2022 17:46:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56211

Hi,

Isn't that [1]? I answered and got no response. Why cross-post?

[1] https://github.com/schnitzeltony/meta-qt5-extra/issues/88

Cheers

Andreas

On Fri, Feb 11, 2022 at 1:50 PM sateesh m <sateesh0457@gmail.com> wrote:
>
> Hi Team,
>
>               I am trying to install the Freecell-solver package. I am fa=
cing a problem fetcher issue. Can anybody know how to fix this issue? pleas=
e guide me.
>
> WARNING: /home/integration-team/kde2/meta-qt5-extra/recipes-kde/packagegr=
oups/kde-games.bb:do_build is tainted from a forced run                    =
          | ETA:  0:00:00
> Initialising tasks: 100% |###############################################=
###########################################################################=
##########| Time: 0:00:01
> Sstate summary: Wanted 12 Found 0 Missed 12 Current 1387 (0% match, 99% c=
omplete)
> NOTE: Executing Tasks
> WARNING: freecell-solver-5.24.0-r0 do_fetch: Failed to fetch URL http://f=
c-solve.shlomifish.org/downloads/fc-solve/freecell-solver-5.24.0.tar.xz, at=
tempting MIRRORS if available
> ERROR: freecell-solver-5.24.0-r0 do_fetch: Fetcher failure: Fetch command=
 export PSEUDO_DISABLED=3D1; export DBUS_SESSION_BUS_ADDRESS=3D"unix:path=
=3D/run/user/1001/bus"; export PATH=3D"/home/integration-team/kde2/build/tm=
p-glibc/work/riscv64-oe-linux/freecell-solver/5.24.0-r0/recipe-sysroot-nati=
ve/usr/bin/perl-native:/home/integration-team/kde2/build/tmp-glibc/work/ris=
cv64-oe-linux/freecell-solver/5.24.0-r0/recipe-sysroot-native/usr/bin/pytho=
n3-native:/home/integration-team/kde2/openembedded-core/scripts:/home/integ=
ration-team/kde2/build/tmp-glibc/work/riscv64-oe-linux/freecell-solver/5.24=
.0-r0/recipe-sysroot-native/usr/bin/riscv64-oe-linux:/home/integration-team=
/kde2/build/tmp-glibc/work/riscv64-oe-linux/freecell-solver/5.24.0-r0/recip=
e-sysroot/usr/bin/crossscripts:/home/integration-team/kde2/build/tmp-glibc/=
work/riscv64-oe-linux/freecell-solver/5.24.0-r0/recipe-sysroot-native/usr/s=
bin:/home/integration-team/kde2/build/tmp-glibc/work/riscv64-oe-linux/freec=
ell-solver/5.24.0-r0/recipe-sysroot-native/usr/bin:/home/integration-team/k=
de2/exaleap-build/tmp-glibc/work/riscv64-oe-linux/freecell-solver/5.24.0-r0=
/recipe-sysroot-native/sbin:/home/integration-team/kde2/build/tmp-glibc/wor=
k/riscv64-oe-linux/freecell-solver/5.24.0-r0/recipe-sysroot-native/bin:/hom=
e/integration-team/kde2/bitbake/bin:/home/integration-team/kde2/build/tmp-g=
libc/hosttools"; export HOME=3D"/home/integration-team"; /usr/bin/env wget =
-t 2 -T 30 --passive-ftp --no-check-certificate -P /home/integration-team/k=
de2/build/downloads 'http://fc-solve.shlomifish.org/downloads/fc-solve/free=
cell-solver-5.24.0.tar.xz' --progress=3Ddot -v failed with exit code 8, no =
output
> ERROR: freecell-solver-5.24.0-r0 do_fetch: Fetcher failure for URL: 'http=
://fc-solve.shlomifish.org/downloads/fc-solve/freecell-solver-5.24.0.tar.xz=
'. Unable to fetch URL from any source.
> ERROR: Logfile of failure stored in: /home/integration-team/kde2/build/tm=
p-glibc/work/riscv64-oe-linux/freecell-solver/5.24.0-r0/temp/log.do_fetch.2=
2394
> ERROR: Task (/home/integration-team/kde2/meta-qt5-extra/recipes-support/s=
hlomif/freecell-solver.bb:do_fetch) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 4421 tasks of which 4420 didn't need to be=
 rerun and 1 failed.
>
> Summary: 1 task failed:
>   /home/integration-team/kde2/meta-qt5-extra/recipes-support/shlomif/free=
cell-solver.bb:do_fetch
> Summary: There were 2 WARNING messages shown.
> Summary: There were 2 ERROR messages shown, returning a non-zero exit cod=
e.
>
>
> --
> Regards,
> Sateesh
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56157): https://lists.yoctoproject.org/g/yocto/messag=
e/56157
> Mute This Topic: https://lists.yoctoproject.org/mt/89070237/3617609
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [schnitzeltony@=
gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

