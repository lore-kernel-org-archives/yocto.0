Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D3F4D1A45A
	for <webhook@archiver.kernel.org>; Sat, 12 Oct 2024 09:00:38 +0000 (UTC)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
 by mx.groups.io with SMTP id smtpd.web10.7350.1728723634031948022
 for <yocto@lists.yoctoproject.org>;
 Sat, 12 Oct 2024 02:00:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=DM+qckF3;
 spf=pass (domain: gmail.com, ip: 209.85.167.45, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-53995380bb3so3736225e87.1
        for <yocto@lists.yoctoproject.org>; Sat, 12 Oct 2024 02:00:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728723632; x=1729328432; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TJf5HKoanAZ6rFuklSYOpb0z3yhpeT2M0+xUra1GsWI=;
        b=DM+qckF3NcHGcGC/6GA3wvewBCl/3XaOWN8KwGgqXV9OAXfnS3Mwou8Ku0niFkvwjT
         LrBBFkGOFAkicktC26Vtl/M7ZRFGFYDlRlKOmlBWeYGCuT1TnPu/jrVhsIV4YsOmrZQP
         GNFBAcAPCVMz/UwS8pK9Sf/lGQIYy/MRye0gNZxqsp4f+TcxJx72WfPm8S4lt7WnjdBw
         HYO/zn9fqGLWK0prlhy971C/HdGFP2lyyLivqNZTx1tDyQglfGnNo7FEauWeOHAwHzi1
         uo5bCxP1NEzmfnBCtX8dGqEuiH+GiWhE5JKerSqeZzniWZW/GGHrq94IWYcAR2nZy8cu
         l2Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728723632; x=1729328432;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TJf5HKoanAZ6rFuklSYOpb0z3yhpeT2M0+xUra1GsWI=;
        b=qG6955AkXHR1jRofx1q/IyohsgsCMopg0TODt4cFGxInSKwvaqB6tWfVeo7r74IpS0
         cK03OEV0SPMZhKmhXISPv6yc0y9KIjq2rneTcznttbZFy9NX6/2fpGcq/K6MLtqapRDy
         0vIEDaD/3/mCrJzOWyY802BX92OoMkhXfjCAT0Pwg0DN45lG0a6twkXuLnfdMMjsw7vk
         8XotvizbMjUdV3XqqfEHwDgcBv5fjIY8zBSWgS2p93RSLEYfV/d+Wfd49sgKKKwpkasg
         luSD6JTv32hqpsw16YCoQjKjR8i1ZuraMGXVQ59FA0rlfXPCKf6g+yaKnZSBrN4yPuA0
         5v6w==
X-Gm-Message-State: AOJu0Yxw9nf3mJJzsaQBS34yy+lEpwHq6jsrGLD9K3YmywWNvBLgL53w
	DradMfQk576DcF/3RnnY1Z4Uh6svgoaATnX8rkrPiZFCvPkao0tCmQKYLZJ9M9rj3rfaBUYTmWI
	KpDLcQ2GcxZ2Rvq8RORf84gYm//Y=
X-Google-Smtp-Source: AGHT+IGioBiUbY93DOoh4CI3nSyq05QoFZDwnaO7cFr7liqxtwKhdrj2zJH7BKu8ns5oi+MIicl/X+yAnYLwnxkJSMY=
X-Received: by 2002:a05:6512:2398:b0:539:e513:1f69 with SMTP id
 2adb3069b0e04-539e5132047mr999843e87.17.1728723631850; Sat, 12 Oct 2024
 02:00:31 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj-M=WJCA-ypRYpi3svbVb3ciJH2sd1VeEyQP5cXjevXcg@mail.gmail.com>
 <24753.1728676151495526216@lists.yoctoproject.org>
In-Reply-To: <24753.1728676151495526216@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Sat, 12 Oct 2024 11:00:20 +0200
Message-ID: <CANNYZj9q_5N3hOdf4MD9VeVbO+XfgUHHNg-jv9H2LeHkmErHVA@mail.gmail.com>
Subject: Re: [yocto] Currect usage of pkgconfig / find_package(pkgconfig)
To: aleksandar.nikolic010@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 12 Oct 2024 09:00:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64013

On Fri, 11 Oct 2024 at 21:49, Aleksandar Nikolic via
Lists.Yoctoproject.Org
<aleksandar.nikolic010=3Dgmail.com@lists.yoctoproject.org> wrote:
> The A cmake project calls find_package(PkgConfig) because it uses the com=
mand pkg_check_modules(). AFAIK this command just looks for modules, so I n=
eed this in every cmake project which depends on A, basically meaning inher=
iting pkconfig.bbclass is the only solution here.

But what is it actually checking for? Is it something that only A
would need? If so, then why consumers of A are forced to use the same
file which contains checks for things they don't actually use?

Alex

