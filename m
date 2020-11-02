Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
 by mx.groups.io with SMTP id smtpd.web08.28736.1604310443216505517
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Nov 2020 01:47:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@googlemail.com header.s=20161025 header.b=T+z04PCA;
 spf=pass (domain: googlemail.com, ip: 209.85.221.50, mailfrom: matthias.schoepfer@googlemail.com)
Received: by mail-wr1-f50.google.com with SMTP id s9so13752459wro.8
        for <yocto@lists.yoctoproject.org>; Mon, 02 Nov 2020 01:47:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=q0l4Tye/GFcmCCtYFuAAgTo9hYwD6dLWsYz2cQOwBOo=;
        b=T+z04PCAD8ycbcGfgtzi9x/is/q34Zw9Sm1xbRrHWxhPJuyxriD1ObZC2FaPGcnMEk
         HeeISoigaOng9PqE+RN8xB1lDZNV7ALRJLdCSPw+uQ/HO7AUsYMeC/iQ+RSFTHBG36Re
         1os5RQHlCI9Tvd/7l4ex7kS94lUt1ty+OBgi/4kNqTKBLKLTP5otIW4lQXgdccYjm3yU
         9Tq2jEFOmED221LHzLyi56GBT9EqbD0a1FFd7WjrnLYnWzhxxMnjAY2Us6ut7Xa//rDF
         6N7eFOQ72jrwPwDX9AHE2LLALiTaTZgltsqwOrgc5Og7XweN2BF7qAwbk8ufw2xt8jHP
         4WrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=q0l4Tye/GFcmCCtYFuAAgTo9hYwD6dLWsYz2cQOwBOo=;
        b=DvGcD2UvLVHEERqxkdupN5TUDiLntfQmITryZg6dq/9lW98UCTvhkJNuARF08cpmkg
         K9RpYwaxABY9d8DqBbj1zlkPx+bhXQlNSVhio1A03S2M1AxOtUr4v2LH5eDSI+scAGwd
         EZ/dOsfqAOzKcOu8FHg7zhHN3BxcPEy4RZXKmQtLVRZDfs3m8+K1uZxlGn3Pix86i4wS
         EXd9cXdSihgs57i9l8QsqqtaqjB3X2TyY70TTjsO6RUtv2dSijmij0Yj0FYqcvSWdJTz
         9g4MKjOe6ZIicb7LMOP9v/wKw8+d8aZFEzblji/QFVb8EDTA29B/jGxSVq0sjC1vEVzW
         SWBA==
X-Gm-Message-State: AOAM533VpTgSJj9cgy4ZDOFzC7Y2pyH4juliCpI38nqZdl84AK1BqltH
	hJtRSi9ZOg1JQ3ZnKQM3g/AKHFFFXbcbpg==
X-Google-Smtp-Source: ABdhPJwJjPsMSVOSqSRIQ3Qx/dIaJkQT7EzxDH0UFaVA/n/0oKN1a2k9UB4lBZ6mqSykjnwtgJeu8w==
X-Received: by 2002:a05:6000:108:: with SMTP id o8mr19045510wrx.256.1604310441316;
        Mon, 02 Nov 2020 01:47:21 -0800 (PST)
Return-Path: <matthias.schoepfer@googlemail.com>
Received: from ?IPv6:2003:f8:5704:bb00:3c6e:c7ff:fe93:53d1? (p200300f85704bb003c6ec7fffe9353d1.dip0.t-ipconnect.de. [2003:f8:5704:bb00:3c6e:c7ff:fe93:53d1])
        by smtp.gmail.com with ESMTPSA id u10sm21135397wrw.36.2020.11.02.01.47.20
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Nov 2020 01:47:20 -0800 (PST)
Subject: Re: [yocto] Install Yocto image and backup
To: yocto@lists.yoctoproject.org
References: <CAA=hcWQnJ1yRTwPF+9kubSt6FQPxwCRYFwXcYR8RnVLs4LMb7A@mail.gmail.com>
 <2234110.ZDGxJVC3CD@ada>
 <CAA=hcWSAsKEcFaR1dCpCey_m2Z2zOxYT1N8NNjL6bNQxSrHj1A@mail.gmail.com>
From: "Matthias Schoepfer" <matthias.schoepfer@googlemail.com>
Message-ID: <a0bbb02c-14e6-e687-9d6b-28d8ed72d002@googlemail.com>
Date: Mon, 2 Nov 2020 10:47:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <CAA=hcWSAsKEcFaR1dCpCey_m2Z2zOxYT1N8NNjL6bNQxSrHj1A@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Hi!

On 11/2/20 10:16 AM, JH wrote:
> If I do need to use a backup, it won't need another NAND chip, it will
> be another UBI/UBIFS partition. But I would like as simple as possible
> if no backup is a common practice.

The A/B partitioning is very common and I would argue, it is the 
simplest way if you want you OTA Update to be safe in regards of any 
errors (user unplugging etc.) that may happen during write / switching 
to new software. If you can spare the extra partitions on your NAND, my 
advice would be to do it exactly that way, and use a common tool for 
that (i.e. swupate, rauc, ... ).

Regards,

   Matthias

