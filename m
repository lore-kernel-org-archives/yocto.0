Return-Path: <ecordonnier@snap.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ED4F0C3DA70
	for <webhook@archiver.kernel.org>; Tue, 30 Jul 2024 17:04:41 +0000 (UTC)
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
 by mx.groups.io with SMTP id smtpd.web10.22619.1722359072972322974
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Jul 2024 10:04:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@snap.com header.s=google header.b=TQxYvEwR;
 spf=pass (domain: snapchat.com, ip: 209.85.167.42, mailfrom: ecordonnier@snapchat.com)
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-52f0277daa5so7679426e87.0
        for <yocto@lists.yoctoproject.org>; Tue, 30 Jul 2024 10:04:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=snap.com; s=google; t=1722359071; x=1722963871; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=WObfrHKJ+/SQPjoTWePaTi2cN9kn7ukf2p4eRTEEwcw=;
        b=TQxYvEwR7SVnf33R1QWtd5VPK3RRupXaPWvxCosUnwmD7TwDiXA7yQxw3eLwnTqxPI
         xP7f1PTfmxk11zREY/6nfxRqvaLZL1gMp+85Y23F5ehVcUFcU2ynbm3+jt/xgsX/GaHJ
         +Nz+LqqJzsgnkQGGhigncrn0IcVcj3GHpZvRk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722359071; x=1722963871;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WObfrHKJ+/SQPjoTWePaTi2cN9kn7ukf2p4eRTEEwcw=;
        b=TWR/ltyONwyStxoAnsi6PY8UYeSzyyau0GB/mNNGaS6GQVI8XfPmeQBP5prECkSqHJ
         PrYX2gW2/h4iIf/6T4uo6b9X24/udWIxAO13tI/1whTGU8kxglQSNGM0sZyhrdy/Brvg
         XhsJSCIr7ixAP9SS0c8E8HqakuypNFR6xJxV9Sl/Grj9xrinvf8GGdHnq3SYY2+Bc3M7
         4XuwFP/x55Ot5MzKKv5oo3CyWn+34LcikZdyuppwRmu9uLnD0Q0o4gMu8hllEkAY+nlf
         mzkEIUnpxyxiVknyswYAeMQFBovAe5nyjBtPwBVT4oRMho1i3fx8dvYw4MMmwKNqhJye
         XYEQ==
X-Gm-Message-State: AOJu0Yw5K44Ws03t4xZ4Om958DF9X34h8uMZCVgz6ZIvMZPo+ILgTxVT
	bnwEO8eTz5ca7yYJePBHOyC2vzYl7QEdqGk3NsXaFgOgs5Bw7mmcXaEUWoQ5slcV+y3hWn8Pz1F
	noDJ/8YFfCiJ4jsSEy3M+dQHPxk1WlaFwMZ7QJg1aMDX6rZm3tez+kw==
X-Google-Smtp-Source: AGHT+IFNmMgZ3XIHTXoXTi7XZPIhhTBnU4aRXj/qD0thV9O+NRuauIIwqZG4tj4dehDlf0w6BOVQ3fog/kday0dfT10=
X-Received: by 2002:ac2:4db6:0:b0:52f:cd03:a850 with SMTP id
 2adb3069b0e04-5309b27d44fmr7989363e87.32.1722359070603; Tue, 30 Jul 2024
 10:04:30 -0700 (PDT)
MIME-Version: 1.0
From: Etienne Cordonnier <ecordonnier@snap.com>
Date: Tue, 30 Jul 2024 19:04:19 +0200
Message-ID: <CAHUKmYbbd_LgaHVaHzZt_JqHFVvaMDr25ZouS=Nnw6jrZxnCGg@mail.gmail.com>
Subject: Meta-gplv2 replacement
To: yocto@lists.yoctoproject.org
Cc: Khem Raj <raj.khem@gmail.com>
Content-Type: multipart/alternative; boundary="00000000000094a4b1061e79f84b"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 30 Jul 2024 17:04:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63608

--00000000000094a4b1061e79f84b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,
I saw in the latest yocto-status email that this page was created regarding
meta-gplv2 replacement:

https://wiki.yoctoproject.org/wiki/Meta-gpl2_layer_replacement (thanks Khem=
)

I'd like to remind of the option to use uutils-coreutils from
meta-openembedded/meta-oe/recipes-core/uutils-coreutils as a replacement of
GNU coreutils (using PREFERRED_PROVIDER_coreutils =3D "uutils-coreutils"). =
It
is much easier than transitioning from coreutils to e.g. busybox, because
the options used are the same in GNU coreutils and uutils-coreutils, while
busybox uses different options.

The caveat at the moment is that uutils-coreutils is still in beta phase,
so some flags are still buggy. However the vast majority of the common
flags work without any issue.

=C3=89tienne

--00000000000094a4b1061e79f84b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br>I saw in the latest yocto-status email that this pa=
ge was created regarding meta-gplv2 replacement:<br><br><a href=3D"https://=
wiki.yoctoproject.org/wiki/Meta-gpl2_layer_replacement">https://wiki.yoctop=
roject.org/wiki/Meta-gpl2_layer_replacement</a> (thanks Khem)<br><br>I&#39;=
d like to remind of the option to use uutils-coreutils from meta-openembedd=
ed/meta-oe/recipes-core/uutils-coreutils as a replacement of GNU coreutils =
(using PREFERRED_PROVIDER_coreutils =3D &quot;uutils-coreutils&quot;). It i=
s much easier than transitioning from coreutils to e.g. busybox, because th=
e options used are the same in GNU coreutils and uutils-coreutils, while bu=
sybox uses different options.<br><br>The caveat at the moment is that uutil=
s-coreutils is still in beta phase, so some flags are still buggy. However =
the vast majority of the common flags work without any issue.<br><br>=C3=89=
tienne</div>

--00000000000094a4b1061e79f84b--

