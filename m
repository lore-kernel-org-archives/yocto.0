Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
 by mx.groups.io with SMTP id smtpd.web12.16076.1623581938354593512
 for <yocto@lists.yoctoproject.org>;
 Sun, 13 Jun 2021 03:58:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Sr8223AR;
 spf=pass (domain: gmail.com, ip: 209.85.208.49, mailfrom: fntoth@gmail.com)
Received: by mail-ed1-f49.google.com with SMTP id d13so29117058edt.5
        for <yocto@lists.yoctoproject.org>; Sun, 13 Jun 2021 03:58:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=lSAWKziNphc6ohUP2iXsVM7ri+D56q6PXs/jr/l7yFM=;
        b=Sr8223AROW0mDzJDNAA5b2FC2F4DUJPcQCgUNFZBgihjgJhqnRNcDUU4vZIEGSbSxP
         yjrtXp8xIEII5bzvG4y2BzsSKKqPCMHGiz8xhX4PWYNvufSfZLqHv86T/DWmTPdLT6Zz
         MAyqjPb0mXgeIaxTJ1R6e0r32se+vJBJpvZLzpiqkmkygR2DA3Wh68V6ucetytgTpwTT
         D2gIGXpVQGAEpUCpxDAF8HLYmzycSUaXLzOeaJptiKhNXf4wPd+N8IySRY36sVIV9O2Y
         XvrA1y92uly/hAJwkYosFKHB63Q1wVz7cJ+0H+rKBBC2CmK2BokkWRO2EWRWIWD/EGn5
         BvLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=lSAWKziNphc6ohUP2iXsVM7ri+D56q6PXs/jr/l7yFM=;
        b=nASBff6cujetJ8+B605iMfc0w/+9xWjXO6AeW/UX7ReDj6gWvO/BPdSX/O00DkcyFQ
         86R0uZgs/b1u91nWWgc9mx/lYcgZq0uKBFIu4hHSNto55KWZNl0Yb1wjDL5O7xvnVtQ3
         nWI+gyaSYKZI40zYdn2XeT/jpTTT7vHbPv2nfzDEeNEMsfLc0nJ5gOFg7CbIiAkda1CI
         ddRz2MsIbk8S9qVZqDuovjmouH+wLxbumPgLM6INSUrbusaMDqJTs7drwoWrvJtECchX
         tjyF93O5Fz4efFs0djujugtaaKDu0Aarzrxh4UJ2VoL9hAMZHp5/k8qmcC6pu/q0GM1L
         zZ3w==
X-Gm-Message-State: AOAM532Iwf65qjCuhNZUV4sb17FHtQy1ntdGMIAyHSMKtwlXhX44sMlH
	4HingNHMUo/eT0mCOj+meXDndM5isBOb4w==
X-Google-Smtp-Source: ABdhPJzQJgKSpGvPA5RtleeM1Urf3TQ+DMPTClUBxPAy6KEVe9nTVgA86CzeE/QmUStdE8fcxB7ORA==
X-Received: by 2002:a05:6402:1609:: with SMTP id f9mr12075772edv.76.1623581936525;
        Sun, 13 Jun 2021 03:58:56 -0700 (PDT)
Return-Path: <fntoth@gmail.com>
Received: from ?IPv6:2001:981:6fec:1:9d7b:6180:2355:b95c? ([2001:981:6fec:1:9d7b:6180:2355:b95c])
        by smtp.gmail.com with ESMTPSA id n26sm4533646ejc.27.2021.06.13.03.58.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Jun 2021 03:58:56 -0700 (PDT)
Subject: Re: [yocto] bitbake controlling memory use
To: Randy MacLeod <randy.macleod@windriver.com>,
 Trevor Gamblin <trevor.gamblin@windriver.com>, yocto@lists.yoctoproject.org
References: <5a37c855-943a-7ae2-b481-e030ebb69de8@gmail.com>
 <10280.1623316977582274550@lists.yoctoproject.org>
 <829bf26e-b882-d479-aa0c-f22998071fa7@windriver.com>
 <a760fbd1-f76c-598f-a802-f4e6207f9720@gmail.com>
 <43af6b3b-a2c5-b937-93a4-fec8ab2e1fcd@gmail.com>
 <26729316-8d42-3ec9-d6b5-f77002a85c74@windriver.com>
From: "Ferry Toth" <fntoth@gmail.com>
Message-ID: <5305619b-ee36-2a6c-e9c6-8bd6f03101d2@gmail.com>
Date: Sun, 13 Jun 2021 12:58:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <26729316-8d42-3ec9-d6b5-f77002a85c74@windriver.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Hi

Op 13-06-2021 om 02:38 schreef Randy MacLeod:
> On 2021-06-12 12:31 p.m., Ferry Toth wrote:
>> Hi
>>
>> Op 10-06-2021 om 22:35 schreef Ferry Toth:
>>> Hi,
>>>
>>> Op 10-06-2021 om 21:06 schreef Trevor Gamblin:
>>>>
>>>>
>>>> On 2021-06-10 5:22 a.m., Ferry Toth wrote:
>>>>>
>>>>> **[Please note: This e-mail is from an EXTERNAL e-mail address]
>>>>>
>>>>> Hi Trevor,
>>>>>
>>>>> Gmane is really messing things up here, sorry about that. I need 
>>>>> to create a new thread I'm afraid.
>>>>>
>>>>> I'd like to your reworked patch.
>>>>>
>>>>> But note, I reworked it too (but maybe wrongly). I builds like 90% 
>>>>> of my image, but fails building cmake-native. Or more accurately 
>>>>> it fails do_configure while trying to build a small test program.
>>>>
>>>> Hi,
>>>>
>>>> I've pushed the patch onto my fork of the poky repo at 
>>>> https://github.com/threexc/poky
>>>>
>>>> Let me know how your testing turns out - I am still running tests 
>>>> as well, but it would be good to know how others' attempts turn 
>>>> out, and more changes could still end up being necessary.
>>>>
>>> Your patch didn't apply clean on Gatesgarth, but fix seemd trivial. 
>>> With this it builds cmake-native fine, thanks!
>>>
>>> You can find it here: 
>>> https://github.com/htot/meta-intel-edison/commit/8abce2f6f752407c7b2831dabf37cc358ce55bc7 
>>>
>>>
>>> I will check if any other build errors occurs, and if not will try 
>>> to time image build with and without the patch to compare 
>>> performance and see if it worth the effort.
>>
>> It works fine. To measure time I first built 
>> https://github.com/htot/meta-intel-edison (gatesgarth), so everything 
>> needed is downloaded and cached. Then prior to each run I `rm -rf 
>> out` and `rm -rf bbcache/sstate-cache/*` to force everything to 
>> rebuild. And then `time bitbake -k edison-image`
>>
>> With patch:
>> real    218m12,686s
>> user    0m24,058s
>> sys     0m4,379s
>>
>> Without:
>> real    219m36,944s
>> user    0m24,770s
>> sys     0m4,266s
>>
>> Strange, I expected more.
>
> Hi Ferry,
>
> Thanks for the update.
>
> Trevor and I saw similar (lack of ) results.
>
> Trevor even trying getting kea, which uses 'make' to be done the
> 'configure' stage, for two builds in differect dirs. Then to run the two
>    'bitbake -c compile kea'
> with and with out the patch with the expectation that with the
> job server patch and the right number of jobs, the two builds would
> take longer. I don't know the exact timing but there was no
> noticeable difference.
>
> We did strace things to confirm that the make wrapper was being called
> and the actual make was being called by the wrapper. I suspect that
I watched running processes from KDE ksysguard and I believe the number 
of compilers was actually restricted with the patch. On the other hand 
the server I tried was running munin which logs #processes over time and 
there I didn't see a difference. Confused..
> the next thing we try will be to patch 'make' to log when the jobserver
> kicks in or to play with some make jobserver demo such as:
>    https://github.com/olsner/jobclient
> to get some experience with how things are supposed to work and
> to be able to strace a successful use of the job server feature.
>
I'm available for testing.
> A little RTFM / UTSL may also be required.
>
> ../Randy
>
>
>>
>> This is on 4 core/8ht i7-3770 CPU @ 3.40GHz with 16Gb RAM and nodejs 
>> restricted to -j 2 (so that alone takes ~ 60min to build).
I do like the jobserver idea a lot. Especially if it would take memory 
restrictions into account as well. The problem with building nodejs (and 
probably rust as well), there is lots to compile so you really want -j 
16. But then during linking ld uses 4GB per instance, and there are 5 
started. So on my machine I wouldn't want to start more then 3.
>>
>>>> - Trevor
>>>>
>>>>>
>>>>> Ferry
>>>>>
>>>>>
>>>>>
>>
>>
>> 
>>
>
>
