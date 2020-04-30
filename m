Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
 by mx.groups.io with SMTP id smtpd.web11.326.1588270992513140551
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Apr 2020 11:23:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=IUqPCvdc;
 spf=pass (domain: gmail.com, ip: 209.85.219.53, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f53.google.com with SMTP id v38so3508559qvf.6
        for <yocto@lists.yoctoproject.org>; Thu, 30 Apr 2020 11:23:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=eWQ0BKZlgYW3R5BlVL3dB+K/hsKVd/az7sEbm4xnSDg=;
        b=IUqPCvdc95kwMUzWaTu1263w6sxR7rK88Igq2GRtzlUfIrCSVIlD7C143ahuqSV8ms
         P9dTwiqpEbLcUgWS5t1hrmXaGhBdSCrbnLfaG/kiokaWainSxy/pyOtlDLYWLCE4ges2
         z99F6PZQKSH9QfChyBF7lP9TihjHEEhKnFkfcXmGoskntrAAx2OKVZ4FvhWDaU/AJSd0
         LY9k+tu447IEd9Z0fLDaFgDTcHc78vrurezHzgrJVHNsJEEVD80x9CSq6yzJv0/XB+x9
         2IIuikrTZz7eSww8qykGaEN9ap6qznvi4qdt9aRb2Nqm4PFjxg0Y6lMWIof35hE4+P13
         LRHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=eWQ0BKZlgYW3R5BlVL3dB+K/hsKVd/az7sEbm4xnSDg=;
        b=mm6b5AUmmfRAWtwww5i7J3X23JXVoYNtz4Y269sUuL7BYn5OAAcWDXICacrkkrk92a
         N3g+wk8oVGXiE0FtVuRoj9NjVlf67szRU2wPmSrf6ZB1kSlw9yKEyLkOxKuxTgiC+6vX
         v43ZDva8vNX7yjOFhGQcpSEpi24yYx8AoGsexmd6SXW8zkuDbGLNNqDKdJGdiiS7h7Ej
         8AaHtPvWHLuojHcgHmLZ1JDMI7VLPE0gWZT1yWdUdj0Bb5+Op7OXaZR+GVa5zMgQkDp8
         ITRBJDBUyMBPfdAn3qIYQGs6W8FcjKunufeNd55bN9MasZQAxzUlgnyaExQJFLAy0fZJ
         fClw==
X-Gm-Message-State: AGi0PuYRZWlK7sBc7Hw+JE3SA0Cdj+nHKSgH1PqWDNLV097u2UTtzkzV
	n3t3ve1aVhdAUf0oUguQPuk=
X-Google-Smtp-Source: APiQypKFOeqPqY4IhE60Z+ceJaSjl8QZV14uKeciEC3a7sGcMBdm8QY5oQnFSgn/6gKdUoG5L1MjOg==
X-Received: by 2002:a0c:99ca:: with SMTP id y10mr140006qve.217.1588270990805;
        Thu, 30 Apr 2020 11:23:10 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0:e02c:9432:3945:4d16? ([2601:646:9200:4e0:e02c:9432:3945:4d16])
        by smtp.gmail.com with ESMTPSA id y72sm662372qkb.86.2020.04.30.11.23.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Apr 2020 11:23:10 -0700 (PDT)
Subject: Re: [yocto] [WIC] Grow last partition up to disk size
To: yocto@lists.yoctoproject.org
Cc: Yocto list discussion <yocto@yoctoproject.org>
References: <504407a1-379f-dc70-7745-c42624df7d8c@ibeeto.com>
 <CAAfyv35at0HOtTpnTiRRL0yrS4mcvCwxy7MdbAmdbVba5-OnGw@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <3b7e322b-86db-6412-7cb3-02183d626aeb@gmail.com>
Date: Thu, 30 Apr 2020 11:23:08 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CAAfyv35at0HOtTpnTiRRL0yrS4mcvCwxy7MdbAmdbVba5-OnGw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit



On 4/30/20 11:16 AM, Marek Belisko wrote:
> Hi Rudolf,
> 
> On Thu, Apr 30, 2020 at 7:39 PM Rudolf J Streif
> <rudolf.streif@ibeeto.com> wrote:
>>
>> I was looking for a way in a wks file to have wic grow the last
>> partition to fill up the remainder of the disk. Of course wic does not
>> know how large the disk is but that could be a parameter.
>>
>> The alternative way is to use fixed-size and do the math manually but
>> that would not allow wic to grow a partition based on content.
> You can use https://manpages.debian.org/testing/systemd/systemd-growfs.8.en.html
> which grow partition to the end.

can it grow a mounted partition ? since that will be the case when 
growing rootfs partition.

>>
>> :rjs
>>
>>
>>
> 
> BR,
> 
> marek
> 
> 
> 
> 
