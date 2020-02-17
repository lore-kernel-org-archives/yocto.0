Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
 by mx.groups.io with SMTP id smtpd.web10.12418.1581961646354685244
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Feb 2020 09:47:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=PrEo0Oxi;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.42, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f42.google.com with SMTP id t14so174366wmi.5
        for <yocto@lists.yoctoproject.org>; Mon, 17 Feb 2020 09:47:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=P8B5MqFyi9zOdwvKOH9ZUmRUifPewxVSk5RbKF9nAd8=;
        b=PrEo0OxiGVFE3rgbNRjgyF/ZUVEIz6CUr0hX6StdaYYQXnGkShozbJFj45DvSuyojm
         Fg6wZUka/GywGfnoqrBy1Z+6rsNj7UVWiO+2m+jDXagF3sk9bHON21vQAJ8Cul8vNEg/
         iCIbX122L/f2NyRqz1rMz+zgi91VtGUTbaiZE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=P8B5MqFyi9zOdwvKOH9ZUmRUifPewxVSk5RbKF9nAd8=;
        b=OoTY6FIlEvirUlTtughf5GFKBNYMyxtB8NuQlLk8MGm727FuOwjcoNwS2xSv4PwQlr
         NR42BId26XDs6qW9YXBEwEUYNN3Ruvr6XaYFonQbcz+OX8Pjs/uArhB972yowdwFKZlu
         r+juJ5nYUfALVkw62Sy5JJ4EKrXiYco5hI7V4PWAHcFIgOv36HD4a2vftQK3euHM9UbY
         6e0A7+JNQBLxVBkBafRYIOfTdYyUzBrVVAFQyDae13iFIDtaBWQVBw4VGH0PgW3N8q6+
         NU6x8l8fFSNqLKgjOirXgOYuZAHEF2RwNrmCnEJKUfIAeL2RwLetlerijF8hEScGirwL
         S5Cw==
X-Gm-Message-State: APjAAAVODD17WzTxWJLmRxhWKXf71B7fpqgqvSFG+oU68Qrd92BgrhVV
	0/suvyJRVmxUQET13qmWAUSzKw==
X-Google-Smtp-Source: APXvYqxS9TaNHAG8D1/oSsRPmNw9cSJ3EUvdddZCnXn+uZvsLdJVYM6uYKfcjpC1jQCtpKbFn6FS4g==
X-Received: by 2002:a7b:ce8b:: with SMTP id q11mr186716wmj.100.1581961644539;
        Mon, 17 Feb 2020 09:47:24 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id d16sm2233569wrg.27.2020.02.17.09.47.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Feb 2020 09:47:23 -0800 (PST)
Message-ID: <ea92a8a308253301273f97ad910281638d350b69.camel@linuxfoundation.org>
Subject: Re: [yocto] Creating a build system which can scale. #yocto
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: philip.lewis@domino-uk.com, yocto@lists.yoctoproject.org
Date: Mon, 17 Feb 2020 17:47:22 +0000
In-Reply-To: <5HUZ.1581942437691543674.aeQI@lists.yoctoproject.org>
References: <5HUZ.1581942437691543674.aeQI@lists.yoctoproject.org>
User-Agent: Evolution 3.34.1-4 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Mon, 2020-02-17 at 04:27 -0800, philip.lewis@domino-uk.com wrote:
> Something using the built-in cache mirror in Yocto–there are a few
> ways it can do this, as it’s essentially a file share somewhere. 
> https://pelux.io/2017/06/19/How-to-create-a-shared-sstate-dir.html
> for an example shows how to share it via NFS, but you can also use http or ftp.

Sharing sstate between the workers is the obvious win, as is rm_work to
reduce individual build sizes.

> Having a single cache largely solves the storage issue as there is
> only one cache, so having solved that issue, it introduces a few more
> questions and constraints:
> 
> How do we manage the size of the cache?
> There’s no built-in expiry mechanism I could find. This means we’d
> probably have to create something ourselves (parse access logs from
> the server hosting the cache and apply a garbage collector process).

The system is setup to "touch" files it uses if it has write access so
you can tell which artefacts are being used.

> How/When do we update the cache?
> All environments contributing to the cache need to be identical (that
> ansible playbook just grabs the latest of everything) to avoid subtle
> differences in the build artefacts depending on which environment
> populated the cache.

All environments contributing to the cache don't have to identical, we
aim to build reproducible binaries regardless of the host OS.

Obviously you reduce risk by doing so but I just wanted to be clear
that we have protection in place for this and sstate does support it.

> How much time will fetching the cache from a remote server add to the
> build?

Mostly depends on your interconnecting network speed.

Some mentioned NFS, we do support NFS for sstate, our autobuilders make
extensive use of that.

Cheers,

Richard

