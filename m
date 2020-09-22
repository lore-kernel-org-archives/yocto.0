Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
 by mx.groups.io with SMTP id smtpd.web12.2299.1600757381799371123
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Sep 2020 23:49:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=mFgU2ApA;
 spf=pass (domain: gmail.com, ip: 209.85.215.177, mailfrom: raj.khem@gmail.com)
Received: by mail-pg1-f177.google.com with SMTP id k133so6394082pgc.7
        for <yocto@lists.yoctoproject.org>; Mon, 21 Sep 2020 23:49:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=TurHvxMhwWNcmGVCjndxvLNv+/HqxyVWEuscVATlCbM=;
        b=mFgU2ApA4ed65P6Mg85yCRsDSML9tY0Cf4Hsq9yu3AT5siWYDkc1o29LKPa/SEPujZ
         FKL1y3meOp09HcGptWe54/pOQRXtyAfRqaYOJKck5uVjFGnBDSDJ3ocr0Eua69SoTHgf
         7DoJltdBo2ZcsfThMTHZ7Z02HISPGXtaB5qM4Yr3Dqg1gJJSIO/DARMl0Yhl8AIQScGG
         fYYp9zCq6PPLG4YQLRvxM0XmhP9v6mr5wDABjmWeBdFI+U0PhcdREZ/qmQIxnnuVNaua
         /yAGWqC6tm9DAqTGBDpkvwe5LqtzEcYcRAd0eV6rNxjH3Rt2PfPYG/HRahCLrfS5b2xv
         ozPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=TurHvxMhwWNcmGVCjndxvLNv+/HqxyVWEuscVATlCbM=;
        b=MwUbIYslwdK8KL1aPe68KLoSPLcX5GV+YMehXcSKVF2a+btJvSHG9zVHSVMcgA6nyy
         qRpJPfVpVUABLQ/0cPXh+CmSXJMGWqTosnV8FniSev757uvog614Xlm8EzylinAY0uYW
         /E+F38qAn1ZZPmXtqhV0YM6iVvy02ITbey4DUaDMsgs5xeieH++/LkNZBDENJUf8d/x7
         9t4cKMN4HIn68bEyK9mRMDwse6s0Qar1rVSNsjU49lzpVlALc71f/v0SrZXQODmL5WzG
         eM9AU2FmZhCQncVAcvLbsD9p4SwsVbgFvBQNwgGoP8mtKgp0CqIhxEsAQyVaQwbPAY1r
         TSNA==
X-Gm-Message-State: AOAM533P0AMqDPhuAoEh+snH6d4kOajoMi9los8PaslO8qX46BO5rhxr
	3Yaw9+yD3HBoGSm/rJAE4X9Hb+tAfm8Rdg==
X-Google-Smtp-Source: ABdhPJxcuuN28tMnXfU64DPV8d/sIGl2ao+lpswGKbVDA42TPUMTcZHyz8VaSimQzARFLJzfHkQDeA==
X-Received: by 2002:a63:e813:: with SMTP id s19mr2460837pgh.33.1600757381067;
        Mon, 21 Sep 2020 23:49:41 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0:28e0:938b:f1c2:a4a6? ([2601:646:9200:4e0:28e0:938b:f1c2:a4a6])
        by smtp.gmail.com with ESMTPSA id 25sm13543115pfj.35.2020.09.21.23.49.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Sep 2020 23:49:40 -0700 (PDT)
Subject: Re: [yocto] #yocto systemd not able to start sshd after a reboot
To: srijan.nandi@gmail.com, yocto@lists.yoctoproject.org
References: <CAGAf8LyoLx45em3it8yAaB7WqDJWZLuBBXvLFLvWRLD-4cFeaw@mail.gmail.com>
 <13648.1600690673184412823@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <40f12cdc-6492-eba2-dc74-c2efdbe82aed@gmail.com>
Date: Mon, 21 Sep 2020 23:49:39 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.2.2
MIME-Version: 1.0
In-Reply-To: <13648.1600690673184412823@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit



On 9/21/20 5:17 AM, srijan.nandi@gmail.com wrote:
>     /Seems that some leftovers from System V still reside in YOCTO...
>     Correct???

Yocto project supports sysvinit as init system option as well so no 
there are no leftovers.

>     /
> 
> Not sure about that.
> 
> The problem I faced was because there was a sshd.socket that had the 
> following line in it. The sshd.socket comes with openssh.
> 
> Conflicts=sshd.service
> 
> So I had two options. either to add the ExecStartPre in the sshd.service 
> file or to remove the Conflicts line in sshd.socket.
> 
> I choose to remove the Conflicts line and add the following in the 
> sshd.socket file.
> 
> After=network.target
> Before=sshd.service

Usually you use socket activation for sshd then you would enable 
sshd.socket and not sshd.service, socket will be listening on incoming 
connections on ssh port ( 22  by defaault ) and launch sshd.service 
whenever there is incoming ssh connection request. I suggest you should 
perhaps follow this approach as well, its also efficient due to its 
on-demand launch nature.

> 
> Thanks and Regards,
> -=Srijan Nandi
> 
> 
> 
> 
> 
