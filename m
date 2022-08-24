Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 28140C00140
	for <webhook@archiver.kernel.org>; Wed, 24 Aug 2022 14:48:43 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com
 [209.85.128.52])
 by mx.groups.io with SMTP id smtpd.web10.11750.1661352516469814285
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Aug 2022 07:48:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=ByQcqXtS;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.52,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f52.google.com with SMTP id
 k6-20020a05600c1c8600b003a54ecc62f6so995870wms.5
        for <yocto@lists.yoctoproject.org>;
 Wed, 24 Aug 2022 07:48:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc;
        bh=FYMrFKxUpcjWGZjhBGZhUJkW5Ec4d63FuTvkK7Bk24w=;
        b=ByQcqXtSxMQ1iAOsn0hBbH6ca1teUamqwUS5SW3Pk1u4iN0oaVRij5bqRx54ERQ8Ap
         E+M3Nxrk7JPy54lfOopcZWOJM/xqKRczJ88Ua2qXk/xepFWx/diU8vwBuBm5s1ulsfLD
         XsPHwgqAY9F7JPT2jFxlqK0/NPxExoQry4srk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc;
        bh=FYMrFKxUpcjWGZjhBGZhUJkW5Ec4d63FuTvkK7Bk24w=;
        b=fmGnwEN1oB+DyAmftapMSqtAY7Gi4pKCzjxWfXQwAusjhqYdpkqSvypEK7Kuz9LKgF
         JNQZl3Iqy5kN77NPLJhUQ6oJwAV3pOTG5RcOeVdtprF1PHMa54Yobm/63ODtwD7k6Qdo
         dMC2+poU24ZnV4djGb43VPmIWflSCzCUb+KPaZoOXXhtNPORqLF9tpIKJ273G/Yrohnu
         R//G82XgrngXsWHgobLNvAhdE9rI56PZGncZ8mKyp0eiZnabIOcFCr4P/YnYzqGgkeB7
         CuEmPOu1s9sglIT33C5SNPeJ4S1IhOvhqU3ztWw+04jYyIavF6v/jiiuqLkoz8gcvwso
         owzg==
X-Gm-Message-State: ACgBeo0e3sxUIukMhdwGbzxP9Lo7hh9HEpT8zS51di/Hhg40u6XNZz7d
	kwPwpA6OhKjmRnGoFRcT16QYjg==
X-Google-Smtp-Source: 
 AA6agR5LnnLkF615ku2zSwPsh/14WSX7+YdKuh96HWyE1NkEoEWK0T2PA+XKbnAYuNnHEdW4mMSIbw==
X-Received: by 2002:a05:600c:1c95:b0:3a5:c28a:df3e with SMTP id
 k21-20020a05600c1c9500b003a5c28adf3emr5677136wms.40.1661352514793;
        Wed, 24 Aug 2022 07:48:34 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:4e4:9da0:6de0:5e33?
 ([2001:8b0:aba:5f3c:4e4:9da0:6de0:5e33])
        by smtp.gmail.com with ESMTPSA id
 t15-20020adfe44f000000b0021e4bc9edbfsm17032994wrm.112.2022.08.24.07.48.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Aug 2022 07:48:34 -0700 (PDT)
Message-ID: 
 <eaf49ce8b96b72cf8b24a6ea04e8536b6183a6db.camel@linuxfoundation.org>
Subject: Re: [yocto] Building for both target and host
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Maik Vermeulen <maik.vermeulen@lightyear.one>
Cc: yocto@lists.yoctoproject.org
Date: Wed, 24 Aug 2022 15:48:33 +0100
In-Reply-To: 
 <CAKO9uzoUwa11o0dhC1o2efqqa78MKSim-OP9J9MNzNyZPEaNTQ@mail.gmail.com>
References: 
	<CAKO9uzpWNuqqtnvzRvZM7btNOmr344U2zp0W9hr86ZrUbLjj_Q@mail.gmail.com>
	 <d1306db241ff440fdf8d005f598b6c6acf5b63e8.camel@linuxfoundation.org>
	 <CAKO9uzoUwa11o0dhC1o2efqqa78MKSim-OP9J9MNzNyZPEaNTQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 24 Aug 2022 14:48:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57895

On Wed, 2022-08-24 at 16:37 +0200, Maik Vermeulen wrote:
> Hi Richard,
>=20
> Thanks, that seems like pretty much what I need!
> However, currently the recipes in the dependency chain don't all
> contain 'native' counterparts.=C2=A0
> Most actually wouldn't really need to for the executable to be
> built.=C2=A0
> Is there a way to neatly work around this too?

DEPENDS =3D "<full set>"
DEPENDS:class-native =3D "<more restricted set>"

and variations of this for other kinds of variables are one
possibility. It all really depends.

Cheers,

Richard

