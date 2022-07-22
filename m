Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E953C43334
	for <webhook@archiver.kernel.org>; Fri, 22 Jul 2022 17:14:17 +0000 (UTC)
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com
 [209.85.222.179])
 by mx.groups.io with SMTP id smtpd.web10.10495.1658510050047636536
 for <yocto@lists.yoctoproject.org>;
 Fri, 22 Jul 2022 10:14:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=c8+hWPGH;
 spf=pass (domain: gmail.com, ip: 209.85.222.179,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f179.google.com with SMTP id n2so4077248qkk.8
        for <yocto@lists.yoctoproject.org>;
 Fri, 22 Jul 2022 10:14:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ZLaC+9aJwcf9p1wjz76VfhY2fySB4hlTxEO7PNBLDS8=;
        b=c8+hWPGHwnIRRoKNAsL5EAi8vhM60nRENvsqUz9QYGqnYtxjS3iY24qWPy2OAeqacN
         RuufnmFcbKJvEjpZs4yvBEFDPXWgnfxpWU23QHPZPE1VnZCuLPQCyvxLI7o7nZXMB4Ci
         yIk4RrnMsA32C6FlpY8iPetB790oE4xOtNEaRTbcRAucoG6Kf+02s/B9C2T0ixeCDIiV
         UDmtGzqq0KhUVOUWXJnm+K59sGy9AyIeY/zSz8GQ1luhqK/kj8ULIIjX4mZJE0CWvD4z
         tSPbktneTADOk8IvJJXFu6JJThvykTKzIcCvJgCBz/cu7Gkrr0MDMLOTZvQXoL9s+fmX
         95lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ZLaC+9aJwcf9p1wjz76VfhY2fySB4hlTxEO7PNBLDS8=;
        b=1BwcINDSVewZeV8VF4hk08SlCrJx/vkJwzmujxehsqXGQ2a4Df7qeL+TzjPLkPyyIk
         kCTxiyHaDezeSa36YQrFhOdv/a+IcY19s3sOnVv0z1QwCJg47AlwG8SoeHKwGyiVSpLt
         GGqIFssCdByC5j68xv9J0ipIqjfw29dTMENHLPH4WR67OjWV0hsJTvVjGJYuzj17enAo
         z3gARAWlRdixDiRENsrDZw/YTmeXdq9LNDiCdWKDqfReZXFWr8nIrwJWMLsaL3JmhdE9
         ja+J6eYfHGil3p3pX40m+J1w8/czXEhYaXkr28HHgqQfliqsgfq4l/C52c4c7miHPQal
         D/AQ==
X-Gm-Message-State: AJIora9TnxKzKYXFDd1ilYehIf4IuOigLrRLBW4jMJVBfk1jLlWWfzer
	hjzuytkYmLGTXXE2x788mzsaqjxokJzzcPCqHVjqq/tQJVc=
X-Google-Smtp-Source: 
 AGRyM1smHAIFLjRSaaHEcSSefxLA8hspdg8D8mLEnwdUb9uMBwS749NgGcHY7yRjnbFp6EDGXg/yWikJSzpyn8VitIg=
X-Received: by 2002:a05:620a:2449:b0:6b5:f01e:d6cb with SMTP id
 h9-20020a05620a244900b006b5f01ed6cbmr743614qkn.463.1658510048153; Fri, 22 Jul
 2022 10:14:08 -0700 (PDT)
MIME-Version: 1.0
References: <20220722163510.2229149-1-jebr@google.com>
 <CAMKF1soOAEsH85zVp+QUdktbmpNiwax5A7kDinVg87=ZtObK5A@mail.gmail.com>
 <CAPw1Ef9Rsz_UjjuK2WmKRCev9tR2zKxr3Kt++6i1=AXHhBbHjg@mail.gmail.com>
In-Reply-To: 
 <CAPw1Ef9Rsz_UjjuK2WmKRCev9tR2zKxr3Kt++6i1=AXHhBbHjg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 22 Jul 2022 13:13:42 -0400
Message-ID: 
 <CAMKF1sor3L+_Ybrj8c5hzVqjnLZHn2HoiK2K1FqOW_93aTDy5A@mail.gmail.com>
Subject: Re: [yocto] [meta-security][PATCH V3] meta-security: Add recipe for
 libhoth
To: John Broadbent <jebr@google.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 22 Jul 2022 17:14:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57627

On Fri, Jul 22, 2022 at 1:00 PM John Broadbent <jebr@google.com> wrote:
>
> That is unexpected.
>
> The sha change should have changed the PAGE_SIZE to SPI_PAGE_SIZE,
> correcting the macro shadowing issue.
> See:
> https://github.com/google/libhoth/commit/1622e8a040d21dd564fdc1cb4df5eda01688c197
>

right, I missed that in this v3 the SRCREV is bumped too which should
address the issue.


> Thanks for very quick review
> John Broadbent
>
> On Fri, Jul 22, 2022 at 9:47 AM Khem Raj <raj.khem@gmail.com> wrote:
> >
> > On Fri, Jul 22, 2022 at 12:35 PM John Broadbent via
> > lists.yoctoproject.org <jebr=google.com@lists.yoctoproject.org> wrote:
> > >
> > > From: John Edward Broadbent <jebr@google.com>
> > >
> > > Libhoth is usb protocol implementation which is required for hoth class
> > > devices
> > >
> > > Signed-off-by: John Edward Broadbent <jebr@google.com>
> > > ---
> > >  meta-tpm/recipes-tpm/hoth/libhoth_git.bb | 17 +++++++++++++++++
> > >  1 file changed, 17 insertions(+)
> > >  create mode 100644 meta-tpm/recipes-tpm/hoth/libhoth_git.bb
> > >
> > > diff --git a/meta-tpm/recipes-tpm/hoth/libhoth_git.bb b/meta-tpm/recipes-tpm/hoth/libhoth_git.bb
> > > new file mode 100644
> > > index 0000000..a3ebce7
> > > --- /dev/null
> > > +++ b/meta-tpm/recipes-tpm/hoth/libhoth_git.bb
> > > @@ -0,0 +1,17 @@
> > > +SUMMARY = "Google Hoth USB library"
> > > +DESCRIPTION = "Libraries and example programs for interacting with a \
> > > +               hoth-class root of trust."
> > > +HOMEPAGE = "https://github.com/google/libhoth"
> > > +
> > > +LICENSE = "Apache-2.0"
> > > +LIC_FILES_CHKSUM = "file://LICENSE;md5=3b83ef96387f14655fc854ddc3c6bd57"
> > > +
> > > +SRC_URI = "git://github.com/google/libhoth;protocol=https;branch=main"
> > > +SRCREV = "1622e8a040d21dd564fdc1cb4df5eda01688c197"
> >
> > it still has the musl related issue, that I pointed out
> >
> > > +
> > > +DEPENDS += "libusb1"
> > > +
> > > +S = "${WORKDIR}/git"
> > > +
> > > +inherit pkgconfig meson
> > > +
> > > --
> > > 2.37.1.359.gd136c6c3e2-goog
> > >
> > >
> > > -=-=-=-=-=-=-=-=-=-=-=-
> > > Links: You receive all messages sent to this group.
> > > You automatically follow any topics you start or reply to.
> > > View/Reply Online (#57624): https://lists.yoctoproject.org/g/yocto/message/57624
> > > Mute This Topic: https://lists.yoctoproject.org/mt/92551443/1997914
> > > Group Owner: yocto+owner@lists.yoctoproject.org
> > > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> > > -=-=-=-=-=-=-=-=-=-=-=-
> > >

