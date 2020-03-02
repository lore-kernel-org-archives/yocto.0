Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com [209.85.210.194])
 by mx.groups.io with SMTP id smtpd.web09.1299.1583193366476045355
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Mar 2020 15:56:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=o18gt53i;
 spf=pass (domain: gmail.com, ip: 209.85.210.194, mailfrom: raj.khem@gmail.com)
Received: by mail-pf1-f194.google.com with SMTP id l184so496389pfl.7
        for <yocto@lists.yoctoproject.org>; Mon, 02 Mar 2020 15:56:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=3sd10Y4cqCxz2m4qRYG2mYnc5LMgWioWCdATEcvvUKM=;
        b=o18gt53iFi0xO5od0gXogVK22LVLCBz09M8TGOu4megTX/5RhchmS2S3g+6rWf46Gp
         1z0CXpVhNlBw0NzIPmvGIGKgYO6jg9oBxTB9fCNoVUKtd1owlM8izJm4F2zRkC21I7gW
         1qRLJrqmJuVltWeZekKdp96dsQHRW+ezYUoAMJZAUS5Gyiv5fotzuOh9FmJi6zv9V6eo
         K88EOriL6tPV52fiVcBa2MjrNGYq7ucm8xl2/h1GAFda7wrocnMcZ7Aw8Cl6f6nIoRo0
         tqWRc+nxBvcTHluGUvYJujq1JiLfRIrO+0rwYaxmPcPBhdw3cFUtj/loWrNvM2+kwgK9
         WaoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=3sd10Y4cqCxz2m4qRYG2mYnc5LMgWioWCdATEcvvUKM=;
        b=artADy5utXI0+r+prUgm3gbhMYB9VYbBCq0wEv/3q6M+qo8R3Dz/86u8iwnKpp0Jah
         43nsh0OytpZmZ9J3GAyGmy0VEJFWfcyEwjSTARizX9KzCskN1mIsi7p9YUOM5vtn9ZVf
         Bs6M8nEC6bolZ+h7wgZyaC1DLEScXQ7s89k5ZcapUGHr4obojac5cXrzBKyxjq7aaNQp
         Z5AhIRfGPNaFpomJv4L9HU3CyY4f7gv58cxq5Y15PTlPdgfpEoPUFQ5ukn55O6H1Ohym
         UBQORQHKR+ONY9AK1ay9lbf1O8hq+oOAldHwKMklzHSbf5iZgdlb/hb+OtwPw1R2rbXM
         uvpw==
X-Gm-Message-State: ANhLgQ2pOI9rK/nRx1la1h5xY3uoytrW2RiEVotIlRQEc9ZpaC147W79
	TXeUVDXTrK2GA94tV/2rzA/7R+0Vwcw=
X-Google-Smtp-Source: ADFU+vuMKBca+lp9SmE3nP5CUFWmOfovfSsIZG0ER8KSiuUN7Q+oDjVJ3cIFlP6u3lCBblXRGjdW6g==
X-Received: by 2002:a62:4e4a:: with SMTP id c71mr1377520pfb.97.1583193365462;
        Mon, 02 Mar 2020 15:56:05 -0800 (PST)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0:8446:2edf:6d4c:9a00? ([2601:646:9200:4e0:8446:2edf:6d4c:9a00])
        by smtp.gmail.com with ESMTPSA id k3sm22261633pgh.34.2020.03.02.15.56.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Mar 2020 15:56:04 -0800 (PST)
Subject: Re: [yocto] [PATCH] gcc-cross-canadian: Enable wildcard expansion support
To: Joshua Watt <jpewhacker@gmail.com>
Cc: Denys Dmytriyenko <denis@denix.org>,
 Mark Hatle <mark.hatle@kernel.crashing.org>, yocto@lists.yoctoproject.org
References: <20200302173939.106352-1-mark.hatle@kernel.crashing.org>
 <9e823c2a-36d2-f2c0-3b52-0e92f86c6a54@gmail.com>
 <35f9783b-70f8-ef58-c113-e1b2fe20e038@kernel.crashing.org>
 <20200302223038.GE1578@denix.org>
 <b1faecfd-b210-abbd-ff76-352495aa0e62@gmail.com>
 <CAJdd5GYQA4+6RpnzM6bpZ8KU8_rR6UhjvBD+P1T4o4MKFD5nfA@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <c3600ff1-98d3-dca7-c742-c4768ea64dcf@gmail.com>
Date: Mon, 2 Mar 2020 15:56:03 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <CAJdd5GYQA4+6RpnzM6bpZ8KU8_rR6UhjvBD+P1T4o4MKFD5nfA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit



On 3/2/20 3:38 PM, Joshua Watt wrote:
> 
> 
> On Mon, Mar 2, 2020, 5:03 PM Khem Raj <raj.khem@gmail.com 
> <mailto:raj.khem@gmail.com>> wrote:
> 
> 
> 
>     On 3/2/20 2:30 PM, Denys Dmytriyenko wrote:
>      > On Mon, Mar 02, 2020 at 04:27:05PM -0600, Mark Hatle wrote:
>      >>
>      >>
>      >> On 3/2/20 12:42 PM, Khem Raj wrote:
>      >>>
>      >>>
>      >>> On 3/2/20 9:39 AM, Mark Hatle wrote:
>      >>>> In gcc 8, the behavior of GCC changed and expansion of wild
>     cards to calls
>      >>>> of gcc were disabled by default.  This behavior may be
>     required by some
>      >>>> (poorly written) makefiles.
>      >>>>
>      >>>> This will allow someone to do:
>      >>>>
>      >>>> gcc *.c -o myoutput
>      >>>>
>      >>>> Signed-off-by: Mark Hatle <mark.hatle@kernel.crashing.org
>     <mailto:mark.hatle@kernel.crashing.org>>
>      >>>> ---
>      >>>>    recipes-devtools/gcc/gcc-cross-canadian_%.bbappend | 2 +-
>      >>>>    1 file changed, 1 insertion(+), 1 deletion(-)
>      >>>>
>      >>>> diff --git
>     a/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend
>     b/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend
>      >>>> index 9c0d828..e0463c6 100644
>      >>>> --- a/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend
>      >>>> +++ b/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend
>      >>>> @@ -1,5 +1,5 @@
>      >>>>    INSANE_SKIP_${PN}_append_sdkmingw32 = " staticdev"
>      >>>> -EXTRA_OECONF_append_sdkmingw32 = " --disable-nls"
>      >>>> +EXTRA_OECONF_append_sdkmingw32 = " --disable-nls
>     --enable-mingw-wildcard"
>      >>>
>      >>> this change is fine. is this the only place we need it ?
>      >>
>      >> Yes, it doesn't do anything if the generated toolchain isn't
>     mingw.. and AFAIK,
>      >
>      > Where does this bbappend go? Should this patch be designated to
>     mingw layer?
>      >
> 
>     its using an override, so it wont be effective elsewhere, perhaps
>     oe-core is better place for it.
> 
> 
> Heh, I already applied it to master-next in meta-mingw :)

thats fine.

> 
> 
>      >
>      >> we're only build cross-canadian there.
>      >>
>      >> (binutils and others don't appear to have this option, unless I
>     just missed it.)
>      >>
>      >> --Mark
>      >>
>      >>>>    LDFLAGS_append_sdkmingw32 = " -Wl,-static"
>      >>>>    EXEEXT_sdkmingw32 = ".exe"
>      >>>>    ELFUTILS_sdkmingw32 = ""
>      >>>>
>      >>>>
>      >>>>
>      >>>>
>      >>>>
>      >>>>
>      >
>      >>
>      >
>     
> 
