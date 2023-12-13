Return-Path: <ron.eggler@mistywest.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62D70C4332F
	for <webhook@archiver.kernel.org>; Wed, 13 Dec 2023 06:21:19 +0000 (UTC)
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
 by mx.groups.io with SMTP id smtpd.web10.30587.1702448470651836771
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 Dec 2023 22:21:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mistywest-com.20230601.gappssmtp.com header.s=20230601 header.b=Aogp7y37;
 spf=pass (domain: mistywest.com, ip: 209.85.210.179, mailfrom: ron.eggler@mistywest.com)
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-6cecb004339so3603234b3a.3
        for <yocto@lists.yoctoproject.org>; Tue, 12 Dec 2023 22:21:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistywest-com.20230601.gappssmtp.com; s=20230601; t=1702448470; x=1703053270; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=iglhtqqi1+N+gGsAvIM9QNTZ1IR/sSy+BPEbtUU5SaQ=;
        b=Aogp7y37c68skFb+O7xyaB0w/g7KtPMQ1bxUZrYu7ChfqXouwjqVzaLA93MXB47xQZ
         6/YfiVAhv637LIcMrOk3Gxvznx8T6wH3u8f5G93E3Fkqo6/AmWEqCT7qFEjsk0Jg3G0F
         A25k7K93ijWMdPm4H9GtAyrX5jIkPAEqCjDHXnd+VGUtRUvH8t/LVSNLUP0V4XVO31Br
         3e/bsPwODWpqr6PkEqbmRyvb+EAJCPODbeJ3U1EcFFvjJ627/igR8qVx30elnsaxCoGb
         5hiSgLXq/teVd9dSDD8XpJBbas4EU3XSiUK2vqJ3jhFguakNT/7xpaC70ZAcYMUUsByo
         2RKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702448470; x=1703053270;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iglhtqqi1+N+gGsAvIM9QNTZ1IR/sSy+BPEbtUU5SaQ=;
        b=G095WWdqXMaWb/5iWf7RZUXPkdXg9//WHYOqjL5CwNcsz4k0CbOARNiuPYZPJ5dHrH
         zd5IumMZZqFMkfa0zyRN0/choOG1QfPANtnlv67vbipW8qiu8DVYyCiPEIsHjDputKWt
         ZOHZGKoKtudQstJWPS46DWWzQOXYmSbEuYDozoXHRVS2eop4jzEwcFfw/eB1WC4fPDRm
         /oneN9BxxJt/e6KXkqhWQKxyzrFjWLxDfK34oVOLrgE5Q1egclJROHPaPh/398du3Aki
         BkthtpC03AGxWePk/uYnWM94n+Rrdj6BElNew7qqRHO2nQ/y8T/QoXz7nLqW/PJ3Z7Sq
         RLOg==
X-Gm-Message-State: AOJu0YxXKmNycaQYYr+5xwyixC/2TDTclRoiTz82hasGHHAREhBL1Nuy
	SjSC5f8s27tSIt3t0SEB8fsyng==
X-Google-Smtp-Source: AGHT+IGCtpcsLWOtWUuQB93LME8YnwoQ0aoctAqhMBa84hGNzk4/zA8z58HPyffM5BO3ZntwqDTTjg==
X-Received: by 2002:a05:6a20:1604:b0:18f:ef2e:807d with SMTP id l4-20020a056a20160400b0018fef2e807dmr4438345pzj.92.1702448469778;
        Tue, 12 Dec 2023 22:21:09 -0800 (PST)
Received: from [192.168.98.7] ([184.68.30.58])
        by smtp.gmail.com with ESMTPSA id q5-20020a170902bd8500b001c9d011581dsm9635891pls.164.2023.12.12.22.21.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Dec 2023 22:21:09 -0800 (PST)
Message-ID: <b68d8c1b-f52f-4326-92ad-56b703e527fd@mistywest.com>
Date: Tue, 12 Dec 2023 22:21:08 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] unable to resolve libtss2 dependency
To: Tim Orling <ticotimo@gmail.com>, yocto@lists.yoctoproject.org
References: <065ce852-27e3-4df2-b53c-d3a5ceb207ff@mistywest.com>
 <CANx9H-CwuY7=QXMA4reAKpZ00DzsOJxuCYXqDDpi+w9Lr_Tvnw@mail.gmail.com>
Content-Language: en-US
From: Ron Eggler <ron.eggler@mistywest.com>
In-Reply-To: <CANx9H-CwuY7=QXMA4reAKpZ00DzsOJxuCYXqDDpi+w9Lr_Tvnw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 Dec 2023 06:21:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61873

Hi Tim,
Excellent! Exactly what I was looking for!
Thanks so much!
-- 
mistyron

On 2023-12-12 19:42, Tim Orling wrote:
> 
> 
> On Tue, Dec 12, 2023 at 5:32 PM Mistyron <ron.eggler@mistywest.com 
> <mailto:ron.eggler@mistywest.com>> wrote:
> 
>     Hi,
> 
>     I need to add the meta-iotedge layer to my project:
>     https://github.com/Azure/meta-iotedge/tree/dunfell
>     <https://github.com/Azure/meta-iotedge/tree/dunfell> as I need the
>     aziot-edged package.
> 
>     Upon adding the layer and resolving its dependency on meta-rust, it
>     needs:
>     libtss2
>     libtss2-mu
>     libtss2-tcti-device
> 
> 
> https://git.yoctoproject.org/meta-security/tree/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.3.2.bb?h=dunfell <https://git.yoctoproject.org/meta-security/tree/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.3.2.bb?h=dunfell>
> 
> 
>     And I'm not sure how I can resolve these dependencies.  I can't seem to
>     find the sources for it but only packages for all different
>     distributions. Can someone help me out, here?
> 
>     -- 
>     mistyron
> 
> 
>     -- 
>     Mistyron
> 
>     -=-=-=-=-=-=-=-=-=-=-=-
>     Links: You receive all messages sent to this group.
>     View/Reply Online (#61871):
>     https://lists.yoctoproject.org/g/yocto/message/61871
>     <https://lists.yoctoproject.org/g/yocto/message/61871>
>     Mute This Topic: https://lists.yoctoproject.org/mt/103142467/924729
>     <https://lists.yoctoproject.org/mt/103142467/924729>
>     Group Owner: yocto+owner@lists.yoctoproject.org
>     <mailto:yocto%2Bowner@lists.yoctoproject.org>
>     Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub
>     <https://lists.yoctoproject.org/g/yocto/unsub> [ticotimo@gmail.com
>     <mailto:ticotimo@gmail.com>]
>     -=-=-=-=-=-=-=-=-=-=-=-
> 

