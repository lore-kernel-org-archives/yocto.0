Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 33183C433FE
	for <webhook@archiver.kernel.org>; Tue,  5 Oct 2021 20:23:37 +0000 (UTC)
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com
 [209.85.222.170])
 by mx.groups.io with SMTP id smtpd.web09.2289.1633465415970691450
 for <yocto@lists.yoctoproject.org>;
 Tue, 05 Oct 2021 13:23:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=YH/64Ud4;
 spf=pass (domain: gmail.com, ip: 209.85.222.170,
 mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f170.google.com with SMTP id 138so232945qko.10
        for <yocto@lists.yoctoproject.org>;
 Tue, 05 Oct 2021 13:23:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=XpKfI4WZtWWpsrjA0U4Xd+tKnj8aSGYxBYtkUK0q2TE=;
        b=YH/64Ud4SWiTobGOVUerYrRJZBC40XgmXXZFFPJul7fd22OB+GUpTU8tD5W+epIZIn
         k0+x7lJhi6l/6dfuhzyd5p3/w5nSh2ez8qE7H7/jjnXxv6ly0bk/Qaq3C5XDlRc5sPzj
         PaEnKB/6vCtPAb9oHJTgCTrmu1SRa2OXKrnHhxrN2tW6TVbOCWNJ6egAmlzTZkkCkmnj
         2NpJSupmauonEAquqjIvI8ePNXnaKXXibij87G+UWCptS4dBw5rg9CZF0HOEqS2gDtjM
         h9+BILfBu7l+6SeWWqzD9DRngSPj3zcnTMQHBGXsaAxY9WlSSYcS8AOln6VzdiqLpM0Q
         1fiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=XpKfI4WZtWWpsrjA0U4Xd+tKnj8aSGYxBYtkUK0q2TE=;
        b=rbjkxvY+PEA6pZ+/k9EGLl0lVWOdbrevmJsHZza05xbF2bKuvUK2K4krxZyoLeCaMJ
         hwnwlzXPi7o66N9d5QIUS/NVBujbgvzNA+1s7aff0nbjl1LPv1HKtcOVezkEvUa1/b+O
         XHu6xZrzNE2uoSBNKq/i9s7L4uwTn/qZ7bG8ASFYy1My0hc1aDUelfuSnGXI1ARxq/Pu
         c2Ev0e28MaB3dFd0czDl5bhWJRU0K0PBPvAsP8SBvQtDfBaW9sjxSg2ieNFk9FSrO55m
         J4zK6tSWnYHftQdjwz3o0KYwNJfyh8JejO6sodAXO5qAGHWfNlVAAgLjujUMMFMfPL2Z
         xNLg==
X-Gm-Message-State: AOAM530O/BuPjfYtG+c15WI5NJLhDqODM3dMekD3u66JpgLkEC+n0ZBA
	+yjb0KRdPbDr0RNLdfOtSbbucXI7Oes=
X-Google-Smtp-Source: 
 ABdhPJz3Nn/XTv7r6a0mZt3DstQ2S4QV6oM6NyhkyOZjmrkg8R6BXT7I8MHtfW6NauPaBiM76EIQ0g==
X-Received: by 2002:a37:e93:: with SMTP id 141mr16436069qko.132.1633465414920;
        Tue, 05 Oct 2021 13:23:34 -0700 (PDT)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id
 197sm504890qko.130.2021.10.05.13.23.34
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Oct 2021 13:23:34 -0700 (PDT)
Date: Tue, 5 Oct 2021 16:23:32 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Re: [meta-rockchip][PATCH 2/3] include/nanopi-m4: remove KMACHINE
Message-ID: <20211005202332.GB25572@localhost>
References: <20210929052938.36819-1-twoerner@gmail.com>
 <20210929052938.36819-2-twoerner@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20210929052938.36819-2-twoerner@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 05 Oct 2021 20:23:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54966

On Wed 2021-09-29 @ 01:29:37 AM, Trevor Woerner wrote:
> There is no "nanopi-m4" defined in any yocto kernel metadata (yet?), therefore
> remove this superfluous line.
> 
> Build (core-image-base) and run tested (both systemd and sysvinit) on:
> - nanopi-m4
> 
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>  conf/machine/include/nanopi-m4.inc | 1 -
>  1 file changed, 1 deletion(-)

Applied to meta-rockchip, master.

