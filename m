Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
 by mx.groups.io with SMTP id smtpd.web12.29490.1618215198170782753
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 Apr 2021 01:13:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=sjo9Rioa;
 spf=pass (domain: gmail.com, ip: 209.85.221.50, mailfrom: robert.berger.yocto.user@gmail.com)
Received: by mail-wr1-f50.google.com with SMTP id f12so11943590wro.0
        for <yocto@lists.yoctoproject.org>; Mon, 12 Apr 2021 01:13:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:cc:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=i+ArYeVGmqSlsMEEwNas+7iZmAmwXPgolj3E49ZXa4g=;
        b=sjo9RioaTrasI1LtkWd+CfNeQrr4D2aEmVo4dNVL3d8NOTpgYQSC31YrfUqjSwiz+7
         uHKACKUCtkPPqiRYTD8lCbXvTdBCM+ReUECcQCAJtXXwiwkP4ue1blJ51AMmzl0zJ76Q
         woIvDssdRpmSDmYyCXDbCvZd/z6PIJv7QQjCt5rXayhZzAu3eXiie81xIfQazSqaAeDU
         shrj+53Mm6yvWOMn/PdrMHSno8UVwnQb14vUUo4rWFam53x33F3EEczohRhLeK2zNsMr
         TXRBDoehK3Hdt/jGh2Kg4V+6XUOKVUYdFOfAlWDK0LdJP98GhpFUOmQh9pHFyeTW2ugV
         mq3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:cc:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=i+ArYeVGmqSlsMEEwNas+7iZmAmwXPgolj3E49ZXa4g=;
        b=BHHM+tCsHTBoqSvhnfwb9K5Ik5akaAF6Mv62H+o0WY3N9JZy42x2pPhpgUHEGL2xUw
         6F1QjzvuSDEP7HYwM5RrKnGYMMsOqie0V0mQ7IrOd+W1zwvpmaWbDIqTbigi+LuLZFb5
         fdN06qNhKA7HOrNzaNjB+BkhbmtvACYv33Pl9H0LJ19VlYqt3NP4kAMc8+DUpz7u8Pbc
         kSCRYbywGc8IK96LhC0TK/RsXTdgaW3FoHXpi0ji0gdZWlQ/HkDgUIg7Wm2UZUuL1tqI
         80zsdCDwmI5hyfUgZX2gHS5eInA88zTTLpsL7vnhgQ72BUJ71920/zBBz89LZwQUcWZg
         QfqQ==
X-Gm-Message-State: AOAM533MQ/aQ7Ptl1nMjxgaL4mJw7zdOwhilFDWIJ6f3dsLNmo+1B4jZ
	2rz739McPiUA3h6J39Bz//0=
X-Google-Smtp-Source: ABdhPJxuH0kSEylwQeCd7yNNsan4BYjRGVmZOuCl1PZTc8+e4YHgZar6ZKD0Q0xjrhzadstTjJc5OQ==
X-Received: by 2002:a5d:644b:: with SMTP id d11mr30429023wrw.9.1618215196650;
        Mon, 12 Apr 2021 01:13:16 -0700 (PDT)
Return-Path: <robert.berger.yocto.user@gmail.com>
Received: from [192.168.42.52] (ppp-2-86-147-152.home.otenet.gr. [2.86.147.152])
        by smtp.gmail.com with ESMTPSA id m26sm13796551wmg.17.2021.04.12.01.13.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 01:13:16 -0700 (PDT)
Subject: Re: [yocto] bitbake controlling memory use
To: Gmane Admin <gley-yocto@m.gmane-mx.org>, yocto@lists.yoctoproject.org
References: <s4v495$bak$1@ciao.gmane.io>
From: "Robert Berger" <robert.berger.yocto.user@gmail.com>
Cc: alex.kanavin@gmail.com
Message-ID: <2e31b1e2-11cd-b1a0-ec4b-d2dcb267dc8c@gmail.com>
Date: Mon, 12 Apr 2021 11:13:14 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <s4v495$bak$1@ciao.gmane.io>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi,

My comments are in-line.

On 11/04/2021 18:23, Gmane Admin wrote:
> My build machine has 8 cores + HT so bitbake enthusiastically assumes 
> 16. However I have (only?) 16GB of RAM (+24GB swap space).
> 
> 16GB of RAM has always been more then enough with 4 core + HT, but now 
> building certain recipes (nodejs, but rust will probably do it as well) 
> eats up more memory then there actually is RAM causing excessive swapping.

The RAM usage depends heavily on what you are building ;) - It could be 
some crazy C++ stuff ;)

Is Linux your build host?

Then you can use cgroups to limit resources like memory.

Do you use a build container? It uses cgroups underneath.

e.g. docker:

https://docs.docker.com/config/containers/resource_constraints/

Regards,

Robert
