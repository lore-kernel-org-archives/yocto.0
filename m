Return-Path: <zboszor@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 88194FEEF4C
	for <webhook@archiver.kernel.org>; Tue,  7 Apr 2026 13:54:00 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.81908.1775570034920359470
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Apr 2026 06:53:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=Gr2iOCpf;
 spf=pass (domain: gmail.com, ip: 209.85.128.47, mailfrom: zboszor@gmail.com)
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-488b8efed61so14233305e9.1
        for <yocto@lists.yoctoproject.org>; Tue, 07 Apr 2026 06:53:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1775570033; x=1776174833; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2mAZyGaMVAA+cXzmtigSt+5P2gl0PlSPg3ntgrtdGN4=;
        b=Gr2iOCpfWy75T6VfJcNP+4wS7yLf+KUABOmS8D5G3aARDuZHPu0XBcwHeAvjMHbNVq
         qlEGdlDQcfOjGEdtKZ9EHgyXvwBvLMVQpfamh+21CWOgsXurtvX4+JQuoQYw41OseB5D
         3CFgUzl5fbcvxRkxv+EOS/4XET3LShYPwbSvlwEU+yCj9YwTSyWjDmmcpxsBzihjdRCS
         Fu5NebUIxneHBI3gXIHan+rCDDv7z1sUcoowy9nQMplLSIlYfUs/XFTfLQIfmULs32RV
         Q4Jn7WKw9anoR0XCKrx17f5iygFx9k95IqYvCj6AEyD95kBzvgaE38Z1+hwGERbk+M4z
         d+jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775570033; x=1776174833;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2mAZyGaMVAA+cXzmtigSt+5P2gl0PlSPg3ntgrtdGN4=;
        b=iDw6B735X9SGpWgWvBrseZZcJURWuEtsb0mYBmamHgXLp9VQk9godbD9H+q70HA5Nm
         D5WzIqZ3WSLCOSpuuidM0D9rH3G173IzW3emUi8f9RIczLe+xn4cqnbfoxyZcNefV36k
         +/TEVeE4mP5ND2Hlw33oTSZ1jvvsIEvwlHIptdiNUm9pabStDuT06VK1Lg2LA6/wD/EJ
         JUhcjm1TmX9oeDQhP/y4nmyoifuDf2821/3MmuxG1E0AB7cMjjv58Z5FlEePGvZC68TU
         WNoxKRdXbVRgJFKWLbgaPeiJoSagWOc6iF5PxvpMy7BCONCwm40bS8Amhu2lwkIQnZyB
         K0eA==
X-Gm-Message-State: AOJu0YyLZKveSMbGXuilqrX6eHWAu3IHSA7Wu35o72og5xXeqXwUsOi3
	RM+g03x+xTZsfiTHos7d8UaFuswviY4A0emkv7jSa0oqB535G4h9RGlv
X-Gm-Gg: AeBDieuLaagEwwbrJ39M5E4/o5OfqTpHV5vLD5ZIOkOIF+YPNYmMnWcRhqnBXd9wteY
	iwjr3X//vJZHGwxoAb+eocoqBEBFbQfm+5odytnrfT9+yxxhO2tooA8Z6ye1qbEBxSZNXXWk0Sr
	MwmkX44TRe/Qb9I0yJLqf1ZV61bOlSUrOOjrcL8B54D3zPfrjB+1WlgX1OJNZdrSrQNRI0CkvrV
	vYQFwN/4/0dbR2ZGWUExNCBCcDvzA2AxDFJWx5/024SYUlRaBMe3ozCcHBgAavAkZDKO3d66pLE
	pm4Me56L/dqVLD6kl8fMLVZ957dWdI0RE8BsrfOeCSH2PNZ+svmvUtdcH9XZtf+9hv/K+d5oqml
	ETsZCGKoamecQ8uFdFSKUho6ge4omlCDY46EDG5gmOgT+4FmCqvSORYeFCkZ7GsNTz4bFEFn9Ne
	ZLEkRX3KhGwOF9EKDsGevYNKKfBgOBxQrY9Z8q3Sm8vjspN8wFlyBdIdsBIE5BIYfz
X-Received: by 2002:a05:600c:45cf:b0:477:9890:9ab8 with SMTP id 5b1f17b1804b1-4889945f8c3mr201669995e9.3.1775570033056;
        Tue, 07 Apr 2026 06:53:53 -0700 (PDT)
Received: from [192.168.2.122] (95C81E23.dsl.pool.telekom.hu. [149.200.30.35])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-488a4b2e111sm291870475e9.1.2026.04.07.06.53.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Apr 2026 06:53:52 -0700 (PDT)
Message-ID: <7e6015d3-bb8c-4267-a7b1-2d79091f108d@gmail.com>
Date: Tue, 7 Apr 2026 15:53:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [OE-core] [bitbake-devel] End of whinlatter stable support
To: yoann.congal@smile.fr, martin.jansa@gmail.com
Cc: Yocto ML <yocto@lists.yoctoproject.org>,
 OE-core ML <openembedded-core@lists.openembedded.org>,
 bitbake ML <bitbake-devel@lists.openembedded.org>
References: <DHJDUJSPA7LG.3IKCP2QUJBMRL@smile.fr>
 <CA+chaQdp8E_HMyo6Qx6C+PuRrLbrqgbFdQF_WdbZS1ONncxb3w@mail.gmail.com>
Content-Language: en-US
From: =?UTF-8?B?QsO2c3rDtnJtw6lueWkgWm9sdMOhbg==?= <zboszor@gmail.com>
In-Reply-To: <CA+chaQdp8E_HMyo6Qx6C+PuRrLbrqgbFdQF_WdbZS1ONncxb3w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Apr 2026 13:54:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66390

2026. 04. 03. 11:14 keltezéssel, Martin Jansa via lists.openembedded.org írta:
> On Fri, Apr 3, 2026 at 10:46 AM Yoann Congal via
> lists.openembedded.org <yoann.congal=smile.fr@lists.openembedded.org>
> wrote:
>> Hello everyone,
>>
>> As you may have noticed, the end-of-life date of whinlatter (2.16 for
>> bitbake) is near.
>> The last release of whinlatter will be the 5.3.4 and will be built in
>> the week of the 20th of april 2026 for a release the week of the 6th of may.
>>
>> If you have patches that you want to see merged in this last version,
>> please send them before the 10th (next week) so we get enough time for
>> review and testing.
> I would like to see my glibc-2.43 compatibility changes I've sent last
> week merged.
>
> I've tested it on 26.04 in docker, if it doesn't show any issue on
> other hosts used by AB, then what's the harm of merging them to
> whinlatter and scarthgap?

That series is indeed needed for whinlatter in my testing on
Fedora 44 (post-beta, practically final), plus the other series
I just sent that fixes binutils-native and gcc-cross.

Unfurtunately, pseudo would need another fix to work on
Fedora 44 as is, see my mail at
https://lists.openembedded.org/g/openembedded-core/message/234730

For now, I can't build neither whinlatter, nor current master
on Fedora 44 due to the pseudo issue.

> Even after whinlatter gets EOL someone might use latest ubuntu release
> on host and then try to compare his wrynose build (where 26.04 works
> fine) with whinlatter build (which fails immediately without these
> changes). I often use EOL OE releases when trying to "bisect" what
> changed in upstream layers e.g. between scarthgap and wrynose.
>
> Cheers,
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#234574): https://lists.openembedded.org/g/openembedded-core/message/234574
> Mute This Topic: https://lists.openembedded.org/mt/118647081/3617728
> Group Owner: openembedded-core+owner@lists.openembedded.org
> Unsubscribe: https://lists.openembedded.org/g/openembedded-core/unsub [zboszor@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


