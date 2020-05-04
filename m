Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
 by mx.groups.io with SMTP id smtpd.web12.3416.1588587737120577271
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 May 2020 03:22:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=oPlmn+mA;
 spf=pass (domain: burtonini.com, ip: 209.85.167.48, mailfrom: ross@burtonini.com)
Received: by mail-lf1-f48.google.com with SMTP id h26so6268582lfg.6
        for <yocto@lists.yoctoproject.org>; Mon, 04 May 2020 03:22:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=qRYDNL+670Kb9gdJVualkmlF9/7e6Hn6F83OZw/rWRc=;
        b=oPlmn+mAtoOtyuCQeTB1X2DQCusv4drnwGcVQT/RrYgOQygz+ZjpGnRZimUWYBpPaf
         ZBGztVHtT4qkwjzTjNpM8l4MG/IbADomidhPRNCAQafCznyMWc+4vagFJ6MroDjyN3vr
         +uixXgW7IAAZgbX42bs6JmMX04p4hI5FyfMFcepCRDGtkYM7CteP7XDctl7kmFxubrNS
         OzO+/57PxdSumGmqNYG3pEVoxHjtiAU77E8/hYR9OHdMtCp39nzCkbzbhnkFOLF9upv8
         1wn8ROsdiuE2YUmUAuBoooMe2UCJ6DJWYkvotQLJ04lDqmaiOK3BgmiK1RZrj9/0zG1N
         lkRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=qRYDNL+670Kb9gdJVualkmlF9/7e6Hn6F83OZw/rWRc=;
        b=MrquszKFsXPzQ/9bQ8Z2MOYE4yG+Pe5/c3KaBUyNE1CuA6uLvC2re32YdL6tK42n9k
         WZZKuffySjMgDoTQzqIt9cATKXZVsBgvTtHhrPPh5hIJjrJh05YOLao7NNedUziNrfks
         krcI1ISK0LO/ZA160bzf3FFuvkJgZiKOKjRM1rMaWx9Y9/JmIxttJAQBAtSSZCyU1qEJ
         VjApdsCSFTPpYd/eEm9yehWlrnCiOFsHuEV41CHSnX1r5ntnp4BdFoL+6gdnovWfqjGI
         MtoRBb1Ke6SZRlOSiQDoW8NDVXz1kSEXTtcw1NtbUo+AYdBm1xt9H9+/wO8KkxgLXgLc
         dF3w==
X-Gm-Message-State: AGi0PuY579GDbS3YxOY6vH8zjoyB7lyXjNvJrjl7NDLxjxQz4I31uAZU
	zYe2V/OKyOwYG+tK9bMZw5acL9CicMQE+nCoQyHnEhbw7Ea8fQ==
X-Google-Smtp-Source: APiQypJ0G7wXngdCkDVV6l9sVIVxrBjChdstssbCy9eybMbS6DUJO42W+OO2uaoOpssfNJ8RM3h4QQsU0xNmNIiKai0=
X-Received: by 2002:a05:6512:108f:: with SMTP id j15mr729883lfg.19.1588587735027;
 Mon, 04 May 2020 03:22:15 -0700 (PDT)
MIME-Version: 1.0
References: <uvNE.1588579997175508090.uKqz@lists.yoctoproject.org>
In-Reply-To: <uvNE.1588579997175508090.uKqz@lists.yoctoproject.org>
From: "Ross Burton" <ross@burtonini.com>
Date: Mon, 4 May 2020 11:22:04 +0100
Message-ID: <CAAnfSTuzEbam1UCtrYhWUqnKxP+6duRTShKER9auYcxSbXT_fg@mail.gmail.com>
Subject: Re: [yocto] #yocto do_package error for custom app
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 4 May 2020 at 09:16, Bastien0530
<bastien.gallet-pesenti@pi.esisar.grenoble-inp.fr> wrote:
> Subprocess output:arm-poky-linux-gnueabi-objcopy:/home/galletpb/Documents/poky/build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/si4688-app/1.0-r0/package/usr/bin/si4688-app: file format not recognized

Please run 'file
/home/galletpb/Documents/poky/build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/si4688-app/1.0-r0/package/usr/bin/si4688-app'
to find out what this binary actually is.

Ross
