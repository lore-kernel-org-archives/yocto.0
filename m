Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com [209.85.221.67])
 by mx.groups.io with SMTP id smtpd.web09.4890.1582453065006171320
 for <yocto@lists.yoctoproject.org>;
 Sun, 23 Feb 2020 02:17:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=N0UkcsiM;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.67, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f67.google.com with SMTP id r11so6907668wrq.10
        for <yocto@lists.yoctoproject.org>; Sun, 23 Feb 2020 02:17:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=bn5TJYnKfAQzgfJOPt3YVm+cpN7J1PXG/OZsNnmWX1o=;
        b=N0UkcsiM9oekGc1qcYfPn6pBUgB1jjp30VBXKPE0M7rMHEg7ofQFd8qympKudC3otS
         1+I2fT6FVfGVQywNQaLyPRKJ3W5H6Qd5tMlp1EYJ3nq9PAjDc6EfpfC66Jp9QjXTWyRg
         LwkwlnGRXYMwrNng+lVgKUTQMoiQqh54fNXD4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=bn5TJYnKfAQzgfJOPt3YVm+cpN7J1PXG/OZsNnmWX1o=;
        b=drWaWuhf6NIoB3k9OHbP0UHK+2LoCr5aNtNQtVU+yZS6XSEqD/pfB3edLCxfgnK7UC
         maFCVziMddQJsnHMmJ7loCpSmDwDhcGqSLmA0pVwJSA4YpKldBk+xSakpYF5HZQVHy9i
         B8op1ThoIk8TeLzJ/G3YMdYp85sVUssP0GeT6fJFmOHj0gaxuCsLsiRMPyksRvuAnEY/
         OeLWzbzuI9lMmqyTuSKY+c6WzdWsWEfQhO7Arz+iIVQh5o+DS9MK+KrLwuzsd50RWx+C
         NqTpGcV8mCqKrLeW2Ss6LCZ3tTU/c1YkaoVxVjYQQFRbt/L3Q8UeYSrT7XcriG1wVMDK
         uYaw==
X-Gm-Message-State: APjAAAVd/HUI+JkJcD/ivOpWAujU10s1CJtC5dVS+CF/iSvuBr+o6WZk
	3uD2XJYdaCq9+akbpQoudZvRcg==
X-Google-Smtp-Source: APXvYqxdFoP2zVz2Z+eix5MHC+kiQWfzlyh7KUvt8DA6Cx2t97a8qPqyrUX3Km9QvpwV2s4Owt3t7g==
X-Received: by 2002:adf:d847:: with SMTP id k7mr7581191wrl.161.1582453063503;
        Sun, 23 Feb 2020 02:17:43 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id i4sm12500809wmd.23.2020.02.23.02.17.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Feb 2020 02:17:42 -0800 (PST)
Message-ID: <5914bd0e420265243e60da0fe4cc5a47592d5e79.camel@linuxfoundation.org>
Subject: Re: [PATCH] yocto-bsps: update to v5.4.20
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: bruce.ashfield@gmail.com
Cc: yocto@lists.yoctoproject.org
Date: Sun, 23 Feb 2020 10:17:41 +0000
In-Reply-To: <20200221231039.32818-1-bruce.ashfield@gmail.com>
References: <20200221231039.32818-1-bruce.ashfield@gmail.com>
User-Agent: Evolution 3.34.1-4 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2020-02-21 at 18:10 -0500, bruce.ashfield@gmail.com wrote:
> From: Bruce Ashfield <bruce.ashfield@gmail.com>
> 
> Updating the SRCREVs for the h/w references to v5.4.20, which includes
> the binutils fix for perf.
> 
> Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
> ---
>  .../recipes-kernel/linux/linux-yocto_5.4.bbappend         | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

Thanks, I added some kernel version changes too.

Cheers,

Richard

