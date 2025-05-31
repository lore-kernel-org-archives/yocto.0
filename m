Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54D0BC5AE59
	for <webhook@archiver.kernel.org>; Sat, 31 May 2025 06:19:33 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.web11.850.1748672366615304347
 for <yocto@lists.yoctoproject.org>;
 Fri, 30 May 2025 23:19:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=iz9TVGFZ;
 spf=pass (domain: gmail.com, ip: 209.85.221.53, mailfrom: skandigraun@gmail.com)
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-3a37ed01aa0so2228433f8f.2
        for <yocto@lists.yoctoproject.org>; Fri, 30 May 2025 23:19:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748672365; x=1749277165; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=px78NkUl4S3xn/4/R9xTmWeDUeDQDyeM2VrJt5pZynU=;
        b=iz9TVGFZLb6VhCraK/TnlHidNpY0ioSawY3rf4eXofDSQSGtbdTvWqF3xhkxvXjhCt
         qHX8DFexIg+ZCK5J/6TDsF67aM7K7+KQpS9V08q0krE+teDZJtxCe/5Zsp3gEp/cVMvK
         9HpN1kUqET8FRHZH1pOjuwUzlq9rKY4rrjE+wyaDhPX5SlYcuff17bu/pC7H5THHE2YY
         1Z08qxL0sx6UcR8vNnNlhocf+Y2G+h/odZ7xMwAscFC4FoSRQqZY0iQARCrGxjdBKyby
         rUe9tLPlCTgHWRFtVkAK2AcQRtFh8CvM0SOwYU6Ca3FGX801COdpUq3+bSXiYziHDHxk
         5QLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748672365; x=1749277165;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=px78NkUl4S3xn/4/R9xTmWeDUeDQDyeM2VrJt5pZynU=;
        b=HQz3Ovl/ocoICnDsbQ/+SNe2nLuV6c/EPGSJKk+3T34kRATYTrbIsMTTd7s4GZUgx5
         Khih91Nw5/EstBUTHBUeRweGPugDyNNP+rRI26UjFUwEaL9hm5ivgtGXC4GZ47R6cG/u
         qeVOTFDCPzI+cXNHuSojKkAkocLYY6KRVVwwtzEm1rXk9LYIVA+x+wZn4RnOtsrfm0ME
         6+4TvE5SpAe5aM6smHpMYXmhWIbIMbkyGU9Bm2P9JrgD6UmPiKG6vKfgVdi4bFh2p1Jj
         UMOErcxotqmRdrqHC1KGZM+w83k5ZUIfSGRATanI7uJT00HoZmvHcsPfu66Iu7kNeKV6
         KlCw==
X-Gm-Message-State: AOJu0Yx7j8uYeGDNBP195QTmDM0jcpVS0/QpTtY3zU9owf3PA70Bq5so
	hMvGAZQ8kOOJdTaRwgbiTPEfIHMsBHeNpnE6fM38YvvqxsDOwXxHNqX+jvH9LA==
X-Gm-Gg: ASbGncuNzvadi6RhoB/1zw8zJmxNAkfGGTZYJ3rpi0qOXQGeyO97FiARZyKzbzHyYvt
	SIfBTFWWlKE4Euy2gE2/EUkxNTIfALb81jrJT9uoKCOso691ld3CFkLBE9JawWjokSVQRr+ssGe
	8q8EWZh9saMImrG51e2kN2OrmB/OBR3GZXF3Le6rpz+tFDl9Cj3iyMsgCKHsdd38IZlE0R41PJ5
	vqDHBs3jEbpeDUS5Ts9IXbWcxDD53sA8nzPtQZQAr98YByvofpbKw5Bj52tgKPwa7EeZxfSyqOF
	pUHPukpz1Ogelw9SnJKT2N7efNnHl86kCPCuEPhSAb7oZ1OaJJWGC52RwppU7TCkSleElqAxAco
	c05b4
X-Google-Smtp-Source: AGHT+IHD+tCbCwfvA/5NFAwPY1vDBfmXcnK05hAiDxn7gOYO6MqhBQduDafDvib1ld9Xm0Av+2YSNg==
X-Received: by 2002:a5d:64ed:0:b0:3a4:f51c:21a9 with SMTP id ffacd0b85a97d-3a4f7ab12a5mr4658400f8f.52.1748672364745;
        Fri, 30 May 2025 23:19:24 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a4efe5b83dsm6920483f8f.1.2025.05.30.23.19.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 May 2025 23:19:23 -0700 (PDT)
Message-ID: <a8e39677-48d7-4fff-a06b-feddebbf11e2@gmail.com>
Date: Sat, 31 May 2025 08:19:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] inherit can't find classes in folder different than
 classes #kirkstone #scarthgap #bitbake #yocto
To: yocto@lists.yoctoproject.org, juan.aguirre@omron.com
References: <UCYs.1748644398329953454.D1Lf@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <UCYs.1748644398329953454.D1Lf@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 31 May 2025 06:19:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65440


On 5/31/25 00:33, Juan Aguirre via lists.yoctoproject.org wrote:
> Hi, I'm working on an update from Kirkstone to Scargtgap, and I'm
> finding a problem with one of my recipes
>
> I'm trying to inherit logging, but I got the following error message
>
> ERROR: ParseError at
> /mnt/data/build/../recipes-connectivity/knock/knock_0.8.bb:15: Could
> not inherit file classes/logging.bbclass
>

It shouldn't be needed to inherit the logging class in the recipes. It
is implicitly inherited by base.bbclass, which is, in turn, implicitly
inherited by all recipes. It should be possible to simply remove the
"inherit logging" line, and it should work still (with the logging
functions still available)

> Checking the difference between Kirkstone and scargtgap, I found that
> logging.bbclass was moved to classes-global/, but bitbake can't find
> it. I try to add the path to BBPATH, but even that, logging.bbclass
> can't be found.
>  
> In advance, thanks for the help.
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65439): https://lists.yoctoproject.org/g/yocto/message/65439
> Mute This Topic: https://lists.yoctoproject.org/mt/113387992/6084445
> Mute #kirkstone:https://lists.yoctoproject.org/g/yocto/mutehashtag/kirkstone
> Mute #scarthgap:https://lists.yoctoproject.org/g/yocto/mutehashtag/scarthgap
> Mute #bitbake:https://lists.yoctoproject.org/g/yocto/mutehashtag/bitbake
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [skandigraun@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


