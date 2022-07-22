Return-Path: <jebr@google.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75998C43334
	for <webhook@archiver.kernel.org>; Fri, 22 Jul 2022 17:00:47 +0000 (UTC)
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com
 [209.85.166.51])
 by mx.groups.io with SMTP id smtpd.web09.10320.1658509242730384106
 for <yocto@lists.yoctoproject.org>;
 Fri, 22 Jul 2022 10:00:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@google.com header.s=20210112 header.b=YLiUFj8a;
 spf=pass (domain: google.com, ip: 209.85.166.51, mailfrom: jebr@google.com)
Received: by mail-io1-f51.google.com with SMTP id l24so4061954ion.13
        for <yocto@lists.yoctoproject.org>;
 Fri, 22 Jul 2022 10:00:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=MIQuL7EQeby6TQ8J/4Jq1uVSjYHlExMxCCN6DzcRZlM=;
        b=YLiUFj8anQ6/SsiQBCq5SW1TUzZCDo6XSyz3ITPPJawjpC3FBB0qWUOfN5Tr7ykVWS
         rxdzIhmRtaRuc2tzqxWPstVxG6omJ/4pyL2nIK4LHH0IIdjT3vAuvX+uilTkcTnOwT9z
         jbZxT94sF6BUQ7iQG5fBebc7fsw/InKNBuNGiHiGfBI201C6Et+AfXSy9ZrwNI7tvK4T
         OcWPthJozSwtMghr7YUTrYCh6nrnhlYWJ3SlwhprbFlstnd8M2Lmz0oP1T5MauLFDimq
         yOMn0WB60Yw/ymn3Pqm3vsMqnDUJeSYUiywAyRJFPeL7SwC5TCj5wJxqmqFhObHdBFwv
         6acw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=MIQuL7EQeby6TQ8J/4Jq1uVSjYHlExMxCCN6DzcRZlM=;
        b=A+oxQ7G4OdQeQ5IJ6iFXM09iYTNDyBMTN1SCzmBgDs4mk9D+X0Y9Gyv/c1NDVQ1g+6
         Zo0L78uPgsQj5T9SNVFE0AWMPlXcd8d/lNymhxwzdkNCWcJIgc0/l7IecljYTvKHQ66x
         hA8QFoOjA3g7qonAIpAorKmIPk1Jo9AwK2eP+GdWrvLTUEYEkw9if1bjj9lv89WGes9k
         VzugCRcOgod9WEoPawCapwvZlGI4GQ8PVNcbUm4otETYa9bCAa5BZS+sjVlQdXkcJ2Cy
         hkBoP7WAQp2yf5GBzY/0EszVFrjqiVx1CGFVAxVIQijhTqBgLaM9IusOR4Ndc7qrN7AY
         tTFw==
X-Gm-Message-State: AJIora8N350w2a1PVIoJY7YCIiPdFrokxWTxblW/x1pPNofd+XgOuhr6
	yfh5gQ06hHAk1+WkmP3L2lul2VrSCkmIUfK+6s5i2g==
X-Google-Smtp-Source: 
 AGRyM1thAIDZlItkM4AwxFM9C6qJdDfh1E2ETvVphqdbF5349u6C754R0bHLCDlmBmFNj71PkQt3z1dmjXNK0K/6PhE=
X-Received: by 2002:a02:664a:0:b0:33f:5310:35e1 with SMTP id
 l10-20020a02664a000000b0033f531035e1mr455221jaf.214.1658509240923; Fri, 22
 Jul 2022 10:00:40 -0700 (PDT)
MIME-Version: 1.0
References: <20220722163510.2229149-1-jebr@google.com>
 <CAMKF1soOAEsH85zVp+QUdktbmpNiwax5A7kDinVg87=ZtObK5A@mail.gmail.com>
In-Reply-To: 
 <CAMKF1soOAEsH85zVp+QUdktbmpNiwax5A7kDinVg87=ZtObK5A@mail.gmail.com>
From: John Broadbent <jebr@google.com>
Date: Fri, 22 Jul 2022 10:00:29 -0700
Message-ID: 
 <CAPw1Ef9Rsz_UjjuK2WmKRCev9tR2zKxr3Kt++6i1=AXHhBbHjg@mail.gmail.com>
Subject: Re: [yocto] [meta-security][PATCH V3] meta-security: Add recipe for
 libhoth
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 22 Jul 2022 17:00:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57626

That is unexpected.

The sha change should have changed the PAGE_SIZE to SPI_PAGE_SIZE,
correcting the macro shadowing issue.
See:
https://github.com/google/libhoth/commit/1622e8a040d21dd564fdc1cb4df5eda01688c197

Thanks for very quick review
John Broadbent

On Fri, Jul 22, 2022 at 9:47 AM Khem Raj <raj.khem@gmail.com> wrote:
>
> On Fri, Jul 22, 2022 at 12:35 PM John Broadbent via
> lists.yoctoproject.org <jebr=google.com@lists.yoctoproject.org> wrote:
> >
> > From: John Edward Broadbent <jebr@google.com>
> >
> > Libhoth is usb protocol implementation which is required for hoth class
> > devices
> >
> > Signed-off-by: John Edward Broadbent <jebr@google.com>
> > ---
> >  meta-tpm/recipes-tpm/hoth/libhoth_git.bb | 17 +++++++++++++++++
> >  1 file changed, 17 insertions(+)
> >  create mode 100644 meta-tpm/recipes-tpm/hoth/libhoth_git.bb
> >
> > diff --git a/meta-tpm/recipes-tpm/hoth/libhoth_git.bb b/meta-tpm/recipes-tpm/hoth/libhoth_git.bb
> > new file mode 100644
> > index 0000000..a3ebce7
> > --- /dev/null
> > +++ b/meta-tpm/recipes-tpm/hoth/libhoth_git.bb
> > @@ -0,0 +1,17 @@
> > +SUMMARY = "Google Hoth USB library"
> > +DESCRIPTION = "Libraries and example programs for interacting with a \
> > +               hoth-class root of trust."
> > +HOMEPAGE = "https://github.com/google/libhoth"
> > +
> > +LICENSE = "Apache-2.0"
> > +LIC_FILES_CHKSUM = "file://LICENSE;md5=3b83ef96387f14655fc854ddc3c6bd57"
> > +
> > +SRC_URI = "git://github.com/google/libhoth;protocol=https;branch=main"
> > +SRCREV = "1622e8a040d21dd564fdc1cb4df5eda01688c197"
>
> it still has the musl related issue, that I pointed out
>
> > +
> > +DEPENDS += "libusb1"
> > +
> > +S = "${WORKDIR}/git"
> > +
> > +inherit pkgconfig meson
> > +
> > --
> > 2.37.1.359.gd136c6c3e2-goog
> >
> >
> > -=-=-=-=-=-=-=-=-=-=-=-
> > Links: You receive all messages sent to this group.
> > You automatically follow any topics you start or reply to.
> > View/Reply Online (#57624): https://lists.yoctoproject.org/g/yocto/message/57624
> > Mute This Topic: https://lists.yoctoproject.org/mt/92551443/1997914
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> > -=-=-=-=-=-=-=-=-=-=-=-
> >

