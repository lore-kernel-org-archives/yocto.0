Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E26BDC48BC3
	for <webhook@archiver.kernel.org>; Mon, 19 Feb 2024 10:44:40 +0000 (UTC)
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
 by mx.groups.io with SMTP id smtpd.web11.38898.1708339476604245796
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Feb 2024 02:44:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=YXtwHBaG;
 spf=pass (domain: gmail.com, ip: 209.85.208.182, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2d204e102a9so53117241fa.0
        for <yocto@lists.yoctoproject.org>; Mon, 19 Feb 2024 02:44:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708339475; x=1708944275; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Pr8i+zkA8btczLqeve2PYRGjvn2bqYy6uNtQqw42kgo=;
        b=YXtwHBaGxDxgBWzVi44/+OSKcoBWaABp5tnlxFt2XN6i6mN+OlQv7HS80kM4ocKUYm
         +rl5GdMlhoXryr+DmN7koERRVXHVFbcvV/a2cEs4sUQ+KLyg85+GB8gmv5qLQvVRwbym
         YeZEk9dI5oxRoa1r24wyPtxso/9ALxcbO40wnpsyksF+mohhbpS4qx/ahDZOMaKG7Zgd
         k6eftC6KEITT5igv4APEb/i+FA7FmfJGEstLlWcQW3a6nCND66D92pVepzhHWLK8mlOu
         0FnEKvM2GrcQslygswqs2Z3cWHZ+UFepIuT9I8K23aQhzNdc8KrZak4ev9GYVizyhVQy
         a/cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708339475; x=1708944275;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Pr8i+zkA8btczLqeve2PYRGjvn2bqYy6uNtQqw42kgo=;
        b=YqoWalu/nyvdt+8NQ695YQu8IN+0rBeSdeV/BeE7CbHi2FfIxyBve7d17blUCwX9ey
         mATix+1HjKnLDT7lyjBo6pCgC3CoiAR+C87AWqDP4QxSBjszjAevEn6PM4eznHRje8SL
         mfxzY2AsYeISiEqxZIqOi/7fU+hnHu1FQ3pKBnD3vUVZCluWVLy7UEF00AtTCpoLN2Qc
         uEQodMXfkNQQw6F/1GZB0xYIZqo8T6D7+0Wc0tbuqSktJALWkKhR5NpMEfKLJKPdOtaD
         7sOZLat4wfKEmhnLYAaPXmTreiXlP5BkPJe5v1N69g0RTLlPF2FudcFS1Xae4GeLnFGN
         tK+A==
X-Gm-Message-State: AOJu0YwWFOMUhFS7qlEIUjegfpxtSob8q/fBFrp4jh4q37t5S/QcDMpY
	2sM94o5EUHO9+OGWzV4D5jq3AiFp6wjkZvxhTJ0ASk7Z6YRZO8VLvjPI2avNFzfVvZj6Tyw0Fo/
	kFKesSRrx13PHjQfPcJmtt69PYjB8iT9TeVs=
X-Google-Smtp-Source: AGHT+IFAaUqj3iXU9qToH0M0TVAPAFggvIrQctLiS2cOOQ8KO+TlaKjKg2cPQl10fLJWjfKtGOwI6CEvqJnqXdIA1OA=
X-Received: by 2002:a2e:a7d2:0:b0:2d2:402d:2239 with SMTP id
 x18-20020a2ea7d2000000b002d2402d2239mr851015ljp.25.1708339474449; Mon, 19 Feb
 2024 02:44:34 -0800 (PST)
MIME-Version: 1.0
References: <CANNYZj8LwDJ09+Q-wq5eRrVZATOnRSYrM=d8p_xQR5_DMPGo4g@mail.gmail.com>
 <31097.1708271434787048272@lists.yoctoproject.org>
In-Reply-To: <31097.1708271434787048272@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 19 Feb 2024 11:44:23 +0100
Message-ID: <CANNYZj8g4zPZ3bnUS02CRNaduEn0zogMM9U+xWa=ziPHizD28w@mail.gmail.com>
Subject: Re: [yocto] WHAT IS YOCTO PROJECT ACTUALLY MEAN?
To: yocto@lists.yoctoproject.org, cqthoctap@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 19 Feb 2024 10:44:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62539

On Sun, 18 Feb 2024 at 16:50, <cqthoctap@gmail.com> wrote:
>
> Thanks for your reply.
>
> I have go through your recommend article, and I have a question. "Yocto i=
s an open source collaboration project" and in my opinion "open source coll=
aboration project" is a process of  create and maintain open source softwar=
e, so what open source software does Yocto maintain?
>

The answer is directly in the article. Note the list at the start:

"The Yocto Project combines and maintains several key elements:"

and the section "Components And Tools Maintained By The Yocto Project"
(which has a link to a more detailed description of each).

The git repositories for them are:
https://git.yoctoproject.org/
https://git.openembedded.org/

Alex

