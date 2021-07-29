Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
 by mx.groups.io with SMTP id smtpd.web11.9291.1627564427108882232
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Jul 2021 06:13:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=rmUZgJ+g;
 spf=pass (domain: gmail.com, ip: 209.85.128.49, mailfrom: robert.berger.yocto.user@gmail.com)
Received: by mail-wm1-f49.google.com with SMTP id f14-20020a05600c154eb02902519e4abe10so6785181wmg.4
        for <yocto@lists.yoctoproject.org>; Thu, 29 Jul 2021 06:13:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=0MvcT8v05+Hj+cCtZxL22gHSNdcWUwQUJ0RFwN6a35w=;
        b=rmUZgJ+gST4m9J5WUWfJyjaZLh5vK8TCROfRrgevJ5DIPQsaZyAiYHipkr3B2isRZj
         np5XgxVBaNN/9+YGR3Auf12nIhe8nEPDbhzajSvcaPpqFrbjMleRondtemFrWPcZl39r
         YjQqXaASNmuB8xZqL7nbwIrMLvTH3sFSawetucvHGAK3Jvphv5IWS/gQPO7a5UNlx4E4
         GHtu9LZOqELQkUm4qp4JwJUKY6Qk18M9Myc3glOiXfBYwx1pyKxUaL8C8fLt0RQer4hg
         1RUvACwutEPI34bAL1hNx+v3uG5e1hRWkZ2/NZi5VnpQHII+v8Nbr05jLqiF/vsRbf7p
         p0HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=0MvcT8v05+Hj+cCtZxL22gHSNdcWUwQUJ0RFwN6a35w=;
        b=P7XrD8zLluIJiUONaWF/pQ8TEQ7eL8B7GoGV93NRP721yCTnJpYh9nw1DWSRjMTGki
         /X8XYNz999L4tgWCkjOnQdGfn+XLTOeeFbrd+00JsVqVd5jJbby+0n+t5tFYUQ4l5I4x
         P6rlNLZydPu50mzBmm1oFlBW/1Kp46l0GbsLyqZ0WqG6F5TZRBBEh8DClv2MysKD6oYp
         zpTzxW9kRlfgYyTsYLu8hd1c7oZUDFBhwjez3aTRwpbQEhkr8VEF7Uf47ndgwmMP1vAf
         c7K33QzjdXtK7HBqSUKNsZDflFVWt4pAyD3Vctct2Tt35hqg8tnj6gvXsXnIfyIBD6Ou
         lVBw==
X-Gm-Message-State: AOAM530SjOHlJEsaeAPiEA+93nPgn81mNkipFUmqyBhwj+QbudaNCcZP
	TCT0ehGgQH8U3tATSELV5Lj+zH3rt2c=
X-Google-Smtp-Source: ABdhPJyyyFgXQSs+6LGYvXPcRb2QWfcsJuLBlgRTVDDgjNrfI9zWypM7a7kRxJN2nObNk3XdgjZwpw==
X-Received: by 2002:a1c:a709:: with SMTP id q9mr14390545wme.23.1627564425551;
        Thu, 29 Jul 2021 06:13:45 -0700 (PDT)
Return-Path: <robert.berger.yocto.user@gmail.com>
Received: from [192.168.42.52] (ppp-2-86-139-252.home.otenet.gr. [2.86.139.252])
        by smtp.gmail.com with ESMTPSA id x15sm3384443wrs.57.2021.07.29.06.13.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jul 2021 06:13:45 -0700 (PDT)
Subject: Re: [yocto] Install SDK with yocto
To: daniel_herrmann22@web.de, yocto@lists.yoctoproject.org
References: <DIPV.1627506773075229417.iDOw@lists.yoctoproject.org>
From: "Robert Berger" <robert.berger.yocto.user@gmail.com>
Message-ID: <44084ba8-08cd-bcda-3761-7258e0c69d20@gmail.com>
Date: Thu, 29 Jul 2021 16:13:43 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <DIPV.1627506773075229417.iDOw@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

Hi,

After you download e.g. the tarball, you'll find an installation guide 
inside.

It says:

OpenSUSE 13.1 / 42.3
Ubuntu ® 14.04 / 16.04
Fedora 26 / 27
Debian 8.10 / 9.3

So I am not sure why you assume that this should work out of the box/at 
all with the Yocto Project.

If you really want it I suggest to talk to Baumer about it and I am 
happy to help you and them with the integration.

Regards,

Robert

> 
> 

