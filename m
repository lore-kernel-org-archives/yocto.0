Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B022DC36010
	for <webhook@archiver.kernel.org>; Mon,  7 Apr 2025 17:23:52 +0000 (UTC)
Received: from mail-oo1-f53.google.com (mail-oo1-f53.google.com [209.85.161.53])
 by mx.groups.io with SMTP id smtpd.web11.53458.1744046604796151000
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Apr 2025 10:23:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=GnsVztiD;
 spf=pass (domain: gmail.com, ip: 209.85.161.53, mailfrom: raj.khem@gmail.com)
Received: by mail-oo1-f53.google.com with SMTP id 006d021491bc7-6021e3daeabso2276162eaf.3
        for <yocto@lists.yoctoproject.org>; Mon, 07 Apr 2025 10:23:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744046604; x=1744651404; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dVh4hkdYNNVhx0TLyRgc0D/odDCNhIrrmSlXsjaTVQo=;
        b=GnsVztiD70uzvcU4/GBDfnjZt/5Pq2D/YQuD2EsNZGcOhTd4WJgoNXV0TDE5WNSgcb
         EjwmVPwKZ9JiKBqD0kxVMyoKtFeDlb3yyv2xlpxJXNlskDhWKn8tAo9Au6ERn4Lzaxpk
         ENQGr2Bcf2SUe++5fvgCSIqxMuXlfC0O13baMDKOK6w3iaT1PqbqtvyVnG4PTYcxraV5
         nmeRvpczKOh3RvsziyCLju5JB5pQhd1xYwLkOSCE+BLAROtHqc23m0nzK2o/uWO5C2+F
         /Sx+0OU/ftFm7BjWQjOak671nqk2kp/14dmrtsypEBLyQIE+PsbKrtefkHS1xmWoXZer
         5Tog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744046604; x=1744651404;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dVh4hkdYNNVhx0TLyRgc0D/odDCNhIrrmSlXsjaTVQo=;
        b=gDmXyXaMk+DxrlqXz9BMfVZS6bxQkcgvTPj3aei1yYrMer8tTWrsEL5XOe+9h1Xl9n
         4Lu9Tj+3L4XlagZhWuEW8NZ2JintaR6b5FOq5P8Unbwe1gmPH6DodWdsX8ikLPQndBLn
         7erzuDUbLBakcZch/FrvXSfoTA2oge3vCvJfJZJ2NCSUSO7s/fqLLt5Ym4Y4S8E5WDiz
         yTM7AIBhpcHcRbMazO8W5DJA/a/wZn4g/vGxN7DLYCW4yQEiTABS/iZIgZ1BRfqQ640K
         W81Ac1Unj0/pjx1irM98qeaVjj9H3yJEb/fGiSfunf+oOxh1tbDfmyuywQWEnhYU8G7V
         wY4Q==
X-Gm-Message-State: AOJu0YyfnUZA3QysfikWKoD2dZIsCY1T4XsdzabXAIBVxugfbLAyiE4h
	/UN1q4GDZhJP8myJ9SYdxX6yioaxH8q8/O2q6pLIQRPBJ7tXMqZ2U+cM7YiDBkwHfSa5C18xjV5
	axalCn4VwTeifDX3JSJ1ddtRCgaLAQQDB
X-Gm-Gg: ASbGncvxM8Qx+t6jw9ipg/nufqyJkSfnqamzxONx9WJx3sDQKjl7C51PL2MW9gapM6x
	ebksZcskYg+/OZ7OQlw+jsi9PVWG59K5jsMNjAQjLKdnyBSFfKJOU+ZPyLi2F6ixzk31wRnIROi
	iYy5FG6oYLdkd9KXpiuCoV7LXm
X-Google-Smtp-Source: AGHT+IFocwovYl4HNRhFhHhx42g8eXKh5fQTeLXQoeHnOezrz+j7F1vh4+n/XksxyUkJzMwC3zOz861+iLtVEDsT9bA=
X-Received: by 2002:a05:6820:824:b0:603:f454:2df3 with SMTP id
 006d021491bc7-6041fe79a8emr5899360eaf.2.1744046603674; Mon, 07 Apr 2025
 10:23:23 -0700 (PDT)
MIME-Version: 1.0
References: <br8T.1744009672028382435.wJxT@lists.yoctoproject.org>
In-Reply-To: <br8T.1744009672028382435.wJxT@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 7 Apr 2025 10:22:56 -0700
X-Gm-Features: ATxdqUHbo0dEAkqu1K1LeC3xVVjmQnfpy_8VYLBqZ9MM1JCeeKyKeHKhOVc1dCA
Message-ID: <CAMKF1so8va9vNL99cz-gRGBML9OkeaNAYbrbc1vuuW0j2QVAvg@mail.gmail.com>
Subject: Re: [yocto] Inputs to reduce the size of nodejs & nodejs-npm
To: yocto@lists.yoctoproject.org, emailaddress.ashish@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 07 Apr 2025 17:23:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65112

On Mon, Apr 7, 2025 at 12:07=E2=80=AFAM emailaddress.ashish via
lists.yoctoproject.org
<emailaddress.ashish=3Dgmail.com@lists.yoctoproject.org> wrote:
>
> Hi Members ,
>
> Is there any way to reduce the size of Node Js package on RFS
> We are adding the nodejs (nodejs-npm is added as run time dependency ) us=
ing Yocto Scarthgap.
> The default size is :
>      30989 KiB    nodejs
>      10867 KiB    nodejs-npm
>

Well, there will be some work to do here, however you can start by
looking at disabling packageconfigs you do not need
then look more on using optimization fo size etc.

> Can senior members please share any known hack to reduce the nodejs / nod=
ejs-npm size in RFS
>
> Thanks ,
> Ashish
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#65110): https://lists.yoctoproject.org/g/yocto/messag=
e/65110
> Mute This Topic: https://lists.yoctoproject.org/mt/112128293/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

