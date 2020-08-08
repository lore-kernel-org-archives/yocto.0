Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com [209.85.210.44])
 by mx.groups.io with SMTP id smtpd.web12.7161.1596900167924925676
 for <yocto@lists.yoctoproject.org>;
 Sat, 08 Aug 2020 08:22:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=soKI95gM;
 spf=pass (domain: gmail.com, ip: 209.85.210.44, mailfrom: mr.nuke.me@gmail.com)
Received: by mail-ot1-f44.google.com with SMTP id r21so3926327ota.10
        for <yocto@lists.yoctoproject.org>; Sat, 08 Aug 2020 08:22:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=8uX3ACdzeBVuq8Ubcctk7kClJYPbd/gn0Din2kEy2QE=;
        b=soKI95gMUgQEw411QSTUUbhWt2MDkeG6nBfL8oGJvIazIqpElfCrNMKpvXLsVYc1sK
         lyrF9BX/pVJkiFm1MwEyqV7XXqCO7HLyLibrITYOAZOtKXwe8WvNgNVj/33Vo+EWI/t5
         avQs1j60XStcwlDrPqvtspL5/jebPiu/RGRJZzUeJrj4ZbQu0tHnQzfIpPhSJzvx3jvW
         EzsVRcDrST1o+azFOcCqggUnfmmXudhxp5PQr/HVsmjPv3XPwwjAaZIXG1xMnZysmyMd
         b+FrFPtVG5dsVL75ZfFnN4Ny/cW+xZhPWTvsFE/TcSErrwgc+DPiXaOgBOJGS0vcjDvh
         YtZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=8uX3ACdzeBVuq8Ubcctk7kClJYPbd/gn0Din2kEy2QE=;
        b=ARhJkd42FAtA+9cZozOvg34O3tx2FCnWW95+MBAKw1i8kdCMYMc828xWeEQw45qkwD
         QPOI8xYtWPjwmpk1rxyKMU79gmpN+20ps+Oh90/tRnAlKIILSSfTq3g1k3q5rHEL/5WK
         bonchqVVGCW/YrLBw+ho4DBxCt6da6LZ8uOYSqpbLnmFGrCgx6qjZPDVk1D3um0KR9Nu
         Vyy7FyBQzqwPQoGsy79pxEGikukrhl7+fUTtkUN+8Y9UOTzbMwl7MRh3a474Hsr0PSFK
         5Qo1tcZsCHh7S4q5PKSG3fptXo0fGnMcirQqnpq+XxMTf1HcFZ2V665wza8UKwyuRSXD
         WPnA==
X-Gm-Message-State: AOAM531vrOTeMnbA97fKTMRwfSX5vG70kCyM2UhUJ/laDZylP0FBzdGS
	ecwvLT5n9ICvq78Gd4VvBaNrr0jnUgw=
X-Google-Smtp-Source: ABdhPJwJOPdfzOmhNOk5lwBeuZlVLpqLnJginqCrT+5YrowZkbry5rE+fXEA6gMM0DuqnXK3wCn8ng==
X-Received: by 2002:a9d:77cd:: with SMTP id w13mr15477683otl.146.1596900166982;
        Sat, 08 Aug 2020 08:22:46 -0700 (PDT)
Return-Path: <mr.nuke.me@gmail.com>
Received: from nukexps.gtech ([2601:2c1:8501:182d::edf])
        by smtp.gmail.com with ESMTPSA id i8sm2314242otr.59.2020.08.08.08.22.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Aug 2020 08:22:46 -0700 (PDT)
Subject: Re: [yocto] Yocto build failure -- supposedly due to opkg-4.2 download
To: akuster808 <akuster808@gmail.com>, yocto@lists.yoctoproject.org
References: <a2dcb62c-763f-ecfa-622e-abfbd84db1f3@gmail.com>
 <7a89b948-9cb8-32dc-122d-dc892f6e6b5a@gmail.com>
From: "Alex G." <mr.nuke.me@gmail.com>
Message-ID: <929fa99b-c8b7-d209-f714-96227c84a229@gmail.com>
Date: Sat, 8 Aug 2020 10:22:46 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <7a89b948-9cb8-32dc-122d-dc892f6e6b5a@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 8/4/20 2:07 PM, akuster808 wrote:
> 
> 
> On 8/4/20 12:00 PM, Alex G. wrote:
>> Hi,
>>
>> I'm trying to get started with yocto builds. My builds keep failing 
>> trying to build the qemu-x86 image.
> 
> If I am not mistaken, many of the servers are down including 
> downloads.yoctoproject.org.

That was it. Waited a day, and then I was able to build. Thank you!

Alex
