Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C26B5E77173
	for <webhook@archiver.kernel.org>; Fri,  6 Dec 2024 12:15:40 +0000 (UTC)
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
 by mx.groups.io with SMTP id smtpd.web11.35419.1733487334371574050
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 Dec 2024 04:15:34 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=T1nQXiML;
 spf=pass (domain: gmail.com, ip: 209.85.218.52, mailfrom: hassanchattarki@gmail.com)
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-aa5f1909d6fso386461066b.3
        for <yocto@lists.yoctoproject.org>; Fri, 06 Dec 2024 04:15:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733487332; x=1734092132; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=GIejXtleLekF11Nt78JzKhQKa4JDs/r2h8BfPP8DTdE=;
        b=T1nQXiML/LermttnoYFYOrSuNuZXFkgHvxbEEQUFsDRm5Chkc5wEuczekWX15e9GQD
         pHBt7bfoo0g5qiw8krWzfAHP3KcJoxAqn9jheTHjO2dUB3Dh+1Qx7S+5/nYyFYnmb0lH
         mIFwKglJOpuFDeG0VxKKc9VeVDV27Wga6vQZN0XK16rQcbsYW2cH8FnT9umKNWlbjAIH
         xEzV7IhtnAqeenBkK8TWBtXxFFBTL50vbkcKotTXyA9tXAeNbqO0Nv0EmZ+Gm2kydqK/
         0/IQ3KS8IbyhiA0e5ljnr6zUiI7A8o6kHwdlB93aODJ1RyQJJVX/iO6OgstY23zYTLt5
         WfqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733487332; x=1734092132;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GIejXtleLekF11Nt78JzKhQKa4JDs/r2h8BfPP8DTdE=;
        b=pz7zV1e7P777tVUbd2ZgENiec8gej4UjjOEyPt1B44Gr7F042gau8chjqpZxcY/AUN
         yGO3MJvGJ20rin/njn/xJM4PV0rvuJzWyEl/H3GMexEaoaJ9HbkNZiIi6ADMMuLlY2j2
         7AnjQ6fws7WTTOvbXhiZjD/RoiRTXsk4nU8WbPBuP2IJ1xO5YZjq/By4lKbpiSQvEY/y
         A1br6AYWjUaEVAt5sNV9t9zvHlSqgs5Wpb5daeQQw3qz5i2WLhxtV7XMj7/3Hq48iQQC
         JDv88JXhFDYhdkTpLAMirpE+XnuEfiz4ldV8XIvUQPYJaEPyWhadKevUkKPa9SN1xKvw
         1MQA==
X-Gm-Message-State: AOJu0YwId1h+oHrRjsHY6VBQJYIqr/7WVcoNwJPKgPu3F+vxH+WLaTLf
	LWLI2IGeQtKPk119/oWVoLxFlbb8h4TsfFJnQoC61mGGpRfsbz35qpu0zeOODEWP9uheKFBRzey
	JCOFP8S2aK1fAZUL+WZXAKKQtg/5Cqg==
X-Gm-Gg: ASbGnctqb+2hTOo+isJEVenTMotmBy17J5Obd/9fTQIsOtTzXqnqrgLWPopGCboCaPz
	s8NBUabnb7zHLn4fVDAdjDTdTRZL978xqrEp+tLb6kd1WxIayfGou6Ixh+z3eUCdH
X-Google-Smtp-Source: AGHT+IE9jP86U7Ppnx45DjPGlKxXgPbsLyVZxAfIM8BR2I/msOU1Dh4iDCCEedEIUJsLdVre9Ybfmp7r8PXibxP+Ogo=
X-Received: by 2002:a17:906:4d1:b0:aa6:19c9:ad08 with SMTP id
 a640c23a62f3a-aa63a20d60bmr202487366b.48.1733487332162; Fri, 06 Dec 2024
 04:15:32 -0800 (PST)
MIME-Version: 1.0
From: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Date: Fri, 6 Dec 2024 17:45:21 +0530
Message-ID: <CAPJWBnjo6NeUOjpGWrbUkxSLSq_iFtqDawCo5LzKKuP=D1s11w@mail.gmail.com>
Subject: How to add ARM trust zone TA and CA in my os image
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000a8084f062898f8b6"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 06 Dec 2024 12:15:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64411

--000000000000a8084f062898f8b6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi guys,
I want to add ARM TA trusted application and CA client application to my os
image. I am using yocto dunfell 3.1.11 and yocto kirkstone.
Can you guys share some documentation that can help me with this? I have
seen YouTube videos but none talk about the how to add them to the image.
If TA runs as a kernel module or through any other  method.
I know it=E2=80=99s not exactly related to yocto but at least how I can add=
 it to
my build will help in some way.


Thanks
Hassan

--000000000000a8084f062898f8b6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi guys,<div dir=3D"auto">I want to add ARM TA trusted application and CA c=
lient application to my os image. I am using yocto dunfell 3.1.11 and yocto=
 kirkstone.</div><div dir=3D"auto">Can you guys share some documentation th=
at can help me with this? I have seen YouTube videos but none talk about th=
e how to add them to the image. If TA runs as a kernel module or through an=
y other =C2=A0method.=C2=A0</div><div dir=3D"auto">I know it=E2=80=99s not =
exactly related to yocto but at least how I can add it to my build will hel=
p in some way.</div><div dir=3D"auto"><br></div><div dir=3D"auto"><br></div=
><div dir=3D"auto">Thanks</div><div dir=3D"auto">Hassan</div>

--000000000000a8084f062898f8b6--

