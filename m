Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D52C6C52D71
	for <webhook@archiver.kernel.org>; Wed,  7 Aug 2024 14:20:39 +0000 (UTC)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
 by mx.groups.io with SMTP id smtpd.web11.34724.1723040436996456047
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Aug 2024 07:20:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=tUM+xZZj;
 spf=pass (domain: linaro.org, ip: 209.85.167.52, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-52efd08e6d9so2846238e87.1
        for <yocto@lists.yoctoproject.org>; Wed, 07 Aug 2024 07:20:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723040435; x=1723645235; darn=lists.yoctoproject.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1ZDt/E9pD2M9VKw1ZlU4zYrmrmfJJlLpU3Koq6GZ00A=;
        b=tUM+xZZjQIRvqYqvAmb6c/xQK2orWYH2WXa6VvjQj0PPBiaGRRdb03vnt8wD8XO5qq
         4Z4nXL1VBmDGjdkP5osPLdBTqsQBUmvvX7BOgnka0FzPcpI+Jfnf5qgqG1k3mnld+U0x
         C/RX9vfLvCTaATUFGSRKfHh8H+KZAKy+UowI2QkUJBAq6NVh3lAgxiNg5PNjj0/LMs4p
         tohamW4DGn6M/lyMbMy+d7rbvmDqJt8QPCTy/c0M6HVnqNsJu5Cu2c5Iw9LHltMjleFw
         Jse3A2GUPw/RsMlzTpEo4N+rCUVmJf9t9c44+6PZFIUgCHx1WyQZKm2prlJRhjR8Aqzd
         atew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723040435; x=1723645235;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1ZDt/E9pD2M9VKw1ZlU4zYrmrmfJJlLpU3Koq6GZ00A=;
        b=wCjE7bw06Bs6ndRKc32+cfR2UgB+XRo7aOYYdOZZ7PY28JF9PxnSwrjyc6dSOT2E4m
         prUmMefQuDggCbwSMFmjC3Mfaclldc29irFBWTpz4Y7oljAY01Ob3y5saecnW9Voc3mY
         Zce44P0hK7JwGLXUIC+fFHwT9TpOYUXIhg8IamWYb/YUwE8+Sd0RlyBHnn2TiRDrv0ct
         9TlP1z/S4r0c0SUQMYKugk+FYu0DUyZ0hgd2hIGYWj1W8XjiyTaXlv7vY03c0fWZam1B
         FtVfo0LwtuCEeW69XxA0U6OftntPC3goE43Gf0M5q1a4wBJxqqng1yi6RA8Fxr6F72yJ
         DFtw==
X-Gm-Message-State: AOJu0YwmVEFa3rJfYvT6sxOg+sQgYOaSUg3eo9e7UI7yEGlKyW6BFpxn
	tEZQW31XiK57M0qAPoM9Coc/xtYI59vJx1rXJ0cIi9sleAT0ePZKjUCvij9gQvI=
X-Google-Smtp-Source: AGHT+IFo/P/73h4dyrkqWD334vnZlbKpj9QZumP4C4xRJOx3YToEPRrH9q2Tp+5tzw3HFb+ukNbzqw==
X-Received: by 2002:a05:6512:e89:b0:52e:f95c:80 with SMTP id 2adb3069b0e04-530bb4d6db9mr12497656e87.53.1723040434939;
        Wed, 07 Aug 2024 07:20:34 -0700 (PDT)
Received: from nuoska (87-100-245-199.bb.dnainternet.fi. [87.100.245.199])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-530de457875sm262446e87.174.2024.08.07.07.20.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Aug 2024 07:20:34 -0700 (PDT)
Date: Wed, 7 Aug 2024 17:20:32 +0300
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: Yann CARDAILLAC Pro <yann.cardaillac@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto][meta-openembedded] How to properly build a lib package
Message-ID: <ZrOCsPB34L6ITVH8@nuoska>
References: <CAC3TgA+HFgXcckqxUVgUQsRfJySytZSAj3PtSRD6TLzT5_yDqg@mail.gmail.com>
 <ZrM8ikxC3AwTgDHR@nuoska>
 <CAC3TgA+-s0BN3D3Bzwcg6_6vF2fipu_wGc4BWFwhZM8S97wjjQ@mail.gmail.com>
 <ZrN0cTChvgsn4skg@nuoska>
 <CAC3TgAJ7bwU6Q+bC6wyC-4633bQ+XHtqgv-_cnT-x9qCe5OEBQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAC3TgAJ7bwU6Q+bC6wyC-4633bQ+XHtqgv-_cnT-x9qCe5OEBQ@mail.gmail.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 07 Aug 2024 14:20:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63675

Hi,

On Wed, Aug 07, 2024 at 04:14:29PM +0200, Yann CARDAILLAC Pro wrote:
> Thanks Mikko, that was it indeed! I didn't test on target yet but it seems
> ok so far!
> 
> I'm still not sure about the librj2d.so()(64bit) though any idea?

I would leave all RPROVIDES for bitbake etc automation to set. I don't know
what is the reson for setting RPROVIDES manually.

Cheers,

-Mikko

