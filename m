Return-Path: <rudolf.streif@ibeeto.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2363C77B7C
	for <webhook@archiver.kernel.org>; Tue, 24 Jun 2025 17:06:11 +0000 (UTC)
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
 by mx.groups.io with SMTP id smtpd.web11.1193.1750784761746979768
 for <yocto@lists.yoctoproject.org>;
 Tue, 24 Jun 2025 10:06:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibeeto-com.20230601.gappssmtp.com header.s=20230601 header.b=O13gXDVY;
 spf=pass (domain: ibeeto.com, ip: 209.85.215.181, mailfrom: rudolf.streif@ibeeto.com)
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-b34a6d0c9a3so1056647a12.3
        for <yocto@lists.yoctoproject.org>; Tue, 24 Jun 2025 10:06:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20230601.gappssmtp.com; s=20230601; t=1750784760; x=1751389560; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:autocrypt:subject:from:to
         :content-language:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w4S3ADPQdih+5nN8vUWdjvOK7U3DyDJ84MhOePNP6Fo=;
        b=O13gXDVYroIzonmHOZqPa85WmgbjcMp/qQYMa1sGqa+BZnAHiyC4yoOIvvfucKsKrK
         6CHmLvCkmZhvfpKI4l1uNHCIdhdcOh2BWU9Tz3/BSstDpwUgADq003ckc+d87TZEG0ib
         xE7yzHwHL8yP4yNU7HUHau8+N/7RSWr/14slO/o/6p7LRlOxnPNd69jHcRi/XGlS9jax
         ca/Mv+ge8NBpzjCsmrnwFpE+SwG0Do6dln9q0Z7HopVtCe0bWtOhEnFcejWh9KocG1DZ
         LZX8khh5rM43OgsNQdBGy8crdHaTFxc3bQAU0DBMFgj7EHzM4HMPpuvVLJ/vtbyKN0uY
         yB7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750784760; x=1751389560;
        h=content-transfer-encoding:autocrypt:subject:from:to
         :content-language:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=w4S3ADPQdih+5nN8vUWdjvOK7U3DyDJ84MhOePNP6Fo=;
        b=b0s61Myo4xYpPYi/surR9bICguQBZuSwCJGRkSnmJ3Cq8lQEXbfP8uTqMzniKIEZgg
         0hAO/u4YyspSatJtP6iuKWGNiKihpcx7pinuq+iVVqMmErYtMuMPr0iFTWUC6Tl4XLeN
         CLVbCfNk5JUdynnP+PEIDSmjF2sViVhVv4D7ILuOD6vJuLzm1KW4jNm68ItNoSvbUw0s
         l42xRHY/FGkEJEHx3WQsCSJYtZHz4UM6CHdHITGe0xKcaIq6tMnC1O9jOPdLCnsCSmPr
         sOtP6zw05BlGAWiBqHMmsHLLAD49fhXVscMT++xhZZ03NQQqNBi8x1ts85fkPkD89PrJ
         7r/w==
X-Gm-Message-State: AOJu0YwdJhjxhWSG3qZ4nVmTvHzTxdHYf1guDSIFaE1QyseJVexmJ18M
	QVkQQjldIQHEwtGZwleBChO9G2GN+osZCSTazEsshSlPVQA9dI37xLqFYkMYfcbpLgX94F8EGzi
	R3I9w0rrIeA==
X-Gm-Gg: ASbGncvZhoF5cMleeWkmjCwuFrxcgnKsCgqj/wBmTJnhbbRwSKLRsXORXfCpaT2N4H5
	qPzttQ8wba9s6wMFBuEiPBJ7sJsiTp8m/n/OViuNoSfWpCCe85667ksT1BxKKkMDFbG//rc4phm
	fziOrr4KdhuQ1lhddOeoWnbh7munbXwj6BqgAiwrKb+lqVPKopDSw5z6N6ceB7kVrCkhmV999at
	94S7yFMUKhIhJRrslsDs14k+4tRwtjUv7lTUGOj5B47kn7qCX9rQ6lVgAWeFZVpu3JQ7n2wFQ5e
	8ZmLRCn7ZW+MjWVJqAwXTXDcZe7EJfx7N1a1Bn3ug04TJEYncxJtrRBfyQkk7cllmbt5CdKkRtt
	IXlY9IErB9TZmvDxE6eKZYEAJL0jacQ==
X-Google-Smtp-Source: AGHT+IHl2f3QtlPj4uXJKiPXmvvMJzpl5lfjHSEvhE5fcVf6IGxLEkX6Yk5xZyTmJD/DekcJG7/ayQ==
X-Received: by 2002:a05:6300:8e04:b0:220:2742:1c41 with SMTP id adf61e73a8af0-22027421cd6mr18138216637.16.1750784760439;
        Tue, 24 Jun 2025 10:06:00 -0700 (PDT)
Received: from [192.168.4.197] (ip98-176-147-244.sd.sd.cox.net. [98.176.147.244])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b31f119ac5bsm10775084a12.20.2025.06.24.10.05.59
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Jun 2025 10:06:00 -0700 (PDT)
Message-ID: <7002abdd-c152-47f0-a5cd-f06fa20d4fea@ibeeto.com>
Date: Tue, 24 Jun 2025 10:05:45 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
Subject: Scarthgap native build errors
Autocrypt: addr=rudolf.streif@ibeeto.com; keydata=
 xsBNBFhQFAQBCACa5/X8dcYC25ELsL2exFTaf9QV24fFIn64+rXFqDNKuk7xed5kafscejvD
 Qpe+Co1EPSU4ybklzYlvbMvzxKfwLDADKh+HsqmUYrd/l43hbqrPLxfDUhg87WVEhjm0qyYQ
 /Qymy+7Cbh+pVNNlHULUQttkXPl3D+UOMz9se0Ook/HngDIOCyQF4rTyPnGNvd8NJmAng969
 cQD/S9LNndnK5GGrmDDOuMYwoG4qDqWvWEChncgqHfmWK/Z1AvYKdYWe9uh1N4Qb/P5AZxTM
 3sPiHrF+Y2HTdK7j7lWgtu8YzluBHdvzhC+4jUnAKjh8P/N/H6JlE3UC3dwHPOaRsnXBABEB
 AAHNKlJ1ZG9sZiBKIFN0cmVpZiA8cnVkb2xmLnN0cmVpZkBpYmVldG8uY29tPsLAdwQTAQgA
 IQUCWFAUBAIbAwULCQgHAgYVCAkKCwIEFgIDAQIeAQIXgAAKCRCNjKgpJzObdabzB/4lFMf0
 3GsVMG6C5QOLaPx6rOgj5qexCH3rfYeI3xkbGuR0a+YByzvSiCc6Ukh7YNn4UwRs6cY0fYBk
 txioE384/51QTIfCmW8ZG5X0cMC5d38LFvd/dj3KBA74HW4GoLt0cIyzy38CCOFmClTNE8xl
 lpeOfKQD3wn99w5dzXYhvajXCWwAjjpWrR84ww6xromQCDj0AubLA6xyk3t8bzFNsRCCFx+w
 Xl7keSggn6ld3f3ySIQyEK2GgZDdw+zQmgVMq4x5LZhUhGYoqbYwNy9imoBkUAZkbbViNOtX
 zaTHX/RzRHErvq56HOVqceJZIpkDnfvB1aXvfvmBhjVLmLHvzsBNBFhQFAQBCADXoLKCuF48
 5eCWhnty44o9IZJuOSiX+uVJTgVGNWkZOF61Hs2pieIOmTqk3fb9+Ao6C6IliC9ZRXyAVLD/
 RSGoLiTnWLc1uaK4P/XCM3HZfsi9ueBuNufR8yMy8/8ZqbFwRIFpPBpxHRrZnDdEd5IKsy+z
 w6QChvhpmssZy+UaKfWHILroAoS/7bKGzHo5F/dEJhxVDjgxDUDspJSHWMBh0OMKDeBik5wl
 svtV2yw7ezwWJLRsbaa8TUXd79ZJYYc3FIi0K5aXkMySh+QaQ/bE2Y5A/mCBCZ+IKhBQR36v
 tUAsTCuUAOREwSdPDVwfuoI5gfVxGyz/zrERfnXF4viHABEBAAHCwF8EGAEIAAkFAlhQFAQC
 GwwACgkQjYyoKSczm3W3fgf+NSdojthWWEqfWwym3VHK8955SeOy12xQA4ird2Ca2LYUpLNj
 s4qVFEqXSXZk4rmpGCFlMWwOjcCJOXJLR0ATfmWlvZxp1QL4res/R+SPFEyheu7TTpJ9MbyE
 fxaMSn2xRMA1V2KVJSfDoMacImVRchFclaNU31cEu6tEnNRwVcsWdTlGdA5a1ASGl4CiP8Tz
 Yf9m2KOWGjOmVgGFcIJ2QfIlMglU875YHE3W4u3YOWwUbPEr2Seyb176MvO74CUL/Nlouvce
 P41tsC5daxZnrLBQ3nw4xe4RJSzdPPkY7iF0N5R9NvBJ7WX3dwjMO4EMvdlFuNCQ2ALli/AN
 ROZj4g==
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 24 Jun 2025 17:06:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65542

I am building on Fedora Core 42 with gcc 15.1. I am currently seeing two 
strange errors when building native packages for cmake-native and 
git-native:

cmake-native:

tcu-firmware/build/tmp/work/x86_64-linux/cmake-native/3.28.3/cmake-3.28.3/Utilities/cmcppdap/include/dap/network.h:31:39: 
error: ‘uint32_t’ has not been declared
|    31 |                                       uint32_t timeoutMillis = 0);
|       |                                       ^~~~~~~~

This can of course easily be fixed by including <cstdint>. However, it's 
still strange that this is happening and it's the first time that I am 
seeing this.


git-native:

| reflog.c:211:104: error: macro ‘unreachable’ passed 3 arguments, but 
takes just 0
|   211 | static int unreachable(struct expire_reflog_policy_cb *cb, 
struct commit *commit, struct object_id *oid)
| | ^
| In file included from git-compat-util.h:225,
|                  from reflog.c:1:
| /usr/lib/gcc/x86_64-redhat-linux/15/include/stddef.h:468:9: note: 
macro ‘unreachable’ defined here
|   468 | #define unreachable() (__builtin_unreachable ())
|       |         ^~~~~~~~~~~

The weird thing with this issue is that line 211 in reflog.c declares 
the function unreachable() with three parameters. However, the compiler 
interprets it as the macro unreachable for stddef.h being called. 
Unfortunately, I don't have a solution for this.


Thanks,
Rudi


