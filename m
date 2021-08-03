Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
 by mx.groups.io with SMTP id smtpd.web12.457.1628024286587332549
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Aug 2021 13:58:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZlhzFRhq;
 spf=pass (domain: gmail.com, ip: 209.85.219.54, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f54.google.com with SMTP id d17so96859qvn.13
        for <yocto@lists.yoctoproject.org>; Tue, 03 Aug 2021 13:58:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=S2OQ84cx4c7pvSoqBGhktdXFqElHaSF1N5bXjzbp1dk=;
        b=ZlhzFRhqAXzlzS6F5KaqdZ6kFkjLQkHa04LiTOvFBGFh+fDlrK64gC+xCRN1rw/hon
         5ATJum29DCDpgX5wk2hdCvWWFFszNGRgJ6hWYXE4cacZHyfA3ANXt2Iw9zIr5TNzsCYq
         9saCU7Pwhqqie5doSqEE9KuaCHPSpyhKQaIYZ9EHYkIxjaA4BccLD5Yu+J9aP7qeARas
         lAv6ig8pKe6ImZ0CP7G7/0jTFPRKzzHCeT6q/cAw0SfIbqIdMoI1Hl9YCVM5VE/4xmUM
         pqK+LWBfWZ+ylDCCnlktfhMs1oXvRBILZO+KWKrG6yzaCoefF20sgT+EzUdg60MbbfA1
         /11Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=S2OQ84cx4c7pvSoqBGhktdXFqElHaSF1N5bXjzbp1dk=;
        b=cQLAnOLUz78+I9WJ9tFqSoL9F8U2+RBc+yeD+YiG9TxVz8S2/GddS58IHzkduRBkKe
         VApwAKv40Vuwbr3pusRIaEL0csWbnC7Mduu5UsurY61hAGfBoqeCXMKfsEPHdKwKV9u2
         BF3t62qqlqrwB8hX2IZIFhX9YEbq1iF4KeuT7FYZWOZSr8DItZ7MMON78l3k2XaM6eFE
         DSL52rJGHN8YEj56QRtF592FHgZ3FWaU5uE3W3WE/t+VUQsCKC5wiH02u6vKfUvWt3Te
         8L98Z7Bb8Dk9VTtDXwmvg/gqcoJgZ73RjWo9OdJlc3QRTkycxswYtfFHhIDVFznz8hll
         uSMQ==
X-Gm-Message-State: AOAM530b1Zhv5mWnmGFahuWDdbTKN2AJVTax1661pnVL0U9MEn7JbAp6
	xUM5gxafn28FeqOCHw1/4StBfBhi9oFQB4g87ok=
X-Google-Smtp-Source: ABdhPJyW8r3coHvAS1yJewz9phAiXpqPmA6PQglorWMwsQdcV9Gde2cbewp/b3gVTfUnAROtO+VhzfAEHszUbyrdVSw=
X-Received: by 2002:a05:6214:1041:: with SMTP id l1mr14893881qvr.55.1628024285515;
 Tue, 03 Aug 2021 13:58:05 -0700 (PDT)
MIME-Version: 1.0
References: <20210803170230.2647035-1-raj.khem@gmail.com> <20210803194743.GA6386@localhost>
In-Reply-To: <20210803194743.GA6386@localhost>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Tue, 3 Aug 2021 13:57:39 -0700
Message-ID: <CAMKF1sqNjsPeqjwF725WFrBA12Za7TPtC-Xx98vECkj=qp57ZA@mail.gmail.com>
Subject: Re: [meta-rockchip][PATCH 1/2] layer: Convert to new override syntax
To: Trevor Woerner <twoerner@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Tue, Aug 3, 2021 at 12:47 PM Trevor Woerner <twoerner@gmail.com> wrote:
>
> On Tue 2021-08-03 @ 10:02:29 AM, Khem Raj wrote:
> > Signed-off-by: Khem Raj <raj.khem@gmail.com>
> > ---
> >  classes/rockchip-gpt-img.bbclass                          | 2 +-
> >  conf/machine/include/rockchip-wic.inc                     | 2 +-
> >  dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend | 6 +++---
> >  .../trusted-firmware-a/trusted-firmware-a_%.bbappend      | 8 ++++----
> >  recipes-bsp/u-boot/u-boot%.bbappend                       | 6 +++---
> >  recipes-graphics/mesa/mesa_%.bbappend                     | 4 ++--
> >  recipes-kernel/linux/linux-yocto%.bbappend                | 4 ++--
> >  recipes-kernel/linux/linux-yocto_5.4.bbappend             | 4 ++--
> >  8 files changed, 18 insertions(+), 18 deletions(-)
> >
> > diff --git a/classes/rockchip-gpt-img.bbclass b/classes/rockchip-gpt-img.bbclass
> > index 3ee46c8..4d22e3a 100644
> > --- a/classes/rockchip-gpt-img.bbclass
> > +++ b/classes/rockchip-gpt-img.bbclass
> > @@ -40,7 +40,7 @@ do_image_rockchip_gpt_img[depends] = "parted-native:do_populate_sysroot \
>
> The following two need changes too, don't they?
>
> >  PER_CHIP_IMG_GENERATION_COMMAND_rk3288 = "generate_rk3288_loader1_image"
> >  PER_CHIP_IMG_GENERATION_COMMAND_rock2-square = "generate_rock2_loader1_image"
>
> There seem to be a few that were missed. I'm working on a patch as well. I'm
> just testing the images on some of the targets now.

please use v2
