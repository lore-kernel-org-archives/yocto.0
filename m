Return-Path: <xerofoify@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A2B3EE6B6A
	for <webhook@archiver.kernel.org>; Fri,  6 Feb 2026 22:48:02 +0000 (UTC)
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.3201.1770418073558285085
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 Feb 2026 14:47:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=iQ+a0lSv;
 spf=pass (domain: gmail.com, ip: 209.85.222.179, mailfrom: xerofoify@gmail.com)
Received: by mail-qk1-f179.google.com with SMTP id af79cd13be357-8c533228383so158564085a.3
        for <yocto@lists.yoctoproject.org>; Fri, 06 Feb 2026 14:47:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770418072; x=1771022872; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=yKzAo8Gnfz3zkvBRTlz8S2tbiU3zFOMHYejq+V2rBoQ=;
        b=iQ+a0lSvOFqitVzDeGLV0AsliJcjtEW+zybCsQHXHG8kAaEbAHEX9wSOA52aP/HeGi
         Rq0tmCgu8zBikgM9Ff+PuJgojV+0j7ssJqRUCgsvYmnrbA1iFh/PyInQ8mUsJ8tRFYVo
         HOrygPvzr2h8MaGFAqp55G+IOgkcNLdJGV9W4BY1gOqt51PRwkLdr5xMMriWSsw7cOhZ
         FwIV3sTKUxMwCfR01W5Vb7G4PBBQybrjy5rOyyi0o28wG57ocA12xxnzE1SKV4FopVO7
         FR93wcihURrDezk22zvJfzKOs9DusSDiiJEsbk1KpU48QyUR1noqM6qN2k892EeV2spQ
         1M1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770418072; x=1771022872;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yKzAo8Gnfz3zkvBRTlz8S2tbiU3zFOMHYejq+V2rBoQ=;
        b=Q9oW1T+LInWBkquWr8OzmRRlqncG4ngf64LXKU8c6SHvwVDtmdtA5nnZZJm6HivR3h
         hg1/2SIGb2a2hK+G634/7CLTHHyhBYQCM2iYEIfj/Hk/Ano3tFydSBJy37TbVeDeZ9Z1
         lyxOU8uknpEVce86KREzN20SnWKPu2hMNUdqGqjerUWknHOLvLFYVb3pf8G4uBPScwoV
         L0ZKVoOE8qoAhpfEEOFQgQvhsIexgkiZaxhjsxWUEV24vVAJ/btQ2Umw9/2WC1dU8ZlV
         eeMwIJ5GKS9eHrI/kxg2FVnQJ8MmJqOQo1aRj/EejJNzAxLqSf/aSDrz01fa55pQgYNW
         nMng==
X-Forwarded-Encrypted: i=1; AJvYcCWC3l0vDV09MzCraTSXjfADoKOKtx5G/stHftiqI8bNrZ9ZkSHlEBZPuED4p5zmeetf2Ou/4A==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YzaFxSugGaQPSbApRezUMVPYOrJGeXyO1IQg9y5Tk5MKdD9y+FW
	dPp3Lx2jrZSILVOdnREIYpdPG78vBw4q+u8qca++GDXAm3Ko9T8pP++SVOxIlw==
X-Gm-Gg: AZuq6aJaZv03dZUrIelT8UrB57aSpKCpyE0GDgNq+j0IarK8y0wsFXBrXFCedrENtse
	YGTCDzoMFmCi4WLt0LQQi+6WCsfeANTonIoCVQRkdalnPp3iM9VazF9HiVsOKC1c8quCkC+LER0
	GBn4mz445G7wU8fcq2u+e8pM9d5Et238/Eh/V6u/0WXT68n0Wpe30KQNAwpnGs4Pq4/9yR7Cg3f
	XlLXxSeAXlGtmsW8MFuXuYmKWuihwy7K9V9fqVTtkMgwt7LXn0XmkHSpaqdvsGrjmoRcqKuLTdf
	6ARHVUL3Zy7gvxsIrxR0uf/YseN1VgQPqa82f526Ebj5mLCYRhfgeF3bbr/DTywkcO+T2Mk41kV
	/ABsXmL/2KwdEO4/X363crVQfZ6s75S+n2P8l5TYmdDMUc4ueYtBIJ0NK5KRSG7CDUc/UDglfue
	XV8/WPGYt4CmVGWTkvaksRde34SfH2j3NIlN4WNWBp123RCY1b51wtnA==
X-Received: by 2002:a05:620a:4614:b0:8c6:e37f:ec2c with SMTP id af79cd13be357-8caeeb50f49mr593355785a.1.1770418072410;
        Fri, 06 Feb 2026 14:47:52 -0800 (PST)
Received: from [192.168.0.78] (173-230-162-209.cable.teksavvy.com. [173.230.162.209])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8caf7aef19asm255561185a.21.2026.02.06.14.47.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Feb 2026 14:47:51 -0800 (PST)
Message-ID: <13ceffeb-db33-489d-b36e-81868b778fc8@gmail.com>
Date: Fri, 6 Feb 2026 17:49:35 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Arch Linux - Python Newer than Recommend i.e. post 3.12
To: Ross Burton <Ross.Burton@arm.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <bebf26e4-234b-40c8-af17-1582d733cae2@gmail.com>
 <F1186EBC-365D-4CC0-8BAE-3837F922BE3B@arm.com>
Content-Language: en-US
From: Nicholas Krause <xerofoify@gmail.com>
In-Reply-To: <F1186EBC-365D-4CC0-8BAE-3837F922BE3B@arm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 06 Feb 2026 22:48:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66229

Greetings,
I'm on kirkenstone currently. So backporting the patches is probably 
best. However, what's the longterm strategy around this as its been a 
program for several years on more bleeding edge distributions i.e. Arch? 
Even when were talking mainline its a problem with Arch sometimes.

Thanks,
Nick

On 2/5/26 5:40 AM, Ross Burton wrote:
> On 5 Feb 2026, at 02:37, Nicholas Krause via lists.yoctoproject.org <xerofoify=gmail.com@lists.yoctoproject.org> wrote:
>> _pickle.PicklingError: Can't pickle local object <function AsyncServer.serve_as_process.<locals>.run at 0x7fea88598a90>
>> when serializing dict item '_target'
>> when serializing multiprocessing.context.Process state
>>
>> Due to being on Python 3.14. I would prefer not to have to use a backwards supported penv for Yocto alone. Does anyone have any experience with working on Arch and how to avoid these issues without either dealing with penv or yay for getting a older version of python, pre 3.12 I believe.
> 
> There’s a number of fixes for the 3.14 changes to multiprocessing in git, so you likely need to backport those. What version of Yocto are you using?
> 
> Ross
> 


