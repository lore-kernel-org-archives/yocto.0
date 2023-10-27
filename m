Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 33A78C25B6E
	for <webhook@archiver.kernel.org>; Fri, 27 Oct 2023 09:03:45 +0000 (UTC)
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
 by mx.groups.io with SMTP id smtpd.web10.2932.1698397423371712695
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Oct 2023 02:03:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Xfc+U8Jm;
 spf=pass (domain: gmail.com, ip: 209.85.208.182, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2c50ec238aeso25902311fa.0
        for <yocto@lists.yoctoproject.org>; Fri, 27 Oct 2023 02:03:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698397421; x=1699002221; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=o6guqcqjUewZq4axxCHXeH/EDorr/fJSH+6rpsYULCY=;
        b=Xfc+U8JmXhOF08P1J0V8K2tYR3VVdasImBm5CBdoS5zFkJQnl+5QVZNAgTVHfZlx0K
         UJ4tm5zf1yk+1MB9CjAwZ96w+y0MiQQbTp9WL7A0Az2bXgzaNdiBo/0uEURErYs2kbkG
         PCZ5kt/f//zTjCF8JeMEudx3zKGW2II4FvSMdgMYRB+fhftdYJE50fTw8FNTjTrYxDbx
         COlHshYB04aoXLrB7diGnTwAiTa/F8tVvl2fJe+mWYXCVeltD0m9zsTLNLr7dlv9jdxj
         Qes/wwNRErX/rESBntCRwiItRfs3nQovhBAE/mkZTu35kqCVrbiOyTQU4DttlL+6pWK3
         RBZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698397421; x=1699002221;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o6guqcqjUewZq4axxCHXeH/EDorr/fJSH+6rpsYULCY=;
        b=toGN3WYTEHOh6CkZ5fUwSkQyA2Dj7usFFuNP6fTNF7AjIZCTJLuU09SCtz1SmevEEg
         Op20bJqtiQchAgffHEl0fp7oNqosoLF1geg98KYa2y/IxjOwDgkxDrBx2a8AsqcG5u4Y
         4BR9v7u7aDu620g8ycOWd2YXS0wyJ8bY+Zz6J1vTo5iszbY8oZJHGFfv36dKHtJzND1N
         oeBFmLzjBvt43O63Rwh35pn1AL+QNtZQ0nuGXQP/HhoZ+l3lCVwvja7Y/jYSTrdkbweF
         3eMrPt5rGz1w6K5yoiIG+l6r2FuspPxzQpbVbRymdHV/8RPDl1vWM/E/rl/NtQ01cVo1
         +91A==
X-Gm-Message-State: AOJu0Yxg/wNFxVagSw5Xlb7ew5DhMO8sZxZchf1/ZsexmXfcrSbWKTl7
	4KcisX1F1bBWD8soKBCnLYHXAw9knSJhpS8hHy/3Zuzt
X-Google-Smtp-Source: AGHT+IG8OBUk+f0sVhy2PJjXEOrO8M7aghWWwpEkH1gm5SKTovRCY7k0KJxiNK4n4RP/5gMghjzuWQ9XY9//cKbJGPo=
X-Received: by 2002:a2e:9e46:0:b0:2b6:da88:a2d0 with SMTP id
 g6-20020a2e9e46000000b002b6da88a2d0mr1499191ljk.47.1698397421177; Fri, 27 Oct
 2023 02:03:41 -0700 (PDT)
MIME-Version: 1.0
References: <20231027072147.111314-1-alex.kanavin@gmail.com> <638c906e1cfab93122fab544eef8ad43ee61222c.camel@linuxfoundation.org>
In-Reply-To: <638c906e1cfab93122fab544eef8ad43ee61222c.camel@linuxfoundation.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 27 Oct 2023 11:03:29 +0200
Message-ID: <CANNYZj88hevACy1oDLcgSdzef-T1umrxdi+Ust4EwMgLxvYDfw@mail.gmail.com>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper] config.json: add a
 standalone builder for running yocto mirror tests
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 27 Oct 2023 09:03:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61501

Thanks, I'm also just now testing the change that also prints what
sstate paths were actually requested when the test fails due to
missing objects.

Alex

On Fri, 27 Oct 2023 at 10:56, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
>
> On Fri, 2023-10-27 at 09:21 +0200, Alexander Kanavin wrote:
> > Those tests are currently run as the last step in a-full/a-quick,
> > but it's useful to also trigger them separately, after perhaps
> > executing other builders that populate the mirrors (such as
> > qemux86-64 and such).
> >
> > Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
> > ---
> >  config.json | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> >
> > diff --git a/config.json b/config.json
> > index 9987514..918cf08 100644
> > --- a/config.json
> > +++ b/config.json
> > @@ -1433,6 +1433,14 @@
> >                  "${SCRIPTSDIR}/setup-auh ${HELPERBUILDDIR}; ${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBLISH_DIR}/pub/auh/"
> >              ]
> >          },
> > +        "yocto-mirror" : {
> > +            "MACHINE" : "qemux86-64",
> > +            "step1" : {
> > +                "shortname" : "Yocto Mirror Selftest",
> > +                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; DISPLAY=:1 oe-selftest -a -t yocto-mirrors -j 15"],
> > +                "ADDLAYER" : ["${BUILDDIR}/../meta-selftest"]
> > +            }
> > +        },
> >          "meta-oe-mirror" : {
> >              "SDKMACHINE" : "x86_64",
> >              "MACHINE" : "qemux86-64",
>
> This and the controller patch should be live.
>
> Cheers,
>
> Richard

