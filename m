Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com [209.85.210.65])
 by mx.groups.io with SMTP id smtpd.web11.5572.1604446072127198918
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Nov 2020 15:27:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=knNJAfIT;
 spf=pass (domain: gmail.com, ip: 209.85.210.65, mailfrom: akuster808@gmail.com)
Received: by mail-ot1-f65.google.com with SMTP id m26so17630198otk.11
        for <yocto@lists.yoctoproject.org>; Tue, 03 Nov 2020 15:27:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=+KZmOkKyUB9c3d0BvYS66Wdvv+FUCr83QJoCx/g/N4w=;
        b=knNJAfIT2tEICkp7TyM6ivsnAlu9n2dJNA6pYcS7tQfuoQaL4gOFoC7GpzeuDp1GfH
         xHpmJ4aJZ7/iIWQOdWvfngSWp2YlIoHZYQ/4exCbdCawP37g+fdB4fRBRQJYRgbruVrR
         XNb+UDe1XVk6dABd88GVaSXUJrfgMLlw2teotQ7tOq36nBmfd4UTgTEgVXWxNDZwOfPu
         a0BeaxB/prPQFytMf2az/O3WMheDLFOc5ZZXAuVf/38/M3zDleWI4GrCXPq3X9/peThV
         d9arboAOOch2QS6KSi8TjU9PzySc8qchj7XpMj1bSSBl5Nsz150Ixr03jUKWjHKCs4+W
         W28Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language;
        bh=+KZmOkKyUB9c3d0BvYS66Wdvv+FUCr83QJoCx/g/N4w=;
        b=dmDlk57rYluZ4YVJxWXdqHdEN+DdhrnQavNORrQR7mDhRtmINm1Eb54ot6LudQdCxM
         2/Rym7xe4Gsm+c9HT8w/l5FAoIV5EfiqMcxx1kDZLyuVeUu1Ez0di5odvgMzXQtU4rM5
         Vh6s6m0wRN+/OvEnxWHvXvlctn8hHskTcQgDeSTSvDalvJKYnc+8vDGfuHet2kM28xRP
         DbWxsbMQgvTiaRIVl7U7tK7/yFDxgJS4s+9HoNDE/aM+YK6dq6fiyiv5Y8wBeRHnJu+M
         //2YGb+wLA/giQiI0vDVCu7XM8YStuOTJA70IcJgUiv/7ViS6qr4cDfARcLzFbHuwHER
         dMnQ==
X-Gm-Message-State: AOAM5339Hx+OUDByTQZDTP/pKrV/T6L/u5D0Tc0Lw1P8uJdwIKFTjhtX
	pmo82JnwogbHvcLDM8sswWWHEviGzYI=
X-Google-Smtp-Source: ABdhPJzmKOIPi3vQCpEhu2EhGwXQQGNPDuTp/cvZkDfnDAcoc7J2QwXMX2FrfG5muvE7HU2DRKK15A==
X-Received: by 2002:a9d:5e14:: with SMTP id d20mr15977383oti.107.1604446071333;
        Tue, 03 Nov 2020 15:27:51 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:d529:5a35:76ab:e13b? ([2601:202:4180:a5c0:d529:5a35:76ab:e13b])
        by smtp.gmail.com with ESMTPSA id y74sm44100oie.8.2020.11.03.15.27.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Nov 2020 15:27:50 -0800 (PST)
Subject: Re: [yocto] [meta-security][PATCH 1/2] softHSM: add pkg
To: Ricardo Salveti <ricardo@foundries.io>
Cc: yocto@lists.yoctoproject.org
References: <20200927221637.6725-1-akuster808@gmail.com>
 <CAAaKDhEB=gK8gnBiHgBUsnvUtTaP1AP8dRiuVz8-xD2EXCds4A@mail.gmail.com>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <aed5f59d-b222-5961-6949-be25ac355520@gmail.com>
Date: Tue, 3 Nov 2020 15:27:49 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAAaKDhEB=gK8gnBiHgBUsnvUtTaP1AP8dRiuVz8-xD2EXCds4A@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 11/3/20 2:52 PM, Ricardo Salveti wrote:
> Hi,
>
> On Sun, Sep 27, 2020 at 7:16 PM akuster <akuster808@gmail.com> wrote:
>> Signed-off-by: Armin Kuster <akuster808@gmail.com>
>> ---
>>  recipes-security/softHSM/softhsm_2.6.1.bb | 30 +++++++++++++++++++++++
>>  1 file changed, 30 insertions(+)
>>  create mode 100644 recipes-security/softHSM/softhsm_2.6.1.bb
> Was going over recipes that were duplicated over layers, and this one
> is a newer version of a similar recipe that is already in meta-oe
> (which is a dependency of this layer).
>
> Should we drop the one from meta-oe or should we just update that one
> with the content from this recipe and then remove from meta-security?

No. meta-oe is lower in the stack so I should drop the one in
meta-security and update the one in meta-oe.
I didn't notice the recipe already existed. its all about timing and
effort at this point. we may have time.

thanks for reminding me.

-armin
>
> Thanks,

