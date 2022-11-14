Return-Path: <pintu.ping@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1D5DC433FE
	for <webhook@archiver.kernel.org>; Mon, 14 Nov 2022 16:35:40 +0000 (UTC)
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com [209.85.217.53])
 by mx.groups.io with SMTP id smtpd.web10.7765.1668443734676886960
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Nov 2022 08:35:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=bsXX8VqC;
 spf=pass (domain: gmail.com, ip: 209.85.217.53, mailfrom: pintu.ping@gmail.com)
Received: by mail-vs1-f53.google.com with SMTP id a6so7737001vsc.5;
        Mon, 14 Nov 2022 08:35:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NdvTCr+QS4RNwyY/0AOU8ev4leygbbqin4WOiAuZHyw=;
        b=bsXX8VqCDsm142AyYJpX4Z+eYftYIoicSC6vn1TqXUl23RDp0em0HKEz4roJmUdOyn
         ebqRtPPtFSDELY5SVIwH1/Nv0NR6+z6GQ2ANP+cE4IjDLfRHxsm6ubDMuYHAdUXI6vYm
         AsnAK5MnJfzMuf+3Ffa967ywcYHCr6t3iN2ApdPOALcfUCDyISvJebr1mPVeQt1ft905
         13sw0DdELbHYqmpYX8fhAlGqDujNTJS0tIhh+aqFOpneM0qtHjiFzVVzM9Q3OYw4DOtH
         pf2mSiqWlv9rd5aykvwt6K0R1t2BthaFkKmWQzCSnRQkw8aA5I6F0ohlZkYpwdfEvnOp
         3kww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NdvTCr+QS4RNwyY/0AOU8ev4leygbbqin4WOiAuZHyw=;
        b=enL3Iujoj5McCzbGdwXbiZ/S2XP+Otz05u6PM7j716gaxpjD5oqbbSBPwE2PFunoJT
         k20aLDQUltsN/ZJtPTuQNNcr4pfcTvDRBrR4hEawqpYymoWzMqFPuGGT3sopkkvE7LuW
         K9y6KERfMMckNlyRuonM0wyZxqzuadx0qHFLUlCZrBu+pTMoDDUEAfhCLWOK0YLKAAs9
         3mTHaEgCz3DgSB9EMQGLUs8FLALf4sk1d0+YHG7GzFjhqadTCk+YTuS8wCVho6tOy3jq
         VOP69tlfYtGx4udX7Thci6QIO8wG5S5MYv5IsmSEc4G08gjdc0UCWoMN7xVJdaU8hZrp
         1Ebg==
X-Gm-Message-State: ANoB5plV078wXAWWtkiPfblXhbWZmsDNnDUc+zLQyhAPkFker6ithx/r
	BusTEWIdmoDs26zoPtyeUyGK8ONvzSjdITwCSz52zV1qxh4=
X-Google-Smtp-Source: AA0mqf4Z6B9rXF8SKAiTLu+JBCqbnE9jilHmotFzr+LMYGFJSrGw9NmVEB7TIKcDd9BH+gJF5XqOyQz+aysNVlNRLmU=
X-Received: by 2002:a05:6102:50a0:b0:3aa:26af:381c with SMTP id
 bl32-20020a05610250a000b003aa26af381cmr6310576vsb.64.1668443733408; Mon, 14
 Nov 2022 08:35:33 -0800 (PST)
MIME-Version: 1.0
References: <CAOuPNLh1+LhxH8yuQprUntwjibAP_iuwF7tXnHjfhAZhLCCG-A@mail.gmail.com>
In-Reply-To: <CAOuPNLh1+LhxH8yuQprUntwjibAP_iuwF7tXnHjfhAZhLCCG-A@mail.gmail.com>
From: Pintu Agarwal <pintu.ping@gmail.com>
Date: Mon, 14 Nov 2022 22:05:21 +0530
Message-ID: <CAOuPNLgEs7Obni8kOqgznv_mLW8JQ4cF0CUS8jaV6AXEhw6aOg@mail.gmail.com>
Subject: Re: Removing DISTRO_FEATURES from a specific machine type
To: yocto@lists.yoctoproject.org, linux-yocto@lists.yoctoproject.org, 
	poky@lists.yoctoproject.org, bitbake-devel@lists.openembedded.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 14 Nov 2022 16:35:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58556

Hi,

This question is related to Yocto Dunfell specifically.

I have certain distro features defined (by default) in our distro
include/conf file.
These distro features are required for certain machines and should not
be enabled for only one machine.
For example, we have a distro feature such as "nand-squashfs".
So, in our distro.inc file we are including like this:
DISTRO_FEATURES_append = " nand-squashfs"

Since this distro.inc file is shared across 2-3 machines, this feature
will be available to all.
But we don't want to include it in the "xyz" machine.

So, can I do like this:
DISTRO_FEATURES_append = " nand-squashfs"
DISTRO_FEATURES_remove_xyz = " nand-squashfs"

If there is some other better way please suggest.

Thanks,
Pintu

