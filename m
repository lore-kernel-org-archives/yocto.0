Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69F54C41535
	for <webhook@archiver.kernel.org>; Tue, 19 Dec 2023 12:31:19 +0000 (UTC)
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
 by mx.groups.io with SMTP id smtpd.web10.10819.1702989071774425355
 for <yocto@lists.yoctoproject.org>;
 Tue, 19 Dec 2023 04:31:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=faqt3HuA;
 spf=pass (domain: gmail.com, ip: 209.85.128.178, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-5e6c8b70766so16872977b3.3
        for <yocto@lists.yoctoproject.org>; Tue, 19 Dec 2023 04:31:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702989071; x=1703593871; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4f+BcSnczLJohl0oz6YagyD8839m358px2YAeH/N6fM=;
        b=faqt3HuALT0+X2fEqjuX3WrUVqOaLWE7YHA2ZCbheV2UryROuLejOb+NROiqs/BbBi
         YxczgFmO7uHdsZ3AFhRdqtZcizzOAkOQ3VDjnuAjIRCfWv1eUdy7gteEhK9tZofF6DiD
         axjnlBiLp3XIc0eOyxTyq+02STdmAeYNiU8p9C6ovENUHtn+JmwUuZIRzFD02IirPYvq
         oxpt2wt3h9B14Wu+3j6QabcSFST8513uchTHJqzTxwdbocqcPdJXpA8CvFuW6l7LvF4J
         7/hvQFd81IfKJJhpVV1Y2TDjZASku9s4H7ieCwSNvOYZVjWiXjfG+SHjFkaV5j0+AWOV
         CTwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702989071; x=1703593871;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4f+BcSnczLJohl0oz6YagyD8839m358px2YAeH/N6fM=;
        b=In9XOPnKQ+1erebKYhvtvUwBPodrS0+ZdLSfbAPI2pR1HoNLeL1M67V5jPZvjac4b2
         KdQA7Z6+TPiITxX+JMS8H4X3mM3ckVkED/afHFmVy06TJ9YN4i67nUXjm8YlD5thAiNR
         77hNtdHW8TTy7jm15YwdJ79jllbUJ8YCdOhzrIcBPYIp+b/YIUOP9UJVMc7gVeZSBc2M
         fxCrA8rqtN9e+aRaGDV/vVyynlGh0v2oAjuzQY3R5fjzCdgWRfs8ojKH4Y1Nf4JbjwJ5
         hSA2axKjP2R1qF+nxLCg4YSjRbpvPYDIXXQwjDNSn8BVQNAzW/YddNLlZjmimjucLe0I
         E9tA==
X-Gm-Message-State: AOJu0Yzg7ySpmTNV3DIZ/GCo7B4vjoFltzfrYvk8993gTYgk9zKlat+c
	VT8gHDV8hjPU2u/JbJ1f0Ju3NS02rLlrsw==
X-Google-Smtp-Source: AGHT+IFCH7NV2LhZLnlBnGhdAM1Tso1Z+absyvCn4H8YneXbycWp2JAH+S7s5K/j7wknrjGMaykjfQ==
X-Received: by 2002:a81:6e42:0:b0:5e7:7526:62b5 with SMTP id j63-20020a816e42000000b005e7752662b5mr1080332ywc.44.1702989070696;
        Tue, 19 Dec 2023 04:31:10 -0800 (PST)
Received: from ?IPV6:2600:1700:9190:ba10:57f6:e37:16e3:538f? ([2600:1700:9190:ba10:57f6:e37:16e3:538f])
        by smtp.gmail.com with ESMTPSA id df21-20020a05690c0f9500b005e49b2df584sm3577841ywb.59.2023.12.19.04.30.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Dec 2023 04:30:56 -0800 (PST)
Message-ID: <172f2ce0-d3b8-42bb-8d73-5ccc3d103239@gmail.com>
Date: Tue, 19 Dec 2023 07:30:46 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [meta-secutrity] tpm2-tools RDEPENDS behaviour in
 meta-tpm
Content-Language: en-US
To: yocto@lists.yoctoproject.org, joao.goncalves@toradex.com
References: <256eb0e5cb6c1cc9b195950e73d45c8e8e00ff21.camel@toradex.com>
From: akuster808 <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; keydata=
 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
 ApZ86eOP
In-Reply-To: <256eb0e5cb6c1cc9b195950e73d45c8e8e00ff21.camel@toradex.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 19 Dec 2023 12:31:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61984



On 12/18/23 9:56 AM, João Paulo Silva Gonçalves via 
lists.yoctoproject.org wrote:
> Hello,
>
> For kirkstone branch when adding tpm2-tools recipe to install on a image it
> will not work as it is missing tcti-device dependencies.
>
> Is this behaviour intended or can I send a patch to master to correct
> tpm2-tools recipes RDEPENDS?

Please send a patch.

BR,
Armin
>
> Regards,
> João Paulo
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61966): https://lists.yoctoproject.org/g/yocto/message/61966
> Mute This Topic: https://lists.yoctoproject.org/mt/103243684/3616698
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


