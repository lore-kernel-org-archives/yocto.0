Return-Path: <chrisfriedt@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F4AEC4332F
	for <webhook@archiver.kernel.org>; Mon, 12 Dec 2022 20:05:22 +0000 (UTC)
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
 by mx.groups.io with SMTP id smtpd.web11.54270.1670875515530000951
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 Dec 2022 12:05:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=nF3wyF+v;
 spf=pass (domain: gmail.com, ip: 209.85.218.49, mailfrom: chrisfriedt@gmail.com)
Received: by mail-ej1-f49.google.com with SMTP id x22so31076602ejs.11
        for <yocto@lists.yoctoproject.org>; Mon, 12 Dec 2022 12:05:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=sXyXuncHRpal3vn49JRBMl0na8fSUmocvaTv08wcyxY=;
        b=nF3wyF+vtisd80SpYC6Dk00s7Y/A2fgKzk+R3TrvVHiatviuSKlSRVTu0ZWtrQbodR
         wFZpzMF1G8svZGiy0wHwiIrxloZjSWMvysitYLsl1zXrOCsexH68N9bYVdo3hO1oae5X
         h2mzXpci1gyvkTdoA7HZYp/YA2HGKCAd516Clsgwmt/iKCdJoVgzt4Ha3d8qHvF56ILP
         ZMmQAYGhYv+0HFrwCBPN6u4nwNaeiD8Rnk/9RXKTmi4A1/wzeB2u3Jid+PSyazQb0abT
         EB29qJFdYNpvEKxgb4RQppX+EflXJBBG6pRd+CLY7qRDTyHHeGN7XC9KXYOd5e+crIYt
         bYPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sXyXuncHRpal3vn49JRBMl0na8fSUmocvaTv08wcyxY=;
        b=qsa5kICi0lL3ojPOpRTLM4B3HoKd/5DSZy3LrTSc63vS4U1nJ83HfIJkB4AQ3EDEGW
         CqEkR6wxX1HKosvPB8eLrHBOSPKhiO39qgyUPkjlM2ea8JbzTfouEUYmPp/IH4+E8m9/
         MESM90+8ILDGe4noEGE8gnByshSqa+hTszqIn+2DRu8iqJRSMiRvsI92mDJgMFIdpIOj
         x0+rQ9BrTIfrgpfuJPtqSkJu90Et44j/iVPEH9ZPGiIsIiTsdNpLx17FUEVrKonXezgv
         CL32SBIS89pv58d94K2AptFHDX0+YywMVHFmZ4ypuppHC+LMuAoGN/efCXjDc1uKy6mo
         0hZA==
X-Gm-Message-State: ANoB5plKSpoJuOA7F3bly7qK+DSIroOLmQkFTn67Zb82d7cPl53OK5W2
	KEjkebmmNkI4xkzZx44+uux1NiCsyXyPkj9pejvpJNrVNV8=
X-Google-Smtp-Source: AA0mqf4F9O0V4Zfbs2r6uC+MBz5LdZTArEVjIQpBbs+snT27uTzDVRB2zj6VGm41wzKIyGnI1fvJO7Uh345UA/mySG0=
X-Received: by 2002:a17:906:3982:b0:7ad:8bc6:46e7 with SMTP id
 h2-20020a170906398200b007ad8bc646e7mr19505877eje.28.1670875513125; Mon, 12
 Dec 2022 12:05:13 -0800 (PST)
MIME-Version: 1.0
References: <CAF4BF-QXr8QVZOF_pPonpJbPN5O5sNjDaL78q1b5qbEcobhBqg@mail.gmail.com>
 <172E4A3E9370D7CD.20831@lists.yoctoproject.org> <CAF4BF-R5ingAhi=Xk9tuVCht72E1kGVHTOtdC5YUTVUp_tuGsg@mail.gmail.com>
 <CADkTA4O=B0nwpPHsTk=NrkZYOTo7ghpYHAuBt_52eztRTVwskw@mail.gmail.com> <CAEt6NwpbzwDmnmnkpUXwo=L1KjGsxeHGNTOUpD-WN1w8DqhOdg@mail.gmail.com>
In-Reply-To: <CAEt6NwpbzwDmnmnkpUXwo=L1KjGsxeHGNTOUpD-WN1w8DqhOdg@mail.gmail.com>
From: Christopher Friedt <chrisfriedt@gmail.com>
Date: Mon, 12 Dec 2022 15:05:00 -0500
Message-ID: <CAF4BF-SytHdGbXiU3DeLg_68cSFUvjiujZ9dDmmTW0wdY=LkbQ@mail.gmail.com>
Subject: Re: [yocto] do_install hangs on native tasks
To: yocto@lists.yoctoproject.org
Cc: Bruce Ashfield <bruce.ashfield@gmail.com>, Josef Holzmayr <jester@theyoctojester.info>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 12 Dec 2022 20:05:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58779

Aha!

Some internal tooling has "optimized" git... but apparently needs
further "optimization". So it looks as though this is a "user error".

