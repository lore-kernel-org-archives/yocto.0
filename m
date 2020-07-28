Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
 by mx.groups.io with SMTP id smtpd.web10.9846.1595934206496564582
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Jul 2020 04:03:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20150623.gappssmtp.com header.s=20150623 header.b=NSjmkCcK;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.208.174, mailfrom: jester@theyoctojester.info)
Received: by mail-lj1-f174.google.com with SMTP id b25so20655970ljp.6
        for <yocto@lists.yoctoproject.org>; Tue, 28 Jul 2020 04:03:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=XszuWKZVbTOgrPnlulab5Xp8VD5q4nptTMCN2WwDbIA=;
        b=NSjmkCcK75fARxd017/pNpJKVm9BJnAoksSFF+uHIxAoVrxmrgaayPKea7LSerqlH4
         bBP1bDi+MPyZFhi+l0klcC5cT8Ca8b6nJGhvHgYwrZ+BhVMB1v/D92j6rGQnVMYXNpSs
         LQDV1g25BpapxO4gJak36rroxiDQJ7otCi4j46+UJ1bZkOR8bOw7zdBorcrwdwoBaC9F
         8dxdzQxqhFlg5Hw6J0c21NRgiZzgBhm9Vz0BO0U3YQ9iV9ptlctl3kfv/SxVG/goatpX
         n64KRrZ/jL8v0RBfAuiXJRKPBPLT9re5SVu5j/FQPAmRgEyeCyhYTQHlGxEQwrCnBMpU
         YwEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=XszuWKZVbTOgrPnlulab5Xp8VD5q4nptTMCN2WwDbIA=;
        b=qerfx59Tgocqdw2rvk20FUFHsCU09VOH/6bmemwmjlmChWoQpSJKJIZ0eeI+8/LIag
         /01iw70NoLegyEDocw+XPcweDhnzBxBS2o3Rm6zAJEpkyD07+CENQ0ASO8wC+KMbHUgq
         spkqWewILu/GSjtZlZ2MaSuGnKmTbSgZVJrptiosN88CDwS40MUndf7z/HxtJTRGoG+m
         Ah+IK9/FEygBGPL+AbBE+9/XarC7shlaNNGouyj88N8wr9Uhmz76c2x0rmsqDEXrw3qW
         NXA6cYymE+XJr1a88UglbXkp9qLoEh1ZyHsxwi3yHZXs0PQhWh3KWzf1NmDAkr1OEu8B
         BWCQ==
X-Gm-Message-State: AOAM533AMxvVRbZh+HqcGfzBMyQFGncoNaeGfSEM9ljNfECNQ1pBjy1l
	5e1HlnQgbIBeeLo94REXEPYa2ZZeousV/lZNd5qwhQ==
X-Google-Smtp-Source: ABdhPJxQv7C+UBgHpKIgr6ZpnOey4bEPkq0SsPEBod1tT3K1W3VuT31dPNv26m2SCO6QLqBTaTFeVEDAyRT00zHvg8k=
X-Received: by 2002:a2e:a17c:: with SMTP id u28mr11942477ljl.140.1595934204480;
 Tue, 28 Jul 2020 04:03:24 -0700 (PDT)
MIME-Version: 1.0
References: <CAJw=dJ_yy8+A6JWoB39rRB0+FbQX+LGFgFmnn9dTWcqPFN2ruQ@mail.gmail.com>
 <CAJw=dJ-WJfC=sss_aS6mokwUPTZby65GN+cayYM=pqWs6o7JVw@mail.gmail.com>
 <CAEt6NwoPfHC2jjjAXHxDdBJZf0p0f7kKK9MGTitekJ4CbqZ+Zg@mail.gmail.com> <CAJw=dJ9c50nX-9ssy4f5koN7BGTYLo5h=H4XZObAY-ZimTWxxQ@mail.gmail.com>
In-Reply-To: <CAJw=dJ9c50nX-9ssy4f5koN7BGTYLo5h=H4XZObAY-ZimTWxxQ@mail.gmail.com>
From: "Josef Holzmayr-Khosh Amoz" <jester@theyoctojester.info>
Date: Tue, 28 Jul 2020 13:02:58 +0200
Message-ID: <CAEt6Nwo_9BUaAyQpXVV7dQH8P6jrw7Bg1Hyom3ArrY_JWcdKNQ@mail.gmail.com>
Subject: Re: [yocto] Remove connman package from yocto sdk.
To: NIKHIL PATIL <nikhilvp29@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Howdy!

(re-adding the ML)

Am Di., 28. Juli 2020 um 12:10 Uhr schrieb NIKHIL PATIL <nikhilvp29@gmail.com>:
>
> Hi
>           1) connman is default package, so by default it is coming with sato image.

Nope. It is not the default. Maybe the sato image pulls it in, but if
you don't like that then why do you use the sato image? Create your
own image recipe.

>           2) some packages are depends on connection manager.

Create your own image recipe and include the connection manager that
you like. If you install something that has an explicit dependency on
connman, then you probably have to remove that too.

>           3)  In our own own image recipe how we can remove connection manager package ?

Why would one have to remove something that is not there? Again, now
really for the last time:

"Create your own image recipe and add only the things that you want".

There is even a neat demonstration on how to do that online:
https://youtu.be/nqHylLP2NmA

Greetz
