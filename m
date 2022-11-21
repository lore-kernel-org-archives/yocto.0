Return-Path: <JPEWhacker@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D50F6C433FE
	for <webhook@archiver.kernel.org>; Mon, 21 Nov 2022 14:43:27 +0000 (UTC)
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
 by mx.groups.io with SMTP id smtpd.web11.40168.1669041801640505536
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Nov 2022 06:43:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=RFxJx/Hw;
 spf=pass (domain: gmail.com, ip: 209.85.210.47, mailfrom: jpewhacker@gmail.com)
Received: by mail-ot1-f47.google.com with SMTP id db10-20020a0568306b0a00b0066d43e80118so7466001otb.1
        for <yocto@lists.yoctoproject.org>; Mon, 21 Nov 2022 06:43:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=KSabmQJF6iBPzra4cSBqB7iaOiuqrsTYZfJ81OdKI0w=;
        b=RFxJx/HwkoI5SceSTvFz7O1DHEqPanbe1rtTuujZitN6DklrvCtL62kJ8i7CmToyQv
         n/XkhLmgKll0cDQqmqRDtggTaCbpiLEakHlmujbEI22bWvo3uflZaiwqsUGOFuSLImMy
         /RuLW3o2pIlLOHs2tug2UOkWJsgkW/mU06e4A0O+ChRNCXagomrQQ3/0M3alUzaZEnpK
         Iol+csavXS46KYu06PBqGE+OeSv+kgL3fccwxpdulDfNnkDBS9JxbbMtXlWqt18LuesT
         jzaQ1PyzzAeI6r6VgSwZVFP3QpdKSIJ9nSFz6sQb3xh1J+PBMeTxF9q8y1ACms+NCcal
         4IqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KSabmQJF6iBPzra4cSBqB7iaOiuqrsTYZfJ81OdKI0w=;
        b=69mutsOt/ATjEgZhWBxd72doNv/J15jcR0gnu3eVAxZuAgSc2bmiT8D5P+EcUqOALG
         3QTUBpNf/sALI3PCdtHRsk9NSqurT4X44hygyzCbj0S4s+4Lre36ArGy2BJH0I8v/xQN
         ljCuh3VpMKsWjNGSe5qdKVEk0NEjlqGOHA5iP9ckK/eGTxtw8gTouaILjlsmcmCFZvCk
         1oSXqNHmEmVYNYdCGhydE9YIsoA12p0a+IAclnlXzsPSaqprBbe50rD4Fw7CUvqA0uqu
         LK6tkw7OZighMk31EvB5nrtljTFMu9kNsTvERZS/WX4houlRGgbhmJhXGWLxMkW7U/Le
         w/oQ==
X-Gm-Message-State: ANoB5plqIiMHisgjerozfK1euzaWr4nz0ud+Zl0+raoJyflpgEYZzrWe
	4Pwoc/isTJS98nl6cvUMrms=
X-Google-Smtp-Source: AA0mqf7kL/EnEPsjRKleyKb2rs5dYsiJqdmR4U3GpNe66KaTfvrq3Jqh4625cuh/NwdXchO5rZIQ+A==
X-Received: by 2002:a05:6830:185:b0:66c:d1c1:7aef with SMTP id q5-20020a056830018500b0066cd1c17aefmr496150ota.66.1669041800996;
        Mon, 21 Nov 2022 06:43:20 -0800 (PST)
Received: from ?IPV6:2605:a601:ac3d:c100:e3e8:d9:3a56:e27d? ([2605:a601:ac3d:c100:e3e8:d9:3a56:e27d])
        by smtp.gmail.com with ESMTPSA id 6-20020a9d0686000000b0066a9ba5094fsm4928087otx.1.2022.11.21.06.43.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Nov 2022 06:43:20 -0800 (PST)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Message-ID: <4cca945b-8514-0524-aeb1-33a7606a60ae@gmail.com>
Date: Mon, 21 Nov 2022 08:43:18 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [yocto] Reproducible builds not working with musl?
Content-Language: en-US
To: Alexander Kanavin <alex.kanavin@gmail.com>,
 Kenth Eriksson <kenth.eriksson@infinera.com>
Cc: yocto@lists.yoctoproject.org
References: <d1OW.1669041113310591951.07DB@lists.yoctoproject.org>
 <CANNYZj-_O+aHq1O0hFFJRJ49OzcXX=DME_wKSOqamwAe6CY+zA@mail.gmail.com>
In-Reply-To: <CANNYZj-_O+aHq1O0hFFJRJ49OzcXX=DME_wKSOqamwAe6CY+zA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Nov 2022 14:43:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58602


On 11/21/22 08:38, Alexander Kanavin wrote:
> On Mon, 21 Nov 2022 at 15:31, Kenth Eriksson
> <kenth.eriksson@infinera.com> wrote:
>> Having trouble with reproducible builds in yocto on dunfell release with musl as libc. E.g. I can see that the build path for musl crti assembler file is leaking through and becomes visible when I do strings on libraries and binaries.
>>
>> $ strings /opt/infn-xr/1.0/sysroots/aarch64-xr-linux-musl/usr/lib64/.debug/libcrypto.so.1.1 | grep crt[a-z]\.o
>> /data/jenkins/workspace/XR_yocto-xr_master/build/build/infn-xr/gmcu/tmp/work/aarch64-xr-linux-musl/openssl/1.1.1l-r0/recipe-sysroot/usr/lib64/crti.o
>> /data/jenkins/workspace/XR_yocto-xr_master/build/build/infn-xr/gmcu/tmp/work/aarch64-xr-linux-musl/openssl/1.1.1l-r0/recipe-sysroot/usr/lib64/crtn.o
>> $
>>
>> Is this a known issue? Yocto passes -fmacro-prefix-map and -fdebug-prefix-map as part of DEBUG_PREFIX_MAP to eliminate paths to WORKDIR. But it looks as that fails for the musl assembler file?
> Testing reproducibility properly is a heavy exercise (you need to
> build everything from scratch, then compare), and so we do it only for
> glibc.
>
> There have been recent fixes and tests to check that host paths do not
> leak into target files, but dunfell probably has neither the fix nor
> the test.

This is correct; it's hard for upstream to test every possible 
combination for reproducibility. We do try to get some decent coverage, 
but ultimately if you really care about reproducible builds, you should 
setup a reproducible build test for your exact combination. We've tried 
to make this pretty easy, see https://youtu.be/zXEdqGS62Wc?t=1021

>
> Alex
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58601): https://lists.yoctoproject.org/g/yocto/message/58601
> Mute This Topic: https://lists.yoctoproject.org/mt/95172718/3616693
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [JPEWhacker@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

