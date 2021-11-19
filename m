Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA9C2C433EF
	for <webhook@archiver.kernel.org>; Fri, 19 Nov 2021 09:04:39 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
 [209.85.221.52])
 by mx.groups.io with SMTP id smtpd.web11.6362.1637312678275370586
 for <yocto@lists.yoctoproject.org>;
 Fri, 19 Nov 2021 01:04:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20210112.gappssmtp.com
 header.s=20210112 header.b=wTzjo81N;
 spf=none, err=permanent DNS error (domain: theyoctojester.info,
 ip: 209.85.221.52, mailfrom: jester@theyoctojester.info)
Received: by mail-wr1-f52.google.com with SMTP id d27so16900386wrb.6
        for <yocto@lists.yoctoproject.org>;
 Fri, 19 Nov 2021 01:04:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20210112.gappssmtp.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:to:references:from
         :in-reply-to:content-transfer-encoding;
        bh=rCVHj1O10s/6vFVH+cmuoNKK5nN8oXpu9gaYGNZtgF0=;
        b=wTzjo81NqXEEbSM3cQcodGwqZYWbLbqyIZYBp6qB3HJ9I5Hab6qWQMh2m83MlRk2ot
         ENzpGhrY5gl4bPWUCxf1nrTp4i1zmKQGq8B3c+IfnR4eKbGuaVU7W/TMiwLMeUTnWAfi
         eiiyiSQTQtooKWotdKP0+HEK6E8pdEa+hlO6NUj/Cj2HxhwLZP9OHVJB//s2Ql6uY1cA
         gasznu/kvy5p32vJvE+XmOvqI2bKdZy08Dq5QzNVwrmX4xCTEPIIqZic/Fuxi9gt2sqo
         vPIbiJWsuxQ9fFt3U20n3O3zz/VPYA3BrPpd3ymMSd+M7Zg5rg3CwnV6YJqmMf55AnFf
         7jCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :to:references:from:in-reply-to:content-transfer-encoding;
        bh=rCVHj1O10s/6vFVH+cmuoNKK5nN8oXpu9gaYGNZtgF0=;
        b=MkdEqW4ObYa+htAtkh75vKpuqQ1a38Ay6sEZzY0457tMMFz804bzy9LjBzXUThVFee
         bDeDuWrJDvb5fXsa90NigIq6wYUqZb6uAGfoO3FLDiBC0jNFVQMUWkRwO+SemOE0IWgM
         Ub8J85ryFF6hJtMrn2gs/D7yqAJIqELhEGgEVw5M9zaSHzLanIlUVbNv+5KNXt8ooGVL
         7DRG2MFrIbAbsPKGDLZbbFUqqcq2L+KH6D5pKNR4rwhVs5M0XyBTVolecO5oRGd2k2TI
         Z5v7ZI/vqALCj+9EE4+4n+h6GhHTGW0Ja1roWxX1GCGctaS0qgd4raEEmIH5sFnZ/GrB
         TkAA==
X-Gm-Message-State: AOAM532lPVSqgBGzVmyEkN/Nh9ksBFNIP8v71m8hvMOD3Z5lZzXGxVsf
	OshWnxy3ur93ByrADlKcTLb+CmOqvMouAA==
X-Google-Smtp-Source: 
 ABdhPJzcRySjs3hs/lCro4GNuLUSgktj1L64afaD28LsAtwdH42JPaszBI2fnA5hxGxMd1lHWOtSfA==
X-Received: by 2002:a5d:4582:: with SMTP id p2mr5458987wrq.364.1637312676592;
        Fri, 19 Nov 2021 01:04:36 -0800 (PST)
Received: from ?IPV6:2003:a:a33:e000:9436:93eb:ef2b:ef?
 ([2003:a:a33:e000:9436:93eb:ef2b:ef])
        by smtp.gmail.com with ESMTPSA id
 p12sm2796307wrr.10.2021.11.19.01.04.36
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Nov 2021 01:04:36 -0800 (PST)
Message-ID: <e6e4d436-cdbc-6d45-1cf3-4c0587e162a8@theyoctojester.info>
Date: Fri, 19 Nov 2021 10:04:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: Re: [yocto] #yocto Remove hexdump from image
To: yocto@lists.yoctoproject.org
References: <0GHg.1637312524635146821.KuMm@lists.yoctoproject.org>
From: Josef Holzmayr <jester@theyoctojester.info>
In-Reply-To: <0GHg.1637312524635146821.KuMm@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 19 Nov 2021 09:04:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55371

Am 19.11.2021 um 10:02 schrieb lucapirozzi via lists.yoctoproject.org:

> Hi everyone,
>
> I'm trying to remove some application, some of them packages and other 
> being busybox parts.
>
> I'm trying to remove hexdump from my image and I configured every 
> busybox defconfig to have CONFIG_HEXDUMP and its REVERSE CONFIG to =n.
>
> But I'm finding hexdump in my image filesystem nevertheless.

Check oe-pkgdata-util find-path in your build to find out which 
package/recipe to actually look at.


Greetz

>
> Any help?
>
> Thank you and Regards.
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#55370): https://lists.yoctoproject.org/g/yocto/message/55370
> Mute This Topic: https://lists.yoctoproject.org/mt/87163819/4689568
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [jester@theyoctojester.info]
> -=-=-=-=-=-=-=-=-=-=-=-
>

