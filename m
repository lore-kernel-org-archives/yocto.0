Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 44AB5C3600C
	for <webhook@archiver.kernel.org>; Tue,  8 Apr 2025 12:56:30 +0000 (UTC)
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
 by mx.groups.io with SMTP id smtpd.web10.74417.1744116987614622549
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Apr 2025 05:56:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=k8RfTnsF;
 spf=pass (domain: gmail.com, ip: 209.85.208.47, mailfrom: skandigraun@gmail.com)
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-5f0c8448f99so7660332a12.1
        for <yocto@lists.yoctoproject.org>; Tue, 08 Apr 2025 05:56:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744116986; x=1744721786; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Vs5uGhxcUm8O9v8bmCLGejKJw7Ubgux1U4TI1mPucTQ=;
        b=k8RfTnsF/G4fw1LPvDwm5kX2A9gvq49g3skGrGxVn76NRcXICbthcgcUkOGbQN5afV
         Awy/+lhtUKvMwTU1qYg/GGN6KXsRJPrXIZaa0a0LdGfmXYVkI0TENHyeO5xFAVGe6cxB
         ywgD0G/fRHQlf6MeyUZ/QPBEUmtYFzOemRRt6WCuriUfROytwzVxNpqLDGhGLzNHD8SZ
         rR7KWSEW/JPhpQf4e/CH6D8G8jWYJsoBObBMDZ2s2GW3KvYv4gK83x1b/m5uXYfKtNdz
         YHqNJnXYwuJlRd5wpVnTTjnoIvv/wxboGn8dkhcUIVkZ0iyVSDw+lPcgj9N3tzC2ZkFr
         tGBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744116986; x=1744721786;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Vs5uGhxcUm8O9v8bmCLGejKJw7Ubgux1U4TI1mPucTQ=;
        b=wB9TSirWrEA24PNpDQLGHiS6gflfxAtGt9QB085cuueUE9AlQwmDznCjzTk9VidEMe
         6AZCkqbhwxRDHFVjsSFg2HNYMlT72NiIkTklTYHOQr7fRih5Dx7be3IVgFkeCe5O79ED
         0qxBYz16VmRcjlQW2tHHYveg2x50jQwR6iA3QgtamUVoakzAwDAM1/ok7dA4cM5tTEId
         A1seZ0FpnD9OfTu5LiPO13gaQH1h2qqNbK/6umSJ0WWlSH3e3JJGA3Vf9/OISLl2H9/j
         320yuWrL5L2xppjmQWHolc6cWee5aPiUUhYBSwrdfNT2ZRGsuRnFaJOxX8K2fQnpIqPz
         vKMw==
X-Gm-Message-State: AOJu0YxtLknVkBD9bwazf/tcWrLFo038+8z/3C05yVXOzZSRLRPSw3Qx
	vZ06fGTzHFfphch992vmfCeOBpfgto/S1bBxQ9kXBfYuSlHHvoT9JVPgC+F4
X-Gm-Gg: ASbGncvlATJOI8nBYXSZn+ujbQ8jfi0di8jKXmX9FH5dPwIlVijHYC29x1nwoenKMSp
	zqJrJDdkTsloUpdHffciEZOUAkrN954Z2/nJ/cR6IP1bwkAghvw9K1HNo08EbvOn4pdfDJUt3WO
	CcMKI1z+mCPt7Ls71cPzhC8x9ZpCi/t9F5FhzbVt4w7yynUIvg+1mBy1a8IeJsHylX35QNnmWEu
	qFsI6xzBVoQt9CdgFdux2ztcZUs0+c6dRwnSHIKkeeokWM23XddXOm8qykTAs6boL+0u2Fv1XLJ
	MWPIk39Ip6AyYAVBS+O8L6lETSInvFc8fSG3e/wiDwzLCHovWWht
X-Google-Smtp-Source: AGHT+IEy6P6Ld9HJ7HfNS+/vbqcjRU0xh1v3PFEsEGmx4/LVPQkgwg/bT9m84ISKth4zCf4uihGTpg==
X-Received: by 2002:a05:6402:4408:b0:5e5:cb92:e760 with SMTP id 4fb4d7f45d1cf-5f0b3bcf8b1mr15879826a12.17.1744116985428;
        Tue, 08 Apr 2025 05:56:25 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f087f0945bsm8483253a12.45.2025.04.08.05.56.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Apr 2025 05:56:25 -0700 (PDT)
Message-ID: <aa127e87-0a7f-4c5a-9467-675d1cf1df03@gmail.com>
Date: Tue, 8 Apr 2025 14:56:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] warn if a variable is not used
To: yocto@lists.yoctoproject.org, proffesionaladdress2@duck.com
References: <r40e.1743754517240171829.1oOU@lists.yoctoproject.org>
 <E63C2FBD-D303-4686-B29D-D8306CB27A80.1@smtp-inbound1.duck.com>
 <DC0C7CC4-DC00-435D-AF68-749C79388DDD.1@smtp-inbound1.duck.com>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <DC0C7CC4-DC00-435D-AF68-749C79388DDD.1@smtp-inbound1.duck.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Apr 2025 12:56:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65120

>
> | /<path>/run.do_compile.352486: 153: MY_VARIABLE: not found
<snip>
>            MY_VARIABLE = "value"
Note that when you are in do_compile, that's a shell script. You
shouldn't put space around the equal sign here, because that's not a
valid syntax to assign a value to a variable in shell.

