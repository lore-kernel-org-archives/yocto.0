Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.9009.1599520447548460781
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Sep 2020 16:14:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=LNeWh9Zc;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: robert.berger.yocto.user@gmail.com)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 167A938C0960
	for <yocto@yoctoproject.org>; Mon,  7 Sep 2020 16:14:06 -0700 (PDT)
Received: by mail-wr1-f54.google.com with SMTP id z1so17205731wrt.3
        for <yocto@yoctoproject.org>; Mon, 07 Sep 2020 16:14:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=iPXJXhjuznRxec0VUSelhrPrzDznlqtN8RmGzabwamw=;
        b=LNeWh9ZcdKqFBLBp+HdAT3njk/FCAE1JI9dsxFqKk//3aJ6SLUgATKgTOvWRR3mZbq
         aNaqSmfKjJNU2oCywBo1GgjTCOwLHMJC7BC6pB0HEpEj/Vxsj54Ur6N5y1K4vvsCRfl6
         wUMAG8dmT5mI/FxYZukFCl6oiIpYH8Qa2t3Ez9cCDVD6RmKYSpb2txfx60rPdkueO057
         wG77NxTJ6o0WLWkAAZNULwiBNVbekyBbiI2La8TooMXHjR6Ri1sFMVGNmhfWjXqzMvYA
         EOzhQ+lSSuYtZ1rF0GTVwg2pbavuYNbZV53/pmG8yqB6xYmrjLniQO9Sosa80x9pqe9m
         haww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=iPXJXhjuznRxec0VUSelhrPrzDznlqtN8RmGzabwamw=;
        b=nqwyFf1fo4Ud19g62Jl60utQvCxmR/MSGt4Q6wM+L2tP9RegkdwZ36SsSfsoEN5Jdf
         +gp40NhWhpO20+IEy6F33oboehfNWE7zNTDN1YSsfMY6YgVlWEfypTiFMC9S2gv4TuEi
         DkC0EKYmrQ8G1Mcnh2/0bR4y5nqgZGnek7pq4fNZzK9X0m9naMilY5QxXxdLjSzYZnHn
         ml0FGDkIIx0VdX1hLmX95Dno2T1O+hxSbG0HD00EzALikdYgn4QoZiTNMxdaRP3OKxVR
         FqXVmdDk4OxMFmmKQzIwcgB8GA1s+CTbV+nIWVOazBPT1A7K8S837mZVQiTZmXmOxmbO
         chow==
X-Gm-Message-State: AOAM530s9Xx18twTklgU9NO7iWhmt955c1J3alb76AVZ+x3X7bfsZeeB
	/uBC4BTzalkq/HmJADJx1J2jNe5TugU=
X-Google-Smtp-Source: ABdhPJyyEd9TYy/kJ8D9iuciuPkytyMt+H++UDHG/5sFdJo5KDTFWbEFsrSu47ULxz3mibgsuT/qIQ==
X-Received: by 2002:adf:ef45:: with SMTP id c5mr22791911wrp.37.1599520444434;
        Mon, 07 Sep 2020 16:14:04 -0700 (PDT)
Received: from [192.168.42.52] (ppp-2-86-237-227.home.otenet.gr. [2.86.237.227])
        by smtp.gmail.com with ESMTPSA id o125sm30098794wma.27.2020.09.07.16.14.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Sep 2020 16:14:03 -0700 (PDT)
Subject: Re: [yocto] Multiconfig question
To: Eil?s N? Fhlannag?in <pidge@toganlabs.com>, Yocto <yocto@yoctoproject.org>
References: <CANik3vHZ3K6fKpv3qdw7efugdCTywA1BxAWzPGTtpWnHCBU5rQ@mail.gmail.com>
From: "Robert Berger" <robert.berger.yocto.user@gmail.com>
Message-ID: <4a2d5c03-35ff-eaf6-00a7-f701b3bef3b6@gmail.com>
Date: Tue, 8 Sep 2020 02:14:01 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CANik3vHZ3K6fKpv3qdw7efugdCTywA1BxAWzPGTtpWnHCBU5rQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi,

Please see my comments in-line

On 07/09/2020 17:53, Eil?s N? Fhlannag?in wrote:
> Assuming this:
> 
> bitbake multiconfig:ConfigA:core-image-foo multiconfig:ConfigB:core-image-bar
> 
> Is there a way during or before the rootfs of ConfigB:core-image-bar
> to tell what else was run during execution?
> 
> What I'm trying to do is set an mcdepends in ConfigB:core-image-bar to
> magically know everything else it was built with.

Does core-image-foo depend on core-image-bar or the other way around?

I have something like that:

mc:imx6q-phytec-mira-rdk-nand-resy-virt:core-image-minimal-virt-docker-ce-telegraf-prebuilt-mc

which depends on

mc:container-arm-v7-resy-container:app-container-image-telegraf-prebuilt-oci

So the container image is being built and put into the rootfs of the 
imx6q image. (without saying this explicitly on the command line).

I use buildinfo for the container rootfs and the native rootfs so I know 
which layers and which settings were used to build them and I can even 
check this in runtime.

> 
> -b

Regards,

Robert

> 
> 
> 
> 

