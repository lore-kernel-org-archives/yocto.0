Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F25D5C48260
	for <webhook@archiver.kernel.org>; Tue, 13 Feb 2024 13:25:54 +0000 (UTC)
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
 by mx.groups.io with SMTP id smtpd.web10.11199.1707830745776124070
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Feb 2024 05:25:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=O2hT8rIF;
 spf=pass (domain: gmail.com, ip: 209.85.167.43, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-51032058f17so5273172e87.3
        for <yocto@lists.yoctoproject.org>; Tue, 13 Feb 2024 05:25:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707830744; x=1708435544; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=NF6pUN0C7iXXpugxDsNuNmcDi/YpTty/C0gkgfLvr3Y=;
        b=O2hT8rIFpq/hu2MKN5lRr++tHm7VbUMagtw0BSvJlemZ15xVosSVfm9t+0n+gEE/hv
         s60kEVb80GJX0NMPCF8TXVEjNm589UbCviFSYkuI3vbJgV9rCSD6WeKxxhH61czaQ6yz
         my7FY1zlr/E6StJpzLKLMKoOUX1yFbITLfHVrWUBXv37LMcX8UclZN2zEZEEXa+oz0Ha
         ROrMXk0xREakEQUSkVvB+iP3kjq3hQ6kBe5UViLVcBnDr3HegXdmRhZasz6R14so9Pay
         HO4XH1C5KPyVpuQiyF/o9k8UfIAbs63MNcCY15M56gDFxuetJoMoCNPnTHvygPrkbYF1
         iy4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707830744; x=1708435544;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NF6pUN0C7iXXpugxDsNuNmcDi/YpTty/C0gkgfLvr3Y=;
        b=VwCRkyWNcmX8AxCSzWKlLcuKrN/iqiHb5xn/YbrGVmtfZZHWOOnR7IKHkIPdsfYsFs
         aAimalAKj0/0/pVCSZdaVrIwjl9nkzFKMvnNYDqrs4xpFBBeiNB+vPs3nUblxYQr+1t7
         Fd5cMbUk+5LZd1PvVKCY+D8hQ9Go7SnEv/ej5Zvr26NHEP4SkVUZ4XLZT9NptYaSZOOn
         7sH/b1dJk99HoUT6tJhlRKRcR2CqJ3QFjUy1ixEy0WcqzDd0x0LhxTOSJ7n7A1QjldxQ
         HpXfjNc01HwsU9LLELmdY1T2wE7Oe2OYk2irrOcPI2ENLJnSyK8Q8MT0Yy2ENdHZUA5g
         JwpA==
X-Forwarded-Encrypted: i=1; AJvYcCWgvcIglOO+MnOce5CkGofYe45+/mNE7FZVnrCRSEBpqXQeKmSpwRI2agWlZMSQS0AYMtj1+epDb9tqx7uTDd1b/dZLeCSTyK5MbyFB
X-Gm-Message-State: AOJu0YzaYC1EWqZ+RTE41n69w/2gYYE2XM20jotyDm/y9W0EVwYOd9Xe
	mfA/SRSGvCQMA8qXJrQK0i/dSkUI7Dv60tjRK3gwMOvebw/nP2ObjrtQ0JF7dIHK51zfUNaGYwp
	RLoNjxtu5pKrC5I4Vyvnfjkyhjj8=
X-Google-Smtp-Source: AGHT+IE0Q/85PODmTZi75Kw6ph0GYc1JcMPdivCyQ2IABixZ1t/1aDcBKS/HKIdQ/PcIV7JodTVuL9tyLeb2Ew5yjUg=
X-Received: by 2002:a05:6512:3056:b0:511:8125:2333 with SMTP id
 b22-20020a056512305600b0051181252333mr8685507lfb.39.1707830743724; Tue, 13
 Feb 2024 05:25:43 -0800 (PST)
MIME-Version: 1.0
References: <CAK5yBb9gO+WOJrv4TArzXK_1Bxu5AORp2oi=P-v=2nn6PgJE5Q@mail.gmail.com>
 <CANNYZj9QpstUj_A8Vb2RbiaFGZkHkFjHkUfF=E1HR-nDJ_Vk6w@mail.gmail.com>
 <17ACA59E7A7FD97B.16230@lists.openembedded.org> <CANNYZj9X5qRSup7i9S=rtRpwo5nCNHp8VJOZAuvu5JzqhLYD_g@mail.gmail.com>
 <f1c9d0f8cbf8ea1972aafac0c29690ca400178d7.camel@linuxfoundation.org>
 <CANNYZj8tyOy=z3L=uM9L_R8uP6eZSUkYXm9BwvsU+ERpE9QcZw@mail.gmail.com> <018185898b86e2fccabf68570a6aec6039a0c6d6.camel@linuxfoundation.org>
In-Reply-To: <018185898b86e2fccabf68570a6aec6039a0c6d6.camel@linuxfoundation.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 13 Feb 2024 14:25:31 +0100
Message-ID: <CANNYZj_UMqZe+hDs2RzOPaLZzRmyg=8X74+HCwytN5616jZgNg@mail.gmail.com>
Subject: Re: [OE-core] Core workflow: sstate for all, bblock/bbunlock, tools
 for why is sstate not being reused?
To: Richard Purdie <richard.purdie@linuxfoundation.org>, Joshua Watt <jpewhacker@gmail.com>
Cc: openembedded-architecture <openembedded-architecture@lists.openembedded.org>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	",openembedded-core@lists.openembedded.org" <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 13 Feb 2024 13:25:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62477

On Thu, 8 Feb 2024 at 14:42, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> hashserve.db is a full hash serve database. When we run a build without
> specifying a hash serve to use, bitbake will start a local one and this
> is the file which backs it. In a build with a remote hashserve, it
> won't be present.
>
> the unihashes file is bitbake's internal lookup cache. It exists so
> that if the hashserve isn't local, we have a local lookup of our "last"
> value.
>
> This means the file is good for the current (last) build not much
> beyond that.
>
> I'm not saying any of this entirely solves the problem at hand, just
> that some of the data is there.

So perhaps we need the following interface:

bitbake -S export-hashes targets...

would save all relevant entries for the targets from outhash and
unihash tables into a local file (similar to locked-sigs.inc creation
with -S lockedsigs). This avoids exporting the entire database, which
is both excessive and unnecessary, and at the same time ensures
everything relevant is in the export (merely copying bb_unihashes.dat
does not guarantee that).

Then we'd also need a way to import the data, but I'm not sure where
to put that. 'bitbake -S' is not suitable. A new command to
bitbake-hashclient perhaps? But bitbake-hashclient doesn't discover
where the hash server should be from bitbake config, and won't
autostart it if/when needed.

Alex

