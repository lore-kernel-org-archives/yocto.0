Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
 by mx.groups.io with SMTP id smtpd.web11.552.1621291366103513521
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 May 2021 15:42:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=lLlh++Ia;
 spf=pass (domain: gmail.com, ip: 209.85.214.177, mailfrom: raj.khem@gmail.com)
Received: by mail-pl1-f177.google.com with SMTP id t4so3984741plc.6
        for <yocto@lists.yoctoproject.org>; Mon, 17 May 2021 15:42:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=i7rUBUw7ccXbZ2RACsWj6NmTKwgq9WyMlfHPEj7u6ME=;
        b=lLlh++IaJDB5h7QO7ZnHnpXiRSsT8M3gV5vjs6FYu1XE3Ow/xjMCoX4ny34Tzd1VHD
         LwshHjdyzwq0jZIDcJXwKCCBF5RgamGa/hw7HfGVRxknsVpgmLwZeosKjm6tg6Me8ZAq
         ugCck49nQ3jZpCGJVVdZffi9W8twaXHhjXIvQKtpy8KDATbx8FL2GQj8PwU52Dkn0hrf
         8+GJF7wXh/NbJvqiYjzU3Zc9yQ/NmFnFMwsmp25f+NEiN29nqXB7Kh2kAyiXi+ROUOmN
         VKJr1Qunz4zf+DSCwu2aFwAkUPziq3EzCOrSsVFqToW+2Dj2wZ66+FGv47407kJbTio+
         XgUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=i7rUBUw7ccXbZ2RACsWj6NmTKwgq9WyMlfHPEj7u6ME=;
        b=sKk43rkoCGzQjvzSY19K1txWUuKSMUV5mgbUZlhMqeLP/Jg0+1qAe8wJY6yRQBaxCN
         Bo/oosAPhL00EFd8wlVm76qwUbaVAwqoRqPO/qNxWSyd7K/F4ouCKtkAkr7kzFwKOtPi
         dQY+1cNDxuNY9rfnjnDsc/y8ItPaTYXIztV8Rq8PsftpJRRcmj7B+ww1ioOAuSgME2yh
         bmGEYe4siYZDL8YUk5n2CVncxiyCd/DmFjLFPB4FhuiuS3gKfed9MQHHnZIxIztq8+Vb
         Ij/J0Qb4AgymbEGgCM6Zswb2fTEX+nRx4NexPZt+sPrYuBEvtw2HfpCyCXB+H4UYRLxT
         btog==
X-Gm-Message-State: AOAM532Esmb73SUuVI7AVxs3xWzbbsgzog7BXvQScgVuXhKqVTA4i0+U
	nNoagGPp6OkN+ixQOl1EQ5epluwKBk0aFw==
X-Google-Smtp-Source: ABdhPJxy/eJ4MlU9fEzr6Vp/0jqp9AAHiA6xqXFqWKurcX64YF7mWAQfWTudmN9sE3iU2IhzSeCnOw==
X-Received: by 2002:a17:90a:4588:: with SMTP id v8mr1462732pjg.195.1621291365401;
        Mon, 17 May 2021 15:42:45 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:a0f0:c4b7:9807:d29b:dff? ([2601:646:9200:a0f0:c4b7:9807:d29b:dff])
        by smtp.gmail.com with ESMTPSA id a16sm10763576pfa.95.2021.05.17.15.42.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 May 2021 15:42:45 -0700 (PDT)
Subject: Re: [yocto] Make busybox's syslog.cfg depend on VIRTUAL-RUNTIME_base-utils-syslog #dunfell
To: Volker Vogelhuber <v.vogelhuber@digitalendoscopy.de>,
 yocto@lists.yoctoproject.org
References: <SFLU.1621246434709424827.U4y8@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <33fb3e3b-c33d-83c3-ff56-d891ebb58379@gmail.com>
Date: Mon, 17 May 2021 15:42:43 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <SFLU.1621246434709424827.U4y8@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit



On 5/17/21 3:13 AM, Volker Vogelhuber wrote:
> I'm working with Yocto Dunfell. I just wanted to remove syslog
> from the busybox package by setting VIRTUAL-RUNTIME_base-utils-syslog
> to an empty string. But it seems like the syslog.cfg is added to the 
> SRC_URI
> independent of the VIRTUAL-RUNTIME_base-utils-syslog which in turn will
> enable syslogd again. Wouldn't it be better to include syslog.cfg in
> SRC_URI only if VIRTUAL-RUNTIME_base-utils-syslog is set to busybox-syslog?
> 
> So something like
> 
> ${@["", 
> "file://syslog.cfg"][(d.getVar('VIRTUAL-RUNTIME_base-utils-syslog') == 
> 'busybox-syslog')]}

yes. Please send this change as a proper patch for inclusion to 
openembedded-core mailing list.

> 
> 
> 
> 
