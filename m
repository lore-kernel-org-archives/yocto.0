Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
 by mx.groups.io with SMTP id smtpd.web11.691.1616610341675431722
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Mar 2021 11:25:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=cZOjGVhT;
 spf=pass (domain: gmail.com, ip: 209.85.215.173, mailfrom: raj.khem@gmail.com)
Received: by mail-pg1-f173.google.com with SMTP id m7so15210108pgj.8
        for <yocto@lists.yoctoproject.org>; Wed, 24 Mar 2021 11:25:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=+mFuu/jA6RlDw1RSqgof1kZqDDqqy+KBBVxddMw9uF0=;
        b=cZOjGVhTgolWLEU/HkJ2ZyLG7n9M04rRgmARmp4Xgxq/BoUkkkg8CnzJVYjBmiL5g7
         +cB8aG28RxiDJRbvtFgxQ0/8q1mLSMH/m8L6B765ry7CWs5JmrTvp4aIJxHiKbRtyvye
         NEFJVNuPYVLO5Ut3Uhi118dvEyvDK3+NN7+wuRrrs6m8pR76L3OAMLmXIXPxUm+6Eqxw
         fiLFExy/h5DnTL6qRPIuqjFjhKGwqm6h0dP1gD1fn7YQ4f2zsyX8caHlMtXMgitVAH2y
         3Y7HUSN+YtMB3divOnrZDmubmafQ5gjh3Q51NKjjdQyTuHFzpjjhMMr1tiwEz1rBS07Q
         onjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=+mFuu/jA6RlDw1RSqgof1kZqDDqqy+KBBVxddMw9uF0=;
        b=AHstOANpvWUlmdYVHzuOP/bLj+elD7y4gh4Xi3MDM8AuRlFKylwZvY4SYPvOO2Ije2
         8uqnSjwJPI62kgpfwbjgrElGl/pRjzqlIC/XdUtbYCwgofvH2QKQsDwfBWwHSIznqe6w
         O0f/aDEmhHIKamLXQBYbLB7gqzne2PzgwaUvrAGWOux/L6EYLMa8xCoPhDJtLHMuKEV5
         H2+tSepPhHQiJ+DoPp2Xjai+h189q0gBLVVYtEsl84JRiW69qUr5rvbA2rM2hHM8zgta
         E8xE0zfkt29SJeOYKUhfigxZiXcGAOSFKe5f6xZzR/y4xwBrXbwIrLPz5565iy7wMw/2
         Aolg==
X-Gm-Message-State: AOAM5318a+ikDSrvkK2aBzn8Ld0gIHqRI+MwfqTkba8zNP/CbLLqqfvv
	IKu9pBo6Pcklp7VtPfVFVOd0Tg9YhG6cog==
X-Google-Smtp-Source: ABdhPJxl+Yh4kB3BysWffMpOgp41DJ6tOef8UdR0mk1XizMCrJnCfLkE0RlsIjF/EHc7J6NoKmPdyw==
X-Received: by 2002:a63:cf4b:: with SMTP id b11mr4208431pgj.257.1616610340752;
        Wed, 24 Mar 2021 11:25:40 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:a0f0:2da1:1afd:1712:ea8b? ([2601:646:9200:a0f0:2da1:1afd:1712:ea8b])
        by smtp.gmail.com with ESMTPSA id e131sm3465551pfh.176.2021.03.24.11.25.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Mar 2021 11:25:40 -0700 (PDT)
Subject: Re: [yocto] Change (and remove unused) init system on a per-image basis #yocto #bitbake #systemd #sysvinit
To: lel@iesy.com, yocto@lists.yoctoproject.org
References: <cZz1.1616595127408925958.SGte@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <01be3f74-a7b1-7e96-5c25-f1748bda9ffb@gmail.com>
Date: Wed, 24 Mar 2021 11:25:39 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.16; rv:78.0)
 Gecko/20100101 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <cZz1.1616595127408925958.SGte@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

you are better off by having two different DISTROs like poky and 
poky-altcfg is.

On 3/24/21 7:12 AM, lel@iesy.com wrote:
> Hi all,
> 
> I would like to change the init system (systemd / SysVinit) on a 
> per-image basis.
> Therefore I added both "systemd" and "sysvinit" to my DISTRO_FEATURES.
> 
> I set this inside my *image-systemd.bb* to make sure that systemd is 
> available as a distro feature:
> 
> REQUIRED_DISTRO_FEATURES = "systemd"
> 
> 
> Now I want to prevent the "unused" init system (in this case sysvinit) 
> from being added to the rootfs.
> Therefore I tried something like this inside my *distro.conf*:
> 
> DISTRO_FEATURES_BACKFILL_CONSIDERED = "${@bb.utils.contains('REQUIRED_DISTRO_FEATURES', 'systemd', 'sysvinit', '', d)}"
> 
> 
> As expected, this leads into the following. So far so good:
> 
> $ bitbake image-systemd -e | grep DISTRO_FEATURES_BACKFILL_CONSIDERED=
> DISTRO_FEATURES_BACKFILL_CONSIDERED="sysvinit"
> 
> But the final rootfs still contains sysvinit scripts (/etc/init.d/*)
> 
> Now the strange thing:
> If I instead do this inside my *distro.conf*, /etc/init.d is not being 
> created, exactly as I wanted:
> 
> DISTRO_FEATURES_BACKFILL_CONSIDERED="sysvinit"
> 
> 
> So I don't really understand why this solution doesn't work.
> Any help would be appreciated.
> 
> 
> Thanks and Regards,
> Stefan
> 
> 
> 
> 
> 
