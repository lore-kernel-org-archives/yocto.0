Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com [209.85.128.66])
 by mx.groups.io with SMTP id smtpd.web11.812.1589316207478727685
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 May 2020 13:43:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=ZsFdI/yp;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.66, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f66.google.com with SMTP id e26so23721598wmk.5
        for <yocto@lists.yoctoproject.org>; Tue, 12 May 2020 13:43:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=kbuDwovdcEaFydDoBa8fStirQ8VQmZaBsm17dvc0Aew=;
        b=ZsFdI/ypvJhQxV0EL9u7za9IccKo7m0j5y9isPXPdXSqIpAc3IDDzsdKNAZY/jnTea
         kALxIvrMgc4GznaIwgq6wCVqRnxDQcXnKJH02aMf90qh8qpCYfetjriGnWOegI73+qsu
         HvzY69tbmZoQIkPcDxEWRPRqkbpr9DXRSMkGA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=kbuDwovdcEaFydDoBa8fStirQ8VQmZaBsm17dvc0Aew=;
        b=ayiIM7QlXvC+xH517P6SxWevCAzAkLDPJZWORb9dDc2h0f1fffnXZyAoIM2Bef/Yoo
         B5jvaPLU+v6vEu0kMWfuWnHN2z7mI4IIqP3y1JHyiODabaDt1z3H58WMVYS8QG4K+34a
         eMssZIeTI/oNi21rPmNDMHyzIEo6uenWOYczgVtx13sI2t5py0rxp74sXGy7ujGN9wlP
         mIMY3KpkPM7t3/cZHOX291/EBMWwK5UQhu4wITv+TtjkCsGL00P0YDrLnhp5AvYAiHsk
         ZzC4ZfJqMNWHI4eHtvTOyQyG6vkjYmu71wK6POP1vta70+DYZsWuAFzm9djIce6rpTl9
         6zpw==
X-Gm-Message-State: AGi0PuZopyu6MPqoFTZQHytwW4xyhHQ0TYRJOudDScma45vQKrR9cFMR
	izR758I5omKvLWyslnR201jeqw==
X-Google-Smtp-Source: APiQypK3rSDVLOOXaIEsA8PsxjxBjOyVWmY6wkfK++L1aAAxyDKp85B5PxIhT60bvfLAT6CJxydI/g==
X-Received: by 2002:a05:600c:290e:: with SMTP id i14mr9741935wmd.9.1589316206005;
        Tue, 12 May 2020 13:43:26 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id t2sm34205990wmt.15.2020.05.12.13.43.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 May 2020 13:43:25 -0700 (PDT)
Message-ID: <53bf50e8b32cc08ba109be4565c9e242cc16694e.camel@linuxfoundation.org>
Subject: Re: [yocto] [matchbox-desktop-2][PATCH] Add SPDX-License-Identifier: GPL-2.0-or-later
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Matthew <matthew.zeng@windriver.com>, yocto@lists.yoctoproject.org
Date: Tue, 12 May 2020 21:43:24 +0100
In-Reply-To: <87h7yfqd8p.fsf@windriver.com>
References: <87h7yfqd8p.fsf@windriver.com>
User-Agent: Evolution 3.36.1-2 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2020-03-23 at 11:53 -0400, Matthew wrote:
> Fixes [YOCTO #13319]
> 
> Signed-off-by: Mingde (Matthew) Zeng <matthew.zeng@windriver.com>
> ---
>  libtaku/inotify/inotify-diag.c    | 2 ++
>  libtaku/inotify/inotify-diag.h    | 2 ++
>  libtaku/inotify/inotify-kernel.c  | 2 ++
>  libtaku/inotify/inotify-kernel.h  | 2 ++
>  libtaku/inotify/inotify-missing.c | 2 ++
>  libtaku/inotify/inotify-missing.h | 2 ++
>  libtaku/inotify/inotify-path.c    | 2 ++
>  libtaku/inotify/inotify-path.h    | 2 ++
>  libtaku/inotify/inotify-sub.c     | 2 ++
>  libtaku/inotify/inotify-sub.h     | 2 ++

Thanks for this. I did merge it however to be clear, the above files
are under LGPL, not GPL. As such, I removed this part of the commit and
added a second one of my own which resolves this.

Cheers,

Richard

