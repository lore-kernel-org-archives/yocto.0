Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD4B1C25B74
	for <webhook@archiver.kernel.org>; Tue, 21 May 2024 12:37:54 +0000 (UTC)
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
 by mx.groups.io with SMTP id smtpd.web11.18574.1716295070659287307
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 May 2024 05:37:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=bMXN+Y+D;
 spf=pass (domain: gmail.com, ip: 209.85.208.178, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2e3efa18e6aso35653661fa.0
        for <yocto@lists.yoctoproject.org>; Tue, 21 May 2024 05:37:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716295068; x=1716899868; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=USxZjBoDVeDGZPKT3I0mvXsl719oOGR4kKNk3m3on4w=;
        b=bMXN+Y+Dx+QLf5Yfw2hEJFcNwezdNfwMj9M6AAEzplGN78CAq78TbR0ncdrUZZaG9d
         Q7x9PJ8Q6rBZJjpOFSz1FyOGZg1lPDrAk9I2+Rjeb93B0WtCnUTWAseFIzuQiqnxzg/7
         bJFRyIlPZIoxk6nUM/M/6I/OwvRn1CVpsKo8mipSjTii1byGqhRrwkpo3pVM/bCX1/kh
         NsNs61Gr8YEfHxSOfFdKoLIkVVc0BYYiy+vdvyou/JsFnqp5Qh73zG8droG3PYKsaWiL
         DSGgXP6D9Ma2NUjjFNVVfBtVlajsAL1+DyiQDfoU8y6P15eo840LaboGk8RNylvaZdX6
         9eEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716295068; x=1716899868;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=USxZjBoDVeDGZPKT3I0mvXsl719oOGR4kKNk3m3on4w=;
        b=UAwRINrQr55v0u3CY5shb6aCJjmzfwlVkyPn0DERMJw/mjUxHMd9XtFSpAwaHC/leQ
         QStsF5ofwHZMTGluYumbFBFXTfCy1GwG2YgcJ6AqKB6FRRFBd/yr//poQcH4QOZAg8hm
         EMqnK5E74yhQzZ5P5JPu24r/zwJdqcMfiHHebAxv/M0SqcNQ1dwgBL8M5uHY3N/etSOq
         cs/r2vzA0kSy2lEpcCvvPTT4L4LtLd2n95owjmdKwSH8G+nxEyED3KXxnRWpRZoeiYNy
         pS6t9oYsPnGUMgKKJ5F1/OFlBjIGypjgPCw/7+uvsp1zr951v3iR8NCIs1Q+M97IuDp2
         XEIQ==
X-Gm-Message-State: AOJu0Ywds6gOvDKufx4aA5EEU36Tt0rOqKc6BxNgBkYbaLIaxKwx3AD5
	5+QU1Sr42660Jcq9srjSD7SYFdQ+krKd9yRUGHLeC0wjLheannaPyINXAk19YoCluCaWxKgvm+K
	yAEXSd/tw870Z62BCQtsaYNGzTCNBwZ69
X-Google-Smtp-Source: AGHT+IFLXN2/tVR+GNAocD7mUsq2AjQ/0clvITMwjen1PwEgqci3wc/RJfG3y8YYn6qqKzu4V9a3l+VIxl54XvE+/w8=
X-Received: by 2002:a2e:7411:0:b0:2e3:606f:a5d9 with SMTP id
 38308e7fff4ca-2e717133e15mr27120551fa.5.1716295068329; Tue, 21 May 2024
 05:37:48 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj8_mHfpn_ngONnPW9tUQmZ_T3oJX-w=bpHC-CbiijSaCw@mail.gmail.com>
 <9920.1716294702750645500@lists.yoctoproject.org>
In-Reply-To: <9920.1716294702750645500@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 21 May 2024 14:37:36 +0200
Message-ID: <CANNYZj8pL+LLbQifBgFbGBqrfyYE0oDJ-Yvy76r-pQGmiG1qXQ@mail.gmail.com>
Subject: Re: [yocto] meta-readonly-rootfs-overlay and #scarthgap
To: mlynch@hi-techniques.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 21 May 2024 12:37:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63151

Your name is 'Mike' and your email is 'chiefsleepyeye@gmail.com'. That
is not a real identity or an introduction. I'd want to know who you
are, who is your employer, and what is your project and product. Just
like in real life.

Alex


On Tue, 21 May 2024 at 14:31, mlynch via Lists.Yoctoproject.Org
<mlynch=hi-techniques.com@lists.yoctoproject.org> wrote:
>
> Not sure what you mean by "where that layer is hosted".  If you are referring to the repository it is, https://github.com/marcusfolkesson/meta-readonly-rootfs-overlay.
>
> Also not sure what you mean by "anonymously", my email and name are shown.
>
> Anyway, I'll just email the maintainer.
>
>
> -- Mike

