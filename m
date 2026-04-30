Return-Path: <m.cavallini@koansoftware.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD9B1FF8875
	for <webhook@archiver.kernel.org>; Thu, 30 Apr 2026 09:25:40 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.16143.1777541130883034319
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Apr 2026 02:25:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@koansoftware-com.20251104.gappssmtp.com header.s=20251104 header.b=lNpfpoM7;
 spf=pass (domain: koansoftware.com, ip: 209.85.221.50, mailfrom: m.cavallini@koansoftware.com)
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-43d64313c39so522691f8f.3
        for <yocto@lists.yoctoproject.org>; Thu, 30 Apr 2026 02:25:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=koansoftware-com.20251104.gappssmtp.com; s=20251104; t=1777541128; x=1778145928; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:organization:from
         :content-language:references:to:subject:reply-to:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lixuyGV8G/yln/jqQP9ArpbGbteXRN2UGRjmnZ8+HUY=;
        b=lNpfpoM7I97QB5m6o2RXQDoBTxpziHv7XF8lNnhMAEIWSmLhpUufrVUhWFugph+Jjc
         CJx/IzIcld4u6RgitPI8tPzh/O/Ix1H4YgppUaWocCx0+y4uGtmeyi3HfJJOOkUEUeh7
         OYXIWHuGxJpxC6TtXPkfnljwYQKYqeu3SqsA0cieLYnC7cpL1H+FFqDWS0IRzzYVnO+7
         c3tSSVRwEq7abnoyfRC1kWI62WGk/K9t6cnsbNb3ZK09OS5xZ7kOiWxXo+zXe1OhPZxk
         Q8gka+luzSAQsXSVGL8dEFgPeLtb2iaGNEYGm7JH0GZtlXXscSpOfqbx23rzw0Z8ZTIx
         09Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777541128; x=1778145928;
        h=content-transfer-encoding:in-reply-to:organization:from
         :content-language:references:to:subject:reply-to:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lixuyGV8G/yln/jqQP9ArpbGbteXRN2UGRjmnZ8+HUY=;
        b=jOZGBQLJ+OPXEvDc3CiZyvYsBpvFrJg9AIF4Rvqvi1RW0MsRsHjIGyhk2P7/cEJ+c9
         l0edQj+P3GXvtUOWxXVfHRGfU1imnbgJl/pYOSGElZZNGuwvo6rG2yDb5JcVQ+ULbUE/
         yd6G1VoFsqiAxpmaLcKNF2FplPjGPxaMQQry/a5Qq66EDVZ+0Joe6enmzkRBmySoVNbr
         6Ywya/b8Hoqrz/jDCIGmgvlx9H6TJqmcQQhcCHQevJJXy344CMBQRFlYSZ4qCf6BPYdr
         GSSv26h8smoK+/yCRp+N5jrlTlRjYOuZeYAT7j6nQ9Az1UHaAF6tjBSOuFDOnaslCCR3
         pufw==
X-Gm-Message-State: AOJu0Yz7HlLXnfwvc0MxNl976HHF4Y9En0sb5V4dlkOB3HOxmuNEDjWK
	U5BzD+fdAE196/4S5p//dSjWGbrUkYjpqiJ357NQQMegNERTjkjbCYq8l9BMTHqjcOq4ZWVY78U
	qwera5tj8zHo=
X-Gm-Gg: AeBDietQC6y4iIgyER5ZDOVQLX3SuQd5ZXQYYPj+D6IW+ZwiLRy+DfnfMGFriZfOvHz
	wYuRV+okIg3hgxgIywzm/itSdSw7+Oa4wLqEjwiLlA+46kHCVkyA68sIS9xzE4k9IN61Q3JuUTU
	wFyOqeuaMeBh4PZ83b1vvDXNoq6FIOK7fMq4Z1KB/h+6kEPkYRFjPw/wiExlw7ET7pgaKuDHcA4
	0WD3YDNhtEtTurQDh33nGpk9WE50eE9DWfvJ6RFxS61D+zQLrLiNrPGHh8YGNrtR19uOOPdYQB+
	+2tPImfiSuYk/DTpGM9uCVTq3zsv2PNlSeulroiD5b1Nnv+LgsWaEyHxbgFI04uhccZjLr378H2
	f3b/OTnuW+bpMFNYwfPk15rfR70+zBWx0GGetkhZOXF5C21zJFpNqP4L2I+yEHOgxVd1LFkJWvM
	Ql+F1lq+IbaM4H1Wj9zC1oa8L3RknX0VPZ8gInjseozjgY2JF8LidxHEypnoMKjXR9HtABsv4dI
	sqWrY08SvNnn4G/8OeJIg==
X-Received: by 2002:a5d:5c8a:0:b0:43b:9c73:2933 with SMTP id ffacd0b85a97d-4493d02bacfmr3544607f8f.15.1777541128388;
        Thu, 30 Apr 2026 02:25:28 -0700 (PDT)
Received: from [192.168.0.6] (host-95-229-48-41.business.telecomitalia.it. [95.229.48.41])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-447b3d48517sm10373399f8f.5.2026.04.30.02.25.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Apr 2026 02:25:28 -0700 (PDT)
Message-ID: <ddedf16e-41c2-4586-b5e3-1c115fed27f1@koansoftware.com>
Date: Thu, 30 Apr 2026 11:25:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Reply-To: m.cavallini@koansoftware.com
Subject: Re: [yocto] Rockchip project: opinions on RAUC vs SWUpdate?
To: yocto@lists.yoctoproject.org, rpjday@crashcourse.ca
References: <3d16b44f-0617-c8a9-4748-b817ff9bef8a@crashcourse.ca>
Content-Language: it-IT, en-US
From: Marco Cavallini <m.cavallini@koansoftware.com>
Organization: Koan sas - Bergamo - Italia
In-Reply-To: <3d16b44f-0617-c8a9-4748-b817ff9bef8a@crashcourse.ca>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 30 Apr 2026 09:25:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66462

On 30/04/26 00:17, Robert P. J. Day via lists.yoctoproject.org wrote:
> 
>    (I was going to poke Rockchip guru Quentin Schulz privately about
> this but figured, might as well get lots of opinions.)
> 
>    I'm working on a new Rockchip project and while previous projects
> here have assumed using SWUpdate for OTA updates, I notice that the
> meta-rockchip layer's README refers to an example of using RAUC for
> A/B updates:
> 
>    https://git.yoctoproject.org/meta-rockchip/tree/README#n125
> 
>    I'm curious ... do the Rockchip folks prefer RAUC to SWUpdate? I'm
> not wedded to SWUpdate and am open to arguments for trying RAUC
> instead. Thoughts?
> 
> rday
> 


My two cents go to SWUpdate.

Greetz,
--
Marco Cavallini
KOAN - Abinsula Group
Bergamo, Italia
✆:+39 351-9518710
https://KoanSoftware.com

