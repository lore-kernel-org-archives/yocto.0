Return-Path: <joel.winarske@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 361D8C05027
	for <webhook@archiver.kernel.org>; Wed,  1 Feb 2023 13:26:42 +0000 (UTC)
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com [209.85.217.47])
 by mx.groups.io with SMTP id smtpd.web11.23039.1675257999903109826
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Feb 2023 05:26:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=aXKb0yTO;
 spf=pass (domain: gmail.com, ip: 209.85.217.47, mailfrom: joel.winarske@gmail.com)
Received: by mail-vs1-f47.google.com with SMTP id a24so17532229vsl.2
        for <yocto@lists.yoctoproject.org>; Wed, 01 Feb 2023 05:26:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=zjvj3HA93zJml2ScKB60CPIhkCuPGOCIDdqvEslWRhs=;
        b=aXKb0yTOeNXsMEYUifhNT1TZMhQNaUmqLCpoqOg2UWdXGOVZixCzFEANFXTaBvvlTi
         DMQzintb6feK/V6qHMLks+3gqPRdhzU3uRlBj+PTmRaAIpKFHvo1Lu6k/UulIAX6vtCm
         h2wE/F3ufxZzwrSvxdEzdR4+BK69V3d1uHxQtmJkjuYUD0fJWde/gIu3W8jH7+ucpFUy
         ZwcUSZvF6mKRwP7WOTLV+rSF79DsbklOpZAIqnDGIi+cnFEZiEQY8tpKOPpOIMssCmSx
         VGDQLbi0MYJnn9YCl1fZSYWP73hkuIjJfDc31KwtF0TMPjbpNcjYgfJsZLNuyKwyEuqI
         DULQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zjvj3HA93zJml2ScKB60CPIhkCuPGOCIDdqvEslWRhs=;
        b=IQa3ul4dDQrJU9QgnuF/iOACFmQxm81s63UYV2IG307AxDE+KAIry7VZ3ZhVo7AHHi
         ZIVU2xIcFhvrCXG9ZOCdelt2Q+BkhwR/YzxGulyxRUGOoTVD7TU4uNADRUfLvLUH40xA
         vay95XJWDBWvLPFj5Rxkx70am0iYZp1fMIDBDZNdrwGfVDctKLTkk3lo6oGXBI4wqTOn
         lyY/VbFF0lFY0IsxDw3ZGxVJRwqhXeGLdMHYukL1OvRM6quDdGLfwubcEH/L9kEaxMCH
         H8EUoNUJKgJBQ2p85tUSbNv2gDZmlsnxzAUvo1LCs+Yi5m+v9/hLGDVOrsIys6OY3jML
         YrlA==
X-Gm-Message-State: AO0yUKVmyyGqvm9Jg8aNGcSy60m51HuC6zey81vx55QRN4LYRZZENR5t
	0Nj1QqariatF0v9x58ZKz5bMxLWRDu46LJBzKTk=
X-Google-Smtp-Source: AK7set8pEozPRuAR0pl4MQy+xphS7pCyN+ILFupMF72PwELn93ROG9UaJs9wgjx35BqH1U6k9j01I31bNS6YbnVb1ow=
X-Received: by 2002:a05:6102:386:b0:3ee:4302:b6b with SMTP id
 m6-20020a056102038600b003ee43020b6bmr451854vsq.46.1675257998870; Wed, 01 Feb
 2023 05:26:38 -0800 (PST)
MIME-Version: 1.0
References: <4851.1675148248347125864@lists.yoctoproject.org> <17935.1675197791519218036@lists.yoctoproject.org>
In-Reply-To: <17935.1675197791519218036@lists.yoctoproject.org>
From: Joel Winarske <joel.winarske@gmail.com>
Date: Wed, 1 Feb 2023 05:26:27 -0800
Message-ID: <CABKMkPLAZQBE7kZfxxLX0RLdtv6kd2fYMXkE2XH_n8fz3o_onQ@mail.gmail.com>
Subject: Re: [yocto] [meta-raspberrypi] Is Preempt-rt still supported in
 master / latest releases?
To: Carles.SoleMendi@de.bosch.com
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000ee10c405f3a365d2"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 01 Feb 2023 13:26:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59132

--000000000000ee10c405f3a365d2
Content-Type: text/plain; charset="UTF-8"

In kirkstone for example, you build preempt-rt variant by adding to
local.conf:

LINUX_KERNEL_TYPE = "preempt-rt"

Does this no longer work?

--000000000000ee10c405f3a365d2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div dir=3D"auto"></div>In kirkstone for example, you bui=
ld preempt-rt variant by adding to local.conf:<div dir=3D"auto"><br></div><=
div dir=3D"auto">LINUX_KERNEL_TYPE =3D &quot;preempt-rt&quot;</div><div dir=
=3D"auto"><br></div><div dir=3D"auto">Does this no longer work?</div></div>

--000000000000ee10c405f3a365d2--

