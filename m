Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
 by mx.groups.io with SMTP id smtpd.web10.561.1588288667152821436
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Apr 2020 16:17:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=LaNXRz1G;
 spf=pass (domain: gmail.com, ip: 209.85.222.176, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f176.google.com with SMTP id q7so7727012qkf.3
        for <yocto@lists.yoctoproject.org>; Thu, 30 Apr 2020 16:17:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=0tjzJM6DO7i37/TrWQW0glaIMsJmjKnjpLA0f4u4p2Q=;
        b=LaNXRz1G+Xxkr0E0y360A2gUTVjoCpph3Z3P5/77gVD2Uek64HjiOID9q4UbfZRHpi
         QFpbgu3cQgsVBj+gwsIPYx956ACZDDux8AMIgbxgp3b93SvrktJH1AFMF4o9l6Q666vi
         mrrjSCYm1Jr4FSJeWQZCpD6oSNLVdh0roSGcl7RHLcwORiBg7wkqnRAfpOb+LtnVT/SA
         +70M0/7dIBwk3pJeo0Lrb8qw385ISNAw8z7AemKncYyxFLtArMlR+HOHwBQh0AbNPrP4
         8XhqXPyrWkU0kuCtpLunLPNT1EF3FzEzbmBLIAOGbo4ZmOQrLFmy5LOervCaLsV/v95d
         E00g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=0tjzJM6DO7i37/TrWQW0glaIMsJmjKnjpLA0f4u4p2Q=;
        b=qaCXstkqqXbRWSNiodr/ylpLhZRfHjpgqG6iagvV+5fWASXK8TMiP/q6z0fhewwFsH
         7dKPmOIWV1F8O410UaSE6HJpniQTb2898Oz6T5g7p0YOo8BXJKvxc/yRjk1clkbxr/5/
         yo4o6kKZLm7nR6NlflkCgsBTP8zXXw5WenJZemxvnVVWpqJQLT38ID3NDFglpmCRQ06p
         99JslQku4QXopdOwZfPbR2K3hwF/SgjiU2C49o0kfyCcGYaU3qNRT2updzo3HyZoYOvw
         qlqIjBp6i4TzFILiRQ/4bWfDSqcNq6vho75M7Ex0D7gAmAU4pxYxvYhCsVlr7W0bYHz/
         XtKQ==
X-Gm-Message-State: AGi0PubCjVSuEVdSIRMxNXSqss0ZjkQPrDTfM1EcrRcLRXCyQ86YJSxq
	tBI56k81jRTE/WGGSb/qk+s=
X-Google-Smtp-Source: APiQypJXwdRRcyv98uAkIAc+pEQNZJUBOZB1W1yXOZtqVzkgFlUj6gL4c0pwlO/eorhY/Cw8F1BoyA==
X-Received: by 2002:a05:620a:c89:: with SMTP id q9mr942095qki.375.1588288666207;
        Thu, 30 Apr 2020 16:17:46 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0:e02c:9432:3945:4d16? ([2601:646:9200:4e0:e02c:9432:3945:4d16])
        by smtp.gmail.com with ESMTPSA id k127sm1297605qkb.35.2020.04.30.16.17.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Apr 2020 16:17:45 -0700 (PDT)
Subject: Re: [yocto] [WIC] Grow last partition up to disk size
To: yocto@lists.yoctoproject.org
Cc: Yocto list discussion <yocto@yoctoproject.org>
References: <504407a1-379f-dc70-7745-c42624df7d8c@ibeeto.com>
 <CAAfyv35at0HOtTpnTiRRL0yrS4mcvCwxy7MdbAmdbVba5-OnGw@mail.gmail.com>
 <3b7e322b-86db-6412-7cb3-02183d626aeb@gmail.com>
 <CAAfyv362iG0g3pamQ1RS5OoCmYBzH8yf-ey2iQwCeXBYctYdMw@mail.gmail.com>
 <b70bbaae-b1d0-9b8c-add0-8f6c0b32a4e5@gmail.com>
 <CAAfyv34CZUjDZZu0jeGmAZfkNkJDaDyTrNuYp6Mf2m97M2NtYw@mail.gmail.com>
 <160AAEA430561E1B.4948@lists.yoctoproject.org>
 <CAOf5uw=ON2QNoHQiBWy7nWwo9QSu1uKLDhLjJ5yeuz1wN17UHA@mail.gmail.com>
 <b37131d2-827e-9ae4-5d26-0edf3d26e11e@ibeeto.com>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <d72d64e0-ccb9-9339-657c-2023ea36e739@gmail.com>
Date: Thu, 30 Apr 2020 16:17:43 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <b37131d2-827e-9ae4-5d26-0edf3d26e11e@ibeeto.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit



On 4/30/20 4:11 PM, Rudolf J Streif wrote:
> Thanks, guys, I appreciate it.
> 
> Doing it dynamically on first boot would probably work as it is a data 
> partition and not the rootfs partition.
> 
> I will give it a try.

96boards-tools also has a script which works regardless of init systems

https://github.com/96boards/meta-96boards/blob/master/recipes-bsp/96boards-tools/96boards-tools_0.12.bb

> 
> :rjs
> 
> On 4/30/20 12:13 PM, Michael Nazzareno Trimarchi wrote:
>> Hi
>>
>> On Thu, Apr 30, 2020 at 9:10 PM Michael Nazzareno Trimarchi via
>> lists.yoctoproject.org
>> <michael=amarulasolutions.com@lists.yoctoproject.org>  wrote:
>>> Hi
>>>
>>> Well I have write something like this
>>>
>>> [Unit]
>>> Description=Increases rootfs image size to fit partition
>>> Requires=dev-disk-by\x2dpartlabel-rootfs.device
>>> After=dev-disk-by\x2dpartlabel-rootfs.device
>>>
>>> [Service]
>>> Type=oneshot
>>> ExecStart=/usr/sbin/sgdisk /dev/disk/by-path/platform-ff0f0000.dwmmc -e
>> This resize gpt up to disk size
>>
>>> ExecStart=/usr/sbin/parted /dev/disk/by-path/platform-ff0f0000.dwmmc
>>> -s "resizepart 4 -1" quit
>> This resize partition number 4 up to the max
>>
>> Michael
>>
>>> ExecStart=/sbin/resize2fs /dev/disk/by-partlabel/rootfs
>>> ExecStart=/bin/systemctl disable resize-rootfs.service
>>>
>>> StandardOutput=journal+console
>>>
>>> [Install]
>>> WantedBy=default.target
>>>
>>>
>>> On Thu, Apr 30, 2020 at 8:30 PM Marek Belisko<marek.belisko@gmail.com>  wrote:
>>>> On Thu, Apr 30, 2020 at 8:27 PM Khem Raj<raj.khem@gmail.com>  wrote:
>>>>>
>>>>> On 4/30/20 11:25 AM, Marek Belisko wrote:
>>>>>> On Thu, Apr 30, 2020 at 8:23 PM Khem Raj<raj.khem@gmail.com>  wrote:
>>>>>>>
>>>>>>> On 4/30/20 11:16 AM, Marek Belisko wrote:
>>>>>>>> Hi Rudolf,
>>>>>>>>
>>>>>>>> On Thu, Apr 30, 2020 at 7:39 PM Rudolf J Streif
>>>>>>>> <rudolf.streif@ibeeto.com>  wrote:
>>>>>>>>> I was looking for a way in a wks file to have wic grow the last
>>>>>>>>> partition to fill up the remainder of the disk. Of course wic does not
>>>>>>>>> know how large the disk is but that could be a parameter.
>>>>>>>>>
>>>>>>>>> The alternative way is to use fixed-size and do the math manually but
>>>>>>>>> that would not allow wic to grow a partition based on content.
>>>>>>>> You can usehttps://manpages.debian.org/testing/systemd/systemd-growfs.8.en.html
>>>>>>>> which grow partition to the end.
>>>>>>> can it grow a mounted partition ? since that will be the case when
>>>>>>> growing rootfs partition.
>>>>>> It will grow last partition in first boot only.
>>>>> my question was will it grow a mounted rootfs parition if that happens
>>>>> tobe the last partition, I understand it will grow last partion and do
>>>>> it as firstboot service.
>>>> I usually use it in case when have dual rootfs (A, B) and data
>>>> partition which is expanded to then end of disk.
>>>> I don't have experience with growing rootfs (I think it can grow only
>>>> not mounted partitions)
>>>>>>>>> :rjs
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>
>>>>>>>> BR,
>>>>>>>>
>>>>>>>> marek
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>> BR,
>>>>>>
>>>>>> marek
>>>>>>
>>>>>>
>>>>>>
>>>>>>
>>>> marek
>>>>
>>>>
>>>> --
>>>> as simple and primitive as possible
>>>> -------------------------------------------------
>>>> Marek Belisko - OPEN-NANDRA
>>>> Freelance Developer
>>>>
>>>> Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
>>>> Tel: +421 915 052 184
>>>> skype: marekwhite
>>>> twitter: #opennandra
>>>> web:http://open-nandra.com
>>>>
>>>
>>> --
>>> | Michael Nazzareno Trimarchi                     Amarula Solutions BV |
>>> | COO  -  Founder                                      Cruquiuskade 47 |
>>> | +31(0)851119172                                 Amsterdam 1018 AM NL |
>>> |                  [`as]http://www.amarulasolutions.com                |
>>>
>>
>>
> -- 
> -----
> Rudolf J Streif
> CEO/CTO ibeeto
> +1.855.442.3386 x700
> 
> 
> 
> 
