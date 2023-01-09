Return-Path: <marek.belisko@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC970C54EBD
	for <webhook@archiver.kernel.org>; Mon,  9 Jan 2023 10:52:37 +0000 (UTC)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
 by mx.groups.io with SMTP id smtpd.web10.68638.1673261556239626148
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Jan 2023 02:52:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=CGTmT7dZ;
 spf=pass (domain: gmail.com, ip: 209.85.167.49, mailfrom: marek.belisko@gmail.com)
Received: by mail-lf1-f49.google.com with SMTP id g13so12314910lfv.7
        for <yocto@lists.yoctoproject.org>; Mon, 09 Jan 2023 02:52:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=zFzPyYDHwSbOglzcOcOeOIsvuPakVip5NyLWrjYRWTg=;
        b=CGTmT7dZlNipC321htozzbh7RlFAaIsyCXFYTKrFjtrvy4wyX13bpCqeedGk+qxa98
         DMKPRg7eJZrcXBsJgpRgsz2zrrWsZygtZssS/UFAWz5HGhyvv4A0uLIdaWAzy2eUfd5u
         cpFI8NQXbIUfaRyl/F1GjR9z4U/l4jcIpad0bRw7Omaj4/KEF16SIRLDVqLUvCOE3qso
         /wJyDypJCmCCvBxT/t/4xFO9Pxs2jEnlwxBDk7Nw9Aw2Tqx1aUY78h7k7uu3xECLTpfo
         fu2yqRmRR5gk3ysBirq8M8J+gvfgPxqZYc67/4vhZfx4alYBmzUa/aKifkaoIC+7vbE/
         9leg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zFzPyYDHwSbOglzcOcOeOIsvuPakVip5NyLWrjYRWTg=;
        b=tWRnVslrpY1myITlmap9diJ8Yas9WdjCEgROVM4ATGTaRKwK0HcI4BV4eoll2Tj4ug
         5OhY0JVo6VYM/Bn2Qux++CDOV5BeUXijakE7aV8UKFBKIDM3mL9Ia9/odawyJ5HTFT1I
         l7aAldrNGl31Xue4UdQlmMrgPffEtuvWOpbwVBxjhYU+ohh0WkDw7f2KJB15bGKzEMpa
         k4Po9jB0RXlm5pLqrn4IUFEVvftNyat+QRw156VXzDaEftkaP4myCi5IEo5J7MUFlC7O
         Nvkr6OBmXlWew8IPm40mMzlM1vVzyLYd0DvaVBMacr8iPrxJnYn7SuS3ep4CI5KLJJOb
         ZAwQ==
X-Gm-Message-State: AFqh2kpFQ/QQizU9nqGg7qqVccr6mOZAANfoKbE5L/frTTWbMU+RU5/s
	vEKAlAbenWmkmH9HvPlNwfj42U99sta+aN3m4g1oWxdpYxg47w==
X-Google-Smtp-Source: AMrXdXtzdgCevNnUMU8GabA3bzzR/kaq/Ws5cQWZCbkovJXgnLwIVvNAXbb3bfcmIfyscM43U1Yiyk2xenp3QpPqp00=
X-Received: by 2002:a05:6512:3d93:b0:4b8:9001:a694 with SMTP id
 k19-20020a0565123d9300b004b89001a694mr3043624lfv.426.1673261553891; Mon, 09
 Jan 2023 02:52:33 -0800 (PST)
MIME-Version: 1.0
From: Belisko Marek <marek.belisko@gmail.com>
Date: Mon, 9 Jan 2023 11:52:22 +0100
Message-ID: <CAAfyv37-4+T0_e+b47RHkrqJW27BBspvjhoOyYbaxaT3gxqXSQ@mail.gmail.com>
Subject: kirkstone: issue with fetching sources using tag
To: Yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 09 Jan 2023 10:52:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58944

Hi,

I'm moving my layers from dunfell to kirkstone and for some recipes
I'm hitting an issue with following fetch issue:
Bitbake Fetcher Error: FetchError("Recipe uses a floating tag/branch
without a fixed SRCREV yet doesn't call bb.fetch2.get_srcrev() (use
SRCPV in PV for OE).", None)

My SRC_URI looks like this:

SRC_URI = "git://mysupersecretgitproject.git;protocol=https;branch=master;tag=v${PV}"
and PV is properly set to tag name.

By adding this to beginning of recipe it seems it start working:
python() {
        bb.warn("SRCPV:%s"%d.getVar("SRCPV"))
}

Any ideas what am I missing?

Thanks and regards,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

