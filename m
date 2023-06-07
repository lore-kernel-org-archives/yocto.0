Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 736D8C7EE25
	for <webhook@archiver.kernel.org>; Wed,  7 Jun 2023 12:25:37 +0000 (UTC)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
 by mx.groups.io with SMTP id smtpd.web10.7096.1686140728710647220
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Jun 2023 05:25:29 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=SSLaCxH+;
 spf=pass (domain: gmail.com, ip: 209.85.208.173, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2b1b8593263so53812851fa.2
        for <yocto@lists.yoctoproject.org>; Wed, 07 Jun 2023 05:25:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686140727; x=1688732727;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=MQXBcZxgts65xgxBNxIv+E9glrueioPc+/wV4G6cD7w=;
        b=SSLaCxH+ZB+a/lrM9jaSY7RY+iTasfvmiYLPKRYNTHYy4VAiyKoyPAab73aZBk+443
         D5xQOLmaCLxb8lLYYlecWkuLUHoVUEA/c8ke9Odvk3jRhEsQZ/dXOnBzKZzvMZ+24dRV
         wAFRZa9rcmTi5UVi078OBWARiL31Vd5eGZ3ihXw1qbp2tkZCM/ioFQ0PoJeWqKAZYPTP
         nsfcjpdhnczo0o1VaZJ6x3YajkTOFk1KU5Uta6uA0LG6Ud7ZhwcTN35KQDAG8GKJNxuJ
         ACQuM8HqH8laa5CcKBPF6F08nPoHQ0LbO8tecvMntSyNWOw/p3e+Freej15wxDlRMkFq
         Y9mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686140727; x=1688732727;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MQXBcZxgts65xgxBNxIv+E9glrueioPc+/wV4G6cD7w=;
        b=Y69ZdZmavLIm3mKFCa+ALbyQyKkx2DeAOU7TISv1PNCjS5cohf7vOOtv0uCMeW8o+/
         bTb+UmTg2J/BG4jm1Lj41bOSTvOdw6nsCcjKEsW9BekbJNm5CcrrXXvr1Yw0V21Q5lP/
         gfK8nYTFrqqGi+SV30eY0Luwinx0pWZRQx+RmFRZIUoY+RBVZv2SLoB4BOSoDVT36ubq
         soVsv+lKFcZAHjRZOuMlMGkHVj6PrNOK/HxS1ybyf/bPAgqzpmLBpfgweW8ex2ZsimY6
         TflOHL/Yg4+HGih1okwszIagIxYamr5s4kLqlYl93ovp96LTVMckcLKCcSxkjqxH+ZSC
         OjbA==
X-Gm-Message-State: AC+VfDyCKwWqwp1/KBJJP7zk6X5cZ2/8wozbmkDU+Barolo6dcCxFGxb
	zTJl8+RsCXSr0aRVV4mEl8Jsp7WwVncJJMiLhniIkn9HKmw=
X-Google-Smtp-Source: ACHHUZ6yyDV5sKEZmWI0/Gu12BxG4LIOEC7qFXyeKJaJawkYZEc3JFfi2QsaaBJvCh2Le6EpKtdIES34pV6KrrFisrs=
X-Received: by 2002:a2e:9cd1:0:b0:2af:2826:b20d with SMTP id
 g17-20020a2e9cd1000000b002af2826b20dmr2325290ljj.13.1686140726513; Wed, 07
 Jun 2023 05:25:26 -0700 (PDT)
MIME-Version: 1.0
References: <ZIBziarHeT1v16Bk@aglaia.inside-m2m.de> <CANNYZj9SDRVPiafkzEAnOaH92M6QR2ayGpezLspe0gDw1X3N_A@mail.gmail.com>
 <ZIB2HUdm4J7PN5gT@aglaia.inside-m2m.de>
In-Reply-To: <ZIB2HUdm4J7PN5gT@aglaia.inside-m2m.de>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 7 Jun 2023 14:25:15 +0200
Message-ID: <CANNYZj9GxgPCA-KqrFJmCiCyTrdKCFaresRuG03MJxjypexNFA@mail.gmail.com>
Subject: Re: [yocto] Remove kernel image from IMAGE_BOOT_FILES for WIC boot partition
To: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 07 Jun 2023 12:25:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60207

[ak@fedora poky]$ grep -ir "No kernel file found" scripts/
scripts/lib/wic/plugins/source/bootimg-partition.py:
raise WicError('No kernel file found')


You're welcome.

Alex

On Wed, 7 Jun 2023 at 14:20, Konstantin Kletschke
<konstantin.kletschke@inside-m2m.de> wrote:
>
> On Wed, Jun 07, 2023 at 02:16:34PM +0200, Alexander Kanavin wrote:
> > I don't have a ready solution, but you could grep for the error
> > message, see where it happens and what can be done to 'not make it
>
> I am still searching for this like you suggested :-D
>

