Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B56FCC28CF5
	for <webhook@archiver.kernel.org>; Wed, 26 Jan 2022 18:11:14 +0000 (UTC)
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com
 [209.85.160.179])
 by mx.groups.io with SMTP id smtpd.web11.16892.1643220673788727461
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Jan 2022 10:11:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=mqmx82a5;
 spf=pass (domain: gmail.com, ip: 209.85.160.179,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f179.google.com with SMTP id c15so428498qtv.1
        for <yocto@lists.yoctoproject.org>;
 Wed, 26 Jan 2022 10:11:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=zm1fLSX423FD3plfWgKqdvvtDTMVF2VIF0OQISgKTUg=;
        b=mqmx82a5N/W1hz19nzratJ3j6T1+o8ncRuG/hC6w09LYmP7Ft+ksbqJk+LlvV4VCtv
         wuY+iCtp1SOg/q4GVLtWnhD4/5P2B/EFedsQrPjSdUiwKNndperrT1kxuL5pUxu6/E/8
         yZzG9vxy1mIRf5GPhh/ejLfX79GHstJIwHI+DIVATVaseXW42ZyKSKQ412LAHjrbj04C
         cxQbBXJTkXqFPWZCQWdFWNC8Pysu6o+yIaFd/oUEKzU2QuI8Gi7LgAJJkozf88aApQUo
         pn2CELCLOSGdnxW/2LbjIWnqA1F7AZWs7Rp1je3cJsBSexEcPV5zhBCTXxnDQIaHl474
         2ovw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zm1fLSX423FD3plfWgKqdvvtDTMVF2VIF0OQISgKTUg=;
        b=6gognC1B83KcLJF7b20kEdyarNlyWq5Q1Nnn8M4u1Lcnz1pp4jBpRkr+YRxUZ9qG2I
         pjqSp5NMmdSre+6KDMhAISye9doJgddtv/HIxn+aO9dOI77E5m5OMcO3dtLCLU8RTWjr
         4bJyYlPxL5WvOJCgkcBBlSS4zmPdIwswbsFayiNjTalkdmHGi6UJJNH7dCHPc4sZQprr
         Z8d/e/GPLQfgOI0BzGfhjAHwzukNl2GYocxX2YuEs5O/i2QWdHKP0En/pkh8d1PKEpTz
         bfdIuTCEMf/ZzKTqot7DfHRnA521cO/8M9yFf9am7Q9Cq9qTFqyLI+58n5dXzEHycIEi
         hzSA==
X-Gm-Message-State: AOAM530XcQMXP3FFRjTseCshrjxun4y0GAyJ2xnj/oB/J/x7uxPtg+xY
	3IrGP6GNs7fjC+5ee65VPMchDnG+3OlXZLYkUeE=
X-Google-Smtp-Source: 
 ABdhPJxeSSUswKStdDv0NFih9HeSrgYrk56TDTNDRUREg1lteJw5f7pp1issO4caK0cGNfbEKbelqHuw1Melblm/lds=
X-Received: by 2002:a05:622a:553:: with SMTP id
 m19mr4586202qtx.229.1643220672755;
 Wed, 26 Jan 2022 10:11:12 -0800 (PST)
MIME-Version: 1.0
References: <46c5cd6e-0285-9f19-49b5-6ed76cb61a98@ibeeto.com>
In-Reply-To: <46c5cd6e-0285-9f19-49b5-6ed76cb61a98@ibeeto.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 26 Jan 2022 10:10:46 -0800
Message-ID: 
 <CAMKF1sp8Mw6Jm_rwb+w5YbugdGB-UWcpYULYncciS8c5Hy5DbA@mail.gmail.com>
Subject: Re: [yocto] linux-firmware_20211216
To: Rudolf J Streif <rudolf.streif@ibeeto.com>
Cc: Yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 26 Jan 2022 18:11:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55985

On Wed, Jan 26, 2022 at 9:21 AM Rudolf J Streif
<rudolf.streif@ibeeto.com> wrote:
>
> I got a question about the linux-firmware-bcm4373 package. The link
>
> /lib/firmware/brcm/brcmfmac4373-sdio.clm_blob ->
> ../cypress/cyfmac4373-sdio.clm_blob
>
> is packaged into linux-firmware and not into linux-firmware-bcm4373.
>
> It's essentially not included in
>
> FILES:${PN}-bcm4373 =
> "${nonarch_base_libdir}/firmware/brcm/brcmfmac4373-sdio.bin \
>    ${nonarch_base_libdir}/firmware/brcm/brcmfmac4373.bin \
>    ${nonarch_base_libdir}/firmware/cypress/cyfmac4373-sdio.bin \
> "
>
> which means it is automatically packaged as a "leftover" into
> linux-firmware.
>
> Is there a reason for that or is it simply an oversight?
>

seems an oversight.

> Thanks,
> Rudi
>
> --
> Rudolf J Streif
> CEO/CTO ibeeto
> +1.855.442.3386 x700
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#55982): https://lists.yoctoproject.org/g/yocto/message/55982
> Mute This Topic: https://lists.yoctoproject.org/mt/88701851/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

