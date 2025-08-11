Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3BEF8C87FD2
	for <webhook@archiver.kernel.org>; Mon, 11 Aug 2025 09:27:45 +0000 (UTC)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
 by mx.groups.io with SMTP id smtpd.web11.44010.1754904457243444712
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Aug 2025 02:27:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=jmEyr6No;
 spf=pass (domain: gmail.com, ip: 209.85.208.45, mailfrom: skandigraun@gmail.com)
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-615c29fc31eso7858080a12.0
        for <yocto@lists.yoctoproject.org>; Mon, 11 Aug 2025 02:27:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754904455; x=1755509255; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Q5kjm57Y9CiKqkHc79cxnjOC3YzNUajqsiiLUvL4rAw=;
        b=jmEyr6NoloSXV3d8dQTx1JAioxCtOpeDNhnifABtGc8Bx5UB7qSWA3He6Nfqvofftl
         dDv894y1sCH9qEY30S6qKtrRH7PYFOQbrP1l0wOqvmiGCyZnQ0an+tSe0xhxj3YjR1iI
         2a4EKWdJ6be+DnUZrOB1AIeiUQCumXCgonDNcYnoPgmefmdIds72NkjGvrCfEjlhM/c1
         RBBec5Ud1iKWffLkEp2hAN8XDuAM9TPdfhooqRtKL3iCPK1rSeVPZTKQOHu+uIWRxHZ/
         fGJ+8rOiOGcwZmTT4am6dEs0FiVkBv9E57zJdNKxpPPUPfoXxy0Q4lTZt4YW85Fa6vaI
         hlJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754904455; x=1755509255;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Q5kjm57Y9CiKqkHc79cxnjOC3YzNUajqsiiLUvL4rAw=;
        b=H1/VQuRXlTdI58PxmViGK4GMyL/pcDQQ48+L+hFnxetmSsY/fEAc3K5/oH84nHFXYe
         fOBDeAyW6ywIgHcQLNxnZDHjfGYZOwnPOG3WXSgb3erRk7MJH7mB6fXyWNxkWQomMpkH
         GJ1hdgDYuToMyNr5vyHeb4xaFNavnMVlSA/ZA+YuYHm6dope8KYr/HRs/omZJm7r4jPE
         iPBw3NOVg9oEm/MMaRmEve7+l3zOH2vzhfGJhX2+WFXpFyYDgtfzkqbINQbeissWB4xJ
         nflFRjlmqzQAsFKzNsuzfAiYO8AJRc4twZzvt361CM1sbZdUs3GPsMGeaq8N7Fh4le8g
         i75w==
X-Gm-Message-State: AOJu0Yw49WSTiz2Lu+yC+88pd7AsZhOVxNU3kK8oTXDZhPhprFB0DQpe
	yM2QkllMw2JPbg5HM06D/khbSlAXnLSRiJsFQujuyDuuN2rAP8i/fLSzne4fvg==
X-Gm-Gg: ASbGncupDu7UuEicCn7DE5Px+e7KhuzFKH9wX6p4JSdbiFFir321cwzp1MZFAc65T1u
	TrmJyT/tUtYP4E33dwZ+dthhC1NNEA1JoZov4Ru3uUih6JN85DXkyXEG32korMo1TdZr3ZfZCKl
	+09+KrUMjsJ9OVV4b8sCl4a/z0sCNhQriS3FDuHrPlICwNUBYEknUcTrm7T+Gf34/3m3jIV5vOu
	q4ArFapQNHgWiwMrVM6NX6kKEXadJVv9T8jCtHv/mjDwzgh1S89DsBh14Fx6ZGxPNFEOarxWVXo
	lC8eHmqKrBCuhX4c17H563tMHLciphdUiNfFiaWAK7hoKGmvQiNAG1qeNOw8XxM1mRdhDgtuSyV
	fWKG19E3yBcu2htaipanOinhxIpgQXg==
X-Google-Smtp-Source: AGHT+IE9zQ8He0UXlvhgvArMlzF8EjitxnbUsLjsbdEsMxd9SRjZMqfxy7Z57Xcu5VnQ5HH0dyvG/w==
X-Received: by 2002:a17:907:268b:b0:ae0:a483:7b29 with SMTP id a640c23a62f3a-af9c64ca711mr1041054666b.49.1754904455303;
        Mon, 11 Aug 2025 02:27:35 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6178b074a38sm10113136a12.32.2025.08.11.02.27.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Aug 2025 02:27:34 -0700 (PDT)
Message-ID: <5fa03be4-429a-4a95-bd53-d82d9be4615e@gmail.com>
Date: Mon, 11 Aug 2025 11:27:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Adding oeqa runtime decorators to custom layers
To: yocto@lists.yoctoproject.org, joaohf@gmail.com
References: <CANFVK78jqC2NVZW03JZ5YUgi4xO0mhR7n7iBUm3iefcpsbZFuQ@mail.gmail.com>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <CANFVK78jqC2NVZW03JZ5YUgi4xO0mhR7n7iBUm3iefcpsbZFuQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Aug 2025 09:27:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65747

On 8/7/25 20:44, João Henrique Ferreira de Freitas via
lists.yoctoproject.org wrote:
>
>
> Hi,
>
> In my layer I have some oeqa runtime tests. That is ok and well
> documented in Yocto Project documentation. However, I also want to
> define my custom oeqa runtime decorators. Is that possible ?
>
> I tried to add the following in my layer.conf:
>
> BBFILES+="${LAYERDIR}/lib/oeqa/**/*.py"
>
> No success, so far.
>
> I'm using master branch and could not find any other layer that adds
> its own decorators. Any ideas ?

Only an idea... BBFILES variable is used to collect the patterns for bb
and bbappend files. To add custom python code, you should use the
"addpylib" directive[1] in your config. I *think* it should take effect
for oeqa tests also, but haven't tried, and that's why it is an idea only.

[1]:
https://docs.yoctoproject.org/bitbake/2.8/bitbake-user-manual/bitbake-user-manual-metadata.html#extending-python-library-code

>
> Thanks.
> -- 
> João Henrique Ferreira de Freitas - joaohf_at_gmail.com
> <http://joaohf_at_gmail.com>
> Campinas-SP-Brasil
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65738): https://lists.yoctoproject.org/g/yocto/message/65738
> Mute This Topic: https://lists.yoctoproject.org/mt/114588099/6084445
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [skandigraun@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


