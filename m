Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.4957.1599507083956209702
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Sep 2020 12:31:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Ks1iQH7P;
 spf=softfail (domain: linuxfoundation.org, ip: 198.145.29.25, mailfrom: richard.purdie@linuxfoundation.org)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	by mail.yoctoproject.org (Postfix) with ESMTPS id E87E538C1176
	for <yocto@yoctoproject.org>; Mon,  7 Sep 2020 12:31:22 -0700 (PDT)
Received: by mail-wm1-f53.google.com with SMTP id a65so15228421wme.5
        for <yocto@yoctoproject.org>; Mon, 07 Sep 2020 12:31:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=XWolfqw1lN9OTerIJy5IV0FvtNrMigmNag4rmPwIpeI=;
        b=Ks1iQH7Po4hgScErGOJqR4CdX+PITyqdIsSYaUXh9Pt3y6SlOK5OGy1LgelMMJG3lE
         X3Een0FD5KznddoIUUE5GFW27tKzhdAnvs3faUOPRpcM1jP+rXewFyh6q0zrdbs89LMZ
         Eu6wpekXQVkOW4/2YJaAIAOzMyP1Q+aynWgzQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=XWolfqw1lN9OTerIJy5IV0FvtNrMigmNag4rmPwIpeI=;
        b=uAfbz3uhV0peDKbK4Qhss0G/WDkavPoMlTMesOgvAIOBDZ0N8xpSWtIhqRSaFqN7xs
         fNqCqEyiANMHsoYEGYZKCWgxQsDhFk016YXMZFbKP0NcBP9Nmeg2MVu06di0kBKMbqXM
         Zb2teSu7q/bSztnPVCdtNtmkvvn/D3icsx8ZvjLhPbrLIiGMiOiozmwo0iPU3EpK3UPI
         ArCM1MlrvDtAXB4Tx712hU08Ci9SPztSmazm8mLx4fngeZYzXwhZ55wXM1OjHFnlKkDM
         iFv8/ZX0I0V/CfdICTAS/DViUW2AoLAXSCHzSEzD1IjJTf7UVbgJ07CDbLXAGf7Kgbh8
         o9mA==
X-Gm-Message-State: AOAM5317qQuX9Ftdy0x5N2eG496U769sMRZJQHwCaskNea/4UuCNlTYQ
	oXZvOkJOPRzVmZFdjON2LhSUTAmGqWDGPg==
X-Google-Smtp-Source: ABdhPJyALaPHlLXZ+bhAsboQx4vOCg6zhE1//QsWxSHnl8IbArKpSG63J3+WsiGK9enRXZMAsKZ9LA==
X-Received: by 2002:a05:600c:283:: with SMTP id 3mr829696wmk.110.1599507081405;
        Mon, 07 Sep 2020 12:31:21 -0700 (PDT)
Received: from d.f.d.f.5.0.6.0.0.2.6.1.6.b.c.7.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (d.f.d.f.5.0.6.0.0.2.6.1.6.b.c.7.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:7cb6:1620:605:fdfd])
        by smtp.gmail.com with ESMTPSA id b194sm31280542wmd.42.2020.09.07.12.31.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2020 12:31:20 -0700 (PDT)
Message-ID: <3ef63da20a4f649685f618fe4d02dccb14b54c34.camel@linuxfoundation.org>
Subject: Re: [yocto] Multiconfig question
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Eil?s N? Fhlannag?in <pidge@toganlabs.com>, Yocto
 <yocto@yoctoproject.org>
Date: Mon, 07 Sep 2020 20:31:17 +0100
In-Reply-To: <CANik3vHZ3K6fKpv3qdw7efugdCTywA1BxAWzPGTtpWnHCBU5rQ@mail.gmail.com>
References: 
	<CANik3vHZ3K6fKpv3qdw7efugdCTywA1BxAWzPGTtpWnHCBU5rQ@mail.gmail.com>
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2020-09-07 at 15:53 +0100, Eil?s N? Fhlannag?in wrote:
> Assuming this:
> 
> bitbake multiconfig:ConfigA:core-image-foo multiconfig:ConfigB:core-
> image-bar
> 
> Is there a way during or before the rootfs of ConfigB:core-image-bar
> to tell what else was run during execution?
> 
> What I'm trying to do is set an mcdepends in ConfigB:core-image-bar
> to magically know everything else it was built with.

That sounds potentially quite problematic from a determinism
perspective? We do try and be deterministic.

Cheers,

Richard

