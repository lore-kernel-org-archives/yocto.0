Return-Path: <mklntf@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 22F0EEB64DC
	for <webhook@archiver.kernel.org>; Tue, 18 Jul 2023 06:44:38 +0000 (UTC)
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
 by mx.groups.io with SMTP id smtpd.web11.2322.1689662670224694321
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Jul 2023 23:44:30 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=Ubk+eILH;
 spf=pass (domain: gmail.com, ip: 209.85.167.54, mailfrom: mklntf@gmail.com)
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-4fdd14c1fbfso57366e87.1
        for <yocto@lists.yoctoproject.org>; Mon, 17 Jul 2023 23:44:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689662668; x=1692254668;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=urOn6wrCv+g5qNbOymr/z0Aw81n96LLtWrDIG4PPTHQ=;
        b=Ubk+eILH3X+m+d3SRBlvHV70QRkpXwRcgR/36b+aSVnqG6r593VI0fB/Pa3wUjlZsZ
         YFh+T6UwhIGY4zDXrXjN2u/t+k/Md9cRs8lV70Nz3I9EKnNmMZC7Bx3RoCAeOJtkx4ZU
         DCv18E7kY4hiOJCYfgx0jA6cbD2C0F7w3zebjjL1C+wZ0QSdn0MSckN1kFm0UAX+Q824
         a7Y5fOykjQDPVd5BmUH0NKHr6u+21X5il0+eDd2jOwFZ46uxlkU3abd2qqy4C9gT1nFw
         bCz0kxcWEa4W3yAuLqab1GaUqffDMMLkN7S4b+uuQ5KVAKkBJAfgSDPpeEr1Zl9/dCds
         /MHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689662668; x=1692254668;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=urOn6wrCv+g5qNbOymr/z0Aw81n96LLtWrDIG4PPTHQ=;
        b=X6cdxfdloquUoEZGVhUMJWIY5UPxOQFbLpf1CC/M31FeBslJZcci288s0jkJQp0hmE
         zgh2nQjBLVcJ6XFQ8Jqlap5GfSB/uCza4w8gYt0b1sc0nOvFIPHp6Oj1HXXK89hYH3LM
         SAD/XWO2G8+fUFLsM7P2VlbNghDojfVsIBJY/EOPiq78CGbLwmsPg8PI2DmcPLRGEpv9
         b0vkEof/pdCitZqgUcXL4wWz0Dvip9l2fKFPEvHHVzE3n2Js85n6uej7wK2TWHp6EZQ7
         klaeSKLbNigICyzodaaOBLHuDJ7nfwyylNlD9YsBhY6ksLH2JTaZ7ny37rLAEIFzxBsZ
         9NMg==
X-Gm-Message-State: ABy/qLajcmZdlRzXk9JJ+RkyXoYEsOY099R3/S6z5ex5tKDR1au4CS9L
	1fbL9WWVEWyIFtVlx+9tsq1dPMqSvg0155VcGZEtbkU3eN8F7w==
X-Google-Smtp-Source: APBJJlETS69YVYmVV/fBbOn8p1sHKloQjH9oo1Rtm+3/vrgEqNw0iKgK+wP1ybV8zaH+JBWlLCHyKge83bPzxG39S5A=
X-Received: by 2002:a05:6512:10d6:b0:4f9:51ac:41eb with SMTP id
 k22-20020a05651210d600b004f951ac41ebmr9678366lfg.16.1689662668028; Mon, 17
 Jul 2023 23:44:28 -0700 (PDT)
MIME-Version: 1.0
From: Markus <mklntf@gmail.com>
Date: Tue, 18 Jul 2023 08:44:16 +0200
Message-ID: <CADv+qudGyLVyVKJ-qK4jzvfPaPfgrzwWjxFyx=oC2zctkyKx=A@mail.gmail.com>
Subject: Question about x86_64-poky-linux in the Standard SDK
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 18 Jul 2023 06:44:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60602

Hello,

I built a Standard SDK using dunfell branch and got the following SDK:
brel-glibc-x86_64-brel-core-image-core2-64-apc-toolchain-0.0.14.sh.

If I run ldd on tools in the x86_64-pokysdk-linux sysroot I see that
the my host libc seems to be used instead of the libc inside the
x86_64-pokysdk-linux folder.

markus@pc:/opt/brel/0.0.14/sysroots $: ls
core2-64-poky-linux  x86_64-pokysdk-linux
markus@pc:/opt/brel/0.0.14/sysroots $: ldd
x86_64-pokysdk-linux/usr/bin/x86_64-poky-linux/x86_64-poky-linux-ar
        linux-vdso.so.1 (0x00007ffe02de9000)
        libfl.so.2 =>
/opt/brel/0.0.14/sysroots/x86_64-pokysdk-linux/usr/bin/x86_64-poky-linux/../../lib/libfl.so.2
(0x00007f86a37bb000)
        libc.so.6 => /usr/lib/libc.so.6 (0x00007f86a35b3000)
        libm.so.6 => /usr/lib/libm.so.6 (0x00007f86a34c6000)
        /opt/brel/0.0.14/sysroots/x86_64-pokysdk-linux/lib/ld-linux-x86-64.so.2
=> /usr/lib64/ld-linux-x86-64.so.2 (0x00007f86a3913000)

markus@pc:/opt/brel/0.0.14/sysroots $: ls x86_64-pokysdk-linux/lib/libc.so*
x86_64-pokysdk-linux/lib/libc.so.6
markus@pc:/opt/brel/0.0.14/sysroots $: ls x86_64-pokysdk-linux/lib/libm.so*
x86_64-pokysdk-linux/lib/libm.so.6

Is that normal behaviour? I though the SDK should be self contained.

Thank you,
Markus

