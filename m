Return-Path: <leon.anavi@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9482C35FFA
	for <webhook@archiver.kernel.org>; Wed, 19 Mar 2025 16:58:57 +0000 (UTC)
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
 by mx.groups.io with SMTP id smtpd.web10.14.1742403533951059150
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Mar 2025 09:58:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=P0bfHcvL;
 spf=pass (domain: konsulko.com, ip: 209.85.218.50, mailfrom: leon.anavi@konsulko.com)
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-ac3b12e8518so258999966b.0
        for <yocto@lists.yoctoproject.org>; Wed, 19 Mar 2025 09:58:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1742403532; x=1743008332; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=gsqnhOHWen/sXGHcvSNvBeFjGcuIW4iXtILnoOZPdL8=;
        b=P0bfHcvLvk1LtR+mRy/DNvkBrqA3h/MxdUEcC927Nvkd6Nn5hx5V6Bcp1nv48qsRDY
         7HurIGeRF+P4qRVSN4zOOW8a+CIcPtwJUxAz3xzvyWte8QuXYQhiOuRgsXTe5h4w2wVg
         NhWUqnstC7BAj+q7c/hxUCdlpmHBaMLwGJHJM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742403532; x=1743008332;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gsqnhOHWen/sXGHcvSNvBeFjGcuIW4iXtILnoOZPdL8=;
        b=MRLdE5gjot6j0JaurjJWdeFbEdxTYN0Ap27QZc+5XWT9bYgwf4AjM7SBy/iCVlIOOe
         SLc/a6SjUuC5WA9/Z+Ya9NdTDqnZ/OirlCJKLbakZjv8qTGzQFdZpkksIKvterT+RsH7
         lfHi2G8DWweC+fm9k+kUuSUfqoUfmIYntnvUlPfey+YCUnfKnpMyPgrLD6vQp9ULWAO5
         kD6A45KDFZzHGSZX/VD3CBAHQu9wV6H1A1k7SFgUXHQsX33I+NG5mn/jB3sWQ8ifNg2+
         dOTMAgwiQgzSxPBluQ0sxS3JVKB3i8xmlrqUEkXxB6DyU1i4l7QgtlU4QB9j8aA/Q5lJ
         prEw==
X-Gm-Message-State: AOJu0YyyiDWEzQpwg4iWPJTMgQBEzc+bvsTc3OPGJNRvDA1CfabxTIgF
	w//QhPfFldya2sC7I5Ke2hbPHZRVO1jsX5Y2x2J28JxRJ5WqECeHe77dGVR98V7T2QGIWI4549c
	4
X-Gm-Gg: ASbGnctZMlCrGF3dS5lkkYKktreoCvIvq/hgVQbfVSfSfVdrsphdG/CvnB/ZvqHJ7S9
	iYGzcGqM0sUFHQ+nsJYbXNO1aEN+N6cVqZVwHM9Sa9/WHYMKZ+/eYLBOjs+kKwwLa8Cx3Ir+gmg
	+2Glh3kqezyMKXxxLYjkgJfXoZzH69VrC8ChkJss+mXGqlZdlKmtS+VtH74HtZTTlW1Fkvr2Dw6
	lMsHNGgS2FaNppTPENfRF8cVMVAuun/aRGkjj1xIljfKf1kxKq7HkviZTZOP/1+YIs0r41sKqxC
	g4bH4tdIJdY9IJmbpyrjEuTPfPBd78fyC9oxrULeGiSJSmEQd+Wr
X-Google-Smtp-Source: AGHT+IFiRQRMQvViW54C36A8MSpsiJvUoYeafQjodkZ/0nvcXTMY9Aw40+4Xx1WcX0BU2dlKahoXhg==
X-Received: by 2002:a17:907:7fab:b0:ac3:3fdf:d46f with SMTP id a640c23a62f3a-ac3b7c29007mr314013266b.8.1742403532041;
        Wed, 19 Mar 2025 09:58:52 -0700 (PDT)
Received: from [192.168.5.161] ([46.55.231.62])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac3147f0f5dsm1057095466b.63.2025.03.19.09.58.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Mar 2025 09:58:51 -0700 (PDT)
Message-ID: <aa28d980-f0d2-47ad-8d46-003555b2a8fc@konsulko.com>
Date: Wed, 19 Mar 2025 18:58:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] How to build a yocto image with two different python3
 versions ? #yocto #python #scarthgap #sdk #toolchain
To: yocto@lists.yoctoproject.org, 283982@ust.com,
 Alexander Kanavin <alex.kanavin@gmail.com>
References: <CANNYZj9ezHHK2gfc3k9twdtS-X7tPpNr_orb2+HOEzEnaxdpfQ@mail.gmail.com>
 <30508.1742383585587192332@lists.yoctoproject.org>
Content-Language: en-US
From: Leon Anavi <leon.anavi@konsulko.com>
In-Reply-To: <30508.1742383585587192332@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 19 Mar 2025 16:58:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64985

Hi,

On 19.03.25 г. 13:26 ч., 283982 via lists.yoctoproject.org wrote:
> I was unable to cross-compile SciPy for Python 3.12, and my team 
> decided not to proceed with the STM32MPU157F.

What is the problem with SciPy and newer Python versions like 3.12 or 
3.13? How does the hardware switch from STM32MPU157F to RZ/V2L help 
compiling it? From a quick look at the description of the package it 
doesn't seem to be hardware specific.

Best regards, Leon

> Instead, I will be using the RZ/V2L, which currently only supports 
> Python 3.8. However, my client requires the Python version to be 
> greater than 3.10. So I am currently learning on how to build package 
> required for running the application on the STM32 board
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64982): https://lists.yoctoproject.org/g/yocto/message/64982
> Mute This Topic: https://lists.yoctoproject.org/mt/111786607/2167311
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Mute #python:https://lists.yoctoproject.org/g/yocto/mutehashtag/python
> Mute #scarthgap:https://lists.yoctoproject.org/g/yocto/mutehashtag/scarthgap
> Mute #sdk:https://lists.yoctoproject.org/g/yocto/mutehashtag/sdk
> Mute #toolchain:https://lists.yoctoproject.org/g/yocto/mutehashtag/toolchain
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [leon.anavi@konsulko.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

