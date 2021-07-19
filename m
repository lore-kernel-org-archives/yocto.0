Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
 by mx.groups.io with SMTP id smtpd.web11.1362.1626728308091857468
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Jul 2021 13:58:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=b4W+mBOb;
 spf=pass (domain: gmail.com, ip: 209.85.128.45, mailfrom: robert.berger.yocto.user@gmail.com)
Received: by mail-wm1-f45.google.com with SMTP id f8-20020a1c1f080000b029022d4c6cfc37so252411wmf.5;
        Mon, 19 Jul 2021 13:58:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=cgxXozlKviTjHVHQHvV+14B4TWG4QNHsdawqzqZ1+Y4=;
        b=b4W+mBObu+ea7Y5ziy/pBiW/XTbjmLgVCd5L3f4G1HqOhcO8uxgCe2QX0CK1lkOBUe
         8Hr6LH/c8eYcH2Zz4XZIzy6tEyBaI7A3agJ2Sn8Po9qkEwwdaQGG0B/n21Hn0f8cKIkW
         qjrDww37OkKwMCJgXF8RRAN6D/zWC7rwaTstIaOLPQH757sSWBDtYU8k71fKyekjE/c+
         2IOisSD/dpjXWd4Vwy3ab4l39M42ufeiY92s3J2ZtDzUjEy/CyvIO/R78lbAXR+0g+sg
         uT+Phi9zcte0+RMYZgRHSdvzRciKJWyG3Qku1MCWypSL9qaB4g6LE/cUVV1IYNgwjDPR
         1ZTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=cgxXozlKviTjHVHQHvV+14B4TWG4QNHsdawqzqZ1+Y4=;
        b=FAFcQUsEtZtPgMrpo9RCVpzmEKs1QpJmGqjPGwnuD4lXQ7c1L6J4ZOP0mnaJxD6IQo
         L1MC0/mq9Amrl+7I8LPEbtMoP8XhzpBQuz2ZGWticE82qmLZON0x8U+ErMvW74MHuEU4
         uIGIU2ZtqUY795sCTVddNEYeI90t2DDmMP3WUKp9XN3nrNYb03rCOU1y8c9+/CVmtIfJ
         5hRK8ZnXX3Q+9H7mDCR9f7yhmrN1z4ztae1fWAZRTtkmR09IOqtchUptb8NQdo8AdxX5
         wt/lcH1mq2p37OSratBGwdd4lMrrCGwPYVI3YazqaEqo/A9Y9yECfu9Xp3wlgC5g5Fm1
         BHww==
X-Gm-Message-State: AOAM5303RMrhn1bgrCa63Yml834/IwV4JhyoarD6FTkQOkqpQgSgsOk4
	dI7DcicQNDWKkWyiAlXSX2ayHo2MTEQ=
X-Google-Smtp-Source: ABdhPJzdB8Ztw38rRp30mfuAjpC7TWlUWx/vUzUifV3P5gQa3UsShVzqnMZTguLYiHMuychkeT++Fw==
X-Received: by 2002:a1c:628a:: with SMTP id w132mr1488947wmb.90.1626728306284;
        Mon, 19 Jul 2021 13:58:26 -0700 (PDT)
Return-Path: <robert.berger.yocto.user@gmail.com>
Received: from [128.90.148.25] ([128.90.148.25])
        by smtp.gmail.com with ESMTPSA id o3sm21548661wrm.5.2021.07.19.13.58.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jul 2021 13:58:25 -0700 (PDT)
Subject: Re: [yocto] [poky] [PATCH] local.conf.sample: disable prelink
To: Alexander Kanavin <alex.kanavin@gmail.com>,
 Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Mark Hatle <mark.hatle@kernel.crashing.org>, poky@lists.yoctoproject.org,
 Yocto-mailing-list <yocto@lists.yoctoproject.org>
References: <20210615081225.1734033-1-alex.kanavin@gmail.com>
 <5ed9e1d2676d4d31289ebaf2ec3b492c1daa88a7.camel@linuxfoundation.org>
 <CANNYZj84MXS57sG5CWLmS-Y_0-w8h1_9NLmtjFEo4pJ5snXvcA@mail.gmail.com>
 <CANNYZj8S7V5owiS0p3B1fD7n_JpF-OPLApO=e9d+SiPuyFWHZw@mail.gmail.com>
 <0451f536368310860d9acb12e5a8424881b545e8.camel@linuxfoundation.org>
 <CANNYZj9Z87Jb7Ea-vtQ1ZEmtQvfFRDtTXAxvStZT3c02RnU01g@mail.gmail.com>
From: "Robert Berger" <robert.berger.yocto.user@gmail.com>
Message-ID: <a7e0a44c-084e-5e21-5621-67e32ca36127@gmail.com>
Date: Mon, 19 Jul 2021 23:58:24 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CANNYZj9Z87Jb7Ea-vtQ1ZEmtQvfFRDtTXAxvStZT3c02RnU01g@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi Alex, RP, Mark,

I did some research on the subject in order to try to figure out what is 
going on.

1) I come to a similar conclusion with what found, but tried to look a 
bit deeper for the reason.

1.1) The reason that cross-prelink is not prelinking is, that for a 
quite some time by default everything is built with PIE mode by default 
and cross-prelink does not seem to be able to work on exe/libs compiled 
with PIE mode. So seeing the same behavior with and without prelinking 
is what I would expect as long as everything is compiled with PIE mode.

A more detailed analysis of my tests can be found on my not yet 
officially published site:

https://rlbl.me/prelink-1

https://rlbl.me/prelink-2

Alex:

Can you please rebuild your test images without PIE mode and re-run the 
tests?

Then we should have the 4 test cases:

prelinked-with-pie
no-prelink-with-pie
prelink-no-pie
no-prelink-no-pie

I guess then we can discuss what are the next steps.

In my opinion the current default settings, which compile close to 
everything in PIE mode, but invoke also cross-prelink do not make much 
sense.

The question is: "Do we want to drop cross-prelink, or do we want to 
drag it along and come up more fine-grained configuration options?"

We could e.g. exclude certain files from pre-linking.

IMHO cross-prelink still works, but not on exe/libs which were compiled 
in PIE mode.

Regards,

Robert
