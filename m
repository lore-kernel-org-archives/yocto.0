Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com [209.85.210.41])
 by mx.groups.io with SMTP id smtpd.web09.3339.1619732410714183160
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Apr 2021 14:40:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=B/FsNuim;
 spf=pass (domain: gmail.com, ip: 209.85.210.41, mailfrom: akuster808@gmail.com)
Received: by mail-ot1-f41.google.com with SMTP id z20-20020a0568301294b02902a52ecbaf18so10358117otp.8
        for <yocto@lists.yoctoproject.org>; Thu, 29 Apr 2021 14:40:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=lYovUZl/qZkgqUslw0av3QR0+hE9qzxeOGQqI+V596k=;
        b=B/FsNuim7WKjRX+4nwD8j0gqJJumDbMvjCBtQtfUnk/u+faij1RQYfckmL2hwAoZEj
         xfwhA/72mUuagyJcKZM6F48kk+Da6R8kQqLkoanShXefvYXp2uu2XREE9rO8tozcjCxL
         qhhTFoMklJAz3yduZPIE+3+WdLJ2VqW8jmYFXPkhXCBDMgveUazitBXTPrsuXHP74+Nc
         uM7YC3bTtvcMOs/KlVfJNrZAK+OAk6NCXKQhlmkrglYJnyUn3+GNDdeZRiCGZ6QEICr9
         U7PzxWzRT3jV3JMievE5pQ5hu9AippdqD6lhNKdGSfKQCcLBH4QUU0vMnaQ8+k3Y88Rd
         6hWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language;
        bh=lYovUZl/qZkgqUslw0av3QR0+hE9qzxeOGQqI+V596k=;
        b=ho6shGNHcGh7/gNMfdMy7JaxFFVELc9crYUJUgipaIpIaAEW1nWg9Cn/ldZzZVg15b
         5j7AJcnlpB7sYwnD5fk2pmbcG4iQoWS35IJU1KUyEwVENS4Znfxov6UAbQ+GP1+QWq9t
         fDBXH8PMNZ1dDmAabcG1/DkNpoucslhcA9EaezSm/I1B6ZFTtHfRUNjUQ7RzZl7DhXR2
         11CDNtn3JZsRgVSPvjSSD6sg30+yC193+iVAOiJeoKANUR6I8v6b7bqsrZ5oB2KKFT29
         mQtSPptgIP3vmw1EJgLg1YEmCcdZMjxx2Wz2JJCkXbzj5o9PrmWunD+r9Dzf7AaWnSYi
         kMlw==
X-Gm-Message-State: AOAM531Tt3/oEGrfcZNOZ1Y9oKHjm3XTlvwUVt6fnPWb+eolekF2BUkh
	arJhAOifbg9F91lwLbmoBN2IQs1t8zdo3g==
X-Google-Smtp-Source: ABdhPJyj8Pfxn0cTbbIQDPfhcw8/k88lmBsyhhsQE8ubDFCVCP/kzKf9RbhwTyPJoo0Z+Q1fQdvbXQ==
X-Received: by 2002:a05:6830:4d9:: with SMTP id s25mr1180935otd.100.1619732409813;
        Thu, 29 Apr 2021 14:40:09 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:a862:d97f:9823:714e? ([2601:202:4180:a5c0:a862:d97f:9823:714e])
        by smtp.gmail.com with ESMTPSA id j8sm249775otj.49.2021.04.29.14.40.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Apr 2021 14:40:09 -0700 (PDT)
Subject: Re: [yocto] [PATCH yocto-autobuilder2 1/2] meta-arm has a hardknott branch now
To: Ross Burton <ross@burtonini.com>,
 Randy MacLeod <randy.macleod@windriver.com>
Cc: Yocto <yocto@lists.yoctoproject.org>
References: <20210428150904.958213-1-ross.burton@arm.com>
 <d194d584-ce2f-9d27-f645-d05eafa378c0@windriver.com>
 <CAAnfSTukcCWtcLktcpXn1kKwZ7ME8LqbANomjeSzm56TL1axCw@mail.gmail.com>
From: "Armin Kuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <84e9d090-031d-c9f2-b87b-8ced4803293c@gmail.com>
Date: Thu, 29 Apr 2021 14:40:08 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAAnfSTukcCWtcLktcpXn1kKwZ7ME8LqbANomjeSzm56TL1axCw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 4/29/21 2:25 PM, Ross Burton wrote:
> On Thu, 29 Apr 2021 at 20:35, Randy MacLeod <randy.macleod@windriver.com> wrote:
>> It doesn't have a yocto-3.3 tag yet...
>> Could you add one?
> When we actually release, yes.
So do you plan on doing the dot releases too?

-armin
> Ross
>
> 
>

