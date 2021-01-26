Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
 by mx.groups.io with SMTP id smtpd.web08.5924.1611624272826120661
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Jan 2021 17:24:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=cDywucic;
 spf=pass (domain: gmail.com, ip: 209.85.128.50, mailfrom: jpewhacker@gmail.com)
Received: by mail-wm1-f50.google.com with SMTP id 190so1113123wmz.0
        for <yocto@lists.yoctoproject.org>; Mon, 25 Jan 2021 17:24:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=o4Q65YL5GAi3vRvXWx0PnMHNQV18nF88ZkJ4aM+EcOk=;
        b=cDywucicJSaQ/1a44Tg5r0Tm6zdx3N17AMn+U1Qkc/tQrELAJ3R83Arfxl9ooKSF0s
         6rEXsItTcN3Vf6rTNKgOzwxMoR1lhnVxKj4DkpSxTNVux/06iD9O5SuwkA9bOU/PQbAZ
         4LoaAvwcY2tn9eu1b0RlwsAhKkaeR1f/sNrkK6PQIdt0FzgWqcZAX5trLG7VQkKq4pkI
         XoSc7l0OA9nf61roJcLu3+9TBoj0pnOO4PI8OhEF9N3EMCy8YKqywueervifla/YFqz0
         IchAmH8A6GXD8QyxmfIMc59sDWAck6FbTXMnUORTl9zQPpstnlka0OZadMqqHfWxftin
         IHMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=o4Q65YL5GAi3vRvXWx0PnMHNQV18nF88ZkJ4aM+EcOk=;
        b=n+MyPwDUKEuHJoQSDMzWtNTmysQTLYNG+KTQHsFmQUDklOi30QR+AoXeP2wuI35wWL
         q4xsULES8FCCBQXV9LXyZbTUxUOkqwShF7TjaKqOlKdYUFY/IOxW5+Unij8AsBxUYEUO
         ucRRHyaoDYAHTr+UqcjD+0hPX6ChPIlwvnBGriLRH9voq+ku8JDqV3FO/mTXc5sXzwhu
         C5y8Hwq5xi9H+8hLw6rDUOfQHZ28kcAdlyWnHpFskk4lO70iLB6/fUVHua6v6dPmLPZ8
         U2scIcAViSyK++Tf69iHazBCVJBX4gKDKahnagYA/h3FvyF+0LCbGAAdlqodrcl+9aOB
         bddg==
X-Gm-Message-State: AOAM532oFX1cktJDnAZxB5F/FTN3PbSD4EFol7rzGXZWqIgrYQ8rgiGW
	8J/CH2bWs4/XCbfJUjmlDQRYWhcarj6ajUEllPM=
X-Google-Smtp-Source: ABdhPJwVWSjgdDvHzVOKDhG6dUkhnjZg2MRNofaJ+qjSweR8C5B2dW2BywfIj+KDEzCSUo34vjqL8fo7yL8etK7NvFE=
X-Received: by 2002:a1c:e4c5:: with SMTP id b188mr2452311wmh.78.1611624271310;
 Mon, 25 Jan 2021 17:24:31 -0800 (PST)
MIME-Version: 1.0
References: <20210123210512.20111-1-JPEWhacker@gmail.com> <20210125231459.GB23113@localhost>
In-Reply-To: <20210125231459.GB23113@localhost>
From: "Joshua Watt" <JPEWhacker@gmail.com>
Date: Mon, 25 Jan 2021 19:24:20 -0600
Message-ID: <CAJdd5GZgYiLKM-Bjhqf3syFeM9PMyp1fnehDd6=50ih4m5LMKw@mail.gmail.com>
Subject: Re: [meta-rockchip][PATCH] rock-pi-4: Split our variant machinesy
To: Trevor Woerner <twoerner@gmail.com>
Cc: yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Mon, Jan 25, 2021 at 5:15 PM Trevor Woerner <twoerner@gmail.com> wrote:
>
> Is there any way to make this work with both new (4.10, -dev, -tiny, -rt) and
> old (5.4) kernels? What if we left the old rock-pi-4 MACHINE for the 5.4
> kernel and required one of the new ones for 5.10?

Ya, we can keep the old machine around for the old kernels
