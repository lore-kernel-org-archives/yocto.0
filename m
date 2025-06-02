Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 576EBC5AD49
	for <webhook@archiver.kernel.org>; Mon,  2 Jun 2025 16:22:17 +0000 (UTC)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
 by mx.groups.io with SMTP id smtpd.web11.54180.1748881329528249939
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Jun 2025 09:22:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=eOBbySsv;
 spf=pass (domain: gmail.com, ip: 209.85.218.41, mailfrom: skandigraun@gmail.com)
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-adb2bd27c7bso645827466b.2
        for <yocto@lists.yoctoproject.org>; Mon, 02 Jun 2025 09:22:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748881328; x=1749486128; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=pyAVpY27jCykW5N0Ijh71S67+Kbncm1xDNwenIuIjVw=;
        b=eOBbySsvZ9w6vZkKdnFcfvk7x2xaCeBqtSwZuCv67BprwbOhr6siaxWWCvIheBUNJ5
         jBjq8hI9AWd8nvNBLOjKeA2Lw6QTPt9T4AivSDlx/d/2hYjSRGsLLgJHOUzoFYG8II+l
         SU88H3DurBWk7lfKYETWrpds7CMqvjdPxmWRtMXvsLN40b/Ho43P6Vahy94j8Np0Ls45
         ckoY46Ego0rRuIIZCQvvxMpV0tM7eTZs4v2c4kQRIbECmEal8xn/6BdcRySY1VpqTbWG
         Ryvre6JMbIlrSM0SWunUDc139ib3Me6Zc4Af/EukXvGsAtBdfZGHGC1oM9qsPri0jzgs
         UhHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748881328; x=1749486128;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pyAVpY27jCykW5N0Ijh71S67+Kbncm1xDNwenIuIjVw=;
        b=ZunwtUCRu6XlM0tpwC9O2LzJfcU4duvzRgC4Co8gTy1KhDTjuEKScP9WhqC/QT8/Jp
         N2WMKmKY1GQ4q3b+dlpveSxVwwjppw/VDdcapyDcOpuFvLhyb38yZiw8Uk6AI+pELpOp
         ++91GQRZsy5CkAO/Kyd3VcofMkn0GGHS7NV+UvadnpuoWG1u/URBPC0/hoEMxtxNTx24
         L9ENxASJKXF/goTvM7bmpF71ZIgjTOXTWiNfJjw0RdJYOdITdhxYD5LJ9v+idg2/Pahg
         WZkzeFYctjfkDihr6zxFx7fm9IqDnAyrVLog6gzk7Sg7oRT0nuZM8QnNNmGdOoI5/ie3
         LUKw==
X-Gm-Message-State: AOJu0YzjZDQqUk4VSeqKlL6nsHyNQ8c9iXbbt+8bdpZKx2B4WDLzGzon
	SUEIkggpz27okZDCQA/PqaWqULRVGF8WuM6wenxO9K1qc+dlkaLiu8oN25aI5Tqe
X-Gm-Gg: ASbGnctR2GM37I6VIMVxqFx5HIqOSut8tmi4KYK2RKIx7qxp0c+yCcBI4oHn1MJVRkx
	mt/NShJ8V/8A56jrVo1J4OO2uXPyCVINT0yyfkwCirydMThYeYDraEL03mGZKXSQqlcF0kfap3U
	KKS/mUJP5//NJcbZmVuep+d64Kd1urangc70m3THO9xGAlr3EUNAHwPnz2erA9WhXKNMvLekdkP
	JLAcCsO4hpda118skua/KFWulofFCQ6wgu2y1CBP0xWgHQTmol8KHB8tEPD1a2xcpSeAi93Oxk5
	doV7btDycRXfz8GvS2i4FOzybzmI+b/lwYKmiJxnuQTbgB1kcxqHexsTtpI=
X-Google-Smtp-Source: AGHT+IHEWKdR1ciBvO7D3fkegLbHqc7fVtLyTI9LKmyGfYM5+Q6xx74BO2V+ChBSIjMDwscDPWOVCQ==
X-Received: by 2002:a17:907:3e0e:b0:ad8:96d2:f3e with SMTP id a640c23a62f3a-adb493e3ff8mr806526166b.22.1748881327665;
        Mon, 02 Jun 2025 09:22:07 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ada5d7fed96sm814166066b.32.2025.06.02.09.22.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Jun 2025 09:22:07 -0700 (PDT)
Message-ID: <2b0b2ffb-a7b3-4143-8b4a-474bdd22a5c1@gmail.com>
Date: Mon, 2 Jun 2025 18:22:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [poky][master] opensbi recipe failed at do_patch
To: yocto@lists.yoctoproject.org, kanakshilledar111@protonmail.com
References: <lwHV9MLGir2nUyJPc-xQKFx_rhE2ABEfOSLNR5WCWuoPSo4WMQRsKi7YhzMsyTHrAcQkwzyPca57qC3tF0abomOAJ673W2_dgiA04oo1m_s=@protonmail.com>
 <28713.1748865806847096458@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <28713.1748865806847096458@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 02 Jun 2025 16:22:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65446

On 6/2/25 14:03, Kanak Shilledar via lists.yoctoproject.org wrote:
> I tried fixing the patch with the commands suggested by devtool, but
> it is now failing at do_compile step.
> PFA the opensbi_1.6.bb:do_compile.log

Based on the error message it looks like you are missing a commit[1]
that fixed C23 compatibility.
And looking at meta-riscv, there is a comment in the .bbappend:

# recent version after 1.4 release
SRCREV:c910 = "17e829129d60d7d178d47ecbd8990e705690d352"

which may explain a few things. The C23 fix was added to v1.6, but this
layer seems to downgrade opensbi to v1.4 - which also explains why the
patch from oe-core fails.

If this old version of opensbi is a must for your board, then you will
need to backport the C23 patch (it's reasonably small and simple).
Otherwise the best would be to bump it in opensbi version in meta-riscv,
is possible.

[1]:
https://github.com/riscv-software-src/opensbi/commit/d539d64a23bbd64ba324eed595449bcc9c7be0cb

>  
> Thanks and Regards,
> Kanak Shilledar
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65445): https://lists.yoctoproject.org/g/yocto/message/65445
> Mute This Topic: https://lists.yoctoproject.org/mt/113426277/6084445
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [skandigraun@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


