Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7D3A4C433F5
	for <webhook@archiver.kernel.org>; Fri,  4 Feb 2022 16:32:47 +0000 (UTC)
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
 [209.85.160.181])
 by mx.groups.io with SMTP id smtpd.web10.11342.1643992366085738708
 for <yocto@lists.yoctoproject.org>;
 Fri, 04 Feb 2022 08:32:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=VbRCTUsL;
 spf=pass (domain: gmail.com, ip: 209.85.160.181,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f181.google.com with SMTP id k25so6128200qtp.4
        for <yocto@lists.yoctoproject.org>;
 Fri, 04 Feb 2022 08:32:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=oCoWozyXTebx/R01NP1WEIJoOPTAzSydjRyKNkcqBow=;
        b=VbRCTUsL9J7pqowgVEf8kFridCdPEcg6u7JEsBmSNwBtV6F0F9q8Tfl5zoJVML0pMk
         GByHse8zR/ZDDNV83cSmVWj+m4UTah7UwqrnMTsutOHDW36vmjy55b7/LsB9WejiK8Xb
         nAn5y98MU8IoZAql+tPRLtxZIY3dl/Mxh3CFICZl29Q95xrTYueJ9kQfPeXGCOTGZFog
         amqS4PH2jSoKT2NSCTXuixGdOrB+2MmJ5SUToOafB6WIFayIKhbp8tjH9YOIDdyJhOO8
         SbwTDS5U+/syzIRyR+m+lA0sj862omXzT9EnVGABYCr4n6vAXmWkZ0HxQiQe0FHpTaDk
         2pjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=oCoWozyXTebx/R01NP1WEIJoOPTAzSydjRyKNkcqBow=;
        b=W2vphU/mZubQmg2Pm2VacaO/zFQ/ZN73ATkUjPkkMdjbDIHxoR4SpM614526rc71vF
         3FUV2BVBlVB9sTPeLAC3tvldBxOvd64LQI2bs624nrtMh24Nlhf54NqL0TQM/ol/5I7T
         /ZzvzvIT0CKCOXacA7sR/4MYn/qv0/rvmSf38hkpFEFxFQV+zujXNA4RQeBX9uxlnrEu
         hJdPetc0Ou85FEHr01SAjH0nq073a6BCHdGCa7ohIIRlHWygNOyJkHvEHwbnuLmYJNt8
         8AxNtJ5Z/+cwIsL54MZNI4yB6KaWfLUgQYki6GFBtSKtVqeupziJA80nS+kpHIPK3Dxb
         z9jQ==
X-Gm-Message-State: AOAM533fB01UYpT/QSLDeHXlGXjLPjWtSXb2u4x+vl/1Y32mm1ooIq1N
	7oe4JYkEP5BneEYajXSzFCkMQs2p0ehixVloHa37jaJPjC4=
X-Google-Smtp-Source: 
 ABdhPJxKtF/0MI9Tt9CqBhrXAOHV2PHwautNCc5MEBh1v44RZx2fO491WrOR0MdT+/qR56nJ1PqKR8YLSF5Z9x4HEOI=
X-Received: by 2002:a05:622a:1111:: with SMTP id
 e17mr2552576qty.229.1643992364940;
 Fri, 04 Feb 2022 08:32:44 -0800 (PST)
MIME-Version: 1.0
References: <16D03C33527B22CF.12815@lists.yoctoproject.org>
 <AM0PR10MB3107D33BAF6FC963800A700E99289@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
 <CAMKF1sqC=VfzzWMORaFVabXBuR+bcLE+FJfPMpc6ZTfmuvS0bw@mail.gmail.com>
 <AM0PR10MB31075AB2C513ED78BA3685F299299@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
In-Reply-To: 
 <AM0PR10MB31075AB2C513ED78BA3685F299299@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 4 Feb 2022 08:32:19 -0800
Message-ID: 
 <CAMKF1sru6r-B7f=jWzkmBRHNQMiKRR8CXaR9QB6_jNaySsJmBg@mail.gmail.com>
Subject: Re: [yocto] wget - The certificate has not yet been activated (does
 also happen in qemuarm "virt" machine)
To: Matthias Klein <matthias.klein@optimeas.de>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 04 Feb 2022 16:32:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56072

On Thu, Feb 3, 2022 at 11:20 PM Matthias Klein
<matthias.klein@optimeas.de> wrote:
>
> Hello Khem,
>
> > this means you are choosing openSSL to provide TLS protocol implementation instead of gnuTLS
>
> Please excuse that my question was so unspecific.
> Does it make a functional difference from which library the TLS support comes from?

ideally it should not. It really should be that app is using right
port to talk to the one you choose.
>
> Best regards,
> Matthias
>

