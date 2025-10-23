Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2BB4CCCD1BC
	for <webhook@archiver.kernel.org>; Thu, 23 Oct 2025 11:27:32 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
 by mx.groups.io with SMTP id smtpd.web10.17690.1761218850437932754
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Oct 2025 04:27:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=f5VBZtnM;
 spf=pass (domain: gmail.com, ip: 209.85.221.44, mailfrom: skandigraun@gmail.com)
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-427084a641aso500429f8f.1
        for <yocto@lists.yoctoproject.org>; Thu, 23 Oct 2025 04:27:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761218849; x=1761823649; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=yExMOUzQtou8sCH2gUtWhG77P4BtL22CpmZkdxwzMHw=;
        b=f5VBZtnMLFxOaAj3bKdEGPuRCBT7+vMZr1pVgXDc8rMSsFDmBef3NeHwokyFBy6Arc
         P2Q0ru9hfU9abp7D6UlH8PtgttFjjmZz7bt0bfZ9wYRggFNbIXH2T2L6NRVmf9N8uqVp
         JsJ3q8wsVjA2jzmezQWSru3jxdx9gR2HSrhuJnJkye97jxQYQH0g1xeaho6Mr2MCLJYc
         cFsiTgvzlBA/VA4E0/RR2YghrBvY0fWC/CoOFU6gAjbMaJClqnD/ySC9zo/L6v9C3Eb3
         CWvb/ThtkUUmntQW0a3Cmzi+/bnm3iDsE50MS3VXggNTLFuN6k3MDNhwJUNptxrU8mbp
         cyIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761218849; x=1761823649;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yExMOUzQtou8sCH2gUtWhG77P4BtL22CpmZkdxwzMHw=;
        b=SQ7IqNuoHQPLarySi4htHX61HGWzMzualb2GIQMnuZwQi5pYAOtPgUSbGcelnL3ARg
         pPHPbzU9gDZRfWyBKoaPFqRKrmDZ9zopKit3M270/PFN9J9G9qF5HvgNNs8xyKbSbsu+
         WpPsZBE+mkylBdXzuKNOpKVghgxKQ0OS7PEPZG0A3lTlsJeVW/Xyr3oqAKxKA8LL/Lb9
         O0v+b1EDovDTtfrOdI6Iws1HBN9NsF9+JcdB6cGQJMjErolJqAXVJNx4osdn5PL34s15
         q9unu377j4ma+dT8S0GU7mkWXKTPxnJJqD636rNJyF3XWctI9hEOeKmTTBNwZFvjduqd
         OW0A==
X-Gm-Message-State: AOJu0YzSe5rSb1yabKMTgd2W5UZ/zbq6yFOZbVmTGnbZZnY46KGEKWka
	V7I/12oNYYenw5sFlmDk9FfqrMLhy2zSw9p2lM9PfkZJ4UCqjKYgZrb2swTuyA==
X-Gm-Gg: ASbGnctZ0j4QT02UKCBx1UGGEVABiLJRt+hySeZo9XkD6NGf7y7jbywE14pGaf7wiAO
	R3aivpCxV7LmQxtltQ8o+5qkw8ZfGVWH0owEHGFbpwuzjtuvB3OswwgvkmCivRaBAZn8pKrkxUk
	Tv9VwSt86iD+cAJeZ6dbW/yizLNuGvS0KxbAYTlcmQr9PfJwiIIbU1OWu5Wg+BxPt1Bx1KmzmKy
	AcTLN8IFP5ycrK9ROtq2aPDaqh0CJAtpXIb4KFJipzpfz3jZtKl8D3reVyJkdnOnbGC7O14yTKj
	Zz9imBHjezJb6GZ0578WNz0SY5uMK61vlXbzlyB8x/vE+doyi4/w9JPyXUkJV7ejL5VdsEU+kIg
	kurLgxkkh53uOOXrJfOYrnh0eE77pVhTEWBMwn5CCGlOJdI8Ey6xu/p2Hq353V5DeZWYKFQxK1q
	sCUve/K1h+
X-Google-Smtp-Source: AGHT+IEOStd6hvsuKEkTCOURc9o6qza25U5x9sKB7nYEyHLstgxpfbhOwXPH1ONqy8BozHVNjN7E6g==
X-Received: by 2002:a05:6000:200f:b0:425:7c3c:82cf with SMTP id ffacd0b85a97d-42704d44248mr17001662f8f.11.1761218848653;
        Thu, 23 Oct 2025 04:27:28 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429897e75a0sm3455248f8f.5.2025.10.23.04.27.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Oct 2025 04:27:28 -0700 (PDT)
Message-ID: <f4a20a19-96ec-4bb4-b105-ea20caf48187@gmail.com>
Date: Thu, 23 Oct 2025 13:27:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Issues with DEPENDS
To: yocto@lists.yoctoproject.org, jweyer@aecontrols.com
References: <1761008477730.70625@aecontrols.com>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <1761008477730.70625@aecontrols.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 Oct 2025 11:27:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65965

On 10/21/25 03:02, Jared Weyer via lists.yoctoproject.org wrote:
>
>     install -m 0755 ${S}/test.txt ${D}/usr/share/ti
>     install -m 0755 ${S}/test2.txt ${D}/usr

I remember this, this is how I learned to use bitbake variables for all
paths, I spent at least 2 days debugging it some years ago.
When you do build for native, ${D} is pretty much the same as for
tagret, but ${datadir and ${prefix} are very different.

For target it looks like this:
prefix = /usr
datadir = /usr/share

For native, it looks like this:
prefix =
/home/mee/stuff/ptest-images/build/tmp/work/x86_64-linux/openssl-native/3.5.4/recipe-sysroot-native/usr
datadir =
/home/mee/stuff/ptest-images/build/tmp/work/x86_64-linux/openssl-native/3.5.4/recipe-sysroot-native/usr/share


Try in your recipe you should always use ${D}${datadir}, ${D}{prefix}
etc variables when installing files to avoid such issues.

