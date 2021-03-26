Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
 by mx.groups.io with SMTP id smtpd.web11.9076.1616740825392563655
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Mar 2021 23:40:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=jUv2HurH;
 spf=pass (domain: gmail.com, ip: 209.85.215.179, mailfrom: raj.khem@gmail.com)
Received: by mail-pg1-f179.google.com with SMTP id v10so3919249pgs.12
        for <yocto@lists.yoctoproject.org>; Thu, 25 Mar 2021 23:40:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:subject:to:references:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=cIkRJbvX9LzaK+F2M/TEAWH9mXAKAJf7CFPod3FOjdg=;
        b=jUv2HurH81Ga+4WPjGeErAbLkbQ7f8nho6QH2QD9NSexWY/0kq0aKa11YFog5fMly1
         4QZbKoN1LOVWRyZCbBcxAdVcIvhfHTMP75EjgQCu6SJbaPo/kiv0Y+5SO71t8LkhiaUr
         HcTXkWZh+hNnh6dI4orCT6ep0Qg9f7+AOOARtK4IlFPGdw/Zqh27kjsbr6dBZ9zfzLHi
         JY2TKj1wBzbHLIsunx+jXA/3zSCbKWiB1QFAkSVTkklzDS8db7soEP07+8wkjPGpKSa/
         ICcCIWPbkxPX5SQkEG80qhc8j7yZzN1NwsXYX3dealA04a8+gV5Krw9ThkaWZrquDmPD
         +8Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:references:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=cIkRJbvX9LzaK+F2M/TEAWH9mXAKAJf7CFPod3FOjdg=;
        b=HjyGqBt3rr+dSS/3MppHlIOiiO41HQemJOGFIGlZpHqZm780N4g4jHb0DpWBm3xCf2
         Ov6UslXYtyTHifniLXJJr/ouaf25t4CV7+5m0mWCqxmhHasFrRYUYz6saJfUhhQ3k0uj
         xA4F0i0jCsfsU2N75xpjAcKBqPaq1AMvEM2SRfHoEXNy2mshbZ4GM0nP/enGf8FpBy/z
         S+ZlSLnbQ3EFbIJVa3O4GNA0rBBGU3sltaFn1Jv4qUpRD4PeY8aTEPCNJZcIQcSHUXaT
         bO0n9KGgpqVTqJpRaPjCeeKPGU2VaKcQqNBwNO+m6jDfjhM9iJD06MrqLfNyyyhU6XW4
         yk+A==
X-Gm-Message-State: AOAM532aljbeGK7D48A0JiylbaxA7jZq3mpj+BsgL5/jMaJjbPgkmpNg
	X/9t7+GKMDLjb+iXFxMEca/IilmRxkZTwQ==
X-Google-Smtp-Source: ABdhPJySVv2vqp+6cZyameWgnLHmFIB81mG/0lTCbvnF3O9qc/ZJx6X0JvR0vFm2j8p4/JpZkb6Nbw==
X-Received: by 2002:a62:7ed2:0:b029:21d:1806:fe30 with SMTP id z201-20020a627ed20000b029021d1806fe30mr11486445pfc.5.1616740824462;
        Thu, 25 Mar 2021 23:40:24 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:a0f0::b08a? ([2601:646:9200:a0f0::b08a])
        by smtp.gmail.com with ESMTPSA id mu6sm7251818pjb.35.2021.03.25.23.40.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Mar 2021 23:40:23 -0700 (PDT)
From: "Khem Raj" <raj.khem@gmail.com>
Subject: Re: [yocto] libcansocket: Weird issue with pkgsplit
To: "Huuki, Tuomas" <tuomas.huuki@crosscontrol.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <QRNZ.1616659590788645548.bU9I@lists.yoctoproject.org>
 <5d3d6f0b-b712-1628-21b9-64ad538e09f5@gmail.com>
 <DM6PR12MB3244D926C6A3D942C7304160F9619@DM6PR12MB3244.namprd12.prod.outlook.com>
Organization: HIMVIS LLC
Message-ID: <ae42b32d-52cc-5dfe-95bb-4ccb4b8b6d1c@gmail.com>
Date: Thu, 25 Mar 2021 23:40:22 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <DM6PR12MB3244D926C6A3D942C7304160F9619@DM6PR12MB3244.namprd12.prod.outlook.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit



On 3/25/21 11:07 PM, Huuki, Tuomas wrote:
> Lähettäjä: Khem Raj <raj.khem@gmail.com>
> Lähetetty: torstai 25. maaliskuuta 2021 20.29
> Vastaanottaja: Huuki, Tuomas <tuomas.huuki@crosscontrol.com>; yocto@lists.yoctoproject.org
> Aihe: Re: [yocto] libcansocket: Weird issue with pkgsplit
> 
> [EXTERNAL SENDER] - If you believe this may be PHISHING, please click the "Report Phishing" button above.
> 
> On 3/25/21 1:06 AM, Tuomas Huuki wrote:
>> Hello all,
>> I have an interesting situation with libcansocket and bitbake that I
>> cannot wrap my head around. For some reason, the packages are being
>> split up somewhat strangely and I cannot figure out why.
>> First of all, the recipe used is:
>> https://nam04.safelinks.protection.outlook.com/?url=https%3A%2F%2Fgith
>> ub.com%2Fopenembedded%2Fmeta-openembedded%2Fblob%2F9a0de2779b9b31f134f
>> fe19388b5b9b37bb6450e%2Fmeta-oe%2Frecipes-extended%2Fsocketcan%2Flibso
>> cketcan_0.0.11.bb&amp;data=04%7C01%7Ctuomas.huuki%40crosscontrol.com%7
>> C8496799aa67e4cb3bac908d8efbbdd60%7C8b3fa9f59a3d4339a66aa9f7e39c9126%7
>> C0%7C0%7C637522937456377594%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMD
>> AiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=hLiu
>> fQtPTmCJvs1FfSemKVHnMmi5zBUKOHW%2BXgfMAyw%3D&amp;reserved=0
>> <https://nam04.safelinks.protection.outlook.com/?url=https%3A%2F%2Fgit
>> hub.com%2Fopenembedded%2Fmeta-openembedded%2Fblob%2F9a0de2779b9b31f134
>> ffe19388b5b9b37bb6450e%2Fmeta-oe%2Frecipes-extended%2Fsocketcan%2Flibs
>> ocketcan_0.0.11.bb&amp;data=04%7C01%7Ctuomas.huuki%40crosscontrol.com%
>> 7C8496799aa67e4cb3bac908d8efbbdd60%7C8b3fa9f59a3d4339a66aa9f7e39c9126%
>> 7C0%7C0%7C637522937456387589%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwM
>> DAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=mp6
>> vRRNyAG%2Bf2KnsAxxIWWMgjrmp%2BZSJWgU2rCVxGP4%3D&amp;reserved=0>
>> So no strange things there.
>>
>> Additionally, looking at the built items:
>>
>> ../build/tmp/work/aarch64-poky-linux/libsocketcan/0.0.11-r0/image/usr/
>> lib$ ls -lah libsocketcan* lrwxrwxrwx 1 tuomas tuomas  21 maali 18
>> 10:38 libsocketcan.so -> libsocketcan.so.2.3.0 lrwxrwxrwx 1 tuomas
>> tuomas  21 maali 18 10:38 libsocketcan.so.2 -> libsocketcan.so.2.3.0
>> -rwxr-xr-x 1 tuomas tuomas 58K maali 18 10:38 libsocketcan.so.2.3.0
>>
>> All looks good at this point. Now, when I deploy the image, the first
>> link is missing.
>> When I look at pkgdata I can see that the link ends up in libsocketcan-dev:
>>
>> $ oe-pkgdata-util list-pkg-files libsocketcan
>> libsocketcan:
>>       /usr/lib/libsocketcan.so.2
>>       /usr/lib/libsocketcan.so.2.3.0
>> $ oe-pkgdata-util list-pkg-files libsocketcan-dev
>> libsocketcan-dev:
>>       /usr/include/can_netlink.h
>>       /usr/include/libsocketcan.h
>>       /usr/lib/libsocketcan.so
>>       /usr/lib/pkgconfig/libsocketcan.pc
>>
> 
>> Its following usual soname naming conventions [1] for versioned shared libs where .so is a symlink which is used when something is linking to it during build time. thats why its in -dev package, if you want to use it at runtime then linker will add proper versioned .so into DT_NEEDED sections of dependent package which will be libsocketcan.so.2 in this case. So if your program is trying to dlopen it then I would suggest to use libsocketcan.so.2 and if its trying to link to it during build time then it should add right entry into DT_NEEDED sections.
>>
>> I am also wondering why would you want to move .so to main package.
> 
> Thank you for the input! The request actually came from a client (a special case) and I started looking in to how to do this with Yocto/bitbake. It's still a little unclear to me how the package is split in to the different subpackages and how files end up in their locations. Any pointers on that?

look at populate_packages() function in package.bbclass

> 
> Also, the other confusing thing is the naming, where the main library is renamed to libsocketcan2, but all the other packages are named libsocketcan.
> -rw-r--r-- 3 tuomas tuomas 5,8K maali 25 10:19 libsocketcan2_0.0.11-r0.7_aarch64.ipk
> -rw-r--r-- 3 tuomas tuomas  16K maali 25 10:19 libsocketcan-dbg_0.0.11-r0.7_aarch64.ipk
> -rw-r--r-- 3 tuomas tuomas 3,1K maali 25 10:19 libsocketcan-dev_0.0.11-r0.7_aarch64.ipk
> -rw-r--r-- 3 tuomas tuomas  13K maali 25 10:19 libsocketcan-doc_0.0.11-r0.7_aarch64.ipk
> -rw-r--r-- 3 tuomas tuomas 8,9K maali 25 10:19 libsocketcan-src_0.0.11-r0.7_aarch64.ipk
> 
> But I guess that's just semantics.
> 
> 
