Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD6DC4321E
	for <webhook@archiver.kernel.org>; Wed, 30 Nov 2022 09:08:22 +0000 (UTC)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
 by mx.groups.io with SMTP id smtpd.web11.6651.1669799293363631972
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Nov 2022 01:08:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=kOo19XfS;
 spf=pass (domain: gmail.com, ip: 209.85.167.48, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f48.google.com with SMTP id b3so25944065lfv.2
        for <yocto@lists.yoctoproject.org>; Wed, 30 Nov 2022 01:08:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=lO9IEKmIB1NW17KFuN2K5T6lshfuAO4fy59ZqBtBfCQ=;
        b=kOo19XfSFiwS42rbz8KaOFE7W5v5dfz++rGx6RfqZKwEKq+r0KreFSEbRkXRFyKqNY
         AJoaX3vRVY4mIXSR/5VGWd0eN+rylCI/bmpws9cZ11xGSUv7q3KzExqbW62kZJnV6GRw
         U3K+sd3PQ6BV575K69t/VQnHmgbcWoKOeJbN+fuVRK+eAkDLf8VFo5PGSkI5TM3pmg22
         Wrrqa4VEdGdx9Ks4Zk50NmNUiuvVlURN4y2PNAWSXayk/A+mydCoZCXKpA5cpM3l/ogJ
         B1p6/1St8Bi0f/mwYN741mhVXKJrA6zZvzz/yMKGsx4Oxdt/IgHraM747alSO7uNI5RN
         Ey8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lO9IEKmIB1NW17KFuN2K5T6lshfuAO4fy59ZqBtBfCQ=;
        b=R8jDtapaIh6gYFtNiFq5hpNvh48B8ZITE6pCOUglDNpgoENLSAwp2RuzFHe3CTjFUh
         6ZJTEU1rmsRxv2CtXwEtYw2mjmA7L1MyGD+CGGNHSiMZPpCk+vhmxLuR55Q9r0sm0DhS
         ZXaxnrACI2euhQfW3S+DrMj+wRQdxsqtYS9j3JKKGDAMkvz+XLu2jXxP+iWicADIXElD
         20s3hvMfyqmNgFI1udFG5Y0shbdZYRvrWRcNDuL8z7t8IM3H04Fyf8YWHdvGClnqtm7o
         C7KUfNTS9cP09N3vSN4iWYgg2HPP2NRY+4/q8bwbwDmgfYG1nK1J0iOvjr1asxH4Ka+D
         1pfw==
X-Gm-Message-State: ANoB5pkOYehiptjawXussdKQPnnkr31MQCatroX018BsxW7/brngvCvW
	nEysjiAO3Rlk3x4YPIHJ4HgTcNQsn2GkvSf4xUk=
X-Google-Smtp-Source: AA0mqf4B8eaM3eJdH9jilh+TuRFzGLZ/OCBlVaxTF1MGO/0oCbfOaYLmlf0yi1rkrFX2jUFzpLPNtmowXuMGmMakf+0=
X-Received: by 2002:a05:6512:3b9b:b0:4a2:4aad:8fff with SMTP id
 g27-20020a0565123b9b00b004a24aad8fffmr19204789lfv.445.1669799291284; Wed, 30
 Nov 2022 01:08:11 -0800 (PST)
MIME-Version: 1.0
References: <0b6801d90409$885d6860$99183920$@gmail.com> <CANNYZj8Y37+s6Jzo1XvX0uCYNFc=NqOH8PWrFSL9_=TOS2ja7Q@mail.gmail.com>
 <20221130092832.62067104@wsk>
In-Reply-To: <20221130092832.62067104@wsk>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 30 Nov 2022 10:07:59 +0100
Message-ID: <CANNYZj-31p1n_f_oh3+Le4O4vYrRLquvYxzdAk4uY+EOeS_V0A@mail.gmail.com>
Subject: Re: [yocto] Y2038 proposal
To: Lukasz Majewski <lukma@denx.de>
Cc: openembedded-architecture <openembedded-architecture@lists.openembedded.org>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	OE-core <openembedded-core@lists.openembedded.org>, 
	Stephen Jolley <sjolley.yp.pm@gmail.com>, 
	Richard Purdie <richard.purdie@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 30 Nov 2022 09:08:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58665

On Wed, 30 Nov 2022 at 09:28, Lukasz Majewski <lukma@denx.de> wrote:
> Please find a few comments:
>
> 1. There is already provided meta-y2038 [1] to test if 32 bit systems
> correctly support Y2038 problem. It uses qemu machines from OE/Yocto
>
> 2. There are ptest available [2] to validate if the Y2038 problem works
> correctly.
>
> 3. Support for running ptests mentioned in point 2. is already
> available in the poky repository [3].

Thanks! So there should be a

d. 'glibc-tests-ptest' is executed across all architectures - probably
as a machine-specific selftest, and as well with qemu time set into
the future.

> It looks like the meta-y2038 can be used out of the box (after checking
> if it still works with newest poky) when added to the Yocto Project
> build/test infrastructure.

Unfortunately I do not think that layer can be easily added into the
test matrix. It has its own distro and images. No, we need to maintain
a poky branch where the same tweaks and fixes happen. Besides, those
fixes would need to be merged into oe-core proper eventually anyway.

Alex

