Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 29348C433EF
	for <webhook@archiver.kernel.org>; Tue,  1 Mar 2022 04:55:18 +0000 (UTC)
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com
 [209.85.222.176])
 by mx.groups.io with SMTP id smtpd.web11.4918.1646110517324984026
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Feb 2022 20:55:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=kz0I3rJe;
 spf=pass (domain: gmail.com, ip: 209.85.222.176,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f176.google.com with SMTP id n185so12157597qke.5
        for <yocto@lists.yoctoproject.org>;
 Mon, 28 Feb 2022 20:55:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=GJs2ahB7ijXEp1x0OLaMxD1TylxdQox6ItAwD7CvJiI=;
        b=kz0I3rJexiCjomoV4AYI00iBdnlR+f0EwYUvaASrq6nyfv5dG0rlnhUz7mUMUBFXT5
         Rgls9K8EntE3oenMZQ4eIyjes5rRQONi34Z0OFPQGhUPb/rzPOt6AkbNfl3SNRysxEto
         q1Rx4nRnoEGesk8jjGbaNTzzbXTlha6TXLPoJ0kYSznznxzN26v2QHxsZpDb+jcC2NCl
         d7KcQVFA9ccDv8awRynOo4ZQgQevRVoPfMvCySyksj3lZbj/27ECzsy9iIL12yEbt/O6
         PkBQKEBo77YxS9HkzufxC13CeViGfbezahoguif/4WK/iiJrozpOMsnMTRHixHOLD2SU
         GAog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=GJs2ahB7ijXEp1x0OLaMxD1TylxdQox6ItAwD7CvJiI=;
        b=F7O93tr+Puzkvjcyv6Omzlg4HxvsGzcm5ojyu3zOFQU7xlGAltLkW1OoaHAXLkEzQu
         E3COwZeTDviET7cNFEyMFRti4S74N1yC3+rtbuJKZH9fJnOKxmqL6X+H7dF+7CgPMSah
         p1cPck11aGWIoebnZJQ1P8WbJGz9Es7MtsCvbbqjc1V9yKgKUi1X6zeTnlbaubAGW09Y
         ooKYuvY6SBuurKSX8LDXQN2l4vavV44VyHUzdLceFJCINbkpkkFzFzE0EUv1b+BAgnlc
         YQaqHvZALPJjjGMHF1+ua8wdmrFM4tIKu9x3NhxoT/AFhbZz388HzLGmHVxDM6yfEPH7
         weLw==
X-Gm-Message-State: AOAM530keeCdvYBsbfMIrye7Sj0KqFk1ab/Nj7Oxeja2cxm++gxU6RO6
	mPrepWgmbX41yRx+pF5OWSiEPbRGffuHcE4IpBXiwcxeUjKJqw==
X-Google-Smtp-Source: 
 ABdhPJxmT46lkcG0qyQyOWa83Ye47AXc9iPQ+CYlq8Snu0JtaJ6bkSL5EwkHsvCKtQaJzUg10FWDRXVbD9rDPBnKqNY=
X-Received: by 2002:a37:b541:0:b0:475:4524:bb4b with SMTP id
 e62-20020a37b541000000b004754524bb4bmr13141675qkf.149.1646110516281; Mon, 28
 Feb 2022 20:55:16 -0800 (PST)
MIME-Version: 1.0
References: <8629e40a-21b1-44e4-ebca-2f85c6fc8330@ibeeto.com>
In-Reply-To: <8629e40a-21b1-44e4-ebca-2f85c6fc8330@ibeeto.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 28 Feb 2022 20:54:50 -0800
Message-ID: 
 <CAMKF1sqBipusfmSY1-xuU5SOqowbrhyvsE08gtjD2qQ8S=O=FQ@mail.gmail.com>
Subject: Re: [yocto] Custom Image Type
To: Rudolf J Streif <rudolf.streif@ibeeto.com>
Cc: Yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 01 Mar 2022 04:55:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56328

On Mon, Feb 28, 2022 at 8:32 PM Rudolf J Streif
<rudolf.streif@ibeeto.com> wrote:
>
> I ran into a problem with a custom image type class. I called the class
> image_types_ota.bbclass.
>
> When I try to use it I am getting these error messages for two
> predefined image recipes (but only for these two, for any other image
> recipe it is fine):
>
> ERROR:
> /develop/projects/tcu/build/../poky/meta/recipes-rt/images/core-image-rt-sdk.bb:
> No IMAGE_CMD defined for IMAGE_FSTYPES entry 'ota' - possibly invalid
> type name or missing support class
> ERROR:
> /develop/projects/tcu/build/../meta-openembedded/meta-networking/recipes-core/images/meta-networking-image-base.bb:
> No IMAGE_CMD defined for IMAGE_FSTYPES entry 'ota' - possibly invalid
> type name or missing support class
> ERROR: Failed to parse recipe:
> /develop/projects/tcu/build/../poky/meta/recipes-rt/images/core-image-rt-sdk.bb
>
> I have no idea what in these two image recipes could trigger this error
> message.
>

hard to tell without knowing how ota class is being plugged in or what
its content is.
Do you define IMAGE_FSTYPES:ota ... somewhere ?

> Thanks,
> Rudi
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#56327): https://lists.yoctoproject.org/g/yocto/message/56327
> Mute This Topic: https://lists.yoctoproject.org/mt/89469318/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

