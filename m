Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 37219D10BFA
	for <webhook@archiver.kernel.org>; Sat, 26 Oct 2024 13:55:46 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
 by mx.groups.io with SMTP id smtpd.web11.10965.1729950940633895972
 for <yocto@lists.yoctoproject.org>;
 Sat, 26 Oct 2024 06:55:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=dinaHdD5;
 spf=pass (domain: gmail.com, ip: 209.85.221.47, mailfrom: skandigraun@gmail.com)
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-37d495d217bso2570546f8f.0
        for <yocto@lists.yoctoproject.org>; Sat, 26 Oct 2024 06:55:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729950939; x=1730555739; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Ksj48nUsDU/Ve8HxgKTC1GHO0HbkQjccm441XcU9ELM=;
        b=dinaHdD5VO+5VBz+PTt5b2EMlJc3JcH/kW0RZD58pYZTbrxPpb9ssLPVNseLBt9Nzv
         vM6Qn5w6Kshf77FccByhDGfyc2QfIt8EDxhWZE2yhOonHO8DqwC/y0SnzoIlKWKpvL1a
         3EJqsQAnwQmKyocjD1kAIMYQqFvyTyQSY+ZFwOLUIFFMuO/Gc7hm6DSttmt0BZKzk7kt
         JgtJZwyZzXMJOtR0PDY9AlkogetVe/F+Fvlq6ZwlV9DlhilQeP7nNQypozbBt8hhQakB
         nb+I/xXGUeDEFfhxFIiin39+5BnjdPFpbRkW+dTwnKbNAjoeMyfaP24D4B0yZ1+XMUFI
         J4Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729950939; x=1730555739;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ksj48nUsDU/Ve8HxgKTC1GHO0HbkQjccm441XcU9ELM=;
        b=LbEHvOAYHv4ndBoRAFCxXlMRlcztF3+NCw+h5jXcS9Q4wpJjWuobEPCdaUzoUoFwBG
         PnguK9+wt2Qsx+RsLpn+oWuPSmrpldBZjyCv9IIajY2dcMAK+Vm0J9BEgZs9nF3nSLKw
         wFpiZG2gMGRvqQndrWaObLka8f+Uptkzz0IvDPIQejfDZjpXn7nygjeKjKLB9931JssK
         CV9vWDfryjRoztoQ3ofOCRa2jnshlHoXZBGJEznWrieI77qsbxqOJWis+4zkYYfFxYOI
         JoWl+AjDVDAc1PrMenyINLrWNX+O/wIEDu7sxe9XIlRBXZh+aDn8HOpSpku2mczMamNa
         YGgA==
X-Gm-Message-State: AOJu0YwxF26OvykHzf5Fapo987Y0to/lLHP7VjUn838MMy318jFzbJeD
	Ir8Ah/K3SOi5WOZ3JZTsu7ew8rAwGI2YqcoU/lzZYMiRUEQDfcbYthE+6Q==
X-Google-Smtp-Source: AGHT+IFZuWyjy1BLeWT9+pCDfjmpmXP1PY1gAJ2Ginw7lA60du3dtGdpMoYuohNVe/KRi8cwEeT8Ew==
X-Received: by 2002:adf:ea91:0:b0:37c:c51b:8d9c with SMTP id ffacd0b85a97d-38061228564mr2588265f8f.38.1729950938760;
        Sat, 26 Oct 2024 06:55:38 -0700 (PDT)
Received: from [192.168.1.2] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9b3a0887d8sm174278966b.206.2024.10.26.06.55.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Oct 2024 06:55:37 -0700 (PDT)
Message-ID: <f2383bbc-427f-48b0-95e0-dda647ba9241@gmail.com>
Date: Sat, 26 Oct 2024 15:55:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] How to set real time patch correctly? #honister
To: yocto@lists.yoctoproject.org, haimbachar2008@gmail.com
References: <mi4v.1729941968245217599.qLzF@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <mi4v.1729941968245217599.qLzF@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 26 Oct 2024 13:55:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64139

One painless way would be to set
PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-rt"
somewhere (e.g. distro.conf, machine.conf, local.conf... whatever fits 
best your case).

Setting this will fetch the kernel source from a branch that has the 
patch applied already.

