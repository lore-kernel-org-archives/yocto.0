Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6332FC27C55
	for <webhook@archiver.kernel.org>; Thu,  6 Jun 2024 17:10:04 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
 by mx.groups.io with SMTP id smtpd.web11.20395.1717693802337980379
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Jun 2024 10:10:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Ahsy623f;
 spf=pass (domain: gmail.com, ip: 209.85.221.50, mailfrom: skandigraun@gmail.com)
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-35dcbbff045so81811f8f.0
        for <yocto@lists.yoctoproject.org>; Thu, 06 Jun 2024 10:10:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717693801; x=1718298601; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=DoY6ipQSuvVGPkZYBtiUX/gP3a2/1nhZkwF2ZZy/jmQ=;
        b=Ahsy623fnUmVggbahgPkINJc43QCwoEXuJGWXEIkRg0Z2RrN7xn5C05mlewbVKWbFU
         pxJq7j0jJE4555bz7HdyKmyONNuQKGRU7x0nurFwSad538BT2YEvsKwQiGpZgqL+pbZ+
         rxB+fBb7bOfwe9g5Ss0Jz0tPsWq54m5mNmNcgF5OnsMQ0L7Y5MGE0wauoOJiVOzNspZq
         8EBdFkgJnAiC6Yh5VMqeH2Wg/vAYJblx/1bZx1FYFS8WhVhGJd61l8YhXNj9q3sPwcqW
         yp+rEm867KBnIdxZcLbzGnS7tg+0GRhVISSX0z/Ad8KxFip6P3/zNQFXPpdJT/PI6TnN
         gPRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717693801; x=1718298601;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DoY6ipQSuvVGPkZYBtiUX/gP3a2/1nhZkwF2ZZy/jmQ=;
        b=uxvcyLKVvs9+IuvC/mXJYLx0tU7z5KeFVoaV1/CF2LoVX/vu0mbdlBNML2KvgH8/Om
         vSsPs7dTN8GvMfksHyfVqYguF+zWWcMjvUiltHjR9WMfAdM2jUyHHF3Nc/tT12OTe9Yx
         BjrIxA7cNGQXyJ6pqySJMqmK2FQLNkTue+8aMbfByIBQDGlh5vnD0qXTU1Q1d5ZtPyy0
         aD0GiIFMHO98Xk13CWTf4UaylevzLQGEqQ4TKSWY39xTpYBilOqaBKqr2QOYacj7xkQh
         28zdFIAhj3R05xKbxAZIebsfyq1u0YxSsmXBcbUmOnWqLXdx9WMyCzQq8QDbiYAPN32/
         21Mg==
X-Gm-Message-State: AOJu0YxJYquNMUjx6s56N91cTcSnwP0F5S7Qpf5h4nUGIa8npO/49RtO
	Mp3uiOPJGZMkXIHAssTI9i77leBskrKER8QcV7TwanABheUY9IZrc1pmBQ==
X-Google-Smtp-Source: AGHT+IEXjw5Sobq7DaZLpO8HiRuEfKKEyGZb14rWw96QGmS27+4+Rm+QOCoYkYJimAS2Qi9ViFjsVA==
X-Received: by 2002:a05:6000:154c:b0:35e:f8b5:4f5a with SMTP id ffacd0b85a97d-35efedd4a8emr167352f8f.3.1717693800444;
        Thu, 06 Jun 2024 10:10:00 -0700 (PDT)
Received: from [192.168.1.3] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-35ef5d69c68sm2075773f8f.61.2024.06.06.10.09.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Jun 2024 10:09:59 -0700 (PDT)
Message-ID: <94146a21-1052-4325-b672-32476a7d3144@gmail.com>
Date: Thu, 6 Jun 2024 19:09:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] am437x do_rootfs error
To: yocto@lists.yoctoproject.org, amolpractise@gmail.com
References: <17D51E6437DB5314.21428@lists.yoctoproject.org>
 <CAAkkBwNBtJGY_c8dgjCn2n4ccKu7uHMk8AbHQAV3WbfWea2N3w@mail.gmail.com>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <CAAkkBwNBtJGY_c8dgjCn2n4ccKu7uHMk8AbHQAV3WbfWea2N3w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 06 Jun 2024 17:10:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63288

>     ERROR: Logfile of failure stored in:
>     /home/amol/git_repos/poky/build_am437xgp/tmp/work/am437x_evm-poky-linux-gnueabi/core-image-weston/1.0/temp/log.do_rootfs.4596

1. Did you modify the ti-sgx-ddk-um recipe in any way? (Either with a 
bbappend, or otherwise?)

2. The above mentioned logfile could have thousands of lines, but 
somewhere in the middle of it there should be the actual error, what 
made it unhappy - this supposed to help with the investigation in 
theory... (search for "ERROR: " or similar in it.)

