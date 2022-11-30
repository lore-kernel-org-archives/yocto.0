Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58858C4167B
	for <webhook@archiver.kernel.org>; Wed, 30 Nov 2022 02:07:49 +0000 (UTC)
Received: from mail-oa1-f52.google.com (mail-oa1-f52.google.com [209.85.160.52])
 by mx.groups.io with SMTP id smtpd.web11.368.1669774059621995331
 for <yocto@lists.yoctoproject.org>;
 Tue, 29 Nov 2022 18:07:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=PJdmluR7;
 spf=pass (domain: gmail.com, ip: 209.85.160.52, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f52.google.com with SMTP id 586e51a60fabf-14286d5ebc3so19422602fac.3
        for <yocto@lists.yoctoproject.org>; Tue, 29 Nov 2022 18:07:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LKo82M3ga+wl+UQeW2lgTNjwRQkyAFnLvvjA3TNqhPs=;
        b=PJdmluR72en6OhbzL37RJ5EqA5qJLDxM3P3jFqAYC0Vhhf6eCIsNBcCMSwkf6IFns1
         AQLDSrhNNqzopQCBtNzWMtPmZaO0c+XPg7nKQGCwOwZVIlCYMaPFs76XKUe6u8HnEvrz
         Z07o8pkmRICN48TUm7VGo8X6iQ48lvJz3Czx0wNFpnjmwGKw2VsrNo2gh+kY/tUVh171
         A7l5KywiKS/M+cNCmGmkp4+dSAHbtOqqmvI6mQlbory21BuP33ewHy4vaKg08bG+JNTJ
         RLkW3nqTlBb5fF8O3hDS1qIbL263+xeK3iB1uRllz/LtfXN1JoJv+gyQesDPwXx30Dqq
         02+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LKo82M3ga+wl+UQeW2lgTNjwRQkyAFnLvvjA3TNqhPs=;
        b=BY5OA3ri0xYWM35vuoJMBi7Ob2bQZxTIXDFnUyaZS0c++Al/51DExoqpGhAvRNjfsq
         21eS+BlJLNrM7bx+BuF+meJUHhv3tvUjmc/zbE5g5if41f5Vx1/JGbkuYmcuXEm1lKnN
         +sLMr1AW4Lr5wYJEIGUJbIP725aqc6Ti21wlfTBhe83O3y3JU15Q9UvGRmKZg1Gz+NA4
         0xqLvaDe6ZZvn6mhE9WGJH8luGhUcQUfeBFMBOa8UaY42WkCqHW683K0lG3VOyHKeZrB
         GGexQmXm5JYU8oQ9YU6GmktuGYUhK6X8MECH1AmZIaI6rJDYat7vWLl7iv9tfRlK7mmj
         IDvA==
X-Gm-Message-State: ANoB5pl3eBWaNGCIrWVjD3PDDEzr1IzHzRlchMCMqY8pP4j/C8EYNEHG
	oV+S//jOiX8d6qniRxjeUkZiqMW7nGTXxFKEZJI=
X-Google-Smtp-Source: AA0mqf6T5FJRfPb4KGf9rUsgDr5owN9IsGZLBHZ1Nv6XG+klSBpjJf3Oumg15ZKrqexacjHxKSxyx27X2VNqZBXfMkc=
X-Received: by 2002:a05:6871:4199:b0:142:d126:dc55 with SMTP id
 lc25-20020a056871419900b00142d126dc55mr23020973oab.262.1669774058893; Tue, 29
 Nov 2022 18:07:38 -0800 (PST)
MIME-Version: 1.0
References: <GV1PR04MB9149717F3BCEDB8BC97EAA928C0C9@GV1PR04MB9149.eurprd04.prod.outlook.com>
In-Reply-To: <GV1PR04MB9149717F3BCEDB8BC97EAA928C0C9@GV1PR04MB9149.eurprd04.prod.outlook.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 29 Nov 2022 18:07:13 -0800
Message-ID: <CAMKF1sq6ONVTM-Rm9RSj_kbisJc7vaXFoWtq_BWVKB4rB52h_A@mail.gmail.com>
Subject: Re: [yocto] Fixing package dependencies across recipe versions?
To: Heinz Wrobel <Heinz.Wrobel@nxp.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 30 Nov 2022 02:07:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58662

On Tue, Nov 22, 2022 at 11:29 PM Heinz Wrobel <Heinz.Wrobel@nxp.com> wrote:
>
> Hi,
>
>
>
> In my layer I have two older versions of glibc in addition to the 2.35 pr=
ovided by kirkstone, and a the global conf for the build directory sets GLI=
BCVERSION to select which one to use.
>
>
>
> The problem is that they don=E2=80=99t all provide exactly the same thing=
 and that older version appear to influence newer versions, causing warning=
s.
>
> 2.27 and 2.31 build libsegfault, but 2.35 doesn=E2=80=99t anymore. If I p=
refer 2.35, then I get warnings like:
>
>
>
> WARNING: preferred version 2.35 of glibc not available (for item libsegfa=
ult)
>
> WARNING: versions of glibc available: 2.27 2.31+gitAUTOINC+1094741224
>
> WARNING: preferred version 2.35 of nativesdk-glibc not available (for ite=
m nativesdk-libsegfault)
>
> WARNING: versions of nativesdk-glibc available: 2.27 2.31+gitAUTOINC+1094=
741224
>
>
>
> It seems that the unused/older recipe versions are still considered for d=
ependencies somehow, just because they exist in the layer.

This is true and it happens because they all provide something
commonly, perhaps virtual/libc or somesuch. However, each one of them
does not replace exact providers
so they must match for one to overrride other. So you might consider
adding addtional needed PROVIDES in respective version of recipe via
bbappends or maybe main recipe itself.

>
> I understand that the old glibc versions provide libsegfault and that it =
can=E2=80=99t be found in the preferred version, but I really don=E2=80=99t=
 care about the other versions as I have not selected them.
>
> I could completely remove the packages from the old versions, but that se=
ems like a brute force hack affecting what the recipes could provide when I=
 select them.
>
>
>
> Is there a clean way to modify/bbappend the recipes to best fix, or at le=
ast suppress such warnings when the recipe versions causing them are not se=
lected?
>
> Is there a way to do version based dependency declarations to be recipe v=
ersion rather than recipe name specific?
>

glibc is runtime dependency so you can only have one copy systemwide.
so having multiple recipes is only beneficial if you are building
different distributions from same workspace with different version of
glibc.
>
>
> Thanks,
>
>
>
> Heinz
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#58621): https://lists.yoctoproject.org/g/yocto/messag=
e/58621
> Mute This Topic: https://lists.yoctoproject.org/mt/95213713/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

