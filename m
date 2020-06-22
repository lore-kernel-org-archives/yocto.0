Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
 by mx.groups.io with SMTP id smtpd.web10.2177.1592847057714644254
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Jun 2020 10:30:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=XnEhwDhb;
 spf=pass (domain: gmail.com, ip: 209.85.214.173, mailfrom: raj.khem@gmail.com)
Received: by mail-pl1-f173.google.com with SMTP id y18so7851385plr.4
        for <yocto@lists.yoctoproject.org>; Mon, 22 Jun 2020 10:30:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=sUaBZfun8JHcCx8rbpy17gXS3sr5+Z7uHvjpAL7DlSw=;
        b=XnEhwDhbi28gyNUx0wHsXgxS1XSEoEteCkMWetKIa3mpPQKMYKub2T+V9Z2DDo5/Lp
         7Q78/5M82wWXc8NTRdpiH1zkD7jJHvmEvCwL1triLhkoRIcsrmdIDF3UOsekvTII6UsW
         RdECHsvIzzV1WWEi6PHzTq/FKYC7RAMs/z9lh933QoohC0xRqaE4yvC4TcvhC4czkwr9
         rSh5/8pl7Bp7aVNxlBQNveqGf2z1byBWXKp/vuqcIKvzt0cEdDn+11oLuimmjxVpomkx
         iU0EoxIlTYd4f0ek/ie1ve9WdsWtQu6Jia1rGZG+ugHhQfzg0wn87zkevbwQieOjHscd
         hPzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=sUaBZfun8JHcCx8rbpy17gXS3sr5+Z7uHvjpAL7DlSw=;
        b=Uc1nce+bDPyHNKNtJHlTIyzPvcjhXwcwMQseQ2XFIENrYk3zLBAihZbvwNo4BA0C17
         +odHRlO56OIcrt3X8KOGIXuJLuSjNcHw+LpZzC8s5PNsKTj9m7+td602oIik6svJjuGV
         0gh6a+iepvtPk4VqrTafTWGY0QKdZa982cwH5qHWyfIIvOBIgPkPjBKfG+bxEzNsjIFz
         fRbJC0/zFPb43ItPBTvEh5Na84QbxQBJ3AUYFezBAm7MBsCoPKu24LU7W7gDKLtcRVES
         6oXfdQOkXcc/+4YlfT9yfVUtPmvSAZJfFRGfnoadP8K3Jip/vSFTiJom1KmOv5KVEw/J
         3TcQ==
X-Gm-Message-State: AOAM530ajxEsjLywkKd6/u/2xUn/dHLNk7wXwuotJwap3so/WQxhoHXW
	6rqSxdp7J9MmYfbjarrRcQKTwQ8h1X4=
X-Google-Smtp-Source: ABdhPJzPHJBzegAtJ6g/+1jrS6xUJD/bKMbYi7EtO/gc61jkBSldSywjCmpLzQa6tAnAMuOz799McA==
X-Received: by 2002:a17:902:ac8f:: with SMTP id h15mr11769903plr.238.1592847056896;
        Mon, 22 Jun 2020 10:30:56 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0:3ce8:8e51:3e8d:ab7a? ([2601:646:9200:4e0:3ce8:8e51:3e8d:ab7a])
        by smtp.gmail.com with ESMTPSA id q9sm16050090pfu.45.2020.06.22.10.30.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jun 2020 10:30:56 -0700 (PDT)
Subject: Re: [yocto] populate_sdk couldn't create the SDK installer for my image #sdk
To: Robert Varga <robert.varga@getinge.com>, yocto@lists.yoctoproject.org
References: <5xYU.1592822873751082071.SfhM@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <d924ce04-1a8c-b064-f736-3f348a9ed273@gmail.com>
Date: Mon, 22 Jun 2020 10:30:55 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <5xYU.1592822873751082071.SfhM@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit



On 6/22/20 3:47 AM, Robert Varga wrote:
> Hello Yocto Community,
> 
> I am new to the Yocto Project and need some help regarding creating the 
> SDK installer for my image on a Ubuntu 18.04 host machine...
> So far I was able to build an image for my target (based on latest 
> Warrior branch). The image is based on the core-image-full-cmdline as it 
> gets referenced by the corresponding recipe my-image.bb (see attachment):
> Additional, I created an distro configuration file mydistro.conf which 
> includes the poky.conf distro configuration file (see attachment).
> When I execute bitbake my-image -c populate_sdk, I get following errors 
> within last task (while the do_populate_skd task):
> <snip>
> | NOTE: Executing create_sdk_files ...
> | DEBUG: Executing shell function create_sdk_files
> | DEBUG: Shell function create_sdk_files finished
> | NOTE: Executing check_sdk_sysroots ...
> | DEBUG: Executing python function check_sdk_sysroots
> | DEBUG: Python function check_sdk_sysroots finished
> | NOTE: Executing tar_sdk ...
> | DEBUG: Executing shell function tar_sdk
> | DEBUG: Shell function tar_sdk finished
> | NOTE: Executing create_shar ...
> | DEBUG: Executing shell function create_shar
> | sed: -e expression #6, char 21: unterminated `s' command

are there any aliases etc. to common programs like install in your 
environment ?
maybe do bitbake -e  my-image and inspect the output especially 
do_populate_sdk function and see if you find some sed cmd being called 
with invalid options.

> | WARNING: exit code 1 from a shell command.
> | DEBUG: Python function do_populate_sdk finished
> | ERROR: Function failed: create_shar (log file is located at 
> /home/varga-r/projects/yocto/build/tmp/work/mymachine-poky-linux-gnueabi/my-image/1.0-r0/temp/log.do_populate_sdk.126574)
> ERROR: Task 
> (/home/varga-r/projects/yocto/poky/meta-robert/recipes-core/images/my-image.bb:do_populate_sdk) 
> failed with exit code '1'
> NOTE: Tasks Summary: Attempted 3588 tasks of which 2265 didn't need to 
> be rerun and 1 failed.
> Summary: 1 task failed:
>    
> /home/varga-r/projects/yocto/poky/meta-robert/recipes-core/images/my-image.bb:do_populate_sdk
> Summary: There were 13 WARNING messages shown.
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
> </snip>
> 
> The complete log log.do_populate_sdk.126574 is also attached.
> 
> Could some help me to find the root cause of this issue? Any help would 
> be appreciated.
> 
> -- 
> Rob
> 
> 
> 
