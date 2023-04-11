Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65631C76196
	for <webhook@archiver.kernel.org>; Tue, 11 Apr 2023 07:20:40 +0000 (UTC)
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com [209.85.160.50])
 by mx.groups.io with SMTP id smtpd.web10.7857.1681197633325804580
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Apr 2023 00:20:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=l7EftHrh;
 spf=pass (domain: gmail.com, ip: 209.85.160.50, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-1842df7cb53so8739193fac.10
        for <yocto@lists.yoctoproject.org>; Tue, 11 Apr 2023 00:20:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1681197632;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9fW4nrrmoNi7wXU9STehoM2RakwpWCbh7W5K0UiUJ3Y=;
        b=l7EftHrhQbt1B7nBDbSfzaUYQKdL47v+ZmSxbPS7sv2ScOq35Flb/plLrI+xlZF4xD
         uehFibwa5357ZWZifEyx7MxabzfWzXeK1+edRg4oEOMe93x9gGZXpjAspjpDOPDxjcyu
         2Cy1hO0u3LZHBTi7NM20+0zP0WtLne7boBK5t5Tluyl7wMi8fslYPjsdym55+GWMTX1a
         qfCZyNbqdQXJCZNpYQ+qP7ZgSPVwyBMNfGJjGqHvoHnk+Ku88vH88W4wuU6I1OoyfmCl
         rUD9h/iUbReq4zOQWf5CLMGdr6vnQAgfr+zc4Tygt2sGQw+9c85Q6J5dnG8KVuZi4zpg
         ko+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681197632;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9fW4nrrmoNi7wXU9STehoM2RakwpWCbh7W5K0UiUJ3Y=;
        b=VFBVevqHGcymhOPg1ewx+oUOAGjULRC3HpoEQ/hBgXwHJqLVBW6mW6Hew28QaBI6i6
         f9g2P30qg69LzR4Cr10iVQoNiy31RKQaa3xa737ytTR05lLBkXm3B7eMlGNciyBohDZI
         pv2PGuj4KFFzqPiEZpDzxEkaPcdHt2/I6Yum730vf+haeh0OQhN6Ecky/SjePK9xP5vK
         YHPKJ1Po+avczW+K3Z+FN399ksnNKFjjH+Jo5vSutew2v8ThXX2KvImDDrE02hjHDQnb
         86770+1IjRB+St6IQYalLqO7X3enGYoVAYJSJGzTxcniXy5Oua+8xB72jkaOj7lu30PT
         pARA==
X-Gm-Message-State: AAQBX9dZBHxi71GGCutaa1elHLs1BBqRRMtrw7OzEoocjcbumX2QrLC8
	dVDS1VhnDJC+431OJGNKRzKmw4cnkl8Y1cTR2Ao=
X-Google-Smtp-Source: AKy350Yco2Asl37eUfJ4SOmeXyS15pTMz/cdHP8D9bi4AFX1nICNZi/40F7Z+MBTUTsKjatMibUw6LmVdL96s/2mqZI=
X-Received: by 2002:a05:6870:3126:b0:184:5ab4:804f with SMTP id
 v38-20020a056870312600b001845ab4804fmr1278351oaa.2.1681197632469; Tue, 11 Apr
 2023 00:20:32 -0700 (PDT)
MIME-Version: 1.0
References: <CAMKF1srFjLA0S+TOprWbfOV4er40E2KQ7GOkW7S=2_JgeKy0yw@mail.gmail.com>
 <10320.1681197193406830686@lists.yoctoproject.org>
In-Reply-To: <10320.1681197193406830686@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 11 Apr 2023 00:20:06 -0700
Message-ID: <CAMKF1sq8ua5kXuoYz1x=8_yGfL3cMYRWqTnuQD_iKkj9Hd=75w@mail.gmail.com>
Subject: Re: [yocto] Missing .o files.
To: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Apr 2023 07:20:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59673

On Tue, Apr 11, 2023 at 12:13=E2=80=AFAM MOHAMMED HASSAN
<hassanchattarki@gmail.com> wrote:
>
> Hi Khem,
> Thanks for all your support.
> I added the following lines in my recipe file.
> do_install() {
> install -d ${D}${bindir}
> # install -m 0755 /home/mohan/amlogic/meta-c/recipes-example/zigbee/files=
/gecko_sdk_suite/v3.2/build/Z3GatewayHostm/build/exe ${D}
> install -m 0755 /home/mohan/amlogic/meta-c/recipes-example/zigbee/files/g=
ecko_sdk_suite/v3.2/build/Z3GatewayHostm/build/exe/hostforEdge3 ${D}${bindi=
r}

> # chmod 0755 /home/mohan/amlogic/meta-c/recipes-example/zigbee/files/geck=
o_sdk_suite/v3.2/build/Z3GatewayHostm/build/exe/hostforEdge3
> # cp /home/mohan/amlogic/meta-c/recipes-example/zigbee/files/gecko_sdk_su=
ite/v3.2/build/Z3GatewayHostm/build/exe/hostforEdge3 ${D}${bindir}


> }
>
> bitbake zigbee works fine but bitbake lib32-amlogic-yocto returns the err=
or message.
>
> ERROR: lib32-zigbee-0.1-r0 do_package: Fatal errors occurred in subproces=
ses:
> Command '['arm-pokymllib32-linux-gnueabi-objcopy', '--only-keep-debug', '=
/home/mohan/amlogic/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueab=
i/lib32-zigbee/0.1-r0/package/usr/bin/hostforEdge3', '/home/mohan/amlogic/b=
uild/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-zigbee/0.1-r0=
/package/usr/bin/.debug/hostforEdge3']' returned non-zero exit status 1.
> Subprocess output:arm-pokymllib32-linux-gnueabi-objcopy: /home/mohan/amlo=
gic/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-zigbee/0=
.1-r0/package/usr/bin/hostforEdge3: file format not recognized
>
> ERROR: Logfile of failure stored in: /home/mohan/amlogic/build/tmp/work/a=
rmv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-zigbee/0.1-r0/temp/log.do_pa=
ckage.246282
> ERROR: Task (virtual:multilib:lib32:/home/mohan/amlogic/meta-c/recipes-ex=
ample/zigbee/zigbee_0.1.bb:do_package) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 5830 tasks of which 5825 didn't need to be=
 rerun and 1 failed.
>
> Is it because of the compiler in the makefile?

you need to build for 32bit as well. I think you are building these
binaries outside yocto and then weirdly mixing the install. So perhaps
that should be fixed first maybe.

> Is it possible to bypass this error.
>
> Please guide.
> Thanks and Regards,
> Hassan
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#59672): https://lists.yoctoproject.org/g/yocto/messag=
e/59672
> Unfollow This Topic: https://lists.yoctoproject.org/unft/98191767/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
thats

