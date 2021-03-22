Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.13.1616424477674634685
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Mar 2021 07:47:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=H1SWtnIU;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: twoerner@gmail.com)
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
	by mail.yoctoproject.org (Postfix) with ESMTPS id D3B9838C06FF
	for <yocto@yoctoproject.org>; Mon, 22 Mar 2021 14:47:56 +0000 (UTC)
Received: by mail-qk1-f178.google.com with SMTP id g15so10786263qkl.4
        for <yocto@yoctoproject.org>; Mon, 22 Mar 2021 07:47:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=z14R9Wp/UEm+0NddEHOZBA0iCfnMFlZLdoHt503r+wI=;
        b=H1SWtnIU8hOiSXApGpTLtheOpi9kiS8VwYrgXZI9vqg/nL++7q/b6SxBO1RrRxQjog
         z5LD1tIFrcQjbuTKqBfO3MQE75Ad7PIxIzcVL4oDz9uHUGrciiuHCPyiYCnQuQFxj46Z
         rNb06ZrhbQwW6y3jmGC0Up6GGhiiTVBCn8MaYPESq0/gByn90iFv4VKA8f2jSRVMbNqm
         SszUeVCGCU6tBVCeBc2fRzwqpDR/jF3Hg5paHUeU9zqEwZGexnmj19T0olFUfMU3AJoN
         JgX1sLJhlZAkvnwuqYd+jnh1vuR9QQOkmaYwmpMxdbh7QKrOCzjdG0dLSI535lfVqRnF
         oVLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=z14R9Wp/UEm+0NddEHOZBA0iCfnMFlZLdoHt503r+wI=;
        b=qJ8oUZzdxVaO0a/UA9yVNDjLHyZYgUsiT7D+I8DbFP5kCM/KuyrpttLc9bkEUwx5aK
         v9Of9p/S8DHZHIeVVYm7YGNT2Cqjm/1dfmbohdVtVHeDPkksIpZlpFB5H996m28kEg/e
         2Z2N5pf5+2R0w5ho2A2EoKPOJRgTRyvBeKxB+ZZpdx/Jv0DnlwNqezBAyweuNSroHCPC
         C/nLiGMiSCphyAiRh511Iu9a1CX1YNmjTwxJs3kSBKUiNZTH0janT29s9FoelHVckPgD
         p5kziBtKJIAFFOLO0tNRcaSdig+p2JF81Q+280OVcWVUAvlzdPuWf+/gIPA+MrBTbkX/
         Wyag==
X-Gm-Message-State: AOAM530YyCnjEHu3S61d8cA2Mw1+pwlC3QzbtGY6NToE/DwfyjvOygQO
	ky4Xq41SJmunzitM1tK2cwqLc2aut/M=
X-Google-Smtp-Source: ABdhPJyoJN/+SfAuVG1XNr4z6Xy4jr8Bi4qpThntYt+cfRFxbH1JwEkIusYcczauk/cJDG1xph+haQ==
X-Received: by 2002:a05:620a:16d0:: with SMTP id a16mr398252qkn.370.1616424475848;
        Mon, 22 Mar 2021 07:47:55 -0700 (PDT)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id l12sm8929137qtx.77.2021.03.22.07.47.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Mar 2021 07:47:55 -0700 (PDT)
Date: Mon, 22 Mar 2021 10:47:53 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: yann.dirson@blade-group.com
Cc: yocto@yoctoproject.org, Yann Dirson <yann@blade-group.com>
Subject: Re: [meta-rockchip][PATCH] Add machine definitions for NanoPi-M4 boards
Message-ID: <20210322144753.GA33662@localhost>
References: <20210322134212.576790-1-yann@blade-group.com>
MIME-Version: 1.0
In-Reply-To: <20210322134212.576790-1-yann@blade-group.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Hi Yann,

Thanks for your contribution! :-)

On Mon 2021-03-22 @ 02:42:12 PM, yann.dirson@blade-group.com wrote:
> This supports both the 2GB and 4GB versions of the board.  This is not
> done with 2 different machine definitions since only u-boot has to
> change between those two configurations, but with a NANOPIM4_HW variable
> to set in local.conf.

Traditionally in meta-rockchip this is done using two separate machine files
with all the common things factored into a common include file. See
tinker-board and tinker-board-s as well as all the rock-pi-4* definitions for
examples.

I would prefer if the same thing was done here.

That way it shows up as distinct machines in the layer index (for example) and
makes it easier for users to determine whether or not their specific board is
supported. Otherwise the full list of supported boards ends up getting
buried and people have to dig around in the config files to find support
information.

Would you have time to re-spin the commit to add 2 boards (or just add the one
you can test)? I see there's also a nanopi-m4b, but I can't find a simple
comparison between the various nanopi-m4's. If you do, please add an entry in
the README file as well.

Otherwise I can take a look later today.

Best regards,
	Trevor
