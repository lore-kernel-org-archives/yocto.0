Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E5C4EEB64DA
	for <webhook@archiver.kernel.org>; Wed, 12 Jul 2023 14:49:32 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.web11.9397.1689173367427546234
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Jul 2023 07:49:27 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@linuxfoundation.org header.s=google header.b=ITXIg1VW;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.54, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-3fbc244d384so72354995e9.0
        for <yocto@lists.yoctoproject.org>; Wed, 12 Jul 2023 07:49:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1689173365; x=1691765365;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FyZq2T5ZOt6YQpp1klU3A/XZ71L0MuPTqGSq0ayT7G0=;
        b=ITXIg1VWH5E4XyWJwZOWfeKs003Unbb/5qbNIoX+ETzT5njc4XhLhNm34BMDgVggva
         vZ1ND8BTmeFoPBYPGE++ydYXAH+1L8vhbzq9m/DnuugwTCA/44Rlty9cRO/zz7rmRYbN
         WDuyxhMVRStDF3t3rmg/EtgE6VjM5ePBi/yBs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689173365; x=1691765365;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=FyZq2T5ZOt6YQpp1klU3A/XZ71L0MuPTqGSq0ayT7G0=;
        b=IvcwxaO5ItuaAA+78jIkJ4TVjfbrhXLzwlpUx9bB8tEjy0bC97Mok8upXl7ri6+IlL
         DS+lbNsTHPVIQ18YtQo7C4EkBlxFAYQexEZkg9lGocnM4BjzkHm7ChpUgBh39nxcImmU
         F5mV5FfX48/o/qnR0rLGt83PJHoyxV+KJpJGkd62t7XxAIDKw3iIFpLdZrlGUvdf4QAD
         MvIgoQzNR6sR3ZufxaN8I5ceZ2rTNwxcAvIkIOW/QdQdKYWj5n5kH0kOJyF/q0TmVbG7
         F0Rn/CKx8bLrqVwgPLdJFCj7OpKIqw/9VA6KmN43hLAiJoTaGKTEC6/kOpzNP1Ox+n7X
         nI4A==
X-Gm-Message-State: ABy/qLYRPGMueQWPCcibCOUPzBoWvV4/lBIepyS6XaO0yOCjhj5aF40P
	8eSHwXJPI2pUCwvKP5x6SkwuByY5Dr2Gzb1fsNc=
X-Google-Smtp-Source: APBJJlFpoWOapKikF8qBgnBE0FtREBDCTMyh44iE67HVQ1i0q12EHtv+5mJA1x5sDdgKz1t3dg0OjA==
X-Received: by 2002:a7b:c394:0:b0:3fb:e356:b60d with SMTP id s20-20020a7bc394000000b003fbe356b60dmr17177280wmj.38.1689173365296;
        Wed, 12 Jul 2023 07:49:25 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:339c:939c:6851:d3b0? ([2001:8b0:aba:5f3c:339c:939c:6851:d3b0])
        by smtp.gmail.com with ESMTPSA id p19-20020a1c7413000000b003fba137857esm5295441wmc.14.2023.07.12.07.49.24
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jul 2023 07:49:24 -0700 (PDT)
Message-ID: <fa7853d50f03bf291f69d0482db808a6fdc89038.camel@linuxfoundation.org>
Subject: Re: [yocto] Request for Quotations for development work
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>
Date: Wed, 12 Jul 2023 15:49:24 +0100
In-Reply-To: <176A63496CF306FA.4070@lists.yoctoproject.org>
References: <176A63496CF306FA.4070@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 12 Jul 2023 14:49:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60554

On Tue, 2023-06-20 at 15:09 +0100, Richard Purdie via
lists.yoctoproject.org wrote:
> The project has some exciting plans in progress and I'm happy to say
> we're now in the fortunate position that we're able to seek quotations
> for some development work.=C2=A0For more details please see this page on
> website:
>=20
> https://www.yoctoproject.org/community/yocto-project-engineering-request-=
for-quotation/
>=20
> Please feel free to reach out to me or the Yocto Project TSC if there
> are any questions.

We've added an update to the end of the above link with a deadline for
quotations and some other answers to commonly asked questions.

Cheers,

Richard


