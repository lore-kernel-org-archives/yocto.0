Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.1487.1609872864468122666
 for <yocto@lists.yoctoproject.org>;
 Tue, 05 Jan 2021 10:54:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=eMWcRNQc;
 spf=softfail (domain: linuxfoundation.org, ip: 198.145.29.25, mailfrom: richard.purdie@linuxfoundation.org)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	by mail.yoctoproject.org (Postfix) with ESMTPS id E861C38C08A1
	for <yocto@yoctoproject.org>; Tue,  5 Jan 2021 18:54:23 +0000 (UTC)
Received: by mail-wm1-f50.google.com with SMTP id c133so481315wme.4
        for <yocto@yoctoproject.org>; Tue, 05 Jan 2021 10:54:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=s2YTkrAa6kamXVq7YiSGcoR3z0tZaFTFQTd3hz+qVq8=;
        b=eMWcRNQcKJJggFN26YtgwhnFmodCQueC71qGRyUJV6xyH+EeySbGwFNtY9/oxliw3j
         Ij0BNFz46v6HIQdLGfLvMIQV7piP2v4koz4n5zQRTFUGiRLRepPjZKYFDM2zKQ1mf5vv
         YtIFl6UPk5ssFlHle7uw8DrflHzgd0gRzf+3Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=s2YTkrAa6kamXVq7YiSGcoR3z0tZaFTFQTd3hz+qVq8=;
        b=JytLKnh2GLnT5Pb43dcn7xeVMZl1Hx4gcj4XfrzE6VFbsJq5qXoSadlgRuhUNwVUKh
         9kLp9oFfGKlZmEBemClx4ioC58PDkLZsBsMOEf+0E/Nl+4aYRWaGOgOpVft2S2r+4lkU
         Hca9fimW13T6dACw+i9IBe+WnmdZgisHtbXtWbLvv4wkUemegQh2zd1W1bOr6ZB2FDrF
         ylNd+1I6pWReRbJfOY4j38vf6tQMapdUPpiU0IVFEY+6Ei4V72hxSFA/QhOXa4ryMIHx
         2k78iXmDnQfE99FTBB7besGcfs8BhXUczDyakB43nViWz4EGxzx6nm6ZxWTDrnaI7ji3
         iDnQ==
X-Gm-Message-State: AOAM531RGu6FdUQzHUZXJG2ineckqPiv+Ft+lKWvCSlpuMO2DZF3BxoG
	MBWc3rsTtp56lG1FvoBM+SI8NA==
X-Google-Smtp-Source: ABdhPJyi0rzfMxNRtyiCv62Nu6uNhxNmfyzL3XIUhLMlrSZm9yy5Z25tnyrM6+sTktlY+2LmREWNSw==
X-Received: by 2002:a05:600c:22d9:: with SMTP id 25mr465757wmg.158.1609872862402;
        Tue, 05 Jan 2021 10:54:22 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:fe9c:e0b5:40a1:adaf? ([2001:8b0:aba:5f3c:fe9c:e0b5:40a1:adaf])
        by smtp.gmail.com with ESMTPSA id f14sm5173wre.69.2021.01.05.10.54.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Jan 2021 10:54:21 -0800 (PST)
Message-ID: <5f8f8616efa85303354426f3f9ccab67339dfd48.camel@linuxfoundation.org>
Subject: Re: [yocto] How do I build an x32 Intel system?
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>, yocto@yoctoproject.org
Date: Tue, 05 Jan 2021 18:54:19 +0000
In-Reply-To: <113956D0E12D407782FFFB70D620DEAC@PAULD>
References: <113956D0E12D407782FFFB70D620DEAC@PAULD>
User-Agent: Evolution 3.38.1-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2021-01-03 at 10:44 -0800, Paul D. DeRocco wrote:
I've been resurrecting an old Pyro project under Gatesgarth. It's an
Intel
32-bit system that needs maximum speed, so I decided to try to build
the
system and application as 64-bit, for more registers. It pretty much
worked
on the first try, and is about 8% faster. Now I'm trying to do it as
x32, to
see if that speeds it up even more.

Unable to find any specific instructions, I set the DEFAULTTUNE to
"core2-64-x32" in my BSP conf file. Also, in the old project I had
tinkered
around with this a bit, and had found some kernel config settings
somewhere,
so I tried using them again:

CONFIG_X86_X32=y
CONFIG_COMPAT=y
CONFIG_COMPAT_FOR_U64_ALIGNMENT=y
CONFIG_SYSVIPC_COMPAT=y
CONFIG_KEYS_COMPAT=y
CONFIG_HAVE_ARCH_MMAP_RND_COMPAT_BITS=y
CONFIG_ARCH_MMAP_RND_COMPAT_BITS=8
CONFIG_BLOCK_COMPAT=y

Other than the first one, I don't know whether these are correct, or
where I
originally got them, or if there's a stock .cfg file that does all
this.

The system built fine, the SDK built fine, and my application built
fine,
but when I boot, I get a kernel panic, preceded by some message about
"kmod
busy with 50 threads for more than 5 seconds now".

Is there some instruction on how to do a proper x32 build? I couldn't
find
one Googling. Barring that, do any of those kernel configs look bogus?

You can see the autobuilder x32 test configuration here:

https://autobuilder.yoctoproject.org/typhoon/#/builders/57/builds/2866/steps/10/logs/stdio

the key parts of which are probably:

MACHINE = "qemux86-64"
DEFAULTTUNE = 'x86-64-x32'
baselib = "${@d.getVar('BASE_LIB_tune-' + (d.getVar('DEFAULTTUNE', True) or 'INVALID'), True) or 'lib'}"

Cheers,

Richard


