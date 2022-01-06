Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 613DBC433F5
	for <webhook@archiver.kernel.org>; Thu,  6 Jan 2022 13:50:52 +0000 (UTC)
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com
 [209.85.222.170])
 by mx.groups.io with SMTP id smtpd.web08.8679.1641477051072397562
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Jan 2022 05:50:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=YuxtA3xa;
 spf=pass (domain: gmail.com, ip: 209.85.222.170,
 mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f170.google.com with SMTP id t66so2667891qkb.4
        for <yocto@lists.yoctoproject.org>;
 Thu, 06 Jan 2022 05:50:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=e8OiiVsaLN5tkdWY86CxvunaLluLCxkKvWK2fc2Z2tM=;
        b=YuxtA3xa5vkjhSuq2rKMeVqHZ6Q4ln8zfmQoBmgrvg1eeZcrqrOhZmAcZWTISvhK0B
         jNdg7NFwcSvM6kJbYdNXdo5uev/AOF1aovDJ5FjP7EVnOqJpDMiLa7+o0bc5+7NW4989
         h5zPbKENC8iXI6XnnF3k2oFD6jn+tFLqCElwUaEvd96fPYnAc5oiqi+4SnorcAFKvsrA
         beqObHRhrj0IS46gRjwzCouR+mveSmZh3vklRoURSS7SbmCnDbNxpSI4mriK9UrqpJ67
         KedN5zsLHdfJsRzEE9XLX7f/pFinLiBTebri+MDs2LIu9prUoTFYkqrL7K6u7tl9Jg5U
         6Ytw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=e8OiiVsaLN5tkdWY86CxvunaLluLCxkKvWK2fc2Z2tM=;
        b=w/4AOlrv+u2XTDdG7TExT9k1rIdnuv563kc6RPpC9oSOq6qhmylXL9Fi0MlVg+pUGz
         3fCyB6Wso31scOjnrEV8WGg43Z6h6nv5t1+rDfwN2u8V52HYu+VowDV3wRfGwQ3SVgJ9
         EShzNWF9xD9UoCXdMFDdijC9mo1LpHnIe0LKfn+eS+EY/U3HZAyLnnnrBDjjtCZoasDx
         c8AccMmxT24dM4GNY+uz9IrPOkrlYWRNsIU5JUKBMVYKULdk3PJfktNPwUp4qpTWBPM6
         6+/QoLB9dESmgO0nFEoZSSd3YKIdazz1bFNgtkuT9IbC75tYuPfNSPSvBwMSnOuVdS8q
         ejPA==
X-Gm-Message-State: AOAM5332bqbRmfGHPeMjDUX5sPt7pU9bvcWYc4s8OD09j4XmNN1eEOo+
	re/R1BA5rOHG/CKzuT8ykCk=
X-Google-Smtp-Source: 
 ABdhPJyt8sPB5SrSnB8OOtp0t6RHSr38YOCFiwube1C9hKnQQ3aFU22PpzqjLNiiTB9Q2cOGReJVSg==
X-Received: by 2002:a37:6706:: with SMTP id b6mr41160315qkc.16.1641477050201;
        Thu, 06 Jan 2022 05:50:50 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id
 d20sm1487273qtg.73.2022.01.06.05.50.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Jan 2022 05:50:49 -0800 (PST)
Date: Thu, 6 Jan 2022 08:50:47 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Quentin Schulz <foss@0leil.net>
Cc: yocto@lists.yoctoproject.org, kas-devel <kas-devel@googlegroups.com>
Subject: Re: [yocto] pseudo error building master with kas-container
Message-ID: <20220106135047.GA15963@localhost>
References: <20220104192528.GA25696@localhost>
 <5A44F13B-F383-449C-8FB9-87BEBEF1272D@0leil.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <5A44F13B-F383-449C-8FB9-87BEBEF1272D@0leil.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 06 Jan 2022 13:50:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55748

Hey Quentin,

On Wed 2022-01-05 @ 12:08:15 AM, Quentin Schulz wrote:
> I've had similar issues recently with kas-container and podman. What was
> required were two things:
>  - passing --tmpfs /tmp to podman run,

I don't think --tmpfs is an option, but I modified my kas-container script to
add a "--tmpdir /tmp" option (and verified it with ps while running)

>  - increase pids_limit in container.conf (your system's), we've set it to
>  1000000 abritrarily for now and it seems to run fine for the few builds
>  we've made so far),

There seem to be a couple places to update the uid/gid mappings. Originally,
following the podman docs, I created /etc/subuid and /etc/subgid and had them
both contain:

	trevor:100000:123456

I wasn't seeing any problems with the couple builds that I did, but based
on your suggestion I had a look at /etc/containers/storage.conf and added
(uncommented):

	remap-uids = "0:1668442479:1000000"
	remap-gids = "0:1668442479:1000000"

I also bumped /etc/sub{gu}id to:

	trevor:100000:1000000

but I'm still seeing pseudo failures even after incorporating both of your
suggestions.

I expanded my testing and discovered that using kas-container with podman on
my openSUSE 15.3 machine I can't build qemux86 for anything including and past
dunfell. All failures are due to pseudo.

qemux86 builds using kas-container with podman on openSUSE 15.3:
	working:
	- thud (2.6)
	- warrior (2.7)
	- zeus (3.0)

	not working:
	- dunfell (3.1)
	- gatesgarth (3.2)
	- hardknott (3.3)
	- honister (3.4)
	- master

I did a kas-container build on my Ubuntu 18.04 machine using docker of qemux86
on master and it worked.

I suspect something changed with pseudo in 3.1 and beyond that either isn't
working well with openSUSE 15.3 or isn't working well with podman.

Next I'll try using docker instead of podman.

