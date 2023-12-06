Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7F12DC4167B
	for <webhook@archiver.kernel.org>; Wed,  6 Dec 2023 05:02:45 +0000 (UTC)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
 by mx.groups.io with SMTP id smtpd.web10.24878.1701838957923691794
 for <yocto@lists.yoctoproject.org>;
 Tue, 05 Dec 2023 21:02:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=fI16SgPm;
 spf=pass (domain: gmail.com, ip: 209.85.208.173, mailfrom: hassanchattarki@gmail.com)
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2ca1e6a94a4so7508681fa.0
        for <yocto@lists.yoctoproject.org>; Tue, 05 Dec 2023 21:02:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701838956; x=1702443756; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=I5SFADqWe7un4bVT/LHV0kMI6BtJ8owYsx8n2uo/BsQ=;
        b=fI16SgPmY16aDm12XFy9wLeipJt2wX/I0syROPfOzy0rs0tiLNH4hW93m3nUTd9PeO
         TY5u29NsasGMLDT09f+IOgm3r+ab6SmCrSU2+ctu8UIU6664U5Qss8bKLZ+r/U/C4jnJ
         ch4yqsA70AcUuSHw/MUATnofH1trddiM0d1+WOUt+Wvc+bLoazccshJTsVaQCbHWWT41
         PI/jM43n1p679qKK/WAAxPsMJtOy5u6LNPehfpTk/k4i/0jwaIUzIK9JN2B5TONEz5Ds
         phFRQjBecldzjtA6MTCIwpzHG5pk0U0t6oePBjooDJadAqvDW8hR1aq0sh0QmlEODPZw
         PAqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701838956; x=1702443756;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=I5SFADqWe7un4bVT/LHV0kMI6BtJ8owYsx8n2uo/BsQ=;
        b=NC+3Go5rE3A0s9xcyM/GiWc3FWmfGIP3TdJmFUC5QnVmnM+7T+EoUqd5XleR51i1Zo
         EQMHYo1o47d446up6w1WQLbNKTj7pnjYlNenVinLGfls2nc6vtpGTin6BvK0j3uQ+N8F
         v0K6ZeC1MXnBfjSh4CsGWYTCuOkbbmsrihjg07zRkgos6Cb9ozDMW8iyDIMnyxF7r5pg
         phKcoPyMi9v9oSUmeo8RJJGaO7KJzejlwl5PdSPwxxma7/XrrV4cXbJrOxDA0l+vyRGk
         8I5vIeg66OtWlxVOlmZBVprnNW9Q7MPl+D9mIBfj+k42j+6xzsQAw2rPcxfxIU2ehH5o
         tvAA==
X-Gm-Message-State: AOJu0YzVUeC34MOtt98niqUzOBSGMm2wz9y63K9MLPMT58sXaMA+g2GY
	YCHgHHt7tWoOcT21GuyozSP5bvRI5VLNnEJp4iVQBihd
X-Google-Smtp-Source: AGHT+IGZkfFx7/iqaavialXf2AS3AeSwWXA6F+TUdKyylb41PnRviN2sTaR0Nlhwf+wknSaEHJBgMzE8vdETO6ubW9o=
X-Received: by 2002:a05:651c:23c:b0:2c9:f3eb:c652 with SMTP id
 z28-20020a05651c023c00b002c9f3ebc652mr139838ljn.89.1701838955407; Tue, 05 Dec
 2023 21:02:35 -0800 (PST)
MIME-Version: 1.0
From: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Date: Wed, 6 Dec 2023 10:32:24 +0530
Message-ID: <CAPJWBniiK8mg2K6SPpwofx_+aNvKHNe2PerxdDhkeRy4W3=ymg@mail.gmail.com>
Subject: Reg. Efficient methods to transfer yocto source file
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000066ed5b060bd0425f"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 06 Dec 2023 05:02:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61811

--00000000000066ed5b060bd0425f
Content-Type: text/plain; charset="UTF-8"

Hi guys,
So I have been copying and transferring yocto source files into different
partitions to test new features and to have a preexisting working build. I
generally just copy the files and I am aware that this will take a lot of
time. I was looking for an efficient way to transfer the source code as
later I will be transferring the code to my other team members as well. I
copy everything except the tmp directory.

Please share some efficient methods to transfer code.
Also is it good to use GIT to save entire source code?

Regards,
Hassan

--00000000000066ed5b060bd0425f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi=C2=A0guys,<br><div>So I have been copying and transferr=
ing=C2=A0yocto source files into different partitions=C2=A0to test new feat=
ures and to have a preexisting working build. I generally just copy the fil=
es and I am aware that this will take a lot of time. I was looking for an e=
fficient way to transfer the source code as later I will be transferring th=
e code to my other team members as well. I copy everything except the tmp d=
irectory.</div><div><br></div><div>Please share some efficient methods to t=
ransfer code.</div><div>Also is it good to use GIT to save entire source co=
de?=C2=A0</div><div><br></div><div>Regards,</div><div>Hassan=C2=A0=C2=A0</d=
iv></div>

--00000000000066ed5b060bd0425f--

