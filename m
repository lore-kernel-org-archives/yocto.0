Return-Path: <rudolf.streif@ibeeto.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 28210CA0EE6
	for <webhook@archiver.kernel.org>; Tue, 19 Aug 2025 21:50:46 +0000 (UTC)
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
 by mx.groups.io with SMTP id smtpd.web11.5869.1755640242919468604
 for <yocto@lists.yoctoproject.org>;
 Tue, 19 Aug 2025 14:50:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibeeto-com.20230601.gappssmtp.com header.s=20230601 header.b=iH4UBk90;
 spf=pass (domain: ibeeto.com, ip: 209.85.214.182, mailfrom: rudolf.streif@ibeeto.com)
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-24456ce0b96so4057185ad.0
        for <yocto@lists.yoctoproject.org>; Tue, 19 Aug 2025 14:50:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20230601.gappssmtp.com; s=20230601; t=1755640242; x=1756245042; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=+FfhZS938SWi4BKmlagZvG3RpMN9aw0fcBYIj2t8krM=;
        b=iH4UBk90Giu6dYNLzV3qLp6haahDROWcvQ/r+YSTNgjPmnVDdhSJTFPR8qzCwtUzC6
         LJndtdaAXiAgv4Z8gzwzQOdRiJc/t/q8DLp1uP+bi+OaPe5qLxmd6zpWb8+NG7RGeqgJ
         dW6KOPoErJrh6eoQMjnYxLuQpHr287mpWIlxZRnj5UrrYASHzk3/7QJO44z9tyhRHyOi
         xw9G17WDgwLLcXNV+9GuxsHtAIrqLLLQ37IqK699qdu5XpiE5hSbm8wRm1n9URiXeIJq
         bhejYkNQipnGC6yXR4U4ADpY12QEHgQWdfElTPJYeEpPWlx2H4PcnQb732ObtMmMwha+
         /D0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755640242; x=1756245042;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+FfhZS938SWi4BKmlagZvG3RpMN9aw0fcBYIj2t8krM=;
        b=VeSpt5BmOOUu/N2OvpQbmmhC5RTQi8FXU+WhHXT2yNFlpbbjj9NtzsYjUWMSVlFsbf
         J1cSR56UjrnI089ZNtHoEHfQFqdMf+sdhQQRuRDEc7RZXHp3wSCjPMLhTWUezUW+c2Pa
         MTQQ3lP8TYH72zw9Uu8Ovhlt+f5FzLzkhSjFeRWmolbLDwZloBLIb6oUcrttMvrPxRlD
         FLEY8qDm/IGVcVTPlgftVRB0WSGqq1QoBk/3jfwwtoTUqiLj98lh/eTooWhNy2AoQcJT
         9epoWvPQwaS6yMkdUk501DEVRCkwVKBamdS4L6i63RXoxbEj1DWF/pYn8R1GmfQRzYSJ
         ZHxQ==
X-Gm-Message-State: AOJu0YwaZ/+gKS0Ozq8aDeMszr543nSNajK943MOLwloTcXFDXSsQW1r
	9T9C+FvaHrFWWGV5yE0Hic++p6RaW6cpugXhKOijeEIp9K5ObTr8DWr36hiQX6IxnRF84o8a84C
	vzpXlKHk=
X-Gm-Gg: ASbGncsMhT5R7AWSp5cJnSwAY9StDlWSESjBeGeUatRUNxvC2+w07ii7pQm/UJKfmPx
	H8BWJ5zkECi+aYhEg/PT3nxGhNZMECQeYRamOyEV2YA9orf9bfQffiuMlL+jbhuooov7DNCqkJt
	P+2E9wRhQ0aDhbMfwZheZFuC6wp8H7PlWR74Qc2zubrx3lwnzmiP3J56DuF1MB9ypwem5vXt2Qe
	ZnYjyTKblUsulIKy5u9fxk5ejZjiMmlxT3DA8upbf7rRVu/BLmWhtdJZWNn5iAfw2iaICiN/HzR
	Wk+HugJDqfd8w0zCXL6BIeT6aTNjtJAn1hvdoAenx4ypW66Mqvz/RXY0uBzhIMNGi1wUFhmuJI4
	J1RFq6ZuGk3p+vujqeUg77VK+XRJAgw8EtH2S1ItDwEfbPMh3cvfXjCwmXnNwgqcnLw==
X-Google-Smtp-Source: AGHT+IEsy9T3K/r1+IH/hqtDJlbPDHmeElNaVtSSFf7sUUkjuTFnOeuseeTJP+swKDQYr/SI2Xwx0g==
X-Received: by 2002:a17:903:41cd:b0:240:20a8:cc22 with SMTP id d9443c01a7336-245edfdb555mr10665025ad.4.1755640240616;
        Tue, 19 Aug 2025 14:50:40 -0700 (PDT)
Received: from [192.168.4.197] (ip98-176-147-244.sd.sd.cox.net. [98.176.147.244])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-245ed35fc9asm7010205ad.47.2025.08.19.14.50.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Aug 2025 14:50:39 -0700 (PDT)
Message-ID: <63a28aea-58c9-453b-9b03-3df29118044b@ibeeto.com>
Date: Tue, 19 Aug 2025 14:50:39 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Renaming the yocto-security mailing list
To: yocto@lists.yoctoproject.org, rybczynska@gmail.com
References: <CAApg2=TZnJGDvBN8LBEoVbRcTJ6k1fGdOXVzss3bQmjZH4WknA@mail.gmail.com>
Content-Language: en-US
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
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
In-Reply-To: <CAApg2=TZnJGDvBN8LBEoVbRcTJ6k1fGdOXVzss3bQmjZH4WknA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 19 Aug 2025 21:50:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65771

I don't any specifics about the incident. I suppose security-relevant 
information was submitted to a public mailing list. A private mailing 
list may help but in the end it's security-by-obfuscation. A mailing 
list for submitting CVEs is not the best choice imho. A secure web form 
should be better. We have a CVE Status page 
(https://wiki.yoctoproject.org/wiki/CVE_Status) that lists the current 
acknowledged CVEs but of course reported CVEs should go through an 
investigative filter and potentially sanitizing first before put on that 
page.

:rjs

On 8/19/25 8:08 AM, Marta Rybczynska via lists.yoctoproject.org wrote:
> Hello all,
> yesterday's incident confirms that yocto-security has a confusing name 
> that might cause confidential reports to arrive there.
>
> What about renaming the list to yocto-security-discussion or similar? 
> And eventually redirect yocto-security to the private security list.
>
> My reasoning: we shouldn't rename the private list as people might use 
> old versions of documentation and we want them to address the correct 
> private list when needed. It is less critical if a message expected 
> for the public list reaches the private one, than otherwise.
>
> What do you think? What is the process to do the change?
>
> Kind regards,
> Marta
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65770): https://lists.yoctoproject.org/g/yocto/message/65770
> Mute This Topic: https://lists.yoctoproject.org/mt/114782606/3617932
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [rudolf.streif@ibeeto.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

