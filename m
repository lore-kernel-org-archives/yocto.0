Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 827A3E7AD55
	for <webhook@archiver.kernel.org>; Tue,  3 Oct 2023 14:03:50 +0000 (UTC)
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
 by mx.groups.io with SMTP id smtpd.web10.109134.1696341820429400765
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Oct 2023 07:03:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Z0qCOyJz;
 spf=pass (domain: gmail.com, ip: 209.85.160.177, mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f177.google.com with SMTP id d75a77b69052e-41819a68143so6749111cf.3
        for <yocto@lists.yoctoproject.org>; Tue, 03 Oct 2023 07:03:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696341819; x=1696946619; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BMvhcCaCkF1FMgA7h7JTYu+5yQLfwhj+n4czGXmGTH8=;
        b=Z0qCOyJzhEkDnk9J2kHL/35/GHWB/qMu6UP8Ld8bfosIsvbG0FQZeNpAdVYjAYzLaC
         cjgSMRUQLn16v2K8d1t8QsYBr9/TPzuGYc2BFU6/1eKjbjkOMrByzmXi6SrGQMzzrGfd
         3Tj+JHUbo4H02W2i8WWbNgARYHPN3mrRM+Oabyk+nL3rdeIXx1SFZFHa/BQ9LQsLmzNR
         y7JOFQmkuMQu+fT7/6+3ZFhFeZc61NXKRFmR/AOZ9tqmHeQPKMLkC5lLA27shD0gEwgs
         dYcYbkARRLcqz7GiZUtkEKLXuFNihIzr7DljTW9QGn/7rkV9uS+3haWsd3tpr9uvYPFf
         f2mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696341819; x=1696946619;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BMvhcCaCkF1FMgA7h7JTYu+5yQLfwhj+n4czGXmGTH8=;
        b=OGw0mlGI9q2r07hmjzUGM8DpaE4NOwqfch6hn4DutzPsixHucqB3YYjWYfoc33BXMG
         /0OMCM2P0oAFeNcVH9dWS2+54AqzA33JCxe/I+tY5tfW1noh3Ik/sJKx30gGf9C3sF+1
         YL2zSR0LgltS7j4POWPYwvWq388ln6upzwgXIPXI+/pUJmbtkOnRbwN9k4VZDlFj1JDP
         L+b5JHz7h1DHUFp8bDht81wEQTnq/1+kjf/w/7xt5JuuFeFz/ThjUFospEkKsZl+A2u7
         f5VTjVwhritSWyysaF3PDmpgIi1/vwR8ND5eR1Mm/izBAbGpAvXapRSNVj3vQ/wzzve4
         JIrg==
X-Gm-Message-State: AOJu0YyFzRbIYOxlZNIz8HXRUUHlF5Cjn85w3L8sLpcjt3SqGHnV39Pv
	bhdfiOJGn+YWSK9CjKjN8bo=
X-Google-Smtp-Source: AGHT+IEgIesSjWChQTkU+9y0eq1/FxGt8oC7SPmPUknsntSRoUFvJS60J1dauiWmmZ/7y/LX6MJcIg==
X-Received: by 2002:a05:622a:181a:b0:412:da83:484b with SMTP id t26-20020a05622a181a00b00412da83484bmr17288088qtc.10.1696341819255;
        Tue, 03 Oct 2023 07:03:39 -0700 (PDT)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id kd6-20020a05622a268600b004181138e0c0sm467866qtb.31.2023.10.03.07.03.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Oct 2023 07:03:38 -0700 (PDT)
Date: Tue, 3 Oct 2023 10:03:36 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Cc: anthony.t.davies@gmail.com, yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-rockchip] [PATCH] Allow KERNEL_IMAGETYPE override
 v3
Message-ID: <20231003140336.GA7989@localhost>
References: <20231003004307.93133-1-anthony.t.davies@gmail.com>
 <847e16c0-a63a-fc56-9a1a-214e53b68b0b@theobroma-systems.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <847e16c0-a63a-fc56-9a1a-214e53b68b0b@theobroma-systems.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Oct 2023 14:03:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61220

On Tue 2023-10-03 @ 12:17:13 PM, Quentin Schulz wrote:
> Hi Anthony,
> 
> On 10/3/23 02:43, Anthony Davies via lists.yoctoproject.org wrote:
> > [You don't often get email from anthony.t.davies=gmail.com@lists.yoctoproject.org. Learn why this is important at https://aka.ms/LearnAboutSenderIdentification ]
> > 
> > From: Anthony Davies <anthony.t.davies@gmail.com>
> > 
> > Updated inc files to allow overriding KERNEL_IMAGETYPE in local.conf
> > 
> > Signed-off-by: Anthony Davies <anthony.t.davies@gmail.com>
> 
> Reviewed-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> 
> Unrelated to this patch set, KERNEL_IMAGETYPE actually defaults to zImage so
> we could just avoid doing it again in rk3066, rk3188, rk3328.
> 
> Also, for newer versions of patch series, please use:
> git format-patch -v3
> or
> git send-email -v3
> 
> and it should create a mail with:
> [PATCH v3] in there
> because with the current subject being
> Allow KERNEL_IMAGETYPE override v3
> this would be the commit title inside the git repo and this is the kind of
> information we don't necessarily need in the git repo :) (but thanks for
> thinknig about adding it, it makes it easier to follow which patch mail is
> the latest version :) ).

Would "git send-email -v3" also add the "meta-rockchip"?
I usually just do:

	$ git format-patch --subject-prefix="meta-rockchip][PATCH v3" ...
	$ git send-email <patch>

I'll fix the commit messages up so don't worry about sending a v4. Thanks for
your patches! It's nice to not be the only one thinking about this layer.

Best regards,
	Trevor

