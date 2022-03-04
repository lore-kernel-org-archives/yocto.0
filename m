Return-Path: <JPEWhacker@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 05037C433EF
	for <webhook@archiver.kernel.org>; Fri,  4 Mar 2022 14:26:45 +0000 (UTC)
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com
 [209.85.210.51])
 by mx.groups.io with SMTP id smtpd.web11.7517.1646404003827019424
 for <yocto@lists.yoctoproject.org>;
 Fri, 04 Mar 2022 06:26:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Wy+qM0vL;
 spf=pass (domain: gmail.com, ip: 209.85.210.51,
 mailfrom: jpewhacker@gmail.com)
Received: by mail-ot1-f51.google.com with SMTP id
 40-20020a9d032b000000b005b02923e2e6so7582360otv.1
        for <yocto@lists.yoctoproject.org>;
 Fri, 04 Mar 2022 06:26:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:in-reply-to
         :content-transfer-encoding;
        bh=/6SpDiMXOQw6nNObeQIBqTcx7Le21ygpsV73TSWIKc0=;
        b=Wy+qM0vL3HOD1Q6KxRIhbeS1UFTvURR8cFaiWm4Z53UJFmlbBrp9/c2a/dd8B+XXi7
         HnTv2/FwgVKA6X0ZWnpnzpS3e/ETWT4v6cOCgRapi7r4fKhottBitez2m9van3Ot8mum
         rwP1zY/OGs14rSndTI65xg2mKzK0SNbjFctl60ppyfHOXi/MYnH8tD1Cs0R4LHBW3O0I
         8tFGXGK+NDFbKmh0Ce08Fqb3M/NsOsV8q0HoPX/obpmPbsIKZwqKijh2N2PoU75XQ1FM
         CQneY4mKyh+zM0Db00t03tBvlFdGYr53HnzA00cHYpvq8dvuQefwNSraHluCKAMTrwUN
         gTgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:message-id:date:mime-version:user-agent
         :subject:content-language:to:references:in-reply-to
         :content-transfer-encoding;
        bh=/6SpDiMXOQw6nNObeQIBqTcx7Le21ygpsV73TSWIKc0=;
        b=B2PO3/8hpwNsc09M8m62FK9KFP9IJGmUZLsqaFpAwmWFDB59DAV93Xn9qM6khby+uY
         PfGoeLB0JrQ7CjUlSy0ojQ8nVlHSHlZNnXLGGr52iZ27C1kb9wyqGkhzptqad7f+o9Wk
         Msi8FD0tHK5xcX9DKGCbGDZU559DJSL8eOJVZvOoBNkngtss8npb14Ik7KHgTsY374d/
         PgUYZAo2C+4U/YhkN4OsbKYD7fJYxtkKzAXTBH2kNCkyIRYy7dqJirzzRma6fmJsJBqi
         7tCSphP/mVb8zGZi9oAN/VaKe5fqUY9yVzpGsyNkxEaVIxK9qXo1li+OvkDEQD1VZNiB
         2ZlQ==
X-Gm-Message-State: AOAM533FZGhDuOtQ+jAgGIEfW4TpEYyEom6zI9QxyjvCv7iEJ/+4aOdx
	tYb8yLTLki25rj6mx/r3TVl/Sst2OnQ=
X-Google-Smtp-Source: 
 ABdhPJzmJF3v69Pti3ZbiND5v66kZ8eTNk2pL3XaBV2ul8EkjJJ/EEOtZKRWmBk6DOxGkARU036SCg==
X-Received: by 2002:a05:6830:118e:b0:5af:a7b:a03f with SMTP id
 u14-20020a056830118e00b005af0a7ba03fmr22269805otq.123.1646404003005;
        Fri, 04 Mar 2022 06:26:43 -0800 (PST)
Received: from ?IPV6:2605:a601:ac3d:c100:e3e8:d9:3a56:e27d?
 ([2605:a601:ac3d:c100:e3e8:d9:3a56:e27d])
        by smtp.gmail.com with ESMTPSA id
 l26-20020a05683004ba00b005af665739e0sm2301242otd.30.2022.03.04.06.26.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Mar 2022 06:26:42 -0800 (PST)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Message-ID: <bc9686d5-370b-67e5-e15b-2bb9ce093827@gmail.com>
Date: Fri, 4 Mar 2022 08:26:41 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [yocto] Honister on Ubuntu 14.04
Content-Language: en-US
To: Daniel Ammann <daniel.ammann@bytesatwork.ch>, yocto@lists.yoctoproject.org
References: <e1372f3c-6576-3ad3-1c21-f1aa872fc84f@bytesatwork.ch>
In-Reply-To: <e1372f3c-6576-3ad3-1c21-f1aa872fc84f@bytesatwork.ch>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 04 Mar 2022 14:26:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56367


On 3/3/22 12:06, Daniel Ammann wrote:
> Hi,
>
> I'm trying to build honister on Ubuntu 14.04. This is meant as a 
> temporary
> solution until the build server can be upgraded to something recent.
> For now, I got it running with extended buildtools from poky, but the 
> build of
> libnsl2-native fails. It appears that the pkgconfig step is not executed
> properly since do_compile fails with a header not found error.
>
> Has anybody done a successful build of honister on Ubuntu 14.04? Is it 
> even
> possible?

You might be better off trying to use a container to build, but with a 
host that old, even that might be hard. There are several container 
solutions for the project, including:

* crops - https://github.com/crops/poky-container

* pyrex - https://github.com/garmin/pyrex

* kas - https://github.com/siemens/kas

>
> Kind regards
>
> Daniel
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56358): https://lists.yoctoproject.org/g/yocto/message/56358
> Mute This Topic: https://lists.yoctoproject.org/mt/89531212/3616693
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [JPEWhacker@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

