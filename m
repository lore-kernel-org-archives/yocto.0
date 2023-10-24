Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 08708C07545
	for <webhook@archiver.kernel.org>; Tue, 24 Oct 2023 08:58:58 +0000 (UTC)
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
 by mx.groups.io with SMTP id smtpd.web11.13758.1698137931652687349
 for <yocto@lists.yoctoproject.org>;
 Tue, 24 Oct 2023 01:58:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=RLfpVdKo;
 spf=pass (domain: gmail.com, ip: 209.85.208.180, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2c5720a321aso34325011fa.1
        for <yocto@lists.yoctoproject.org>; Tue, 24 Oct 2023 01:58:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698137930; x=1698742730; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=BUHsrL7Twd4qSFpelpMoTSYTQgDAO7NlCNNe7s77Uoo=;
        b=RLfpVdKokQ8dT24ZN/8Vi6jUxiYAswZDL5wdk8gtBNGCMrFc0ugVvvxqxkrWV5e9sj
         SmZr7uUr5271Zrys87H4cG+BDkQALTK/QWmpilyYJ+gITmlocbddgMkGLuCzE1BW0yml
         dG4syPkL2OD3iiwkem/1jDQ0TSPvTHjfrXJp74jlV6Y4tX+WzGTKPDhvG2jILW04LuLJ
         HPi3DtHOwnTPTuJNrWox0dsehgU6HPVYFSaXujLnWptC+XL8sCvQNtS+Ce3JaRLgHwY4
         ApjNs7txSrqxResb9Qijcooeb1VMmyELHG1d46AVy+qTbUqGl+3IPb+9q0305nOpFlZO
         CqQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698137930; x=1698742730;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BUHsrL7Twd4qSFpelpMoTSYTQgDAO7NlCNNe7s77Uoo=;
        b=Ofi3TWT5IJOB6Whg0v0Pjn2Q5I8lP9j/V8taoCb9MqoirTDnONDDUBszzIGiwzMRFr
         lw7CYxOW1APEpceL15Yo1XbsDwiaU8xkZoeZ7htGWcVtjXNzfwVhVKZzrcRe70ofASbh
         YqdtML2zb41/uCDLFQnCSiobSu6K8Z29ulmfRHlvoKVJb5brTBR9f8Bsa97L1/OE1UGZ
         OAITB4GHj66qmvNuhjxr5BmDXx/nIvORVq4RaMJaIN3XlNl932J9AtyUAljNPGAtcn70
         +4aVnLUMmq0UledwGUHI/RmpjthlbrU2gNPA86HBZPXLP+5+AvPx+5EDdi8HOVOWrhVx
         VLNA==
X-Gm-Message-State: AOJu0YzrcNkdyXdCnNnEvO3+4offUN9OlPgURI7Io5CokcKP97or4nPk
	Hnn7LvKhadNiomxcl57M3bqPyvN+CGv6t2f8aAY=
X-Google-Smtp-Source: AGHT+IGDLXzPp92I3VZ81GLMvMGEA+zBWrV1Dx1xzn+pSZqr4ER6KDaBErZfZhK1RJ4fn5a93PMW2y0gDBNT96F8JyE=
X-Received: by 2002:a05:651c:b11:b0:2c5:169f:ff03 with SMTP id
 b17-20020a05651c0b1100b002c5169fff03mr9271737ljr.5.1698137929687; Tue, 24 Oct
 2023 01:58:49 -0700 (PDT)
MIME-Version: 1.0
References: <20231020140528.10787-1-david.pierret@smile.fr>
 <205e52a83035e8132256a3edff4259e967786bc4.camel@linuxfoundation.org> <CADyEP=SbqzRG_2wFi__qvUfXvbCUdOqUV54EoXBtACJRhn=qTQ@mail.gmail.com>
In-Reply-To: <CADyEP=SbqzRG_2wFi__qvUfXvbCUdOqUV54EoXBtACJRhn=qTQ@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 24 Oct 2023 10:58:38 +0200
Message-ID: <CANNYZj_LvKctDO_hD=m7B-OSEbveAMCfV3yw66NEHiPVohddWQ@mail.gmail.com>
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH v2] AUH: Add
 Openembedded auto-update-helper with list of layer to test
To: David Pierret <david.pierret@smile.fr>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, yocto@lists.yoctoproject.org, 
	Khem Raj <raj.khem@gmail.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 24 Oct 2023 08:58:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61462

On Tue, 24 Oct 2023 at 10:17, David Pierret <david.pierret@smile.fr> wrote:

> The iteration over a list was my first approach, but aborted following
> review on patch v1.
> The V1 review asked to allow the AUH to accept dynamic layers as parameters.
> We maybe misunderstood each other.

I would suggest that AUH changes where dynamic layer configuration is
given over command line gets merged first, and this patch is adjusted
to use that. Then we can work out how to use that on higher levels.. I
also lean towards giving AUH only one layer to work on per invocation,
and specific layers being defined in autobuilder configurations. This
would allow more efficient autobuilder execution, if layers are worked
on in parallel (meta-oe as a whole is huge).

Alex

