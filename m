Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1ED0FC433EF
	for <webhook@archiver.kernel.org>; Fri,  8 Oct 2021 14:04:16 +0000 (UTC)
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com
 [209.85.215.174])
 by mx.groups.io with SMTP id smtpd.web12.9772.1633701855425628403
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 Oct 2021 07:04:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ZSWnNKMM;
 spf=pass (domain: gmail.com, ip: 209.85.215.174,
 mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f174.google.com with SMTP id h3so3200970pgb.7
        for <yocto@lists.yoctoproject.org>;
 Fri, 08 Oct 2021 07:04:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=5DT2uJhzXfmfLCGkZrkQeDTgacqz+SR4VFNgUiTC0VE=;
        b=ZSWnNKMMaBlQW7XuZS7lBzUSenXwO4nzwiIiCwInikuQwYlmJdwvr53EU9OdiuHoUv
         RVzklAtenaLtPZxGxRW2jfa+WDJzeYsWMFZd9R3cpWiOWHhOcn650++rg6eVymcZB6C0
         OPMfPSB7QK4/ahxBGXM6q2B4229hRYn4FYOdX7OGE9Tscr8TUmIaMG1uEx6dfA1Op4Ta
         3Csw85o1zmi4DL3AzGLNqY06ZNtbU2RHvjgwkUJ4a2bV/H32UNVJQZ2VtHL3RcqFtun1
         PdudwFCHR8/L9HwGjYrTTcong2wUtkAvE9ye95a0id2eyYKxsztkxYkkBMuhb9+YThNU
         tdAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=5DT2uJhzXfmfLCGkZrkQeDTgacqz+SR4VFNgUiTC0VE=;
        b=sjSY4ny6Y1SjDesTKm5nIEYCYK1PftLw232ETLrKO76VutBIb4mEhs93KoJtuF60eg
         XnKFZkVkQhvSIBymWKxQjSaRchbGk1wx4BzbNsozlPTMhiTXeLVLn0WnYzAB3pSe5APU
         Nan8VBe1RF1IhcTwAm8FUdSubuECuCZl1dBp3jTYgAgakDf9FSACGXweHoTLEFj4FQ06
         ZaoVmT0QpovcpVL5TzQ+xq+DS2ehZ1TiADLvOdBeV3m1EYDsUYnHcFveLjnglo0LHRtG
         Zyo+17WDjuBi8ThHcmPZWWqHaPOMtwCftAdc8oOiOz+yZvAiz1fVpKl5s2zXRZZwv/V7
         eoRg==
X-Gm-Message-State: AOAM532xVrNtl9cgxnu9mwdV8qeGW2CUZ8KlngVJ/nklJgM9coYlgdgH
	IdakpV7lSC5nAs2FsZPl8aEIT0IkjGA=
X-Google-Smtp-Source: 
 ABdhPJyDrGsWMeyut5TWZuJL7cV4nV0wMrhvedOMje7dvO+xH5DeFzIdGpS6Cnq7hkgDm9zHfaRLiQ==
X-Received: by 2002:a63:334c:: with SMTP id z73mr5000884pgz.160.1633701854569;
        Fri, 08 Oct 2021 07:04:14 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:a5c0:247a:99df:2915:8a0c?
 ([2601:202:4180:a5c0:247a:99df:2915:8a0c])
        by smtp.gmail.com with ESMTPSA id
 l11sm11074303pjg.22.2021.10.08.07.04.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Oct 2021 07:04:13 -0700 (PDT)
Subject: Re: [yocto] How to submit/create a new repository in
 http://git.yoctoproject.org/
To: thloh85@gmail.com, yocto@lists.yoctoproject.org
References: <qnXL.1633665729022559214.lAcX@lists.yoctoproject.org>
From: akuster808 <akuster808@gmail.com>
Message-ID: <c6f6c6b1-fb24-dc70-0f50-dc71a209e72c@gmail.com>
Date: Fri, 8 Oct 2021 07:04:12 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <qnXL.1633665729022559214.lAcX@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 Oct 2021 14:04:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55000

Hello Tien,



On 10/7/21 9:02 PM, thloh85@gmail.com wrote:
> Hi all,
>
> I'm from StarFive and am working on distro for our risc-v based processor.
> We currently have a repository
> (https://github.com/starfive-tech/meta-starfive) and wish to get the
> repository to be part of git.yoctoproject.org.

Since you already have a layer, have you thought about registering it
with the layer-index ? http://layers.openembedded.org

- Armin
> I couldn't find any information on the process to get the repository
> into git.yoctoproject.org. Can someone help show me the process?


>
> Thanks
> Tien Hock
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#54990): https://lists.yoctoproject.org/g/yocto/message/54990
> Mute This Topic: https://lists.yoctoproject.org/mt/86163136/3616698
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


