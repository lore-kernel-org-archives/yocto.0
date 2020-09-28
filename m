Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com [209.85.128.66])
 by mx.groups.io with SMTP id smtpd.web10.34617.1601293579490890241
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Sep 2020 04:46:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=J0MNQ+zg;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.66, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f66.google.com with SMTP id e2so825759wme.1
        for <yocto@lists.yoctoproject.org>; Mon, 28 Sep 2020 04:46:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=0a/yvE5kJnv1tQnD6xuaJeIHN5lF4rhxLEaD+iRm/SE=;
        b=J0MNQ+zgiPEfcEDtvfEHcz2YGHFqX0ZZiAd/dA0aP9pqnrgQ3eg2az4w5XzpMR7Ulv
         152oB3AbKQr1CBnrRWAx6NsK9bxKijsYRIEa4csjswdJzRZD/HbODWwaP20wq+x6w9UW
         6R1sRaFAMdrkQuypeQDUdndSh5uCKSiWUgpT0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=0a/yvE5kJnv1tQnD6xuaJeIHN5lF4rhxLEaD+iRm/SE=;
        b=EY+DjA5CsgOx711gOKQbRqZ6hclkLRLs/V17PHxnJ4vNqdF/nytLP+ubPtDQxCc93v
         NjSwsY87vT6M4foZZAprn3FnPnjZqGqIZNXM1Pjz0sdAxlYidBAAFJNlzZPSEI0a++No
         jUtFsp7jxzl2bnVxwX6Qwj5pHKBnA0v74dRHsH/AXYbnY9dWcV9rGT7qG529jhsjLYdI
         XGdk+pcVcKiMMVPMsrGRZR4V+XqNPonumBbLBSW/V9tP/8VetaaSMV+X9CAPtQ+0IwK9
         D8xB9dyNHPSvPHJ+1yuHiEtYX2cMkekY3BAzAuSuaN1n2IPjviBlkUmyiEM22GZh4JCD
         k0Eg==
X-Gm-Message-State: AOAM533+IkR2mVBoRQnyae8pIFHZIW4eUgsfdWz5AcTbXbFkDBYIcz01
	SXEtiuoYSWYpOzrTHax20o8M8yrswq+pnA==
X-Google-Smtp-Source: ABdhPJzAOa96lGSOT2gGoa2AQfuPSkYbrpdR9C4XdfLHbMIbYSblmqC9c/aym/dwpn85vlOxImRoUw==
X-Received: by 2002:a7b:ce96:: with SMTP id q22mr1149823wmj.132.1601293577607;
        Mon, 28 Sep 2020 04:46:17 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from 1.d.f.d.8.7.4.c.e.3.5.3.c.6.0.0.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (1.d.f.d.8.7.4.c.e.3.5.3.c.6.0.0.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:6c:353e:c478:dfd1])
        by smtp.gmail.com with ESMTPSA id f16sm1239379wrp.47.2020.09.28.04.45.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Sep 2020 04:46:09 -0700 (PDT)
Message-ID: <9d39a91d32658aa446ae91840d64536f9b78a781.camel@linuxfoundation.org>
Subject: Re: [yocto] poky-dunfell-23.0.2: WARNING: Your host glibc verson (2.32) is newer than that in uninative (2.31). Disabling uninative so that sstate is not corrupted.
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: Steve Sakoman <sakoman@gmail.com>
Date: Mon, 28 Sep 2020 12:45:43 +0100
In-Reply-To: <7cf9c1af-ac0c-4178-df9d-5d7a76d89821@iae.nl>
References: <3293b1b2-36fe-3bec-e0b7-07cd228fc4c7@iae.nl>
	 <CA+chaQc2Cbwnd7A30B03os3xeec-JQe28DVw-7cWartjThuLZQ@mail.gmail.com>
	 <7cf9c1af-ac0c-4178-df9d-5d7a76d89821@iae.nl>
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2020-09-28 at 10:34 +0200, Robert wrote:
> I tried the latest uninative from the same link, it will remove the
> warning but it doesn't solve the problem.
> If something else is wrong/different I would very much like a
> suggestion where to start looking for this difference.
> Finding something that isn't there is not easy :-\

You could try backporting:

http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=94b1d77472ad335f26ca4ea6ec8c5b399368c06e

Cheers,

Richard

