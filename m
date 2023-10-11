Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D02FACD6E78
	for <webhook@archiver.kernel.org>; Wed, 11 Oct 2023 14:24:21 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
 by mx.groups.io with SMTP id smtpd.web11.17844.1697034260786999548
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Oct 2023 07:24:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=JBmyV0DK;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.43, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-40572aeb73cso64563845e9.3
        for <yocto@lists.yoctoproject.org>; Wed, 11 Oct 2023 07:24:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1697034259; x=1697639059; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=y4fRvxWehzdrkfhjXvy4OiiNAExzcqOkPcPlVJAwJ8E=;
        b=JBmyV0DKPxRXObNuRhevf6y/0ABY7XLBO2LFsPioK0Oe16TkhjZuFAfQAogohGJFYd
         +48mq8cy1nrFrFVAkLW5CkoYzMYwoe5V9x1g6Mzai1YBGGJdBKliAoFT4XBHW6sp1GVZ
         cdDSgAXbSb5OGr/Lib99O1Osgb0zGL30S5ANQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697034259; x=1697639059;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=y4fRvxWehzdrkfhjXvy4OiiNAExzcqOkPcPlVJAwJ8E=;
        b=GI0bVHFCldD6A/266+Zq/pzgz2UhIUxgPN5f028BwmAYALncJlnOHv5+TCv21o5/2U
         +TL1j5IT/qD+siGVIMvV+H6x7sQl4lOaobAY7/WZyEaJcFbqltrAJzC0OqNq/fDRbhUW
         mJDUPUjOV59jwA6rvLABfFlqPI6IdpmBZkaZrmJSxS/MY0dL2G+PYTjgccv89Klx7jBB
         Vf64PkdWnyoQ3tqlSndXEv5Hc9iEfK36SDd06fNBzRuq+rPYNaYBb2ZVEXxe23Rg+1eO
         BnopsEdHqo5Dm9y4wQMnf3iW4sFHe+Mt3bgguWCLGp2VgprQTBrBccwennbx1qO3GPy7
         dIKg==
X-Gm-Message-State: AOJu0YwVF4EdaIhATii+AFaFp5p9KBfM/MxmO506G0MQNiP1xXuO0GXa
	HKr0Z2Okwe30s5Cc31lgpEG20A==
X-Google-Smtp-Source: AGHT+IGGDe7yiJxpn0FqZx6mc7juLSENrpDRl7PxHziccODh9U8qtpqDQZwbkdBbgQghtMMpecJ8pQ==
X-Received: by 2002:a7b:cb8b:0:b0:3fb:e189:3532 with SMTP id m11-20020a7bcb8b000000b003fbe1893532mr18671947wmi.20.1697034259266;
        Wed, 11 Oct 2023 07:24:19 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:af0b:dd0f:66a6:9b90? ([2001:8b0:aba:5f3c:af0b:dd0f:66a6:9b90])
        by smtp.gmail.com with ESMTPSA id t14-20020a1c770e000000b004054dcbf92asm16895220wmi.20.2023.10.11.07.24.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Oct 2023 07:24:18 -0700 (PDT)
Message-ID: <f6beb9f82346b2adf35852a51f5d7ac6ee4ac5cd.camel@linuxfoundation.org>
Subject: Re: [yocto] [auh][PATCH] weeklyjob: Add Openembedded update-helper
 conf
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Alexander Kanavin <alex.kanavin@gmail.com>, David Pierret
	 <david.pierret@smile.fr>
Cc: yocto@lists.yoctoproject.org, Yoann Congal <yoann.congal@smile.fr>
Date: Wed, 11 Oct 2023 15:24:18 +0100
In-Reply-To: <CANNYZj_9kj01Oz+NGoyezTe4r8qAxNFmB5PSoxZKdzLUAjOKrw@mail.gmail.com>
References: <20231010145942.3811411-1-david.pierret@smile.fr>
	 <CANNYZj_9kj01Oz+NGoyezTe4r8qAxNFmB5PSoxZKdzLUAjOKrw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 11 Oct 2023 14:24:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61322

On Wed, 2023-10-11 at 11:02 +0200, Alexander Kanavin wrote:
> On Tue, 10 Oct 2023 at 16:59, David Pierret <david.pierret@smile.fr> wrot=
e:
> > We've chosen to use a template configuration file rather than multiple
> > configuration files (1 per meta). The template file contains tags
> > between braces that is replaced in the script using simple `sed` calls.
> > The meta list to be analyzed is defined via the `meta_list` variable.
> > This variable matches all `meta-*` directories
>=20
> I would suggest that AUH itself is modified to accept the dynamic
> layer_* parts as command line arguments. Tweaking things with sed is
> difficult to understand or maintain, and can be easily avoided here.
>=20
> Then the other commit for autobuilder-helper can as well be greatly
> simplified and can reuse existing scripts instead of
> copy-paste-tweaking them.

I agree, the goal here is to be able to use these tools with other
layers so fixing them to be more generic and configurable rather than
hacking them is much preferred.

Cheers,

Richard

