Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
 by mx.groups.io with SMTP id smtpd.web12.2389.1623357330105535748
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Jun 2021 13:35:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=syGQxWna;
 spf=pass (domain: gmail.com, ip: 209.85.218.46, mailfrom: fntoth@gmail.com)
Received: by mail-ej1-f46.google.com with SMTP id c10so1098512eja.11
        for <yocto@lists.yoctoproject.org>; Thu, 10 Jun 2021 13:35:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=iu1hb8KRkovUTMOYdlTLwdIhk3mqQDWYT3K9+HvJD4s=;
        b=syGQxWna119CnOev9qg1BzLPs5DxLrkXgjCB/Io3PuKtn1+uneDHWPfnukLO4rBA+S
         /x+T2ggy1n8WgSU7tGmE616k2fKw9563HpXiA+0P5S+fmqvnZzsuIQPA/zyZGBxpwyuJ
         DVTvpOGdJ6DoA+BxASZ9FEANXa+Edrhu6UkBQ6TGSRofeXVoYBUEItCB4ZSvXu/dnvMC
         PtR3p3RQT4/Bx6dOKghe/muJxcjXQlpYFXt6U2RquNH4sfO4g/463Lr2DGkHk5yUTHjt
         scoLdayZ8AgAvzQchXaDCP43PvtNf0tU9rKI3j3jjj6asGepQ10B8UVTkS8mZ4WFr74l
         2QSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=iu1hb8KRkovUTMOYdlTLwdIhk3mqQDWYT3K9+HvJD4s=;
        b=W/DECSRYdTAKkBpXXUWpOjZdRY3jGBG8YMHLh3aaoZbkThTU5eivqUEBj1zIRJblNN
         q5hWA03iXueix+NL06ohu4/oa9y6y6uVmbK5Bik7DXC0DkGvTznJnOmr+u5cMFSmGSDL
         Rhl3/Y0b8Sao5nD54iWyvDDYdAc1i/Z2Vf/9Z+n2Cdj8dzPe/5YJrKzNHTRRCBV/pbR5
         Qz0BuapYw1JuA9A6cRniTUdQMU7l0TDs0CJTy15klzz74kp2WHCsHcD2cLMaeZ+pgokA
         026D9KvpolSkE5QOLELYemg3Yos5iW2d7CuGj5XGmRSI7lMAg0mV5qQ+ow+d3r3cFz0i
         p9NA==
X-Gm-Message-State: AOAM5315I2iT3Nrz1BoBg9xxLmCynQZwqlcPoO7S16ZfJyR2+syLLROm
	RRVBl51i4PLGWF78+W2xiXQGBu+y16Q=
X-Google-Smtp-Source: ABdhPJyNYvk5MgBp4vUBoLtJZvPEgt1UHhp4naJ7BkLib+Fo/4G8mL7g98YWwshAsg+JTEosbnAO5Q==
X-Received: by 2002:a17:906:1814:: with SMTP id v20mr358849eje.152.1623357328476;
        Thu, 10 Jun 2021 13:35:28 -0700 (PDT)
Return-Path: <fntoth@gmail.com>
Received: from ?IPv6:2001:981:6fec:1:28ea:a326:df2e:30c6? ([2001:981:6fec:1:28ea:a326:df2e:30c6])
        by smtp.gmail.com with ESMTPSA id v7sm1860846edx.38.2021.06.10.13.35.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Jun 2021 13:35:28 -0700 (PDT)
Subject: Re: [yocto] bitbake controlling memory use
To: Trevor Gamblin <trevor.gamblin@windriver.com>,
 yocto@lists.yoctoproject.org
References: <5a37c855-943a-7ae2-b481-e030ebb69de8@gmail.com>
 <10280.1623316977582274550@lists.yoctoproject.org>
 <829bf26e-b882-d479-aa0c-f22998071fa7@windriver.com>
From: "Ferry Toth" <fntoth@gmail.com>
Message-ID: <a760fbd1-f76c-598f-a802-f4e6207f9720@gmail.com>
Date: Thu, 10 Jun 2021 22:35:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <829bf26e-b882-d479-aa0c-f22998071fa7@windriver.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Hi,

Op 10-06-2021 om 21:06 schreef Trevor Gamblin:
>
>
> On 2021-06-10 5:22 a.m., Ferry Toth wrote:
>>
>> **[Please note: This e-mail is from an EXTERNAL e-mail address]
>>
>> Hi Trevor,
>>
>> Gmane is really messing things up here, sorry about that. I need to 
>> create a new thread I'm afraid.
>>
>> I'd like to your reworked patch.
>>
>> But note, I reworked it too (but maybe wrongly). I builds like 90% of 
>> my image, but fails building cmake-native. Or more accurately it 
>> fails do_configure while trying to build a small test program.
>
> Hi,
>
> I've pushed the patch onto my fork of the poky repo at 
> https://github.com/threexc/poky
>
> Let me know how your testing turns out - I am still running tests as 
> well, but it would be good to know how others' attempts turn out, and 
> more changes could still end up being necessary.
>
Your patch didn't apply clean on Gatesgarth, but fix seemd trivial. With 
this it builds cmake-native fine, thanks!

You can find it here: 
https://github.com/htot/meta-intel-edison/commit/8abce2f6f752407c7b2831dabf37cc358ce55bc7

I will check if any other build errors occurs, and if not will try to 
time image build with and without the patch to compare performance and 
see if it worth the effort.

> - Trevor
>
>>
>> Ferry
>>
>> 
>>
