Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C32EBE7849A
	for <webhook@archiver.kernel.org>; Mon,  2 Oct 2023 11:02:10 +0000 (UTC)
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
 by mx.groups.io with SMTP id smtpd.web10.78903.1696244526722171230
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Oct 2023 04:02:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=pWVZvMex;
 spf=pass (domain: linaro.org, ip: 209.85.208.177, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2c012232792so261994171fa.0
        for <yocto@lists.yoctoproject.org>; Mon, 02 Oct 2023 04:02:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696244525; x=1696849325; darn=lists.yoctoproject.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=meLeu7DRZnOkTH1kL803mZHg/CaeZi+uJC1gKs30/wo=;
        b=pWVZvMexS4/O+pgjvMywliyK66eJ31BeDXiW9+5UfwhGgdo/ckJwKSQ7rQJaF/EUoR
         CHTUdtHnV2Z/j63s87jvm8NJvxu1ats4Z+VYvTE304LlcETCQtlOZ1udDYZ+boolzme9
         lsUJyQFbw1v9splRFw6ApWjGLoQdgcLm9usBkKnQurnZhgPPGPj57IqQ5aoLqR2MQL/R
         b+0y2nyEp+SghPQkorakjcWppdOBegY8Uh2hBR5/QeiUaPfLAXlmyhx8AdTAqnHywi3Y
         mfmoQsH9i3Z1D5KoE1pf7lwFf70XhM/1Dmx4DKYtghARcOjCmo2+rW7MWhFQaLFkDk1N
         /4Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696244525; x=1696849325;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=meLeu7DRZnOkTH1kL803mZHg/CaeZi+uJC1gKs30/wo=;
        b=Aj3w4VJEglQU++0dSqsw+GEncZKELXfGtrFIvZr7OdB6G8SwPRekwfhSR4TUiq9WXq
         Y6R6boXfMEfe0z5eFE1PhAHvO7MDZMk6GoI+ifbTxI7eWDDleRcVz1FQm9rQhrDBCCTG
         ayqthxsdSgJBQOqUXpyBN94xMkGsFfEmFvXGBx6vmnWoXrXrxghp6hMiw5Xk5+OiG6w1
         QPZgkTg22Yf5L8PfoI/pel6m6fv2g2i0UfUgoNgReitFrvuhc8xfKB4MWelb1YJFK0rQ
         1dcmd3+dvpx/1grMmmhhszOxwHg5Mgi2QBAbwat+e7Pzr5lRlG5NwnPHi0LPPKs+E2l1
         4ymA==
X-Gm-Message-State: AOJu0YwNCPoqyNhTTdWcx5edbbTv7fgSebEHHjY+jpjxBAmCLQARgNnh
	nHzOkdcRxtsSCzQJPCygQNPtyQ==
X-Google-Smtp-Source: AGHT+IEMsSj3eXjLl/cSksb6Vy8VRyGkKBEzl0Uxj4FXuVvUse5R5ay4JPDrZaIt8AV/NY9/lni5ZA==
X-Received: by 2002:a05:6512:3c99:b0:503:364e:96ce with SMTP id h25-20020a0565123c9900b00503364e96cemr11977729lfv.29.1696244524704;
        Mon, 02 Oct 2023 04:02:04 -0700 (PDT)
Received: from nuoska (dc7g6tyjby-d304c4945t-3.rev.dnainternet.fi. [2001:14ba:16cb:a800:e107:c77f:6058:ee33])
        by smtp.gmail.com with ESMTPSA id q16-20020a194310000000b00505677e7a99sm1788223lfa.139.2023.10.02.04.02.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 04:02:04 -0700 (PDT)
Date: Mon, 2 Oct 2023 14:02:02 +0300
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: richard.danter@windriver.com
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] cmake backporting
Message-ID: <ZRqjKoKfWtrb+uzF@nuoska>
References: <dad702961d91d1c399f454eba60c5b38c4de30dc.camel@windriver.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <dad702961d91d1c399f454eba60c5b38c4de30dc.camel@windriver.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 02 Oct 2023 11:02:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61189

Hi,

On Mon, Oct 02, 2023 at 10:41:37AM +0000, Danter, Richard via lists.yoctoproject.org wrote:
> Hi all,
> 
> We have a customer using hardknott & kirkstone who needs a newer cmake
> version. Looking at mickledore, it has a version of cmake that has the
> features they require.
> 
> Would it be acceptable to submit a patch to backport this version of
> cmake to these older YP releases? I'm not sure on the policy so I just
> want to check before proceeding.

CMake version update would be against stable and LTS rules:

https://wiki.yoctoproject.org/wiki/Stable_Release_and_LTS#Stable.2FLTS_Patch_Acceptance_Policies

I have done similar updates on a private poky fork though. Cherry-picking the needed
patches can be doable, but all this depends on the details...

Cheers,

-Mikko

