Return-Path: <jmeyron@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 32316C54E49
	for <webhook@archiver.kernel.org>; Thu,  7 Mar 2024 16:42:01 +0000 (UTC)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
 by mx.groups.io with SMTP id smtpd.web10.28213.1709829718358409437
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Mar 2024 08:41:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=GN8bYp/z;
 spf=pass (domain: gmail.com, ip: 209.85.208.173, mailfrom: jmeyron@gmail.com)
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2d2c8c1b76cso3095031fa.1
        for <yocto@lists.yoctoproject.org>; Thu, 07 Mar 2024 08:41:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709829716; x=1710434516; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=bkDTyDGN3GXIWr0XnuU1RYtuyka1DlXl2NMmk9YkVE8=;
        b=GN8bYp/zDIjbqeAg5jrKxAyUpYEeyA7dAILiZAHU0roCrAK/AmfAJOyE6EBkyixLwL
         lusmHfOzs2Q4DAYyu00DRlYQ6pzavYy6UyaHdJ/79lP6fpwDm8bB6SoM1uQlClzpdR89
         YvCIob0M7wJLvQDlKxqdn/HKZzx1xz5sV3FoFbd5icBQWtF4LWFbaHZl4rG+ZgI9FFx/
         6W9WpH5TMURWdNdpAYHCkLOZXM5BqZc11yY4UVudni36D3vt008uFWLbDX61RRRSYJj3
         sy0CvwgZfzq+halvgY6sUeu/sf5i+xhxjUQeiQDcRt348RrerqwQnsuOHcari4QClAK4
         NTQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709829716; x=1710434516;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bkDTyDGN3GXIWr0XnuU1RYtuyka1DlXl2NMmk9YkVE8=;
        b=MHPTUmX/b0kx7/ADlnwTbwKFzpe9Yi7nr7/Gm3mgMJ56xQbSEQzmwrKhFJshrRXa/5
         /Gx8UMP95oMcLgRqNwvzZ7GIASQxLumMEKFFSoDuliI/U5DM/DchRl/SbdQgetQH9F0O
         MMe8XR1mTyF0z3oYsmyCGD7+ufmRyAmZH9OZ6/VaAhol8nToUQoI5UNLdjRHtmmOOBZQ
         yDMyq7Y4kI2xXdkwC6II6aTReYKLg0JMa4AjheB8UGJReXU6W8N6GcOvY8roEHBZKgtB
         +3cQSc+5VejbjZs56KUBCHRD+bpCLCgrRcIC95mC85XH3BYiLj/sG5HnAUfVlQuxIotf
         SC1w==
X-Gm-Message-State: AOJu0YwkcnGfJRHX1MR55zy41ZJae0r87b2a3e6Dlb7mQNlF6EeI26V5
	8OSWhGCkqzqB6E5L+bzDOQNQx3twQ+sGdU+5WAJICTnsoMGGKgSeZYSDx7UYk5dNF70cJTCjNxZ
	RRUGgqa44XsoQP+XilheIawNXGuX8xLVT5zk+YQ==
X-Google-Smtp-Source: AGHT+IHpN2MYrb/iGt04sZZ/4aNslHNcjtIInq3qGG6FqY4/Q+HYvVmEH5TV6Hig3fXtPnrN/hvc0cu1VGy6fMUmJBs=
X-Received: by 2002:a2e:9a94:0:b0:2d2:40cb:54e3 with SMTP id
 p20-20020a2e9a94000000b002d240cb54e3mr1598505lji.2.1709829716140; Thu, 07 Mar
 2024 08:41:56 -0800 (PST)
MIME-Version: 1.0
From: Jocelyn Meyron <jmeyron@gmail.com>
Date: Thu, 7 Mar 2024 17:41:19 +0100
Message-ID: <CAJ0N1+Sjno--eOQxQwM5e2Q9eEcNrmg4HrzmZNWX8yCjnPuRVA@mail.gmail.com>
Subject: Random "Connection reset by peer" during fetch phase from Github repositories
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000db6eb9061314c0e0"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 Mar 2024 16:42:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62694

--000000000000db6eb9061314c0e0
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm trying to build a custom image where almost all of the repositories of
the recipes are hosted on Github. I'm using the *HTTPS *protocol to clone.

I'm having random "Connection reset by peer" or
"ssh_exchange_identification: Connection closed by remote host" error
messages. By random, I mean that the repository that fails changes almost
everytime.

I made a small script that tries to fetch the same repository without Yocto
in parallel in a loop and I don't have any problems.

Does anyone happen to know what could be the issue?

Thanks,
Jocelyn.

--000000000000db6eb9061314c0e0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I&#39;m trying to build a custom im=
age where almost all of the repositories of the recipes are hosted on Githu=
b. I&#39;m using the=C2=A0<b>HTTPS=C2=A0</b>protocol to clone.</div><div><b=
r></div><div>I&#39;m having random &quot;Connection reset by peer&quot; or =
&quot;ssh_exchange_identification: Connection closed by remote host&quot; e=
rror messages. By random, I mean that the repository that fails changes alm=
ost everytime.</div><div><br></div><div>I made a small script that tries to=
 fetch the same repository without Yocto in parallel in a loop and I don&#3=
9;t have any problems.</div><div><br></div><div>Does anyone happen to know =
what could be the issue?</div><div><br></div><div>Thanks,</div><div>Jocelyn=
.</div></div>

--000000000000db6eb9061314c0e0--

