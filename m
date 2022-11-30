Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A77DEC352A1
	for <webhook@archiver.kernel.org>; Wed, 30 Nov 2022 12:07:43 +0000 (UTC)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
 by mx.groups.io with SMTP id smtpd.web10.9228.1669810061856728473
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Nov 2022 04:07:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=gWw9vmC/;
 spf=pass (domain: gmail.com, ip: 209.85.167.48, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f48.google.com with SMTP id p8so26602046lfu.11
        for <yocto@lists.yoctoproject.org>; Wed, 30 Nov 2022 04:07:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=AHIaHn3F21UeMeJgD6xtE/NH3nlDFjDTu8j1qG2LMao=;
        b=gWw9vmC/hr1VOwCmyYq7LBgiju9xJL4Du98AGXPmfJ0sumZgAzvJ+OSgNWP98sehh3
         PdlSyEy1ZM1eOOcq+pUOyLajJ/I6XLAjbX1wGyF6NuMm6+jNkbSLMOMY/HMQ27GlI3Kb
         m4uJJP/l+IeJ/dqoWyL5j8TPFFoTrxaNDPzgZigd9STcjtONTda2WFQEfvIEoAyCeiBE
         l/5SZ7A6ZcwP7b3fD0gxyYdVRpKHBrjyvPFc6qI8XWaac1lRt3SxHgtStMRR+SbjWMvh
         FhLOwUal9xw9wFo5nVznh7wS6VMIIbPuclqO6Hl6mbOWOTJsLkVlgnA3U9uyG2xPYGWa
         B8ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AHIaHn3F21UeMeJgD6xtE/NH3nlDFjDTu8j1qG2LMao=;
        b=CF6HkN5vxJuC07mXzdsz6Z+KL0WPSuzZfuRwlvXgdkGv7P4dWRY7bsKlPB2s0sHxdA
         5cEO9bk5f4u/ceBQZLJSnlrEUMiOk6FR8jJpn3wO+OoL+FdJF6oMTVOSSmYsWYfMjx5x
         9l2BzVUQ07JattLFrcuCsx/6QkxdXFJcpLDEorMoTF5NeiZvI/wJj4ONz/qxMdqE4w4P
         FSp2bFBtM34cP1qmQRsS14xVvtX2ubgEt3cANcBiwDudbBV4XTp+murYSsb4aau3dVcM
         swVM8UmUnhRtver1Q4cCpHl5d3PcDspcsODQYPZSQKj6+sU2NtJH0T5vBK9B0QYq+2BH
         J6IA==
X-Gm-Message-State: ANoB5plIU3bdRMPexkmmOIxZ8f8wmcSB2gkl2tvLu6rmAX32J9CZvCU4
	J7iuE0tT6fOxg1RgqtbMwDY+kTL6tSI2cLz3U4Y=
X-Google-Smtp-Source: AA0mqf4D1gSvMYOG0lh1cPohtbicHuOPPbV4Oc1BQT9qOF+FjiccPQ3l9Pk2rHwGuacZzWfKXe71BuuFlL3NXHojE5w=
X-Received: by 2002:ac2:4a62:0:b0:4aa:323f:e850 with SMTP id
 q2-20020ac24a62000000b004aa323fe850mr20541921lfp.492.1669810059809; Wed, 30
 Nov 2022 04:07:39 -0800 (PST)
MIME-Version: 1.0
References: <0b6801d90409$885d6860$99183920$@gmail.com> <CANNYZj8Y37+s6Jzo1XvX0uCYNFc=NqOH8PWrFSL9_=TOS2ja7Q@mail.gmail.com>
 <Y4c4UBryAjx5t2gl@mail.local> <17e9291975095d514ca0a06f09c1c5d30909113e.camel@linuxfoundation.org>
In-Reply-To: <17e9291975095d514ca0a06f09c1c5d30909113e.camel@linuxfoundation.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 30 Nov 2022 13:07:27 +0100
Message-ID: <CANNYZj-12v8gvNv77zOSJqnV7b22bx2xQcqjjWR4W-5r3wNksA@mail.gmail.com>
Subject: Re: [OE-core] [yocto] Y2038 proposal
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: alexandre.belloni@bootlin.com, 
	openembedded-architecture <openembedded-architecture@lists.openembedded.org>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	OE-core <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 30 Nov 2022 12:07:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58672

On Wed, 30 Nov 2022 at 12:40, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:

> To be clear, we don't run ptests on 32 bit targets, only on qemux86-64
> and qemuarm64 where we have KVM available. We do run image, sdk and
> eSDK tests on our supported qemu targets, 32 and 64 bit.

I think kvm does allow 32 bit guest on a 64 bit host. But I can
imagine making full ptests work on 32 bit guests would be a struggle
for reasons unrelated to 2038, specifically lack of users outside of
embedded world.

Alex

