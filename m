Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.web08.345.1612459072468908135
 for <yocto@lists.yoctoproject.org>;
 Thu, 04 Feb 2021 09:17:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=eoxWCdRG;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.54, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f54.google.com with SMTP id i9so3677955wmq.1
        for <yocto@lists.yoctoproject.org>; Thu, 04 Feb 2021 09:17:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=LwAIO5gQgmm6GvPTSfaCKlyZAslIMloU2QkOJcVkX6Y=;
        b=eoxWCdRGYli/wNHDcGahctDg0QfLCIj3Vo633teF1vhGU9kMV7SMIbZimFhPBlzqRW
         KDT1w4DVWQEcp4ryFMqtbkvEDCwUxCDv3p0W19+p9pXqnQ1eUKenM03azu6qN0QYs1Gs
         YBo0UikZIr0WJhkxXLOHmOLcztp3PF6EjTu9Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=LwAIO5gQgmm6GvPTSfaCKlyZAslIMloU2QkOJcVkX6Y=;
        b=LRUTCTkqxUhCI2sK/spywr69iy1aBbwH9h7DnSZrZ1DchFtRU0s1wbMPEQIxtwrgZf
         qJicxwAebO7nhHREV0qJFJSMns4OoQtpa11doPEBFCAHeuFhByedomydwulCQ7Yl+mGd
         71ZFyXE6z1YuGUILXJOdbIon/uXKJnKDBc1Oqj0QaxuN+BnWvg8vAokKWXPXYQJf1X3E
         hgZf5rrNNy1YH1wzJanYhnQxoSDu4bJ6EtvViw4XIUjGjJqaibPanFtIE4tl04v7IF9F
         ixMemPLNv0nb8KTxxv60w/fsG0hppr3v9AeZZvsFUHWsH/+AMW31b5h5okytjViQfzjG
         NtJQ==
X-Gm-Message-State: AOAM531hFVF7IOtYsiQLy3JcY/aoM6B1vEKaV0Bk0t/NvSdDwkmi+/Nm
	En53Liyyo30yKHQWdqnxKPvvNQ==
X-Google-Smtp-Source: ABdhPJzPr7LuYz6J696sxSYa+daw0P/IYv4ycXnr/EoY0Z1Dx895izhX21jZ2ov+pDnDQNybEqszmQ==
X-Received: by 2002:a1c:9d4c:: with SMTP id g73mr166876wme.105.1612459070990;
        Thu, 04 Feb 2021 09:17:50 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:62ae:a739:5537:66d9? ([2001:8b0:aba:5f3c:62ae:a739:5537:66d9])
        by smtp.gmail.com with ESMTPSA id k4sm9673548wrm.53.2021.02.04.09.17.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Feb 2021 09:17:50 -0800 (PST)
Message-ID: <482207e7ba33b79b30e1357c64fd85353519f00b.camel@linuxfoundation.org>
Subject: Re: [yocto] [prelink-cross][PATCH] Add SPDX license headers to all source files
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Meh Mbeh Ida Delphine <idadelm@gmail.com>, yocto@lists.yoctoproject.org
Cc: mark.hatle@kernel.crashing.org
Date: Thu, 04 Feb 2021 17:17:46 +0000
In-Reply-To: <20210202105438.21650-1-idadelm@gmail.com>
References: <20210202105438.21650-1-idadelm@gmail.com>
User-Agent: Evolution 3.38.1-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2021-02-02 at 11:54 +0100, Meh Mbeh Ida Delphine wrote:
> From: Meh Mbeh Ida Delphine <idadelm@gmail.com>
> 
> Added SPDX headers in all source files except src/makecrc.c since it is not copyrighted.
> Skipped Makefile.am as well.
> Also cleared redundant license text.
> Updated README file with correct email addresses.
> 
> Fixes: [YOCTO #13529]

Thanks for this. There are a couple of tweaks I noticed as I was about
to merge it. Firstly, can you make the email address update a separate
commit please. Commits should do one logical thing.
> 
> -   The GNU C Library is free software; you can redistribute it and/or
> -   modify it under the terms of the GNU Lesser General Public
> -   License as published by the Free Software Foundation; either
> -   version 2.1 of the License, or (at your option) any later version.
> -
> -   The GNU C Library is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> -   Lesser General Public License for more details.
> -
> -   You should have received a copy of the GNU Lesser General Public
> -   License along with the GNU C Library; if not, write to the Free
> -   Software Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA
> -   02111-1307 USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
> 

This file mentions "GNU Lesser General Public License" and version 2.1
which is not GPL-2.0!

It is critical to get this bit right.

Cheers,

Richard

