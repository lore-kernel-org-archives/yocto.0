Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
 by mx.groups.io with SMTP id smtpd.web11.191160.1598259204159235876
 for <yocto@lists.yoctoproject.org>;
 Mon, 24 Aug 2020 01:53:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=dx5Fmb41;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.42, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f42.google.com with SMTP id x7so1763725wro.3
        for <yocto@lists.yoctoproject.org>; Mon, 24 Aug 2020 01:53:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=vwcvXfaXsDA+OZUk5P/ItW91xSmuTDReZgb2e+FsDlE=;
        b=dx5Fmb4150LzaK6TD6UaC38DPiWLY7NDqA9tubI4Ll3VvlToY4pNA+fYUhG67bdLPb
         OJwS3W5DX1+wgPltKFwO+dRdl5dvdVc+W52skCrtjkw4Z+jl1XUUST8ZY5kcwtLOxTw4
         tUXKDdbJKRaDIYMM0g2U1edN/XHLbM9UJKd6g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=vwcvXfaXsDA+OZUk5P/ItW91xSmuTDReZgb2e+FsDlE=;
        b=EaW/xFOX1/ZdeB+kQsfMlFoTUzsD4890hpoNoDnUBgmWsYAeXKbXY1BfRNAX6o/cpG
         JOW2Fl8nx8rh8LRdR5fvTXpNKNlyOJUop8srhEu0DDQoEiS3r8lI0+t0Y85aJuGco5VT
         w4NKo5pzqOJxMkcrmjH1FqdRVK8JTzO9LWo1Uq/uhirJB5Lvqz/jXv0bbZAhaAkxKc33
         8ufVUoHGyzorqnsQecetGbziB85a9RKBU3zaNGqFl7qZQgZlgIjlzJ9Py26fPkmnBHbr
         LbNic4d2DNmckcbcCFGfxHHtwiUbTGwa+6UvnmSXEVzrog6QRDSbg4Mq0O/U/8op3Ci1
         ov/A==
X-Gm-Message-State: AOAM533gQGpghW/IkiFhbt2M+HfalRxpea+tsZSTnl7YrZ2326lugjPx
	yHzZIbsY379gBzUnlm60jFmnbg==
X-Google-Smtp-Source: ABdhPJy04FSzCoNiYvIosco/LnZsHbKhSrgOCDBgl/v37P3nW7VLyObFXtu8tXYJetDzzMDUsF0M0g==
X-Received: by 2002:adf:e290:: with SMTP id v16mr4760781wri.259.1598259202463;
        Mon, 24 Aug 2020 01:53:22 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from d.d.0.9.8.0.3.8.5.d.6.d.5.a.5.4.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (d.d.0.9.8.0.3.8.5.d.6.d.5.a.5.4.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:45a5:d6d5:8308:90dd])
        by smtp.gmail.com with ESMTPSA id n205sm13001194wma.47.2020.08.24.01.53.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Aug 2020 01:53:21 -0700 (PDT)
Message-ID: <e83e206763f44e2b5fd4622e8a336355df3bf655.camel@linuxfoundation.org>
Subject: Re: [yocto] Additional log handler
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Konrad Weihmann <kweihmann@outlook.com>, "yocto@lists.yoctoproject.org"
	 <yocto@lists.yoctoproject.org>
Date: Mon, 24 Aug 2020 09:53:20 +0100
In-Reply-To: <AM7PR05MB6881DD773BB8FDC78B4470E1A8590@AM7PR05MB6881.eurprd05.prod.outlook.com>
References: 
	<AM7PR05MB6881DD773BB8FDC78B4470E1A8590@AM7PR05MB6881.eurprd05.prod.outlook.com>
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2020-08-23 at 17:01 +0200, Konrad Weihmann wrote:
> Hi all,
> 
> when running bitbake in CI I would like to add an additional log
> handler to used python logging to catch *ALL* (task warnings,
> dangling append, qa issues, a.s.o.), instead of manually grepping
> through the console  log.
> The information coming from this should be ideally be written to a
> file, file, which can then serve as some sort of report.
> 
> Is there a way to do that?
> 
> In theory it should be possible to hook to an (obviously non-
> existing) 
> event and handle it from there, right?
> 
> Or am I thinking in the wrong direction?
> 
> Any pointers are appreciated from my side...

On the autobuilder the code simple watches the console log, filtering
on WARNING: and produces a separate warning stream. A non empty file
triggers the build to show a having warnings.

At the bitbake level it would also definitely be possible, the log
messages are seen in the UI code as events and it can do whatever it
wants with them.

There was a also much more advanced log handling added recently through
the BB_LOGCONFIG variable. I'm not sure if that can define a completely
separate stream or not, I've not tried that.

Cheers,

Richard

