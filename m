Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
 by mx.groups.io with SMTP id smtpd.web08.44574.1606175765795204235
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Nov 2020 15:56:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=goiWad6v;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.52, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f52.google.com with SMTP id z7so4710128wrn.3
        for <yocto@lists.yoctoproject.org>; Mon, 23 Nov 2020 15:56:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=m4Rwfb5cgDVev39VkgOTxkqfhVRDknpZl7vGLSa10e0=;
        b=goiWad6vgPW0eYQznj9j2rQmHedaPFczpLEB8nSKrbYBqKSjlcj+pkzgp10y6hVzvP
         uYHsFarltdwmQRyQuFuQHLlaGjwq2QgTpm+scWzxymQ50GzsyGy7DonNDovwbBjedz2D
         KejFdwfsSx6/ChptvH1nPYKt4Z8PKEhiZFH+4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=m4Rwfb5cgDVev39VkgOTxkqfhVRDknpZl7vGLSa10e0=;
        b=C5C3vzuSOY3VHr3/MFlZtsPZp6KyYksj8Yf5WUA6uivEm0E3Kz4+VOvVhoFoqm3+hb
         SsIJeOmaBTO6L5EfZTtfzGbnO5dMddISi92OhQtRg1ke8BWzeJEPISR626JowwDrg7zq
         Dd5zpxkvVqqQrkXBTlV7SMaP+UaydPNAHRyt1HpJYInVboZe/0i8SAArzimEyDgbqZ4l
         NuYxPbrb5i0MH8nSRabfcbg5yPBA/DVJ/xIqiMYcLazYFRe7DdSC24+GNI55ebhnohl/
         4ETeM3y6XnbLFPatn+85SWRAwONfY8RPyU+l/Obu72SJXwLAZm5Twl6H/kOUqsJw80Oh
         Gizw==
X-Gm-Message-State: AOAM533gJ73TXHDIP9gLnc3bZY2BGGUyjkQkSe4iQxX/QmUJxFg37oRU
	clYTSL0zMpuchkgeBo12aVhVHw==
X-Google-Smtp-Source: ABdhPJxitKkpvO4hsBXSZQ73qagtKgn2qgaR373bxjqqq1+zc/EgTNB3FcB6/MTYk7yGYcfxcRb+0Q==
X-Received: by 2002:adf:b64f:: with SMTP id i15mr2086627wre.125.1606175764165;
        Mon, 23 Nov 2020 15:56:04 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from 4.3.1.2.4.d.e.0.6.7.2.2.d.6.0.9.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (4.3.1.2.4.d.e.0.6.7.2.2.d.6.0.9.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:906d:2276:ed4:2134])
        by smtp.gmail.com with ESMTPSA id w1sm1593242wmi.24.2020.11.23.15.56.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Nov 2020 15:56:03 -0800 (PST)
Message-ID: <95ce1fc7a4fa57a2016d3d9be869157f81faf40d.camel@linuxfoundation.org>
Subject: Re: [yocto] Python function caching question
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Michael Callahan <coder.callahan@gmail.com>, yocto@lists.yoctoproject.org
Date: Mon, 23 Nov 2020 23:56:03 +0000
In-Reply-To: <CADm5WxOUQO5za65bAvfN-2F1DnuOLg6unLUmD0k46W6Dj37c_A@mail.gmail.com>
References: 
	<CADm5WxOUQO5za65bAvfN-2F1DnuOLg6unLUmD0k46W6Dj37c_A@mail.gmail.com>
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2020-11-22 at 19:16 -0700, Michael Callahan wrote:
> I am having trouble with sstate caching of my os-release.bbappend and
> am stuck.  The simple example file looks like something below, where
> I
> am setting a variable from a computed python function.  What's the
> magic
> to make the find_version(d) always run but do_compile to only run if
> VERSION changes?  I basically want something like
> `find_version[nostamp]="1"` but that seems to only work for tasks.
> 
> def find_version(d):
>     import subprocess
>     cmd = "git describe --long"
>     return subprocess.check_output(cmd).rstrip().decode('utf-8')
> 
> VERSION = "${@find_version(d)}"
> # do_compile uses $VERSION

If you set BB_DONT_CACHE = "1" in the recipe, it will force the recipe
to reparse each time. That should cause it to rerun find_version and
then change hash when the value changes. Its how SRCREV = "${AUTOREV}"
works behind the scenes.

Cheers,

Richard

