Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.web10.17887.1611090667500562548
 for <yocto@lists.yoctoproject.org>;
 Tue, 19 Jan 2021 13:11:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=GoVkj/0p;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.54, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f54.google.com with SMTP id i63so1032559wma.4
        for <yocto@lists.yoctoproject.org>; Tue, 19 Jan 2021 13:11:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=8hk+NMxqqAlDa1r6tyJN+zz+Q3ZVuYZ2Cnl+Pg+O4Ak=;
        b=GoVkj/0ps05fkizR64KEOmlvkcBS0a5x1Y0ND5hoQUVJIg/X5kDyFZOcZFrXrPZuie
         EnRy7HGSUARicv39VOuDK1Qa32E9HoMZxF76BrNoLMcC6JCc4FS9GCEw71O1Rr793fKO
         iDzX3EsMlzlYf/gdaIBD5s6hYXqtyek0XvpkM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=8hk+NMxqqAlDa1r6tyJN+zz+Q3ZVuYZ2Cnl+Pg+O4Ak=;
        b=qRismASabSbyzCznwtpsgkNzOKIUbq3BAmDPfGi6vYQy0J8r5IB2FSC79wA2FYmEnE
         Jo/odEfsjOHFBIGRHhdb7oUl3cYbvfuBK54YEWeI/XtSKYITal2PPzCPIbNp4IcNyWVZ
         mpVVsb3pNERiImhwWGAi15VJShn2dMR8fei+EiN41F2EZ95Q8pyyrINBzaEoSQEfqIX7
         b0qNNj4UQXNSd4T805tgpdbhGnrflGAiUAEXZ8R3PaJeYiA5R37Qxk1otf0BWBVl78mx
         yZJExBQUpAGSgwdNcaDVJ4FB3lEuPqWRM93foh0mpucEjfmPscH/RZYK3B8DT5DBq6tP
         6pQg==
X-Gm-Message-State: AOAM530bCYGvtr9pjoSVAjc/nswzpNrkFOsrk7d9FMDW0LHQzA65Vu+V
	b7Rox95d1Vq6GmOnT4QdL3nz/g==
X-Google-Smtp-Source: ABdhPJwmQ2ZKOioM+KgcRADp51jIQjCsMTBT96URpSP0dF1p96GPyMu+U4lk551wkSUbNOUnfAIUdw==
X-Received: by 2002:a05:600c:19c8:: with SMTP id u8mr1298968wmq.59.1611090665794;
        Tue, 19 Jan 2021 13:11:05 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:f7a4:851a:48d5:440b? ([2001:8b0:aba:5f3c:f7a4:851a:48d5:440b])
        by smtp.gmail.com with ESMTPSA id s25sm41536106wrs.49.2021.01.19.13.11.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Jan 2021 13:11:05 -0800 (PST)
Message-ID: <52443a5f57622afdd10255e800b22b658e48db48.camel@linuxfoundation.org>
Subject: Re: [yocto] #yocto #kernel BB_GENERATE_MIRROR_TARBALLS
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>, 
	"yocto@lists.yoctoproject.org"
	 <yocto@lists.yoctoproject.org>
Date: Tue, 19 Jan 2021 21:11:04 +0000
In-Reply-To: <60073f6b.1c69fb81.eeb8c.7b8fSMTPIN_ADDED_MISSING@mx.google.com>
References: <60073f6b.1c69fb81.eeb8c.7b8fSMTPIN_ADDED_MISSING@mx.google.com>
User-Agent: Evolution 3.38.1-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2021-01-19 at 20:22 +0000, Monsees, Steven C (US) wrote:
> All but the following downloaded except these which failed (timing out):
> 
>  https://sourceware.org/elfutils/ftp/0.177/elfutils-0.177.tar.bz2
>  https://download.qemu.org/qemu-4.1.0.tar.xz
>  http://libarchive.org/downloads/libarchive-3.4.0.tar.gz
> 
> fyi... I am using zeus 3.0.4.

I did just check and these do seem to download ok here:

$ wget https://download.qemu.org/qemu-4.1.0.tar.xz
--2021-01-19 21:09:28--  https://download.qemu.org/qemu-4.1.0.tar.xz
Resolving download.qemu.org (download.qemu.org)... 172.99.69.163
Connecting to download.qemu.org (download.qemu.org)|172.99.69.163|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 54001708 (52M) [application/x-xz]
Saving to: ‘qemu-4.1.0.tar.xz’

qemu-4.1.0.tar.xz                     100%[=======================================================================>]  51.50M  8.77MB/s    in 6.3s    

2021-01-19 21:09:35 (8.21 MB/s) - ‘qemu-4.1.0.tar.xz’ saved [54001708/54001708]

$ wget https://sourceware.org/elfutils/ftp/0.177/elfutils-0.177.tar.bz2
--2021-01-19 21:09:38--  https://sourceware.org/elfutils/ftp/0.177/elfutils-0.177.tar.bz2
Resolving sourceware.org (sourceware.org)... 2620:52:3:1:0:246e:9693:128c, 8.43.85.97
Connecting to sourceware.org (sourceware.org)|2620:52:3:1:0:246e:9693:128c|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 8852413 (8.4M) [application/x-bzip2]
Saving to: ‘elfutils-0.177.tar.bz2’

elfutils-0.177.tar.bz2                100%[=======================================================================>]   8.44M  5.87MB/s    in 1.4s    

2021-01-19 21:09:40 (5.87 MB/s) - ‘elfutils-0.177.tar.bz2’ saved [8852413/8852413]

$ wget http://libarchive.org/downloads/libarchive-3.4.0.tar.gz
--2021-01-19 21:09:46--  http://libarchive.org/downloads/libarchive-3.4.0.tar.gz
Resolving libarchive.org (libarchive.org)... 2600:9000:21c7:e600:16:e6b0:f440:93a1, 2600:9000:21c7:9000:16:e6b0:f440:93a1, 2600:9000:21c7:2e00:16:e6b0:f440:93a1, ...
Connecting to libarchive.org (libarchive.org)|2600:9000:21c7:e600:16:e6b0:f440:93a1|:80... connected.
HTTP request sent, awaiting response... 200 OK
Length: 6908093 (6.6M) [application/octet-stream]
Saving to: ‘libarchive-3.4.0.tar.gz’

libarchive-3.4.0.tar.gz               100%[=======================================================================>]   6.59M  8.25MB/s    in 0.8s    

2021-01-19 21:09:47 (8.25 MB/s) - ‘libarchive-3.4.0.tar.gz’ saved [6908093/6908093]

$ sha256sum libarchive-3.4.0.tar.gz elfutils-0.177.tar.bz2  qemu-4.1.0.tar.xz 
8643d50ed40c759f5412a3af4e353cffbce4fdf3b5cf321cb72cacf06b2d825e  libarchive-3.4.0.tar.gz
fa489deccbcae7d8c920f60d85906124c1989c591196d90e0fd668e3dc05042e  elfutils-0.177.tar.bz2
656e60218689bdeec69903087fd7582d5d3e72238d02f4481d8dc6d79fd909c6  qemu-4.1.0.tar.xz

Cheers,

Richard


