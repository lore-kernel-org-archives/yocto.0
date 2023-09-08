Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63016EE57C4
	for <webhook@archiver.kernel.org>; Fri,  8 Sep 2023 05:02:42 +0000 (UTC)
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
 by mx.groups.io with SMTP id smtpd.web10.32939.1694149351842855169
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Sep 2023 22:02:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=OkAkAgn7;
 spf=pass (domain: gmail.com, ip: 209.85.208.180, mailfrom: hassanchattarki@gmail.com)
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2ba1e9b1fa9so29193961fa.3
        for <yocto@lists.yoctoproject.org>; Thu, 07 Sep 2023 22:02:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694149349; x=1694754149; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=lVCWRuer50xjWxglzkdREf3AgdyX5K6xPJms7CdT3J4=;
        b=OkAkAgn7g2abpMjK8KDJ7BHV+/3LVQyGgaQlldtVgXK+qOgm4JGE2cywmHAfTZjtkb
         pNibsyy5GI53IsPttlE5Xi3Rh2tN5V1XhOdurBgfm0N/q4KqhnZs6v6QZD5H0ngboZh1
         IyKBUAbhjAuH8gQ2Q69wKMf1Bziq05IoblSQqkv5SJfkTRqpNYBBzCgsHgBHWDHuM43v
         YHwfixBNXe/R25gPkEEfsJQ4tDdkKz5NI9XpNK7bCT9c13tyUR8vmKivEKzRljIpSvy+
         FiExU3CIck1y4vTvEO7FFO5b/Q6T7+77E8EzG+tMwYqRNVTJp3UTBeiMX9pxhlcYZulQ
         H9yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694149349; x=1694754149;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lVCWRuer50xjWxglzkdREf3AgdyX5K6xPJms7CdT3J4=;
        b=vKZkFe+L+OHp03QWx3b0BF9/RaEvLYhb8a8A3bdTxmuH4f79AWSgFXmuC6PjzjlH/d
         Tf4pL+6n0Z53El3DbirP11hJAtTkOjYeN85fyo3Lbw8eE1yX8SjpQ7Obb1vH/3wskboV
         MhU+o4eQ6YeO6xWURf+WfUg7TrSIeLVdT2RW1kTufrsPWe2KfI06QJlPzhIl+D5dyoRE
         0Y6iZa5vz8iZGi4zMyiuXbUJ6sOeyKdTe8HwN/Mkm4TCCoOyc1C+87XMA/eTDb4XktYw
         kEko9zl19fCaNRQS1ghjHv5O8iRjpmNhMGWnQHXeeru7yZ4qpHKNNy3jMTerZ/Pw8MjG
         lGkQ==
X-Gm-Message-State: AOJu0YzSOuD7NUm0wJMYWSr9tTEXYoTKdS8A0ZXYbI9p2/towJUE7kwj
	WxHkqIWiLhP+t8pPjwIzYcskKM01dV4b8FUwHFlaqgfR
X-Google-Smtp-Source: AGHT+IGbjF94Ma623QmdbuTKCZP50N++SuzJK4zrLApORCgqYIP3e1cHv5JJHD6s44dPoYebclXaDMAUrBLgxnnM2qk=
X-Received: by 2002:a2e:9782:0:b0:2ba:6519:c50f with SMTP id
 y2-20020a2e9782000000b002ba6519c50fmr783132lji.52.1694149348443; Thu, 07 Sep
 2023 22:02:28 -0700 (PDT)
MIME-Version: 1.0
From: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Date: Fri, 8 Sep 2023 10:32:17 +0530
Message-ID: <CAPJWBnisV-nmDrv5S09Z5tZemgBf76Qp_+dpeDsX_b0n1hKDZg@mail.gmail.com>
Subject: Memory requirements for building images with different architectures
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000001c4af90604d1e231"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 Sep 2023 05:02:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60941

--0000000000001c4af90604d1e231
Content-Type: text/plain; charset="UTF-8"

Hi guys,
I wanted to build images for different architectures and machine types on
one SDK. I know that the build directory takes a lot of space (in my case
more than 90 GB). What to do in such a case.
Are they any efficient techniques that you can share with me?




Thanks and regards,
Hassan

--0000000000001c4af90604d1e231
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi guys,<div>I wanted to build images for different archit=
ectures and machine types on one SDK. I know that the build directory takes=
 a lot of space (in my case more than 90 GB). What to do in such a case.=C2=
=A0</div><div>Are they any efficient techniques that you can share=C2=A0wit=
h me?</div><div><br></div><div><br></div><div><br></div><div><br></div><div=
>Thanks and=C2=A0regards,</div><div>Hassan</div></div>

--0000000000001c4af90604d1e231--

