Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.171.1620162081266884295
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 May 2021 14:01:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=q9qBMues;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: twoerner@gmail.com)
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	by mail.yoctoproject.org (Postfix) with ESMTPS id ABDC938C05B5
	for <yocto@yoctoproject.org>; Tue,  4 May 2021 21:01:20 +0000 (UTC)
Received: by mail-qt1-f171.google.com with SMTP id g13so6200453qts.4
        for <yocto@yoctoproject.org>; Tue, 04 May 2021 14:01:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=mv9LDtRx6BJT+ga+bBM5Nd7cmUzJfRmTN8DFiQFgMoc=;
        b=q9qBMueszn37H/o0crTPekBF2fmTcKVIip8XaqA++u21hkzX29qVbH0XIAO0OARlVv
         SAz5r4Wh4ImXzK+frUtEydD0quTMrsMyIgPlkMgvt/uP0jYV0zYHOx737j2Ft7vZTug0
         2Hwj0n+MEKieXhmoBIqiTbNlVWq93PKW6TIjP/ah+jSFZ4w7BfVbkiVsl4ttcyrPMjN0
         JCeyngTq2lR+WnVCRiwJxbeUAPgyLUkIT3ttaj9f3Ran5g0XRaSOKouJhOGNoYjRNEDp
         ZtRndJGECR4Eb9d1xCDIdOiAOaniSVNDjYbZHJKNbAJyHQaUF3Ozv6/rjaeyo8GMR57c
         A4pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=mv9LDtRx6BJT+ga+bBM5Nd7cmUzJfRmTN8DFiQFgMoc=;
        b=FrDSd5ZSBxQ6KGV5HfmXagIzv4OB+0uAvvPuKc8wEjRb9HeNlIQlfIxviyaaD1mpTF
         dGIBgteyQrpPqyQhZZXs7NgW7NBcCkXO5aGjFARDrKRcD3bKqGkPNV/OBEercK9Nu4ur
         3ZVyDoMmpEkFyL358+uoYC6uZgHsZ6/roEDU3vpfea7wTNg7sQQLbJpLRQ2XYbhUoWri
         maodtfQevlfzyULZqFDFTSEP3lPi7iksqRo+N1DW93//EC0ymf0RzrXO/lFCWHD8IpB7
         SH+RHwq8PUR8CVRFZ6s6lN0/rekp6oI0YVn52Ht5Q/v2S+OnAptnDdB+UkFNEpyOKNV9
         nMUA==
X-Gm-Message-State: AOAM532K5g8GTVPCprxcclSFATcN1MEQvzKSamMWovWZCHu0EJ+lx6r1
	DxxLsHX5ZYs7AqXDs/BiEPU=
X-Google-Smtp-Source: ABdhPJwfKEKoWqcAeZwYMUA+UcAVUX1x+LSCSla9u5cYVEAwQRjJ7iPoHVOOj0fg8kx+gkEOambsEA==
X-Received: by 2002:ac8:7f4e:: with SMTP id g14mr13393871qtk.356.1620162079840;
        Tue, 04 May 2021 14:01:19 -0700 (PDT)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id y13sm1945452qkj.84.2021.05.04.14.01.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 May 2021 14:01:19 -0700 (PDT)
Date: Tue, 4 May 2021 17:01:16 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: yann.dirson@blade-group.com
Cc: yocto@yoctoproject.org, Yann Dirson <yann@blade-group.com>
Subject: Re: [meta-rockchip][PATCH v4 2/3] NanoPi-M4: declare "usbhost" and "serial" in MACHINE_FEATURES
Message-ID: <20210504210116.GB1096@localhost>
References: <20210426145810.718821-1-yann@blade-group.com>
 <20210426145810.718821-3-yann@blade-group.com>
MIME-Version: 1.0
In-Reply-To: <20210426145810.718821-3-yann@blade-group.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Mon 2021-04-26 @ 04:58:09 PM, yann.dirson@blade-group.com wrote:
> From: Yann Dirson <yann@blade-group.com>
> 
> Signed-off-by: Yann Dirson <yann@blade-group.com>

applied to master, thanks!
