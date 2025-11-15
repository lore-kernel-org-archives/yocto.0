Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2A2E1CEB2DA
	for <webhook@archiver.kernel.org>; Sat, 15 Nov 2025 14:56:49 +0000 (UTC)
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.10086.1763218605682420626
 for <yocto@lists.yoctoproject.org>;
 Sat, 15 Nov 2025 06:56:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=ib9XrqlV;
 spf=softfail (domain: sakoman.com, ip: 209.85.128.174, mailfrom: steve@sakoman.com)
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-71d71bcac45so26829017b3.0
        for <yocto@lists.yoctoproject.org>; Sat, 15 Nov 2025 06:56:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1763218605; x=1763823405; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HUhGjkC562u81IRF0hF0wrOKfIQNwdKO7pt8RCDJheM=;
        b=ib9XrqlV0S2uSHvsTALTfPaCZs/u3jKPv1+ttF8cSezRUjxLMZANCgWv5jfegZQB48
         VKNkFLOjx/6bXzprKss8vhIIOzoS3fSLJ02FgbBF2i4B/pDjQf7N7csOuJAU1Hh9DtYe
         QDtHvqCFEANiMkpoV/xTNehIVFcE6Cuo7t8NnqkGbzWZJa7zM6SJQm3QGW1lCYqMUzml
         ehHHn1LFau/TWfg5eZ32Qd9BKwipbIwMcKqJweoqkQArDRE/5x6AMLfahnytwbf2zJub
         jbVLC635rcDSuWoaYulmVLO7nwyrl5r571h4DQEHuSL2WL8F+N/Yr1CDH2kH9RQDa0GJ
         p47Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763218605; x=1763823405;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=HUhGjkC562u81IRF0hF0wrOKfIQNwdKO7pt8RCDJheM=;
        b=bR0QTgvXSRlX7TNw501NJoJ4OoS1+vW0lV06GsqQJeV7lTM1XDFecxe69oLvqRFKvC
         YtX9FpYsyzCHxero3tg+F2zci6PI6Ax8ITp8LNC9oUmKwc+x/ZJ230z4MxMm2j4AqAVv
         R753+htFXrhfgeMNnH7LajUclGU7wnbqzAyOHUkk/ST1sZckRPErZW2QO3ff5blYUaFR
         keDK3fXeeJoaDGkJAuwmnNVf6BZpKKww+zM6cHjYVckQFyy3JEW9B54RW/3lXBbdy9su
         KaRzPvkRCfy7+6iUO0FAx+sL1ZdmI6HfYeGzqJmIF6J4+Tp+Z3AoZj+AuoPs7WUBAvXL
         tfAw==
X-Gm-Message-State: AOJu0YyCS4FZ19lNJefIp5/kQS8GLj0/ziBr3LESWV25dPBLrTypXN4o
	m6XzQvbmPmLDWQ3mfyFcwGyOuOTtNYH45bWSUBxhZLdn/kH183uI1WQi5MXIi1NfOiLQZK2tzVs
	dbcoRj7jWSwiFMbRm8ZEWGhCwO8WIURHiaVIl1PxrXg==
X-Gm-Gg: ASbGncsvrtoetoI9o/A2e7q5bJpJRT+4j9MtXGzLnpCJJe0uPJx+H4X7VzqeDRZ6Cak
	nA7aBTjq+7294YDNsYQ2EhVoEYnBDGb2MADB+OJnhXZCWDunDB5zpELKh8sCUPwuBAC9LbyqqNj
	w22Fd3Nx2WkLDIqhGGRbBQrboupQfILfTWvlCNjwm4pDsG3SlsA5ZMVYuwF1WI1pzzLLVHsuVlv
	N5bvJ4zmeBDnzj586vDtygAJ9D35DUlwfbwBLuIIDJ75gfKG2iFV75440+CsUAnmUcXerfUjtiD
	Z3TBACd84U9/CoA6
X-Google-Smtp-Source: AGHT+IGwNvpxg65zzx0Ox8nayFRhksiWJxAFD0NVIr7wkTMpDWuLlZg+mYdR/yGvo57jzjEiQnPpHdtyasNG9yqv1QE=
X-Received: by 2002:a05:690c:700d:b0:788:c74:d038 with SMTP id
 00721157ae682-78929f08b14mr57573277b3.39.1763218604473; Sat, 15 Nov 2025
 06:56:44 -0800 (PST)
MIME-Version: 1.0
References: <0101019a85e6f3ef-2ab3b559-d956-4d98-9a2e-b0c77eea5e48-000000@us-west-2.amazonses.com>
In-Reply-To: <0101019a85e6f3ef-2ab3b559-d956-4d98-9a2e-b0c77eea5e48-000000@us-west-2.amazonses.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Sat, 15 Nov 2025 06:56:33 -0800
X-Gm-Features: AWmQ_blVvl5V884yrv4ed_lU6YJ2GuYkpQDtfUBxztj1Yby7D_SY2ZCP7QA-lao
Message-ID: <CAOSpxdZfzwc+HJpgVhyPrFijPKXx+UL+5NBTVLrYsCpkMA89kg@mail.gmail.com>
Subject: Re: [qa-build-notification] QA notification for completed autobuilder
 build (yocto-5.0.14.rc1)
To: qa-build-notification@lists.yoctoproject.org
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 15 Nov 2025 14:56:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66023

There is an issue with the buildperf tests, so an rc2 will be required.

Steve

On Fri, Nov 14, 2025 at 9:04=E2=80=AFPM Pokybuild User via
lists.yoctoproject.org
<pokybuild=3Dyoctoproject.org@lists.yoctoproject.org> wrote:
>
>
>     A build flagged for QA (yocto-5.0.14.rc1) was completed on the autobu=
ilder and is available at:
>
>
>         https://valkyrie.yocto.io/pub/releases/yocto-5.0.14.rc1
>
>
>     Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/2=
9/builds/2723
>
>     Build hash information:
>
>     bitbake: 8dcf084522b9c66a6639b5f117f554fde9b6b45a
> meta-agl: 8a94f23d8d81c02c74268ea18c35469c47a94b5a
> meta-arm: a81c19915b5b9e71ed394032e9a50fd06919e1cd
> meta-aws: c9e2b6c23bf349cd7670d47872e36158d91665c9
> meta-clang: 731488911f55ebfe746068512b426351192f82f2
> meta-intel: 6fc37057c7f0293a2345e303588901889df8b937
> meta-mingw: bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f
> meta-openembedded: f1f248262d662315159ee96c604f97415d1dbe6a
> meta-virtualization: af1db2042caf8021d767dce1b26c08b59b96f3d1
> meta-yocto: bf6aea52c4009e08f26565c33ce432eec7cfb090
> oecore: 5fa3fd112e69cca60577065145f5f8aaa41b5bd6
> poky: c1bb6b3d12ed8f69daa76435ff8f8118f42d5116
> yocto-docs: a8687e4bb2e822670b6ad110613a12fa02943d3d
>
>
>
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org
>
>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#618): https://lists.yoctoproject.org/g/qa-build-notif=
ication/message/618
> Mute This Topic: https://lists.yoctoproject.org/mt/116304038/3620601
> Group Owner: qa-build-notification+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/qa-build-notification/leave=
/12627247/3620601/791647976/xyzzy [steve@sakoman.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

