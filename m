Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
 by mx.groups.io with SMTP id smtpd.web10.4685.1624948871414922665
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Jun 2021 23:41:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20150623.gappssmtp.com header.s=20150623 header.b=hC5mGqPa;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.218.47, mailfrom: jester@theyoctojester.info)
Received: by mail-ej1-f47.google.com with SMTP id hq39so34422784ejc.5
        for <yocto@lists.yoctoproject.org>; Mon, 28 Jun 2021 23:41:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding;
        bh=shG8Ngz0n+sT7/W61AYksqkE6hYEJYmBpB3aIbbGQGM=;
        b=hC5mGqPahqMzqxkC6l56iZMQBCYbel+Y/jQRuFoOyIb/4Yp1si4skxDVsfs8haqKFj
         tQcZGcd9x/pduY9dFuw7FCXc+NG9v6YCkRtR3Z6hrq1AG7pSPruSz3tXFKg8lJmBXswy
         CfCTlKSgPemu9KkVWa6FI/BIQK4Rw1Mu89oOfqpqbIoXYU8WLD1C1+RBClS2OkuxlnkS
         4r64k3RuoCC4ntVaDIcPb5mqNGfmZg6TFdeM85XkWOyaTL4p1K2mkPjIe8lif+Os1Q1G
         i/hIdgL/+OiOL4aRagW6hgBxUGrNubf+6LVVtJIK6YUqOGStD7lS6rK7iq/Esnyvo6qf
         28qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding;
        bh=shG8Ngz0n+sT7/W61AYksqkE6hYEJYmBpB3aIbbGQGM=;
        b=bDjA945YhWkcOr9cNZ/VQVDEgNQh7CZrtRXeZ+ZQAz8NIdYTpNqDhBbG96CVIoKOXJ
         ZngT3bH0vipTfTE4DKPF0v/qV2DeT8kDvZytC1DU0P+Gu/As3QMnehqNfOAI0LynSL+W
         jQYVVl1npERHs6Dt7rC8N+y3JWV3LnRi3dE/7j5tki3cgrxilzWeqBJq+Oo8G52s+Aad
         opJ3ECNqpUHLTHQzWqlSrzW6PxeheEB7yF6FMR7OBDBTTahsYc1zzbOEQiSqqqmdgWVR
         3O+B4HwjX+GztVuc1xZ4Cc30sg0JgVo+tzs6VLhryZ5zulVzmCyXkDi/PfbAbZQfjHRk
         8y0A==
X-Gm-Message-State: AOAM531cZR/7qHcLTaBW/VYAH71vnSZsij9MvUTJrYeOYXZc4WE1NViR
	+tJ0bwniAi476g4O2qeN1FvapARHs5EyKfbJ
X-Google-Smtp-Source: ABdhPJxkPD6NdpK000iU8tGHzWvokwCIHtgYbBTUYVz4KHYULFiOFlgsxTPiVUlFMgO+4ckUNopV+g==
X-Received: by 2002:a17:906:cc59:: with SMTP id mm25mr28336830ejb.331.1624948869734;
        Mon, 28 Jun 2021 23:41:09 -0700 (PDT)
Return-Path: <jester@theyoctojester.info>
Received: from [172.16.3.179] (p50933415.dip0.t-ipconnect.de. [80.147.52.21])
        by smtp.gmail.com with ESMTPSA id yh11sm7627179ejb.16.2021.06.28.23.41.09
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Jun 2021 23:41:09 -0700 (PDT)
Subject: Re: [yocto] Would COMPATIBLE_IMAGE make sense?
To: yocto@lists.yoctoproject.org
References: <CAEyb4nEiwzVnrqHGob-ioo0iwT+NNA_uCXFMejoYfAdnnQpH5A@mail.gmail.com>
From: "Josef Holzmayr" <jester@theyoctojester.info>
Message-ID: <68074a59-650c-c02a-b05b-855b43171c50@theyoctojester.info>
Date: Tue, 29 Jun 2021 08:41:05 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CAEyb4nEiwzVnrqHGob-ioo0iwT+NNA_uCXFMejoYfAdnnQpH5A@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Howdy!

Am 29.06.2021 um 01:28 schrieb Jonas Vautherin:
> I was thinking about my issue described here [1], and discovered the 
> variables called COMPATIBLE_MACHINE and COMPATIBLE_HOST, which "you can 
> use to stop recipes from being built for machines (/hosts) with which 
> the recipes are not compatible". And so I wondered if it would make 
> sense to add COMPATIBLE_IMAGE, for a similar purpose.
> 
> Let me explain my issue: I define different images in different layers 
> (say `first-project-image` and `second-project-image`), and in each of 
> those layers I create `.bbappends` to configure some packages. Typically 
> `hostapd` is used by both images, but with a different config file.
> 
> The thing is that when I run `bitbake first-project-image`, because 
> `second-project-image` is part of my bblayers.conf, then the 
> hostapd_%.bbappend from `second-project-image` is used and may have an 
> impact on `first-project-image`, which I don't want. I really want this 
> bbappend to only affect the image `second-project-image`.
> 
> One way I can see to deal with that is to realize that 
> `first-project-image` and `second-project-image` are two different 
> projects, and build them from two different BUILDDIRs. The thing I don't 
> like here is that all the packages are therefore downloaded and built 
> twice, which seems like a loss of time and space.
> 
> That's where I thought about COMPATIBLE_IMAGE. In the hostapd_%.bbappend 
> of `first-project-image`, I would set "COMPATIBLE_IMAGE = 
> 'first-project-image'", and similarly for "COMPATIBLE_IMAGE = 
> 'second-project-image'". So that I could still share a BUILDDIR between 
> different projects.

Yocto chant #1 applies: "Recipe data is local, configuration data is 
global." Means: the recipe does not see at all which image it is being 
built for. So it also can't react to it - you can't check a variable 
against something you do not even see.

> How bad of an idea is that?

It just doesn't work. If that counts as "bad" is left for you to decide :)

What you actually might use is using different DISTROs for the images, 
because that actually what they mean to do: you change the ABI/API of 
the image. And you can also define a base DISTRO and COMPATIBLE_DISTRO 
derivatives, so its all there already. It just cannot be triggered from 
the image, because, well.. see first pragraph of the answer.

Greetz

> Thanks in advance,
> Jonas
> 
> [1]: https://stackoverflow.com/questions/68167244/image-specific-layers 
> <https://stackoverflow.com/questions/68167244/image-specific-layers>
> 
> 
> 
> 
