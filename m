Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
 by mx.groups.io with SMTP id smtpd.web08.7652.1623515518603217912
 for <yocto@lists.yoctoproject.org>;
 Sat, 12 Jun 2021 09:31:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=l96GRD4l;
 spf=pass (domain: gmail.com, ip: 209.85.208.45, mailfrom: fntoth@gmail.com)
Received: by mail-ed1-f45.google.com with SMTP id i13so40801308edb.9
        for <yocto@lists.yoctoproject.org>; Sat, 12 Jun 2021 09:31:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:references:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=Ez9L3a9TaWWq4BNH+lKMmdAPI2TijODaesDjB9qVo4w=;
        b=l96GRD4liqAiWOJPGk5/LF8PSCcQkUsU5pj2GzKI8d6l/GzopX+9WaDjK3mkJWPYcO
         r4KuGG141dEKxTgGGXndgzU/8FvTmszTDiLwJ0KFct4YEiIKwwtsyBlpPP3J6ffmBP1e
         KOx/xe57YlWC/u4OATk6XOxFL/ksi74Oi3IsP17ypUpNMutYdQLqyCE6exfY+MqwSD46
         aMu3PY8SbO0M4cVKjf7Ed8gYUBIrMhqkPMiLb18zOPWibIdigwGekmuM9DlFa1QQ/Icl
         +9++5HrjcZAkmfuttkFJ6BWJioEECFXJWL29bF8ivU8RsNlppswag+jLt4ImRsp6tr2s
         8MGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=Ez9L3a9TaWWq4BNH+lKMmdAPI2TijODaesDjB9qVo4w=;
        b=SyYCspfxwrp4xE8RqMRVhgJGujnWMQBdBa3fHkvPITAFwPTjy8NYa/P8MEuAeF5Xt4
         Qv1+M27AdRRNPGW6liqYbtuARqqDj2I41b0ccNij8SgsxNrJFEuXFNLuOG5d+A8+gTuU
         MrRpzFlXwBjvrKrDvBr+BfFafSFO/N4t7zGSNehoaESmehnoBe7DaT7oNai7SU9Fkl2u
         ElLBA5qJLHGLW6Nh1oUWwNWsZ2JxADplE+uySs0xtkfRWAMxEb0ymLvK7KzYv3nEhtrS
         LB2vfSQepGtkJICAsU2KEI9exfbisd5Ao7txs+Py0SJvonbuMbEe5vJDWpKLykfBvyuL
         d3pQ==
X-Gm-Message-State: AOAM53375GNMA3cGIeWjSqNdPXb3f6rpN3bgymS6QDD2B5x4oQhPOZHq
	3IXSztxu2fr+I0xz+2pDtnWEZ1wooD0=
X-Google-Smtp-Source: ABdhPJwTOviMC86GbCLdnwlD+y7eDekx+jYPXueJ0zFWXvCvI1pWKVmenL3oaM9bmlnCKC3XnmklTA==
X-Received: by 2002:aa7:d158:: with SMTP id r24mr9028650edo.171.1623515516624;
        Sat, 12 Jun 2021 09:31:56 -0700 (PDT)
Return-Path: <fntoth@gmail.com>
Received: from ?IPv6:2001:981:6fec:1:6776:cd94:ca7a:dab4? ([2001:981:6fec:1:6776:cd94:ca7a:dab4])
        by smtp.gmail.com with ESMTPSA id k12sm4159962edi.87.2021.06.12.09.31.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Jun 2021 09:31:56 -0700 (PDT)
Subject: Re: [yocto] bitbake controlling memory use
From: "Ferry Toth" <fntoth@gmail.com>
To: Trevor Gamblin <trevor.gamblin@windriver.com>,
 yocto@lists.yoctoproject.org
References: <5a37c855-943a-7ae2-b481-e030ebb69de8@gmail.com>
 <10280.1623316977582274550@lists.yoctoproject.org>
 <829bf26e-b882-d479-aa0c-f22998071fa7@windriver.com>
 <a760fbd1-f76c-598f-a802-f4e6207f9720@gmail.com>
Message-ID: <43af6b3b-a2c5-b937-93a4-fec8ab2e1fcd@gmail.com>
Date: Sat, 12 Jun 2021 18:31:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <a760fbd1-f76c-598f-a802-f4e6207f9720@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Hi

Op 10-06-2021 om 22:35 schreef Ferry Toth:
> Hi,
>
> Op 10-06-2021 om 21:06 schreef Trevor Gamblin:
>>
>>
>> On 2021-06-10 5:22 a.m., Ferry Toth wrote:
>>>
>>> **[Please note: This e-mail is from an EXTERNAL e-mail address]
>>>
>>> Hi Trevor,
>>>
>>> Gmane is really messing things up here, sorry about that. I need to 
>>> create a new thread I'm afraid.
>>>
>>> I'd like to your reworked patch.
>>>
>>> But note, I reworked it too (but maybe wrongly). I builds like 90% 
>>> of my image, but fails building cmake-native. Or more accurately it 
>>> fails do_configure while trying to build a small test program.
>>
>> Hi,
>>
>> I've pushed the patch onto my fork of the poky repo at 
>> https://github.com/threexc/poky
>>
>> Let me know how your testing turns out - I am still running tests as 
>> well, but it would be good to know how others' attempts turn out, and 
>> more changes could still end up being necessary.
>>
> Your patch didn't apply clean on Gatesgarth, but fix seemd trivial. 
> With this it builds cmake-native fine, thanks!
>
> You can find it here: 
> https://github.com/htot/meta-intel-edison/commit/8abce2f6f752407c7b2831dabf37cc358ce55bc7
>
> I will check if any other build errors occurs, and if not will try to 
> time image build with and without the patch to compare performance and 
> see if it worth the effort.

It works fine. To measure time I first built 
https://github.com/htot/meta-intel-edison (gatesgarth), so everything 
needed is downloaded and cached. Then prior to each run I `rm -rf out` 
and `rm -rf bbcache/sstate-cache/*` to force everything to rebuild. And 
then `time bitbake -k edison-image`

With patch:
real    218m12,686s
user    0m24,058s
sys     0m4,379s

Without:
real    219m36,944s
user    0m24,770s
sys     0m4,266s

Strange, I expected more.

This is on 4 core/8ht i7-3770 CPU @ 3.40GHz with 16Gb RAM and nodejs 
restricted to -j 2 (so that alone takes ~ 60min to build).

>> - Trevor
>>
>>>
>>> Ferry
>>>
>>> 
>>>
