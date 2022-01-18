Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B81E0C433F5
	for <webhook@archiver.kernel.org>; Tue, 18 Jan 2022 11:04:38 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
 [209.85.128.45])
 by mx.groups.io with SMTP id smtpd.web12.11220.1642503876671638879
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 Jan 2022 03:04:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=TljY60Cr;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.45,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f45.google.com with SMTP id c2so21242319wml.1
        for <yocto@lists.yoctoproject.org>;
 Tue, 18 Jan 2022 03:04:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=rJIMd/zKrZR8U3F4mKc0ZJHVMB2aXUKNvNTl0aVpXAI=;
        b=TljY60Cra8EBGKoxj+RmNhgbq3uGrMCSkPxCKBfEspFHFWhlV9GdS2+51LsRcilrsZ
         ERHEY4qQHtDY1aiioBGCepc0vHeO6BiB3FK+dTrNx6GQ8SCe+AVEumvHU26BTP2Uo58G
         vL7+Lo3j4uR/Wmlz+TvXEGjpkNbeyE6Xb+rws=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=rJIMd/zKrZR8U3F4mKc0ZJHVMB2aXUKNvNTl0aVpXAI=;
        b=JI2IykFHnK3M4x62efItZYBtF/+Vi5xJyO7JatKhKBYZLbUF3cgNj4ieOyETCbOubn
         uTgrvxuHbmhcevE8YhczSwqCwT4ReQeT+d5rCF/UGdgjCyB2KRg9b7BQaVA3XDfLLdtN
         BZBqCPgidM/sY+uXMBarwx/FFUyY3POwdCn1ackNDLNGbbx39ykJuUhxtoH27Zw2BbRL
         69RZLRTUjGChCMKeQ4D25/j9cwfD1yhfyfmPOwLeQ0emzAtdz2vR74lzi5sMdDykeHWB
         u4e5jpr/a64Kp+o6JIcbhNlKXyH/FjhSrcSF6pYlhCJ9nLXc5lmc8qejCdhYgW+3qq9O
         Xl3Q==
X-Gm-Message-State: AOAM532hkn43SlhmMesk8WYwFsgvFH5gYLiCAI8SppQTSBfEPfkS56S3
	GAywvyJbTmek2Oaodx5c7I384A==
X-Google-Smtp-Source: 
 ABdhPJxkYvrOUC3iXMaQKnT5BjIjk13wgzGtImuXo962GXCzPV4umjJYHFWwk5Z2tYtsxeL3ft06jg==
X-Received: by 2002:a5d:664e:: with SMTP id
 f14mr20752452wrw.476.1642503874961;
        Tue, 18 Jan 2022 03:04:34 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:cdb:ba2:df58:76a3?
 ([2001:8b0:aba:5f3c:cdb:ba2:df58:76a3])
        by smtp.gmail.com with ESMTPSA id
 j14sm2305902wmq.1.2022.01.18.03.04.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Jan 2022 03:04:34 -0800 (PST)
Message-ID: 
 <fb0ca4c357451549e87969b53a383ec99eaf8623.camel@linuxfoundation.org>
Subject: Re: [yocto] Advertise lore.kernel.org archives on website?
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Michael Opdenacker <michael.opdenacker@bootlin.com>,
	"yocto@lists.yoctoproject.org"
	 <yocto@lists.yoctoproject.org>
Date: Tue, 18 Jan 2022 11:04:33 +0000
In-Reply-To: <f06c5032-edd5-e0da-512d-e8ccb0d1eca9@bootlin.com>
References: <f06c5032-edd5-e0da-512d-e8ccb0d1eca9@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 18 Jan 2022 11:04:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55898

On Tue, 2022-01-18 at 10:44 +0100, Michael Opdenacker wrote:
> Greetings,
> 
> I see more and more people using links to the lore.kernel.org archives,
> for example the ones for this list: https://lore.kernel.org/yocto/
> 
> These look more convenient to use than the ones on
> https://lists.yoctoproject.org/.
> 
> So what about advertising such archives on
> https://www.yoctoproject.org/community/mailing-lists/, at least for the
> ones which have archives on lore.kernel.org? I was thinking about just
> adding an "(archives)" or "(archives / public mailbox) link at the end
> of the description for each list.
> 
> What do you think?

Sounds fine to me.

Cheers,

Richard


