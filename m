Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5750DE71D40
	for <webhook@archiver.kernel.org>; Fri, 29 Sep 2023 14:47:59 +0000 (UTC)
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
 by mx.groups.io with SMTP id smtpd.web10.19339.1695998878359686880
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Sep 2023 07:47:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=HPRwCO82;
 spf=pass (domain: gmail.com, ip: 209.85.208.47, mailfrom: hassanchattarki@gmail.com)
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-53406799540so12752483a12.1
        for <yocto@lists.yoctoproject.org>; Fri, 29 Sep 2023 07:47:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695998876; x=1696603676; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=gr2kTDsVEPQ9IrKGkXpuMN5WeXp9ChckmJiHg0F1UGA=;
        b=HPRwCO82Anv3XvK13Ypa9B23Xj2TwwqL69Dpm04KhzZR4TEA1Jfi0m3eSuw78WnwOz
         mo9hw14D3S+c9LZqdvvCH2hkWAZkasvR2qZmkecRXzGa5hqT1YPrl5LyFHiaJGzrxDw4
         LGkiRFAOH/J1kdAzDIW2WPK/szSoBVfU9DyB414liINc+phpCRnsgd/ZJVnpJ9YHmLi2
         u3Tli3z369ZqfnGLbI5fkwlWOsKtnYZxfJlA5M98Gq4xvTTkmDmwucvusOdRyB3MEPE+
         8EGR1/15QXmN+PO91AhEORMNOFpf8+lhnhv0i535qstYEJ1LT0J99cdcvOXuWbgxigky
         /dNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695998876; x=1696603676;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gr2kTDsVEPQ9IrKGkXpuMN5WeXp9ChckmJiHg0F1UGA=;
        b=lyIU7RiWDt+DqGTfwnoGIoAadeCDKFZOv2frVETa3LW6TWVrUJ2nc5KDhyBvK/UkxL
         3hmE4ktd7miWKin4/ZUF+yomcmGvIUloIjnPNYVhrS2WP/zIBbacZLwQfG9OqAl052Sp
         /vojRx+tE+mtKzfqg4ooFbYZduWtPyVPCZIwPK6EB7DJXBOyV/lNB+z+o53UdKWXh4vx
         NwUbNBkzC9RiMm8Y4W9o/+Nhc2dpQVOLaultgqrPlHXUfdocW35EXWFnHLDK/o2zTPbd
         WJQfnc1zcZ3t6IIHVEFKCniWKpHRK0zN3fRRSHbJZK3W1ASJ0LaGqLTkt00buMgjh6ed
         ejBg==
X-Gm-Message-State: AOJu0Yx/B5AacSdIspgFvN4yWWnXKgRIIlQ5fzB5h65FXed9nlIiMkt/
	h0sGaPP24nNaK5NKVl04OSq/Nf57ZsJ/AbmgBb0Cg+aZQ1Q=
X-Google-Smtp-Source: AGHT+IHekyjCOOFV2khKdRfFWsbB9oELh0MI4A4RUNwyE5ckyd7utgrILcV8i0s9QbPK74SWeXm7JMDMDNPeEkVKPAU=
X-Received: by 2002:a17:906:cd1:b0:9ae:6919:813 with SMTP id
 l17-20020a1709060cd100b009ae69190813mr3615230ejh.17.1695998876273; Fri, 29
 Sep 2023 07:47:56 -0700 (PDT)
MIME-Version: 1.0
From: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Date: Fri, 29 Sep 2023 20:17:45 +0530
Message-ID: <CAPJWBnh22d1oh4D58ozgBBXG3XKdK5uop=0MM3BLm-ORvrnQhA@mail.gmail.com>
Subject: How to use updated npm version in my image
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000008f67a906068082b3"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 29 Sep 2023 14:47:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61166

--0000000000008f67a906068082b3
Content-Type: text/plain; charset="UTF-8"

Hi guys,
I am using yocto dunfell for my image. I am able to install nodejs 14 and
npm version 6.something.
I want it to instead install 9.8.1 with my image. At present I have to
manually install it after loading the image. Is there a way to update it in
the recipe file? My recipe file name is nodejs_12.22.12.bb.


Thanks and regards,
Hassan

--0000000000008f67a906068082b3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi guys,<br><div>I am using yocto dunfell for my image. I =
am able to install nodejs 14 and npm version 6.something.</div><div>I want =
it to instead install 9.8.1 with my image. At present I have to manually in=
stall it after loading the image. Is there a way to update it in the recipe=
 file? My recipe=C2=A0file name is=C2=A0<a href=3D"http://nodejs_12.22.12.b=
b">nodejs_12.22.12.bb</a>.=C2=A0</div><div><br></div><div><br></div><div>Th=
anks and regards,</div><div>Hassan=C2=A0</div></div>

--0000000000008f67a906068082b3--

