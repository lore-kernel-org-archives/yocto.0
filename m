Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2294CC64ED6
	for <webhook@archiver.kernel.org>; Tue, 28 Feb 2023 14:02:09 +0000 (UTC)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
 by mx.groups.io with SMTP id smtpd.web11.23902.1677592927197902363
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Feb 2023 06:02:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=b9LPTXxu;
 spf=pass (domain: gmail.com, ip: 209.85.167.46, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f46.google.com with SMTP id r27so13309468lfe.10
        for <yocto@lists.yoctoproject.org>; Tue, 28 Feb 2023 06:02:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1677592925;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9Q6v42oYFA4V5Ezbyq1iAWpzyFjwrUsTuulnW2jkRUo=;
        b=b9LPTXxu2dzyxYJP0v+L2IZf8PAAz8SFLpRWFceBKlEjyBlDnhmZQyKhDHaKsYnqtS
         eyjrCqVquChUfxqLCgcz1Oc7v8Qi82z+E3+fOzZdf+7AkJSSUScKJ0kpOMncb5suFcP4
         hieOull3Pw9a4o0vR3xliC4HUmDJSEG/V10lK2LFBCswPtf0wIHioOWouD438HbvLMmP
         CuRuza4J13DwZqdByY1nkwx/iYReyzHRQzXciNEqB2kVE/99w3JvECbuWANPshD7DbTs
         3nES6zB5g6l58gGLMEV+PLTH/AAidrnPftCBxKyYrXhXespBE1KBkTuvnDJ/HdCEu6HA
         J8Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677592925;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9Q6v42oYFA4V5Ezbyq1iAWpzyFjwrUsTuulnW2jkRUo=;
        b=wfcULCNPuzs2mxnTfFCA+H0Z6m9GvPBNhKKb9fwbhrPgUhu886Y7WnkHp+70vtG7UY
         8PC7SlXL79qjkXVYsZqREkYkTKuqtWbV8NGutosexf1A13O/6UUIcr4Wq0OMZ1NgyHuW
         MTrQS0/DDlm+qjFB+jVUaEUC6Yi0THhjqfCFUNQdjHaFAVTgUoZUPLqKjf+9tvelUsPV
         wsw6UNtrFHiDxHmWUNHGh7ea6uod9yi4zlN2uoUtJx28sOpCczaHMy1z8xVBMXAtSKc+
         ECUbpoFWw29n4Vfc8Sjdb82BDGLL/4YZGFxn2sZOzH2yHCnDNU8nYgL/zCz/K/YfVlUC
         UosA==
X-Gm-Message-State: AO0yUKUhkdf86/kI9EOxNTEaJIiFAgUHSkazFIxhTeWJX8NciKYpg2q9
	6lB0gCRytwa8q2sYblu3aQObcD434pptmFuSj8U=
X-Google-Smtp-Source: AK7set8cmwdkyWpFUtJfkkQc8DSXoxbJm9xQAEYUGQxzaxZ2af9Go1lMt/bZjxVAw/rSQahKZxLfbNc6KrFy9qV6lC8=
X-Received: by 2002:ac2:5206:0:b0:4d8:1c0e:bfc7 with SMTP id
 a6-20020ac25206000000b004d81c0ebfc7mr732114lfl.13.1677592925129; Tue, 28 Feb
 2023 06:02:05 -0800 (PST)
MIME-Version: 1.0
References: <CAGugOWuaFdNpg=kDMoO5XfzkBX5Zs+erZ1FMVHY9S9kx8wRCjQ@mail.gmail.com>
In-Reply-To: <CAGugOWuaFdNpg=kDMoO5XfzkBX5Zs+erZ1FMVHY9S9kx8wRCjQ@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 28 Feb 2023 15:01:53 +0100
Message-ID: <CANNYZj9ByszacLLQ3XMpkuLn5_=d-USk8Ok+-pgmNd1Mj6ibWA@mail.gmail.com>
Subject: Re: [yocto] Reggarding yocto recipe build time
To: Satish Yaduvanshi <satishroyal4u@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Feb 2023 14:02:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59323

Please check:
https://docs.yoctoproject.org/ref-manual/classes.html#buildstats-bbclass

Alex

On Tue, 28 Feb 2023 at 14:12, Satish Yaduvanshi <satishroyal4u@gmail.com> wrote:
>
>
> Hi Team,
>
> I am  new to the yocto project and am going through the project document for better understanding.
> I would like to know on how to measure the compilation time that will be taken for each yocto recipe
>
> could anyone of you help me on this
>
> Thanks,
> Satish
>
>
>
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59322): https://lists.yoctoproject.org/g/yocto/message/59322
> Mute This Topic: https://lists.yoctoproject.org/mt/97289402/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

