Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B84ACC36002
	for <webhook@archiver.kernel.org>; Wed,  9 Apr 2025 17:20:34 +0000 (UTC)
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
 by mx.groups.io with SMTP id smtpd.web11.14566.1744219233493535125
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Apr 2025 10:20:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ZqPLuqGD;
 spf=pass (domain: gmail.com, ip: 209.85.208.46, mailfrom: skandigraun@gmail.com)
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-5e5b6f3025dso10007741a12.1
        for <yocto@lists.yoctoproject.org>; Wed, 09 Apr 2025 10:20:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744219232; x=1744824032; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=05WlRzVGem9t603ScP60pyG64LO9v6AUTByimjhZ0Ps=;
        b=ZqPLuqGD5/ASGPlNAMIUktbWYzEjq9wIxYLirwmI+IKCTlXlGzeYeYOXRL/9o5liWV
         7dp5fI6Dz3XFLUGB6OAmKIwh8H1NxrTSK5wZbNOgFOQsbR86qT0ucfxZY9G/We3W2i5F
         9xiTE2UhwQCeCbYqxrLtTX5h4Tgle5j1a4cmOh3bmD63uc4iXxcCoxKQQCLMiCSgr4oU
         SuOCOUGPzrTVjXUtcPuYW5XSkEpZDkm/gm9/vLEI+gNrmUfzyrZ4CyLh0ipMO1R+lx3t
         P/emfZ19iEhuqg02AUwFWAX17pXKHxLS1e7Z9wQDVGlTeV7cvQzn8vJfL8NHN9/AdKav
         gDZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744219232; x=1744824032;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=05WlRzVGem9t603ScP60pyG64LO9v6AUTByimjhZ0Ps=;
        b=dz9QrMsvDiJ6sK4jRLsL0isLDbfqX2QWUy3IWgchxqH0sUtNpEZsQvyt0O7EMAWBAg
         hxv8lRMfVYiVh6R0ZLTrZJARg3KrTCWNBQpTpMhc3t+ieyQPvRxaZzEqI/uxa9YVLpTt
         Xc/Wfpe2Pwj6t7/XH+OYE9hLgfKyVXB69q2DFJq/OcSrhQx9D3ia1DrnbogWOGboPDkW
         Qb08cCCI9eMJNW5tMijiy8aOgEyvsjdVpVHMX5DljHNUd0WfUh04thyJfPBP8LGtXHx8
         jXU/QXA0UGqwrp8sA6jk/Q9fItDOhk78gLrZZBn3pD3g9bSrxfubbBbHYkfk0p0WoYEw
         WM/A==
X-Forwarded-Encrypted: i=1; AJvYcCWst1v7woGu52fMS5J6/FwWrB6JBIssHk86Koq32Plz2ua1V7OCV4XplR9d0bQxyPnT+Cztkw==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yw/VZb8RW1obD/QlPtIkUyj+GK9DYW4obxC4XhShnYrQyvhBD1X
	1KN7WUPftp9bwb4WS9DCd9iOUJr7jTtDHGvSGXqcoRz8iVFFH8z8
X-Gm-Gg: ASbGncuHwXRSmEacnhJqzOlyvoOrfL8WKDFfCYcEzAvKTE7zOGibZ5YVFifvBSPmxnI
	F0jEmsd3Q+stoxkNiljhRCHZ6wldtNRruYRaKYPQ6wR6C3YY+4BxXCQU8ajYiaQnORZBW/34kB3
	nkPDU6NAwNEIqSS+QEEuXyoVjQL+0RDzF1RJq+u59UZfLCyl12WU+2bYQmmzxE7oAVkfyIicCGY
	VdTn1gCBTsahbknZ3Gm3dli9YwaDscf+02OH+9cURg7crRGTtYPSkeMK0S9bbyY9Tu0NhKCCCBQ
	CqgvxxHQrQTY/ZIiKPH4zvSePdiuwNHgbqbjre2qoqtWimL1HH2x0BX4C8A=
X-Google-Smtp-Source: AGHT+IEY/ijePqUxyGua9ADVk8JVRvRGnqrrzz5TxzGQvY9OXDv3cnqufNRWnXrCSzt6Z8gTbLZ8dw==
X-Received: by 2002:a05:6402:5109:b0:5ec:8ef1:35c4 with SMTP id 4fb4d7f45d1cf-5f2f76cbc65mr3272912a12.13.1744219231296;
        Wed, 09 Apr 2025 10:20:31 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f2fbc0673dsm1073008a12.19.2025.04.09.10.20.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Apr 2025 10:20:30 -0700 (PDT)
Message-ID: <5c2e8a3c-a94e-4e0b-922f-1836da6a64d9@gmail.com>
Date: Wed, 9 Apr 2025 19:20:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] A new member
To: nguyenthaithuanalg@gmail.com, yocto@lists.yoctoproject.org
References: <7318f03d-649d-41d7-92d9-1e6596bb62b9@gmail.com>
 <31851.1744218404266886487@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <31851.1744218404266886487@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Apr 2025 17:20:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65134

On 4/9/25 19:06, Thuận Nguyễn-Thái via Lists.Yoctoproject.Org wrote:
> Hi Gyorgy,
> I don't see "recipetool, bitbake-layers", please tell me how to find
> it out?

Both "recipetool" and "bitbake-layers" are Python scripts, part of the
base Yocto that you have already cloned.

You just need to run "source oe-init-build-env" (just like most probably
you did before generating your first image).

After that these commands will be added to your $PATH, and you can just
type "recipetool" or "bitbake-layers" into your terminal directly to use
them.

> Thank you so much.
> Thuan Nguyen Thai

