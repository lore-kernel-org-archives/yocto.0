Return-Path: <jebr@google.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 377CDC43334
	for <webhook@archiver.kernel.org>; Thu, 21 Jul 2022 23:11:22 +0000 (UTC)
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com
 [209.85.166.45])
 by mx.groups.io with SMTP id smtpd.web08.1890.1658445076376019984
 for <yocto@lists.yoctoproject.org>;
 Thu, 21 Jul 2022 16:11:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@google.com header.s=20210112 header.b=bXHhgEBq;
 spf=pass (domain: google.com, ip: 209.85.166.45, mailfrom: jebr@google.com)
Received: by mail-io1-f45.google.com with SMTP id r70so2520655iod.10
        for <yocto@lists.yoctoproject.org>;
 Thu, 21 Jul 2022 16:11:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=gafO5k251gWn5F6zx3XbXsbnOoTDPO5pFKmQq7nmhFw=;
        b=bXHhgEBqnD22Aij0HWqITc41Jstntk+z+YJhnuzBiKJnlCOj17bOUlDlsrAFJah7vv
         q04iFZAGGbDb5V3P5SNp8VLLeyEf3J9HCjskSoR1aTzMn8pqKieIKytsPpxLr+PgpeWu
         hsbKpUAfgzlDJDX0bjyT1fuQdRQSpY9BPUlJ4QnrhX9vvxc9Ig1R9BLKqYLv0t7dE5PH
         IjY08H73r0AbytzDPbfjSETiRh7hiLeh31gg80sippdn8WAn18wypO+U92D1vQlDwoVp
         yf/9Ns+AUaIbpFxhoXOfz5hrb+ChthwNsVih6mdQUsNmrm8d8qaAJ6Mf1JjrrqfTxFWV
         +TcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gafO5k251gWn5F6zx3XbXsbnOoTDPO5pFKmQq7nmhFw=;
        b=Jt5hYpMFsQdNg39UoDe5J173cVysVrHWl0H8FSk9mOiooRLHIuOgeM9PcDDLSOr2Kt
         wxL+j3X3ABgKZpY693CGrPkqmyRiO+JjUTUwjLbrZErD8bpagJaubYfa9fCTCyljwKpD
         lkCKL/j3NtCz2nSUj3R8B1GtVr54YkF+xEP359ZtI/h5TvDdgxeDezt8gAOAuLnchTDW
         whFVL/MEvCEo0RlFKAbZ+IGOxF7mHw5NIWRD63pGRZLcYM5oMg5ZCw1vVx4YhvdT9HmE
         nkTqcsXjvWbCEqYA5fQUYhEmqDTQTwyL7yRtw7pC05pzf1hxS/DtdwJBbreDxHMmLo42
         z9eA==
X-Gm-Message-State: AJIora+4NIfq5FvuVcdnJpFT0L2srUPurusnkqg39CEU8vYQLTCDFDn8
	pGA4uV9zK+Bg2YtsH33sSV+AfRp2Hxv5PCSyMuAYAw==
X-Google-Smtp-Source: 
 AGRyM1t4N2ablaqB43lhxdHC/e7UF+PyGA2yn0EM8Y09HevaOcGSbOAekkaCaMPN/NcgrSgfRHba7aXn6EtwTYplAzs=
X-Received: by 2002:a05:6638:270d:b0:33f:3f96:468c with SMTP id
 m13-20020a056638270d00b0033f3f96468cmr387468jav.272.1658445075498; Thu, 21
 Jul 2022 16:11:15 -0700 (PDT)
MIME-Version: 1.0
References: <20220721223854.2093685-1-jebr@google.com>
 <CAMKF1so+Mk7=a1-Mj+UmXv=HqqMtqh6wmKUr4axE6DGkm1fJ+g@mail.gmail.com>
In-Reply-To: 
 <CAMKF1so+Mk7=a1-Mj+UmXv=HqqMtqh6wmKUr4axE6DGkm1fJ+g@mail.gmail.com>
From: John Broadbent <jebr@google.com>
Date: Thu, 21 Jul 2022 16:11:04 -0700
Message-ID: 
 <CAPw1Ef_2dcx=z9PVK5D7xiU8h8FdYwrEKdEA=mtK-T9+KjZTJQ@mail.gmail.com>
Subject: Re: [yocto] [meta-security][PATCH] meta-security: Add recipe for
 libhoth
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 21 Jul 2022 23:11:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57612

The examples are not separately buildable, and not installed. So there
is currently no way to make a sperate ${PN}-examples.
We don't need the examples now, but we are interested to know what you think.

Thanks for the speedy review.
Joh Broadbent


On Thu, Jul 21, 2022 at 3:46 PM Khem Raj <raj.khem@gmail.com> wrote:
>
> On Thu, Jul 21, 2022 at 6:39 PM jebr via lists.yoctoproject.org
> <jebr=google.com@lists.yoctoproject.org> wrote:
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
> > index 0000000..59f52ad
> > --- /dev/null
> > +++ b/meta-tpm/recipes-tpm/hoth/libhoth_git.bb
> > @@ -0,0 +1,17 @@
> > +SUMMARY = "Google Hoth USB library"
> > +DESCRIPTION = "Libraries and example programs for interacting with a \
> > +               hoth-class root of trust."
> > +HOME_PAGE = https://github.com/google/libhoth
> > +
> > +LICENSE = "Apache-2.0"
> > +LIC_FILES_CHKSUM = "file://LICENSE;md5=3b83ef96387f14655fc854ddc3c6bd57"
> > +
> > +SRC_URI = "git://github.com/google/libhoth;protocol=https;branch=main"
> > +SRCREV = "b31307b7bf525efda0164e461fb1e0a5c302d306"
> > +
> > +DEPENDS += "libusb1"
> > +
> > +S = "${WORKDIR}/git"
> > +
> > +inherit pkgconfig meson
>
> Dont we want to package the examples too ? perhaps in a ${PN}-examples
> or something ?
>
> > +
> > --
> > 2.37.1.359.gd136c6c3e2-goog
> >
> >
> > -=-=-=-=-=-=-=-=-=-=-=-
> > Links: You receive all messages sent to this group.
> > You automatically follow any topics you start or reply to.
> > View/Reply Online (#57610): https://lists.yoctoproject.org/g/yocto/message/57610
> > Mute This Topic: https://lists.yoctoproject.org/mt/92537492/1997914
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> > -=-=-=-=-=-=-=-=-=-=-=-
> >

