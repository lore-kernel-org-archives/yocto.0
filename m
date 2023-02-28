Return-Path: <satishroyal4u@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE8D3C64ED6
	for <webhook@archiver.kernel.org>; Tue, 28 Feb 2023 13:12:08 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.web10.22706.1677589927843068117
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Feb 2023 05:12:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=L0D29404;
 spf=pass (domain: gmail.com, ip: 209.85.128.54, mailfrom: satishroyal4u@gmail.com)
Received: by mail-wm1-f54.google.com with SMTP id t25-20020a1c7719000000b003eb052cc5ccso9054661wmi.4
        for <yocto@lists.yoctoproject.org>; Tue, 28 Feb 2023 05:12:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=0YskAzZKLtCwEDqwi2EZQ/yitAj2WAISpO12cQ2TPek=;
        b=L0D294046YAfv6u/50FneCwWgiNRizRzHUlrkSJI4T7iYEn+xEjYA38JdFD2mByaPF
         5RdiaXGx/8CyoSnRSgS3W7IHqhFlIZSASqEEoASB+wvp+ZHJrtxVLfFZGm/2u21xJcaX
         Lz86JkMZuO4U6tyti2HPCmnVRlcEM5aiByZWHyWvuzb1anRi7PxqycHdh4q1GxmwBfEo
         vER/klC/xhIdbcIKutlYC7kc+YxFLYJmIPgisj7h9yvA6VaqtGAY7g1jWgysHjlM+D1L
         mbapgzhPsqI9nBvFwQgIZQkX0hI3rH3Uvp6fSHSHny93JWaPjNbwvnl9E6DgZFrpm20e
         Y0nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0YskAzZKLtCwEDqwi2EZQ/yitAj2WAISpO12cQ2TPek=;
        b=a8LcaLSgFI1zlXNZh3f/fE4h1xiMSp5Dx79UmWm6AQDM93syOdj6JLuKh9kyVxJme9
         /qTiXwaNdagyAp0EJbp72mDxH8pJKMck8btB0vpdw+NU+2RoijdJOyatD4lvPwb1tHfV
         LXb87VgifDG2fhkZbq0UwrfXNYacI8sEfQg99WRMzYJiN5fHsEJIjWU6cSE+PipwjIXf
         DrEzb9cyP9WxQagv/cDFYAF59PaBnaOZ4+kK63slDBdCR88RO7BkC0XNsd0VJ81i/3pz
         nVYynij9MHo4uzgMejJxeIh2+Ctm+lHqxBlEFuNSO6cfUXSqtgLWuSvgwE3i70xcEPSp
         z3tg==
X-Gm-Message-State: AO0yUKUGG72Ffejp2XIlNSjBiW88Q+4yqrZoSlXGKBB1jMikAResGtER
	ppZwKd/aMY6KRF6oqQvCNpibXGSNw0g1LptgJtgwMhOI
X-Google-Smtp-Source: AK7set8t2UK+vvNu9TGbSyvEAxLzf1Xw+U4HWg+XuUmJSW6JdcIWw+zxHFBXIixlsevwHv6B4MBnKfvHXn5p7sPnbr4=
X-Received: by 2002:a05:600c:a383:b0:3df:d852:ede2 with SMTP id
 hn3-20020a05600ca38300b003dfd852ede2mr771198wmb.0.1677589925928; Tue, 28 Feb
 2023 05:12:05 -0800 (PST)
MIME-Version: 1.0
From: Satish Yaduvanshi <satishroyal4u@gmail.com>
Date: Tue, 28 Feb 2023 18:41:54 +0530
Message-ID: <CAGugOWuaFdNpg=kDMoO5XfzkBX5Zs+erZ1FMVHY9S9kx8wRCjQ@mail.gmail.com>
Subject: Reggarding yocto recipe build time
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000009d210505f5c25778"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Feb 2023 13:12:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59322

--0000000000009d210505f5c25778
Content-Type: text/plain; charset="UTF-8"

Hi Team,

I am  new to the yocto project and am going through the project document
for better understanding.
I would like to know on how to measure the compilation time that will be
taken for each yocto recipe

could anyone of you help me on this

Thanks,
Satish

--0000000000009d210505f5c25778
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br clear=3D"all"><div>Hi Team,</div><div><br></div><div>I=
 am=C2=A0 new to the yocto project and am going through the project documen=
t for better understanding.</div><div>I would like to know on how to measur=
e=C2=A0the compilation time that will be taken for each yocto recipe</div><=
div><br></div><div>could anyone of you help me on this</div><div><br></div>=
<div>Thanks,</div><div>Satish=C2=A0</div><div dir=3D"ltr" class=3D"gmail_si=
gnature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=
=3D"ltr"><div><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=
=3D"ltr"><div><br></div><div><br></div><div><font face=3D"arial black, sans=
-serif"><br></font></div><div><font face=3D"arial black, sans-serif"><br></=
font></div></div></div></div></div></div></div></div></div></div></div>

--0000000000009d210505f5c25778--

