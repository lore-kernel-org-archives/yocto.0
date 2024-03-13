Return-Path: <saswatinayak2010@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3741FC54E58
	for <webhook@archiver.kernel.org>; Wed, 13 Mar 2024 10:39:01 +0000 (UTC)
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
 by mx.groups.io with SMTP id smtpd.web10.13293.1710326332559648619
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 Mar 2024 03:38:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=KmupH7w/;
 spf=pass (domain: gmail.com, ip: 209.85.167.50, mailfrom: saswatinayak2010@gmail.com)
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-513c53ed3d8so963643e87.3
        for <yocto@lists.yoctoproject.org>; Wed, 13 Mar 2024 03:38:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710326330; x=1710931130; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=eb37a93Hme1zvICQX9UW8sl0QB4gC9AN6ac+52HEk78=;
        b=KmupH7w/mNI+qky9ds4Je9bjHvsNRlsdh1WsyiZwK/EU1h9DfERFle39+Ncx4n/c1i
         7cXD324KuKSjlTVv8NHFsQ6tWedcDLkaUMu9dGc3qiWApKKh0dtZHVGcHPMcVm7W6wUz
         Qgy3PhCUFJ/yx/hVY2pC6BQgpEjOxE4547hSvLm/k0U5CwiYccOsppfWALcVlm8Vs+6q
         Qesumzd3QGJLMfWy7uEz0rJy48hXiFbBs8JgSg6q9klBFO3gjpp6iuyQcZrhEaSaxr2f
         1I33LooYsHy8NZVNE/e5WHebP87ZEuHc6mnpQ2ntwyAJl3F2sgs+FeRqMUw5ZXhtKhkf
         GLsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710326330; x=1710931130;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eb37a93Hme1zvICQX9UW8sl0QB4gC9AN6ac+52HEk78=;
        b=b0CDUxLdq24hVgLRmaFj0nh7vt6hYjn7TrbRdUxNqWt5AUgCTigZyF9uCokgFT9T3i
         r7y3ZEewoSzFEzqF3KrGbz5qCfuv/tUV74lZVS1Ct2ecXbxEtclnSaCzd8ZCb9C8qQUT
         5fr9epvUnsN4p65AdVtVbAu8+k3BiJlk449izvgAouMRMgq7+/pgjd0ieFl1Ln5KxLIG
         YROekejx091h+xuVg/onNJwDobxmWGM35j1kFxjv5TTSZwK8g0eyLcTPkYrjLNH8AEWT
         nPGtRDh1sEsCyTamkSi0xlcf/eeBzKubGxGmlTkXjafyLLNS3gcKGxm60ywB92oEJAfb
         abuQ==
X-Gm-Message-State: AOJu0Yx+5g2LQiLQjKQiAA+YagSW7Z8rhGkBu4kpZqPighPzDXIb7kHq
	zprOKjhknYFuxWt90I/Scl1DE5AutaLW2nfBtK5NUFbltSZX+3nzYCPx7WJguPwZJ44cbHsZVYr
	XWk9A8BT8KXO7yeLe83T+Y1lYmSg464y8XRU=
X-Google-Smtp-Source: AGHT+IGAHGJ4DaxcmDVMaFe5v9FYnhf+AIddPKTa3mxeJVLXBHtvaNwgtpzsMPXgyl0hWxlJTrsHnjCenJIg/eF7NDE=
X-Received: by 2002:a05:6512:3d06:b0:513:bf23:ce3 with SMTP id
 d6-20020a0565123d0600b00513bf230ce3mr2475495lfv.62.1710326329942; Wed, 13 Mar
 2024 03:38:49 -0700 (PDT)
MIME-Version: 1.0
From: Saswati Nayak <saswatinayak2010@gmail.com>
Date: Wed, 13 Mar 2024 16:08:38 +0530
Message-ID: <CAKe-BNpj9=keyNj9SaHeHouFNzbFXW-De=mQ2qA4TOVURc32og@mail.gmail.com>
Subject: How to use a single directory in multiple layers.
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000058ab490613886184"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 Mar 2024 10:39:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62748

--00000000000058ab490613886184
Content-Type: text/plain; charset="UTF-8"

Hello All,

         I require guidance on utilizing a file directory present in the
'meta-x' layer while also needing access to the same directory within the
'meta-y' layer.

How can I achieve this while keeping the directory centralized in one
layer?


Thanks & Regards
Saswati

--00000000000058ab490613886184
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello All,<div><br></div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0I require guidance on utilizing a file directory present in the &#39;=
meta-x&#39;
 layer while also needing access to the same directory within the=20
&#39;meta-y&#39; layer.=C2=A0</div><div><br></div><div>How can I achieve th=
is while keeping the directory=20
centralized in one layer?=C2=A0=C2=A0<br></div><div><br></div><div><br></di=
v><div>Thanks &amp; Regards</div><div>Saswati</div></div>

--00000000000058ab490613886184--

