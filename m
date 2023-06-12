Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1BAEC7EE45
	for <webhook@archiver.kernel.org>; Mon, 12 Jun 2023 10:46:42 +0000 (UTC)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
 by mx.groups.io with SMTP id smtpd.web11.55305.1686566798321819503
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 Jun 2023 03:46:38 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=ky8J1bia;
 spf=pass (domain: gmail.com, ip: 209.85.208.181, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2b1a4250b07so48925941fa.3
        for <yocto@lists.yoctoproject.org>; Mon, 12 Jun 2023 03:46:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686566796; x=1689158796;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=yivyjwaPA0yj9hOygLS6Q76FYoBd7F2wzTw78fHgXL0=;
        b=ky8J1bia5NAMEtsxzVODxkzvg6dGsM333Lcq7AxNRKezd3qDDuZSYvHTUV5CUTEV1S
         KqyZPkIUsIeojJBtA9g+SkggYxE6lc2UuQ2ri65IKrQ8Toki/8ffa7l0r8wM6cP1c+Ua
         iaQrsWzilQu9S+VJBqy3+XkLcspxEeYopWEz5nWEHsZhN/nl4vWmTWgRTW6r1+k1TWgy
         zAP23yqPUxWzYwy3qEYwi5aIfd59Q5x+sgWW0JybcS/eH1Fb12SsNETbsvWl2i3DIiTr
         b+t9gP3e1q4J8K2CZz77IlUlOe68Xcc/UA5cWIFjBWy+zlkQ4UCmeecsV5O6Uut5Duk5
         xa+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686566796; x=1689158796;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yivyjwaPA0yj9hOygLS6Q76FYoBd7F2wzTw78fHgXL0=;
        b=U7th3/v3QhD1WecRlzPspDx0P+TlzjoBEsXXkavJh99NFDphbrCGR1o1Ai93/zkKlO
         xa1+3f85BuuPoiqQUKB3mnkJa0WSFEDrrEBfRF6SJv4N1qKMJwRtK2fb+ZhHf4L9K78x
         2vuoh6BeAR7kzcb+gslcNp1lyb1NW8EsyruuGy24Q48bOo5pmHvX3mHu7qJrlgPLLOZZ
         OnmSe3N1dOCIJePqtsqxYyNVEYWHbvf0DBkpwwliN9d2i6zm9i37xZfUe50skCXWQb6u
         YziB2g/P8VGAY7NBjDqMVcQlicWPx/PdDtUs82X5ZxmSdIPyObEXElwBD5iYnaHHuWgh
         GB3w==
X-Gm-Message-State: AC+VfDwLwHGSEsYJT5aKrCdiSvDL8AA8haDucQ6BQ7vEeuUfmwvhmVJ4
	Sn2FvOc+JfOAXCU5+6iwoa8czDwS+x6bnw48ldg=
X-Google-Smtp-Source: ACHHUZ4HDfbrtdSh+xz9J0rDzOaFKuoCp3f4UfD8Xk6TJ5IYcsOFHZaN2sSPMYtHq/1vJvGu6Ld0psnFely5FNL+h0s=
X-Received: by 2002:a2e:8553:0:b0:2b0:5a04:a5bd with SMTP id
 u19-20020a2e8553000000b002b05a04a5bdmr2704520ljj.42.1686566796341; Mon, 12
 Jun 2023 03:46:36 -0700 (PDT)
MIME-Version: 1.0
References: <CANx9H-DsS9GObR2+KAuM2pnecvsfpaUVQ2sc3h2Qzb9MWtDeYw@mail.gmail.com>
 <CANNYZj9JUKG4dfYPrg6DZuGduCnwmwLMXx8+C32wFvMKvK5Zvw@mail.gmail.com>
 <20230605-musty-chamber-0dd3ae@meerkat> <CANNYZj_dOyNUZTkpzZ26xHDyR7eHqPZNRAd_XfdnToFypD59xg@mail.gmail.com>
 <20230606-monotype-ignore-885b91@meerkat>
In-Reply-To: <20230606-monotype-ignore-885b91@meerkat>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 12 Jun 2023 12:46:25 +0200
Message-ID: <CANNYZj8McVpG2dCFjUt048mKq8cwYJ3BfUc9WW_YmmqHke=SfA@mail.gmail.com>
Subject: Re: [auto-upgrade-helper] Should AUH send patches in-line instead of
 as attachments?
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Cc: Tim Orling <ticotimo@gmail.com>, 
	"Yocto (yocto@lists.yoctoproject.org)" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 12 Jun 2023 10:46:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60253

On Tue, 6 Jun 2023 at 21:17, Konstantin Ryabitsev
<konstantin@linuxfoundation.org> wrote:
>
> On Tue, Jun 06, 2023 at 08:09:40PM +0200, Alexander Kanavin wrote:
> > Thanks, that seems reasonable, but is then it still ok to attach additional
> > build artifacts (logs etc) to the message? Will the tools first discard the
> > attachments, take the message body, then apply the scissors to get the
> > patch out?
>
> Yes, I believe most tools will handle this situation just fine -- at least b4
> does for sure, and so should patchwork.

I added a tweak to AUH that would do the scissors thingy with the patch:
https://lists.yoctoproject.org/g/yocto/message/60252

Alex

