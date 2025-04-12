Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3B72BC369AE
	for <webhook@archiver.kernel.org>; Sat, 12 Apr 2025 16:58:39 +0000 (UTC)
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
 by mx.groups.io with SMTP id smtpd.web11.14438.1744477112338486064
 for <yocto@lists.yoctoproject.org>;
 Sat, 12 Apr 2025 09:58:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=G6oE0nIQ;
 spf=pass (domain: gmail.com, ip: 209.85.218.44, mailfrom: skandigraun@gmail.com)
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-ac2a9a74d9cso576905366b.1
        for <yocto@lists.yoctoproject.org>; Sat, 12 Apr 2025 09:58:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744477111; x=1745081911; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0jwTEht5kyL8WwgP/RktqHpjxO3C/UGoEITfNk288Kw=;
        b=G6oE0nIQqoKOatL2FB+ljpRsVjK/Fxx9ewmAD82OnS/NHrvnAUSJbMqXVPNddIZbm3
         3ysPA3xc0OZevqmzTZ2UGP8jShDAevjPlbuqmW8EqF+woIp1uxE1XTWHukXURQ+unMk4
         pJStTe08jR/lofE4Ck5y6s1jd9rf+O/Qccx81E52+O+kfyLifdRz82362a5QaXExOyRO
         LFlrLjNdig0UHE7mqJeTGKDR57f4li0BNKY4hsnk1+41DfeZ+aJmxOnu41pV4ysNSjtt
         AJ7BDsVhbLa8QRV93orwk2P8JFfmBOLbFlgsdm/SjS4t3AQqb8I0RSTUDZZus971Bd3C
         wE5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744477111; x=1745081911;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0jwTEht5kyL8WwgP/RktqHpjxO3C/UGoEITfNk288Kw=;
        b=rQXj27e6TFxdlAJvjHl/2Plajgrs1+XuF6pr+jb5MDuXqVZ6m/FDPZbxkv2baxMFxR
         nwh15w2uqxQe/pmepr7k1hrqz4iXn8iUR26jiPrXLOt2IpJdHGTQ5+STIJdgF/tj+WC6
         qcMFHoQLf8JZEltdVpN0PKH9J4kZ3Lv4idfTmyKQMSlC5gVMYDhGJgL5O6qAoMT0VKsO
         me06ATvztLa5YZg0a801qTTswUx4zCc7L6vfhjKPoV5RB6TTDj2ISjIfet7cse8D7XnL
         Sb44D59EPTlFHNoTuzaQ8VLrDyhyqSjX6FcB2BNvrvmg4QNX6xhW3QwKBHWmKghiqanl
         xtYQ==
X-Gm-Message-State: AOJu0YwWC4TY+qd0L9+0xeyCPqRiVqutSnCBkMLMu/s5SB2orHmr2Qjd
	hvfpLefloURZj9JhznpHnIgVWqPeREFD5u7AZ2l0pu5aPonGsnAolC7PtQ==
X-Gm-Gg: ASbGnctfXVhitlzt1XD3c8zgkH+JTQlVPeLGUZoe11e+2rZaTps5jLPNTlRgJIi0mxu
	HMyho3v5BDgQxWKmLRddZsrdLQRekSEC8qQsYOQV1STsi6qr/4Z4IttrXNsyW5tdFE5B+qX9YAm
	jgzHiV/GGpUnoPnRkxsbJV2stvxfXAot6XOFL4BLCJPRFGlkW9jwS4tkAvejf9B0evwmc5UmaIz
	9G7eBrl/j41WtAczplXZYRWl9Vkkm1jMQrbb4c99mGMWv7j5s06UdnRUp8GRF0eYQJ/OE1tEvK5
	fZIEcD7oY76xuCxv3o+P32bxWPVwgOqUE8dpBLm1CiCkqnUCq13o7FXp/48=
X-Google-Smtp-Source: AGHT+IFQK18jzZrc04R9NAaA0PPAhwiCJC4gW98zQPNuzVugi1ONby6jYG3WZP/5tY7Du3qOP2WJog==
X-Received: by 2002:a17:906:7949:b0:abf:73ba:fd60 with SMTP id a640c23a62f3a-acad34d9c8fmr495809266b.29.1744477110095;
        Sat, 12 Apr 2025 09:58:30 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1c02549sm618994266b.80.2025.04.12.09.58.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Apr 2025 09:58:29 -0700 (PDT)
Message-ID: <14b695ea-de00-4dbe-a6d4-d9d73eadb54b@gmail.com>
Date: Sat, 12 Apr 2025 18:58:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] A new member
To: yocto@lists.yoctoproject.org, nguyenthaithuanalg@gmail.com
References: <14967.1744443075739598785@lists.yoctoproject.org>
 <14967.1744474114780333481@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <14967.1744474114780333481@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 12 Apr 2025 16:58:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65155

I am not in the position to say what contribution to/not to accept in
the project, but I have seen accepted deviations from the contribution
guidelines very rarely, and making such the first contribution is not
the best. It is a fairly extensive project, without adhering to the
contribution rules the maintainers would just drown.

Unfortunately I am not able to give a tutorial about using git
send-email or the mechanics of opening a GitHub pull request on this
list. These are not Yocto/OpenEmbedded specific tools, but widely used
ones - this however also means that there is ample information about
them on the internet. It is definitely worth to master at least the
basics of GitHub, how community sw development works there - not only
for this project. And git send-email looks only complicated until one
configures it using the first result from stackoverflow.

I think maybe your journey with Yocto should start at a bit different
point, rather than contributing code changes. Familiarize yourself with
the project, how it works, what it offers, what you can do with it -
Yocto has a fairly steep learning curve, but start using it small, and
keep experimenting with new areas. Start with tutorials, and of course
the documentation, of which the project has plenty. It is easier to see
through what's going on and what helps the project when you are a real user.

On 4/12/25 18:08, Thuận Nguyễn-Thái via lists.yoctoproject.org wrote:
> Hi Gyorgy,
> From "Send pull requests to openembedded-devel@lists.openembedded.org
> with '[meta-oe]' in the subject'"
> (https://github.com/openembedded/meta-openembedded/tree/master/meta-oe),
> but I could not create/push a branch into
> "https://github.com/openembedded
> <https://github.com/openembedded/meta-openembedded/tree/master/meta-oe)>".
> Therefore, I created
> "https://github.com/thuanalg/simplelog-topic/tree/main/meta-libsimplelog",
> and want to send it to "openembedded-devel@lists.openembedded.org".
> How do you think?
> Best regards,
> Thuan Nguyen Thai
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65153): https://lists.yoctoproject.org/g/yocto/message/65153
> Mute This Topic: https://lists.yoctoproject.org/mt/112169356/6084445
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [skandigraun@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

