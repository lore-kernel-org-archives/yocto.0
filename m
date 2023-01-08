Return-Path: <fntoth@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2E987C54EBD
	for <webhook@archiver.kernel.org>; Sun,  8 Jan 2023 22:13:54 +0000 (UTC)
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
 by mx.groups.io with SMTP id smtpd.web11.56704.1673216026529763289
 for <yocto@lists.yoctoproject.org>;
 Sun, 08 Jan 2023 14:13:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=WBTGqzD3;
 spf=pass (domain: gmail.com, ip: 209.85.218.49, mailfrom: fntoth@gmail.com)
Received: by mail-ej1-f49.google.com with SMTP id jo4so15885221ejb.7
        for <yocto@lists.yoctoproject.org>; Sun, 08 Jan 2023 14:13:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6rLtEmD/lt649z5n6P6F/upDrlBOwBMwx0Om2ZHapqk=;
        b=WBTGqzD3zYYg1zmpYP6eyPH4Aegmzy5VnH2/O7CtOl1UvLz7GMZYiFNsIU09jHz6xP
         YVABBgTsLu2GY8KOJiNUDvO/iDwP4XNxGIk1sYvjAZZBQ6T3gXj6zTczAX4g6tz+E4Rf
         jJbVlCJJ0Ext6m/aZqrHxramu43FWOALs3bjlolUI3ZzjK4uGzWYXjSj8LV8C/CpCbEr
         kR/UxPdMMfQ/kydjfIaDF7Qm1S/n+jZhLJQ0ByduaQmfjnrvQAPceBAEMAzbkD+6sZp1
         k0phUa9JYYrtDjc1wkrPui+rCPwJ9u2/R+C2t89KeUPVgrkun9ERngETyG7CeU6Ab7c1
         ruaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6rLtEmD/lt649z5n6P6F/upDrlBOwBMwx0Om2ZHapqk=;
        b=KoIgeMM+wB0smiPr7wCGnd67sxydJc+Zg3T7bTlj+N7YKEJekJl+4x4SofDpJOCl/c
         F0Wo7BIWmZH6TPc4Q5/wj0ZDVGr9mB3aqBzWLn7x/qLFC9hb3/SHHnknAJcQutCA4Z6B
         gzwQ3w8Q6JUfR4nwvJfVsfuwFMpkCV3af2qHxrJdj0qpc3NCRoKJxww3GvJIVffoMFpE
         zU7FwVzjFJt2x7TqHBFKYOLbii0vStOgZvG365GmOaVeruLgQB4LGMgdyPdmmx7UCtJY
         BffFE/ba0f8YQc20OsdLmBUyTwENqObug3bWzYMkiS5HKeYIAiqheD7dsSy7ZY3kYChs
         phkQ==
X-Gm-Message-State: AFqh2ko1aIxB8ItfRVWZykIFotaBjmRxgH54XwNiOFK/wIzf8F77Qmda
	xmd0FDSRZYKM5ud78wCMtg8=
X-Google-Smtp-Source: AMrXdXuQmhsQwI40QWD5P0mY0D8hy+Zh7Y49tRL3VcCbHcIPwQsjEXioRoh9PPNzkTbPnMlcp/z90g==
X-Received: by 2002:a17:906:6b0f:b0:78d:f454:ba3d with SMTP id q15-20020a1709066b0f00b0078df454ba3dmr47613696ejr.60.1673216024726;
        Sun, 08 Jan 2023 14:13:44 -0800 (PST)
Received: from ?IPV6:2a02:a466:68ed:1:7800:9c36:cd3a:2981? (2a02-a466-68ed-1-7800-9c36-cd3a-2981.fixed6.kpn.net. [2a02:a466:68ed:1:7800:9c36:cd3a:2981])
        by smtp.gmail.com with ESMTPSA id l10-20020a1709060cca00b0082ddfb47d06sm2974379ejh.148.2023.01.08.14.13.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Jan 2023 14:13:44 -0800 (PST)
Message-ID: <033d7443-7da9-38e8-ef36-2a87cad5ff8d@gmail.com>
Date: Sun, 8 Jan 2023 23:13:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [yocto] bitbake controlling memory use
Content-Language: en-US
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Janne Kiiskila <janne.kiiskila@izumanetworks.com>,
 Quentin Schulz <quentin.schulz@theobroma-systems.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
 trevor.gamblin@windriver.com, richard.purdie@linuxfoundation.org,
 martin.jansa@gmail.com
References: <5a37c855-943a-7ae2-b481-e030ebb69de8@gmail.com>
 <10280.1623316977582274550@lists.yoctoproject.org>
 <829bf26e-b882-d479-aa0c-f22998071fa7@windriver.com>
 <a760fbd1-f76c-598f-a802-f4e6207f9720@gmail.com>
 <43af6b3b-a2c5-b937-93a4-fec8ab2e1fcd@gmail.com>
 <26729316-8d42-3ec9-d6b5-f77002a85c74@windriver.com>
 <89e0c314-86ca-6fb4-642c-7493116b467f@gmail.com>
 <CANNYZj80qvYk5=OXDhGr78=pmzsBdxD1EbHDNrfKDf9_gUQyPA@mail.gmail.com>
 <3ffc9740-b8a5-358b-8e56-4103d4d0f0cb@gmail.com>
 <e36d4afd-235a-a2f2-7272-9d9b49c02698@theobroma-systems.com>
 <41754798-a1f2-05a7-93d8-799907ed988b@gmail.com>
 <BN7PR14MB2420DC3CA660334614825E4A85F49@BN7PR14MB2420.namprd14.prod.outlook.com>
 <f34730a2-c775-8e9c-dd36-9282e9cff08d@gmail.com>
 <1736D5DCC66BC3DE.4716@lists.yoctoproject.org>
 <CANNYZj_8C0sZA07y86ErjC8kL02oTPFahEV8Tsq9yfVWmxz-HA@mail.gmail.com>
 <39f7bf75-2df1-696b-f374-b0ce70e9092c@gmail.com>
 <CANNYZj-MhN3ruV4KtXKtD+qRkn82i4rtcuK=rMjOWkLn96Rjyg@mail.gmail.com>
From: Ferry Toth <fntoth@gmail.com>
In-Reply-To: <CANNYZj-MhN3ruV4KtXKtD+qRkn82i4rtcuK=rMjOWkLn96Rjyg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 08 Jan 2023 22:13:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58936

Hi,

Just in case you are interested in the result.

Op 03-01-2023 om 18:33 schreef Alexander Kanavin:
> On Tue, 3 Jan 2023 at 16:58, Ferry Toth <fntoth@gmail.com> wrote:
>
>> I know you don't want to spend time on this. So don't. Others may have
>> an interest or a tip to improve Yocto in this area.
>>
>> I'm just trying to get an old patch from Richard Purdie to work
>> (http://git.yoctoproject.org/cgit.cgi/poky-contrib/commit/?h=rpurdie/wipqueue4&id=d66a327fb6189db5de8bc489859235dcba306237)
>> with later fixes by Trevor Gamblin.

I got Richards patch "Add shared make jobserver support 
<https://github.com/htot/poky/commit/28fd4b9e6e60bdd07352827ec713510ae86a39c6>" 
working again. It was a bit more work then last time, it was broken in 3 
places (poky, make and python). Find it here: 
https://github.com/htot/poky/commits/kirkstone

It works by making each make believe it is a submake, while the named 
pipe holding the execution tokens is created by bitbake.

Of course as is it only limits number of threads started by make, not 
ninja. On my machine (16 threads) while compiling (linux, nodejs, 
nodejs-native etc.) simultaneously this limits memory consumption to 
~14GB RAM. A little less then 1GB/thread.

Linking nodejs is another story. Each thread uses 4-5GB, and the recipe 
allows 5 threads simultaneously. With a nodejs_%.bbappend:

EXTRA_OEMAKE:prepend = "\
LINK='flock /tmp ${CXX}' \
"
only one thread will be linked simultaneously.

This brought my image build time from 3h > 1u47m (that is after removing 
out and sstate, not bbcache so excluding download time for sources).

>> Or alternatively something based on https://github.com/olsner/jobclient.

In principle we could use jobclient to start other programs then make, 
but for meta-intel-edison I didn't see any that would benefit from this.

It would be nice if ninja could use the same named pipe for the 
execution tokens as make, that might be for another holiday.

> By all means please do. Everyone will benefit from teaching make to
> abstain from starting new processes if RAM is tight, even people with
> xeon/epyc grade hardware. It's not that I don't want to spend time on
> this, it's simply that I do not have the time.

Ah, yes, that is a known problem. Like I said, this was for me just a 
little holiday project.

Now it works I'm not sure what to do. Richard marked the original patch 
as WIP. Maybe it's not appropriate for including into poky? If so I 
wouldn't mind carrying it in meta-intel-edison.

Or may be with a little work (from me) and a run on the CI servers we 
could make it go in?

> Alex

