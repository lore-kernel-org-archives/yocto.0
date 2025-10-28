Return-Path: <martin.jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6130CCF9E0
	for <webhook@archiver.kernel.org>; Tue, 28 Oct 2025 13:29:58 +0000 (UTC)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
 by mx.groups.io with SMTP id smtpd.web10.11624.1761658189263294640
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Oct 2025 06:29:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=DE8DbMHT;
 spf=pass (domain: gmail.com, ip: 209.85.167.48, mailfrom: martin.jansa@gmail.com)
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-592f5736693so6262858e87.1
        for <yocto@lists.yoctoproject.org>; Tue, 28 Oct 2025 06:29:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761658187; x=1762262987; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=13uw065CcIXzd308hAGtT/hpcojKB2XXEGXSo/PzSdE=;
        b=DE8DbMHTCykwYSVIoS0dYyx9KnQIHErBxXfar229povXUnTKmyavICz42vYR8864VG
         4ThP6KLDpx0uPrbF2gsdu5A+vTseSYNX8oythvI9PNonq1pqE9FmNcaR4BRe3CRmnKo3
         0wkajYwQ+sLPjdStCtkNW0Jflpr3OYosI1//aDfrNhMQ188MGZnwT/uwuNg2AqvUroVL
         5YxwXfKeP3kMiS0hAToNjFIL/fXUkC+zr9jPBjMoMPW/zK42ND7jq3iJqClM82MYzNvK
         cKrrA1juHY9On0twyRDMLyQdBMFEozjf2bVRMW23LLph5aLR0KosQaHnPsl9LOm7z+4V
         tnXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761658187; x=1762262987;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=13uw065CcIXzd308hAGtT/hpcojKB2XXEGXSo/PzSdE=;
        b=IWO2bmiCXvy183YbICkVZljmCtac2mWBiaR7OrROzDCzRMBmgvnqr3yfyiKqOJaLjj
         VvszJ1gxY1LQRSM0fwqDVxkXYITXezFDFxUaz26WCOK088y9eLZWCLosohJfpXb3B7/N
         RVeJEdq8QUNTp1buAJLrNe4kQhokyrEj6yPCPk94k7J/KWjRctauDuOJp/tUnpmjLoic
         sUKX9xkAvyFuWeNmYAa9IUuZLGSXvzWjVEgF4odezwQHwLnlIHudSucw1qdghWRJiKIz
         MLWxeUpRqbvhhcHHObzPtdkPgMiTwXsLoNZ9q/UO36urGiJqTXOq7gKfxUQ0YhBfUxgu
         VIVg==
X-Gm-Message-State: AOJu0YzJHP8y7BR1Y79ovkW0Iilo3UCCWHUhdaDz8pYdcbOI3HxF2Ryo
	JoAUXlmAPMTGW5Bn1ETCMWLvinR0xl6l+o/6hn5IGLqbhvX6SJ7Qu6Wo66rfenPBxrLEhLdkquP
	Vcbzq4RXC+CFdJ1Ejxhsi9K/jF8Sq0ZR5Z0ag
X-Gm-Gg: ASbGncvC5SRyZWQGPGzPWRMuD9qZUcW/OfjqeymN4GH6VL/znKWDPFubNBY6RgYT1da
	KeYM8vK3e51RHJScjZhCdEUOeJnFOaNncOGiecaRL+JWKT1FYZXkQbMVvizM35AQ48v/J4lvcDm
	W4MVD4j3ouACSm3PgOpEO5wLH/7Oh86Da+qvNatQ/sLUHez0GDNfnaZaYSis1AgDyaaoAVXUPl3
	roYNTn55BtGiuyRrrruDLy4i9Oo5EDsf/QhGLx0F35g7fCq/WPFYAhOUAAB6M0=
X-Google-Smtp-Source: AGHT+IHJK9WUE3jPB0f1ZsunSPJRYHAgfbsMRflOnTElclDLdtnV5Qkbnqf6xN2AFRTgUHlZltLqHwz3dr9zy2BDsYs=
X-Received: by 2002:a05:6512:6c9:b0:592:f951:db81 with SMTP id
 2adb3069b0e04-5930e9c4961mr1592505e87.36.1761658187034; Tue, 28 Oct 2025
 06:29:47 -0700 (PDT)
MIME-Version: 1.0
References: <253a0731-97d0-10ef-aef8-2f56328a81f9@crashcourse.ca> <CAMjhiJibGPcqNB2ERP=Gxo44VTqnW+BXxQ8HjBOjHemQ_pjmJQ@mail.gmail.com>
In-Reply-To: <CAMjhiJibGPcqNB2ERP=Gxo44VTqnW+BXxQ8HjBOjHemQ_pjmJQ@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Tue, 28 Oct 2025 14:29:33 +0100
X-Gm-Features: AWmQ_bkFHzlCxgwM-T1bolLBxTm2_CDrmJILet7cARqY-xW7KtMiAKOKfC1F5hg
Message-ID: <CA+chaQd_v95ssGF0tLJC99+oNNc7z-2pNXdsOCs5ceuBDcJGNA@mail.gmail.com>
Subject: Re: [yocto] pedantic nitpickery: coding style with "FILESEXTRAPATHS:prepend"
To: yocto@lists.yoctoproject.org, leon@sidebranch.com
Cc: rpjday@crashcourse.ca
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Oct 2025 13:29:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65976

On Tue, Oct 28, 2025 at 2:14=E2=80=AFPM Leon Woestenberg via
lists.yoctoproject.org <leon=3Dsidebranch.com@lists.yoctoproject.org>
wrote:
>
> On Tue, Oct 28, 2025 at 12:37=E2=80=AFPM Robert P. J. Day via
> lists.yoctoproject.org <rpjday=3Dcrashcourse.ca@lists.yoctoproject.org>
> wrote:
> >
> >   (spoiler: turns out this is fine, but it's non-intuitive)
> > arm-ffa-transport.inc:FILESEXTRAPATHS:prepend :=3D "${ARMFILESPATHS}"
> > linux-yocto%.bbappend:ARMFILESPATHS :=3D "${THISDIR}/files:"
>
> Indeed, I would have written this, as the trailing double colon is
> needed in the prepend context of using the variable.
>
> arm-ffa-transport.inc:FILESEXTRAPATHS:prepend :=3D "${ARMFILESPATHS}:"
> linux-yocto%.bbappend:ARMFILESPATHS :=3D "${THISDIR}/files"
>
> But as you said, it works, so that's typically enough barrier to keep as-=
is.

I agree, but only until there is an exception where you don't want to
prepend anything (by setting ARMFILESPATHS to empty) and then having
extra double colon will be worse than the currently used syntax.
Similarly when there are multiple paths in ARMFILESPATHS variable and
first one will need own double colon as separator, but the last one
not. In all cases bitbake-getvar or bitbake -e is your friend (when
git grep isn't enough).

Cheers,

