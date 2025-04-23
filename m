Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60EC8C369D5
	for <webhook@archiver.kernel.org>; Wed, 23 Apr 2025 19:07:07 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
 by mx.groups.io with SMTP id smtpd.web11.3081.1745435218715197593
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Apr 2025 12:06:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=H45EqFQ0;
 spf=pass (domain: gmail.com, ip: 209.85.128.42, mailfrom: skandigraun@gmail.com)
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-43edecbfb94so1748675e9.1
        for <yocto@lists.yoctoproject.org>; Wed, 23 Apr 2025 12:06:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745435217; x=1746040017; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=LonnAJ4VcxL+j591WNgcA7fiMJ4T6a3J0hs/MyHITJQ=;
        b=H45EqFQ0zROHpo4nBUx1sJk4Im7p+kEb7Q7fm+F1lf3XiC8Cmwai0IpUprDAoVRFBI
         d6AhxU4OsnkmofObAyVfddQTRXeiz40VR7rmePqL1XHElnRlVcOI3qLqljq8FzGkFF95
         ka6zPHH/Q8Z4JXaz3tSiLMKig3+BeEzjiWEc4sMEJzbUNd7FlzgFiMECGamuQCoFKwVz
         saOgXRK1sKU8V59x0rLoDZ6At0aHgvyhnV8dPP0h+Kte0wFe3OFsJKFF1mBfbtZql/db
         KoKWljNfpQx3DVftLhh6v0RthtnUnqsYK4llzsIlHZqy582ihUufAtEjoOiSElvLsFGq
         m2oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745435217; x=1746040017;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LonnAJ4VcxL+j591WNgcA7fiMJ4T6a3J0hs/MyHITJQ=;
        b=OEsLVRZwSIUJOVE5fLZNonGy1qWSHDMrR1fgZWvwLjKQ/VaOQEwlx+FHpsOuHGKrFf
         tJRe5ggS3TCiDy9rYiSuIQrivazJayxzxpQywSFCfTNDJAfTNOpAak+SaE7OjD5RWkmY
         UWC2ZLAafxhTFTk4UU67R37eoO1B26gS9CtgDDE9hnxlNwAngafIFOhifpq5qAR7DC6A
         7q5q0kvJzfkQXZ8pQ6mzcbMXetzphMRaLGtN0GubbAMIka23dOHLaOe44BQD0+RvL5C2
         +YtYiolDkdzpQ4CLU7ZSrdmDNdOyv93ip3XzFVy3hCW3igjEAQg+7HnwNVge3HrZXafk
         98+A==
X-Gm-Message-State: AOJu0YyUC9pHJDRZqXhg6QfuizXci1Gznjb6Gamb2IJl+RZuTDfS2qE9
	oSwmuW4+vU/+a+PkGTEhfBZT+v6y8DQ2OX43XdCr63eftJxEIosdWYGbqA==
X-Gm-Gg: ASbGncvUbawnIA3uSnK/Dd16k7WN6K/ASciMzW78m6G+eTcEjfq+5jHGWDY9OnlmA5q
	9bjGiAw1j0TU366mY9SZN7QTwU8EYSeEvCSX9rruXC5AMoG7oYwP1gi30a0IGN1DdJCgqJzH+6k
	pxRF3eBWtPjRYTbATQcgc9zAkfHAF4YaAqo7Dz9szLvt23oF0SQk4I5XL3DVg4/LC2zXS1/vZYY
	TWiRd2HB38+ME06S2Rccs0XVCiDDQWvx8MMz5LrQ/hkufJU++lBFMtaPjCYwkgIHaOH6CG05t6J
	qOdbxzgAQmNX38jvXN+cyqbPMDU8w71FscTP6v25Vy4XEXiE
X-Google-Smtp-Source: AGHT+IFHrHw4UK3Byy/ZkW48MoJaGHyZev8vNwEmWQaZY0dWSF9If/kkj9NwBYVZ8QVx9i4/qkpeXQ==
X-Received: by 2002:a05:600c:3b0d:b0:43c:e70d:450c with SMTP id 5b1f17b1804b1-440988518c3mr12903185e9.22.1745435216667;
        Wed, 23 Apr 2025 12:06:56 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-44092d2accfsm35007425e9.21.2025.04.23.12.06.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Apr 2025 12:06:56 -0700 (PDT)
Message-ID: <08dd1e20-5f28-4a3b-9237-1e1e17fc2363@gmail.com>
Date: Wed, 23 Apr 2025 21:06:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] CVE checker not choosing the correct base score
To: yocto@lists.yoctoproject.org, lordtacolord@gmail.com
References: <dRZb.1745351608863335299.EW0v@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <dRZb.1745351608863335299.EW0v@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 23 Apr 2025 19:07:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65237

On 4/22/25 21:53, lordtacolord via lists.yoctoproject.org wrote:
> Need to confirm if this is expected.
>  
> For the CVE: CVE-2025-0840, for CVSS 3.1, NVD has it listed as a base
> score of 7.5. But using the Yocto CVE checker, it does not pick up the
> score 7.5. For scorev2, it picks up 5.1 and scorev3 has 5.0 from CNA:
> VulDB instead of the higher score of 7.5 provided by NVD. Is this is a
> bug?

Are you using the nvd2 source? If yes, I'm not sure if I would call it a
bug, it's hard to say which score is better than the other... maybe
there is an opportunity for improvement? Looking at the code and its
history[1], I can't find efforts for preferring a value over another, if
there are multiple sources for a score: the code tries to parse only the
first returned value, before skipping the rest.
It also looks like that NIST returns these values in a kind of random
order for each CVE - or at least the ordering doesn't happen by the
score nor by other attributes that I can easily spot.
This seems to be the case with this CVE also, looking at the order of
data returned by the api[2].

[1]:
https://git.openembedded.org/openembedded-core/tree/meta/recipes-core/meta/cve-update-nvd2-native.bb?h=master-next#n336
[2]: https://services.nvd.nist.gov/rest/json/cves/2.0?cveId=CVE-2025-0840

