Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com [209.85.208.193])
 by mx.groups.io with SMTP id smtpd.web10.6766.1592299252732021992
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Jun 2020 02:20:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=xCetcTec;
 spf=pass (domain: burtonini.com, ip: 209.85.208.193, mailfrom: ross@burtonini.com)
Received: by mail-lj1-f193.google.com with SMTP id a9so22657910ljn.6
        for <yocto@lists.yoctoproject.org>; Tue, 16 Jun 2020 02:20:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=kqTsHmc0ATTRFuvzdLxM/Cqt3/VpZKK0qPci5wDEUiE=;
        b=xCetcTecXwqxxbcCpppgb5z9SJ22a1bHqjcXIo11QiAW3O8AE1Xu9/JfEC9MJ913Qy
         380KSy9QQ5vGiss/9YjqGpBcY4K8UJTJTfb3PXhUl1zPKMWIJPT3HBnSf09cEp+UUr6L
         KO5fPEBxK7+mmc9JYmELnRSL1gXVKST8rGUStoqnu7PR0YvDvmIVtL8yJMcUzwc2wstm
         538zSSnUdELvOdvQwad4mlSdtXHZrep/2HBe3jT4INJ02qDWshW4NNnv6LmC+Hjiqmau
         dwyg+K1q93z8XeXIWS3DvMT3oSoOcyI1lORSbbRAYcbEJYQtiBgPtwso/uPdUN4pZVlk
         Wl8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=kqTsHmc0ATTRFuvzdLxM/Cqt3/VpZKK0qPci5wDEUiE=;
        b=QcKMyJtC9cETqT7flTAY/ruxwGpwo64vYMVbrVvvAojJdcYcwvL23G7V1KIQ1xKY7O
         P8YJvu/u8I34HvtlxiVI+cAgA7K+bmcEpj3XCnQpvOhsua1rqG9aIH0AfpIipZVVJ3zJ
         GIg7VqDpoAU5RED9VFrFoy3eF55vrM8lL90CqdhxI2/ggc24qg+4ucZUP+mR+GFm+Ifd
         FEMqiQbH11oZCQK3TcQVicb++LdC+1jyhVOAeoFQ8xHTxkry9zcWmTwjrawgBckFbkwj
         ipdbdljhAwKM1tEerWxEOV6RskQGwurIrtRAif9+93YHaZVgKwgAJFo4L4ByizsUWuaN
         tB7A==
X-Gm-Message-State: AOAM533S7TxTv9iuDHTey0PwhOmYyUmc3Yu592qCwzrw3BQTC6iU3//2
	hOvRBUIwvfPbWSTZeWsVBPWnbr3hlqdgi3CxCuQpxg==
X-Google-Smtp-Source: ABdhPJzSdFnvEDTKGBTLPe6nCBVEduHG9q+/PzCoq8Nb6sJ6fHz8oV1mTj+LKcUCCCMyf8A4geRmueLn8hocEaCTcKc=
X-Received: by 2002:a05:651c:2cc:: with SMTP id f12mr892736ljo.329.1592299250946;
 Tue, 16 Jun 2020 02:20:50 -0700 (PDT)
MIME-Version: 1.0
References: <20200615135023.1044067-1-ross@burtonini.com> <CANNYZj8_oGAVL6SScEEVKOsE-=tJnZKSU7jc2528BZPMO5GpBg@mail.gmail.com>
In-Reply-To: <CANNYZj8_oGAVL6SScEEVKOsE-=tJnZKSU7jc2528BZPMO5GpBg@mail.gmail.com>
From: "Ross Burton" <ross@burtonini.com>
Date: Tue, 16 Jun 2020 10:20:39 +0100
Message-ID: <CAAnfSTv6AD2cNQ+pW_=+DOd5TBNCGar9yYo3fNYHk7fHBPmy4g@mail.gmail.com>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper] config.json: generate the buildtools tarballs for aarch64
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 15 Jun 2020 at 17:46, Alexander Kanavin <alex.kanavin@gmail.com> wrote:
>
> On Mon, 15 Jun 2020 at 15:50, Ross Burton <ross@burtonini.com> wrote:
>>
>> From: Ross Burton <ross.burton@intel.com>
>
>
>                                        ^^^^
>
>>
>>                  "SDKMACHINE" : "aarch64",
>> -                "BBTARGETS" : "uninative-tarball"
>> +                "BBTARGETS" : "buildtools-tarball buildtools-extended-tarball uninative-tarball"
>
>
> (insert Intel-abandoning-x86 joke here)

Whoops!  Turned out that machine still had my old personal data on.

For clarity, that should have been ross.burton@arm.com.

Ross
