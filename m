Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4B13EC5B543
	for <webhook@archiver.kernel.org>; Thu,  5 Jun 2025 07:39:28 +0000 (UTC)
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
 by mx.groups.io with SMTP id smtpd.web11.1806.1749109163553637026
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Jun 2025 00:39:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ObLQF7dJ;
 spf=pass (domain: gmail.com, ip: 209.85.208.50, mailfrom: skandigraun@gmail.com)
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-604bff84741so1202627a12.2
        for <yocto@lists.yoctoproject.org>; Thu, 05 Jun 2025 00:39:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749109162; x=1749713962; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6SG4+jqeTUht1xFYplKAmKaxwL9zwciiiLWO+gH0n/Y=;
        b=ObLQF7dJxSzrEOpi6VIzXIMyn5Npe6nFn3DesbT2iuAEKV2gapVcyrQbhB0x5IC0ty
         a92lMoowyEtxLYOjGVVVuDNTQh0mLptn4zxeFJEjVcaspNGriYWbC5Y1aFpYXXHxOYog
         ba34gLbwOO/i1PPpqs4FgICU89uZui9Lmv0YW5v86Q3Wq1q1d3rJoHax4CmS4GGszLe1
         Vsx34SJGV1/PpLi91jOjTFGOfNiUj6JrWyddoatQpM1jZ8EnW1maZMbuQqfU38LXwl83
         t5k2I+f46XMW+EAp91FdkCgrxcsQHyy2qONeNkYHx17sYZVq4DuTAblL8dy97TpI9ieN
         dl8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749109162; x=1749713962;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6SG4+jqeTUht1xFYplKAmKaxwL9zwciiiLWO+gH0n/Y=;
        b=hmYnnqiKVV/pgY0lGlLTxTpWiDn70oreMFknMpGL8K3Im00SoOeXGG51d7e8CiHH3h
         RGpJkxZUSXnk+rBQ2smHxaIvlYJcWGetCFSw4xiXMbtd2tgodVMaJPKhWgmbsjvPl7CL
         XtaFbPTxma5+XTrF8a4/wbWhP1hpaistVqjO8oCKxo+QbW0IeiJhcsxpW89aBKuQGFoR
         KNmmS3ifuQG2qnh8EE+9493aXalQ/wGfPUphfrI9CGmudncDtKeKMhehuJ0G5wVU3nT6
         PjZ+7Z1mf3usKupfDJWzbxL7wrr1ufyaS+w9JjdftZeR3JA1a2+Rduxcowt+U/PUFFRX
         6Axg==
X-Gm-Message-State: AOJu0Yycs9Epe97S9dSTsXjIifY1JVg3O96tbXfA0Qm/iJC7OPBryPX9
	XNQYoQOIVTk1ZySgrTI71C1oApVxrVXDYj17H47zLg2ie9ByCJZsTKGC
X-Gm-Gg: ASbGnct2a+EfMATDsf3VIsgzEA8sbPmraTvPwpb2k+ARgIUm53Xoc7HNZP1XwuX/Nb5
	WD3BazajJ/DwmUUWFm06Zz0SwXTldTTDTAHbn68aEV4R4XWAqjQ/A09p2+2aVe2D8SZYc2RQoM7
	krS5ZCEcbnyQVDRITavkdi75fv2u6tRVRaRGR8CfQaVAReFn8Hm3pFMFB8nsksWblOPdWlrTgGf
	a+aRlOZKY/19FnzrprHimlTwzayv44f3xfcPJt4WEqSz6fMNrtl3ZNnP5L6nfs/ag6uf3IQqYb6
	tVWDvm8QKJXAf99ZReGZOwKoGv3/pTAOf8g7Tjj28Z7VZ/ztysgrkotJn/Y=
X-Google-Smtp-Source: AGHT+IF0eYk1doS1OG2GLhfUSRUWGs7yrRTVQ/0qSVrsXHJ8weD/QijLQiF/GNzT87SevYhSKD6l3g==
X-Received: by 2002:a05:6402:2341:b0:606:c5f9:8aea with SMTP id 4fb4d7f45d1cf-606ea179c3amr5903497a12.16.1749109161746;
        Thu, 05 Jun 2025 00:39:21 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60566c59f81sm9878572a12.18.2025.06.05.00.39.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Jun 2025 00:39:21 -0700 (PDT)
Message-ID: <711b6cdc-42b7-4f1e-a00f-2d531961bce5@gmail.com>
Date: Thu, 5 Jun 2025 09:39:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [poky][master] opensbi recipe failed at do_patch
To: Kanak Shilledar <kanakshilledar111@protonmail.com>
Cc: yocto@lists.yoctoproject.org
References: <lwHV9MLGir2nUyJPc-xQKFx_rhE2ABEfOSLNR5WCWuoPSo4WMQRsKi7YhzMsyTHrAcQkwzyPca57qC3tF0abomOAJ673W2_dgiA04oo1m_s=@protonmail.com>
 <28713.1748865806847096458@lists.yoctoproject.org>
 <2b0b2ffb-a7b3-4143-8b4a-474bdd22a5c1@gmail.com>
 <eJWxq8Go7hA2-rBqhXQ4alCUWIJ0iyC9mSPOhAPNjd2yVMB_TWzwwTVBCOWiS_Stbz8YKouWYfi4Xeei3kcrxwmLSVbUvBSnIhHMuhQ1ALU=@protonmail.com>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <eJWxq8Go7hA2-rBqhXQ4alCUWIJ0iyC9mSPOhAPNjd2yVMB_TWzwwTVBCOWiS_Stbz8YKouWYfi4Xeei3kcrxwmLSVbUvBSnIhHMuhQ1ALU=@protonmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 05 Jun 2025 07:39:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65466



On 6/4/25 15:25, Kanak Shilledar wrote:
> Hi,
>
> I tried backporting the patch [1], but I am getting stuck at QA Issues.
> As per the QA Issues documentation, I tried adding the 
> ```
> CFLAGS:append = " -fPIC "
> ```
> to the opensbi recipe.
>
> I need the OpenSBI v0.9 from a downstream fork [2] provided by the vendor for getting all the cores online, the upstream one needs a few changes which are not yet upstreamed.
>
>> If this old version of opensbi is a must for your board, then you will
>> need to backport the C23 patch (it's reasonably small and simple).
>> Otherwise the best would be to bump it in opensbi version in meta-riscv,
>> is possible.
>>
>
> Error log:
> ```
> ERROR: opensbi-1.6-r0 do_package_qa: QA Issue: File /share/opensbi/lp64/generic/firmware/.debug/fw_dynamic.elf in package opensbi-dbg contains reference to TMPDIR [buildpaths]
> ERROR: opensbi-1.6-r0 do_package_qa: QA Issue: File /share/opensbi/lp64/generic/firmware/.debug/fw_payload.elf in package opensbi-dbg contains reference to TMPDIR [buildpaths]
> ERROR: opensbi-1.6-r0 do_package_qa: QA Issue: File /share/opensbi/lp64/generic/firmware/.debug/fw_jump.elf in package opensbi-dbg contains reference to TMPDIR [buildpaths]
> ERROR: opensbi-1.6-r0 do_package_qa: QA Issue: opensbi: ELF binary /share/opensbi/lp64/generic/firmware/fw_dynamic.elf has relocations in .text [textrel]
> ERROR: opensbi-1.6-r0 do_package_qa: QA Issue: opensbi: ELF binary /share/opensbi/lp64/generic/firmware/fw_payload.elf has relocations in .text [textrel]
> ERROR: opensbi-1.6-r0 do_package_qa: QA Issue: opensbi: ELF binary /share/opensbi/lp64/generic/firmware/fw_jump.elf has relocations in .text [textrel]
> ERROR: opensbi-1.6-r0 do_package_qa: Fatal QA errors were found, failing task.
> ERROR: Logfile of failure stored in: /home/kanak/yocto/build-beaglev/tmp/work/riscv64-poky-linux/opensbi/1.6/temp/log.do_package_qa.3783423
> ERROR: Task (/home/kanak/yocto/sources/poky/meta/recipes-bsp/opensbi/opensbi_1.6.bb:do_package_qa) failed with exit code '1'
> ```
>
> Full log attached. I have also attached the patch for your reference.
>
> [1]: https://github.com/riscv-software-src/opensbi/commit/d539d64a23bbd64ba324eed595449bcc9c7be0cb
> [2]: https://github.com/revyos/thead-opensbi/tree/th1520

The problem seems to be that it was forked a while ago (I would guess
from v1.2, or earlier?), and a few things have changed since then in the
recipe, in the upstream Makefile, and in the forked Makefile too - and
it does remove some important flags.

I have opened a draft PR[1] in meta-riscv, with a recipe that is based
on an old oe-core opensbi recipe with some tweaks and some extra
patches. But unfortunately I don't have a board to test how it behaves
at runtime - if you have time, please do so.

I leave it as draft (and close it after some time), and I don't really
plan to merge it as I can't maintain it, but I think it could be used at
least as a starting point, and you can tweak if you need to (and open a
final PR).

Hope this helps.

[1]: https://github.com/riscv/meta-riscv/pull/532

>
> Thanks and Regards,
> Kanak Shilledar


