Return-Path: <dbaryshkov@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC1E5CFB458
	for <webhook@archiver.kernel.org>; Mon,  7 Oct 2024 19:29:28 +0000 (UTC)
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
 by mx.groups.io with SMTP id smtpd.web11.660.1728329366945108776
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Oct 2024 12:29:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=efzubQMQ;
 spf=pass (domain: gmail.com, ip: 209.85.208.51, mailfrom: dbaryshkov@gmail.com)
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-5c42f406e29so6437451a12.2
        for <yocto@lists.yoctoproject.org>; Mon, 07 Oct 2024 12:29:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728329365; x=1728934165; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=jxha/Jx3ek0OmafTxYuhhzblTIcqatwvB1T/c8rPgmE=;
        b=efzubQMQ0eJotLAcJJNDr4zrNnssdxKpgPil2SBnkqAmQOGsmibNGsN0LDvkuXCYM6
         6CIDb5FQkD41UfILeaVPpEmzeKhKWYkjVPdSMzHfn44QLY/lPbOr2YrXMMcUIUR74dN7
         2CldSk3buAp0XTkeJU+uxjeeUov6XCLxXg0pEJ2Wbtee2jRBRWkmxKQrIt41VTeju22y
         0FHO+bedIZpy5kzpPBNqacmqQGS0n3WSSPhnSYRZiM5+QY2VBAzeUE8clqC/cxBpNw02
         +PphX3Itb0yAx/NJqxMuePkzCDkl3Gs3hiTFaj+X7BqPWo4ofAPTx8Rw/Rz/A1AEntwI
         uavQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728329365; x=1728934165;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jxha/Jx3ek0OmafTxYuhhzblTIcqatwvB1T/c8rPgmE=;
        b=fZmJ03zsVRKNQZUawllXjI+PWOxZStcQ86J1kGoxuU/8Wm5ohY95lgFAdg18WytsRo
         boS3jSsDBT3RUf+YcqQFATuvpDx/8pVeST4TYS/GVGDxt/Mc016wZUvpV3zJnneycHuG
         pGrfoXhbklkSsLYZOK+awKGFCkWgSkiwiHKS6pXxFoys9Dx4j1PGW1Uu+9mXpo6KqhGd
         KNrOoYGAPJGBzrLUDUEOo63hNUlk4QGF/F76GxaXr6BRgoE+Qmy28yjdRNDox83AAly5
         Zzr/0CyAwn1QirI4e+Mp5o4IWy6CIkMR81vuDbga1+b4YCuLjkpIefdqg0da1SMC5W9P
         yBJw==
X-Gm-Message-State: AOJu0YzZ68XMus81S0T4yqiNfsuLQNvU2kzN2V76tKoHpaZPT3lzYdke
	7jS7XKb5ZK8Kp325E1iMS4iGjcU4qyPhc9lExQSF5kR0R6jq4SLQ5jqVcnJcuA1kl56yASaKt6n
	3qMRn0iST+hys3XnHTnWaO8fnF1w=
X-Google-Smtp-Source: AGHT+IG0945IExb1Kf/BbpR98oykwlKSKpXE3Fv4XAiGNzcdKeIxSSqJOHqmnoYst+LZP1sC/j/5aI0hYbwjECrGYKw=
X-Received: by 2002:a17:907:6d0d:b0:a99:374e:f3cb with SMTP id
 a640c23a62f3a-a99374ef56dmr1022971066b.46.1728329365148; Mon, 07 Oct 2024
 12:29:25 -0700 (PDT)
MIME-Version: 1.0
References: <fvqD.1728277436421735973.T2Af@lists.yoctoproject.org>
 <CANNYZj_=Yoa0LxU-OqfJQA+D7MyOqPVZ7YZ0OFcmBZ5m93OiGw@mail.gmail.com>
 <CALT56yM+rQR1L0VtyBdupurv2TokWLJ7sVXu3YjpTfXJt0ruVQ@mail.gmail.com> <CANNYZj-rtd=7xCcAkLM7C=CSmLPS5JqEYPhQcdpLQNtx-ZPPpQ@mail.gmail.com>
In-Reply-To: <CANNYZj-rtd=7xCcAkLM7C=CSmLPS5JqEYPhQcdpLQNtx-ZPPpQ@mail.gmail.com>
From: Dmitry Baryshkov <dbaryshkov@gmail.com>
Date: Mon, 7 Oct 2024 21:29:14 +0200
Message-ID: <CALT56yPtvqV-nOv931v7ZTR5T+3+szG_FG6GUuDfpruQGgMBAQ@mail.gmail.com>
Subject: Re: [yocto] Yocto Binary Distro
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org, aleksandar.nikolic010@gmail.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 07 Oct 2024 19:29:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63950

On Mon, 7 Oct 2024 at 21:27, Alexander Kanavin <alex.kanavin@gmail.com> wrote:
>
> On Mon, 7 Oct 2024 at 21:07, Dmitry Baryshkov <dbaryshkov@gmail.com> wrote:
> > > If you ask me, pulling pre-built packages into a yocto image is in
> > > itself a horrible hack that goes against yocto philosophy, and I would
> > > not want yocto to help that or support it in any way.
>
> ...
>
> > So, as much as I like OE, if you are thinking about a binary distro, I
> > think you'd better use some existing purposely binary distro (like
> > Debian, Armbian or something from the RPM world). If you can afford
> > having package management on the device, it's not tightly resource
> > constrained. And thus there is no need to go Yocto way.
>
> I think we're talking about two different things here, so just in case
> I'd clarify the difference. Point two is about using bitbake to
> somehow pull a big pile of prebuilt binary packages from the net and
> assemble a target image out of them. I don't like that at all.

Ugh, no, thank you. I also hate that idea.

>
> On the other hand having a yocto-based binary distro, e.g. a target
> image with package management which feels like the traditional linux
> distributions is fine with me. I'm not particularly interested in it,
> and I'm also not sure it can work well, but people are welcome to work
> on it if they find it interesting or useful.

Yep, I was thinking about the yocto-with-feeds.

-- 
With best wishes
Dmitry

