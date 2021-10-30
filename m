Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 688F7C433F5
	for <webhook@archiver.kernel.org>; Sat, 30 Oct 2021 12:38:12 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com
 [209.85.128.51])
 by mx.groups.io with SMTP id smtpd.web09.18419.1635597490927499522
 for <yocto@lists.yoctoproject.org>;
 Sat, 30 Oct 2021 05:38:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=AMe6IKbV;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.51,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f51.google.com with SMTP id 133so909442wme.0
        for <yocto@lists.yoctoproject.org>;
 Sat, 30 Oct 2021 05:38:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=FTONPYwZHUZECZP0KQ5xp1DHRjT7TpraRtpsXuFNx+c=;
        b=AMe6IKbVRLvf5jau/LQg0J1ikiZ4tT7dNDFpaTUuURc05MQ/3WGLfMYCH7emtN2uEy
         0yOEJ7dM5hGQxe15/xtgGWgPLalKpV2T830CIl1N9wERE5W521Cu3169wPNeL//HseOm
         Zq0WUjuJNmu+rD8K6w8vHu/i13QzD/41pWeQk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=FTONPYwZHUZECZP0KQ5xp1DHRjT7TpraRtpsXuFNx+c=;
        b=T9Hye8cU474vT8OJJsjnzyZrEN7NM2CGITsb31WQhPQ1GyP1Ejsz8WWeW/mbBkZBxq
         SdeR7eIQ2TutY0HrGh6Rnx03rWzd8M4xZ0OfsLweVStjg4/ppFdifqMp3zM6SgIYf30u
         h+CavVSEraOimmOGe2ZQAsTqxIzO4DHAoIuqW1V9ztYyjIAJ2rXVmqevsIuFptJEOIyg
         RISku9ciI5nDRi2/00gZpwEkTBcp1DPXawrJ9NoD2sS541zFeevJ7EWyQuvwhCIgkc9G
         IMPaHhFisaHFlssS8qfN0l0w6IldFdhv5coNPLipt2vxipCw9TfXrwZbAuLu9TUbg8UO
         6u5w==
X-Gm-Message-State: AOAM530yir89mmvvPGfdCt86UEvbNhHFQtDIFrVT60cz9IuttLb0+oxd
	i8vqgtRnGVMsncw5gMK3fp8WrA==
X-Google-Smtp-Source: 
 ABdhPJzeoop24MeWDquh4VhBKJI7BUUVFehmMDPrdK3wVdO96huXb4KoIoMOazZ3z5IbTW79r872Rg==
X-Received: by 2002:a1c:8:: with SMTP id 8mr13752086wma.106.1635597489387;
        Sat, 30 Oct 2021 05:38:09 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:af33:8564:b018:31d5?
 ([2001:8b0:aba:5f3c:af33:8564:b018:31d5])
        by smtp.gmail.com with ESMTPSA id
 n7sm6648529wro.68.2021.10.30.05.38.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Oct 2021 05:38:08 -0700 (PDT)
Message-ID: 
 <6574572b2916ce3ff0b208a459c52c06c0ad496e.camel@linuxfoundation.org>
Subject: Re: [yocto] [yocto-autobuilder2][PATCH] builders.py: subtract
 builder weight instead of add
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Trevor Gamblin <trevor.gamblin@windriver.com>,
	yocto@lists.yoctoproject.org
Date: Sat, 30 Oct 2021 13:38:04 +0100
In-Reply-To: <20211029153951.211636-1-trevor.gamblin@windriver.com>
References: <20211029153951.211636-1-trevor.gamblin@windriver.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 30 Oct 2021 12:38:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55193

On Fri, 2021-10-29 at 11:39 -0400, Trevor Gamblin wrote:
> Signed-off-by: Trevor Gamblin <trevor.gamblin@windriver.com>
> ---
>  builders.py | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/builders.py b/builders.py
> index f94d1dd..fc92e36 100644
> --- a/builders.py
> +++ b/builders.py
> @@ -168,7 +168,7 @@ def prioritizeBuilders(master, builders):
>              time = max_time
>          else:
>              if bldr.name in builder_bonuses:
> -                time = time + builder_bonuses[bldr.name]
> +                time = time - builder_bonuses[bldr.name]
>          defer.returnValue((time, bldr))
>  
>      transformed = yield defer.gatherResults(

This didn't work (and wasn't merged) although I still think it is probably the
correct thing to do with that code.

I did some digging and the issue is that when we trigger builds, it triggers
them one at a time as part of a buildSet and the prioritisation function
therefore sees each build by itself and therefore gives it priority.

That raises the question of the order the triggers are run in. A list of builder
names is passed which is translated to a list of builderids. I think the order
is therefore determined by the database ID of the builders. I did wonder if
sorting the builders list would help but it does not.

There is code in schedulers/base.py which does:

        builderids = list()
        for bldr in (yield self.master.data.get(('builders', ))):
            if bldr['name'] in builderNames:
                builderids.append(bldr['builderid'])

which I think is where the sorting comes from.

I think we're going to have discuss this with upstream.

Cheers,

Richard



