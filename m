Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
 by mx.groups.io with SMTP id smtpd.web11.85.1595265539458064665
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Jul 2020 10:18:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=ZAUsM7at;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.42, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f42.google.com with SMTP id f139so259324wmf.5
        for <yocto@lists.yoctoproject.org>; Mon, 20 Jul 2020 10:18:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=7FAbrWwkXBshfIlF/vyHpmFV+Kue/+OwgDJP2Rf6/KM=;
        b=ZAUsM7atfhHQHSzPpUT+4B7u9h+YWgu5K+o4pdtw3XdI94uTdktdFG+RNkeWZoXwgA
         vOYvRExcOlHGP+LUJDt7MJdnLSsI31hUv+f8Gdwag0xSZcYKB0Jn+07vqvwJIV4KTi+M
         44Nl644pYoUiXhQ3x0ar3tzeggAWwKFA28AgY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=7FAbrWwkXBshfIlF/vyHpmFV+Kue/+OwgDJP2Rf6/KM=;
        b=nZdlZh19sIGDD6uqlhIUTQxiZsRa9bXh2/Ceg74gLeo/uFXupJLM5O3UEzI9mNNLcD
         1zn1s5nPQo1gJAu5XJVMICA/sfsQ9RzelgSLWdrVfIGPtjeOSH9gN5C/DV25AYbKOLNs
         DAFxB0AKiJfVvqVL7Ii+Z5/f2wUrVl/uiaoTFhKTYpRBT/ra1M7K7Dkp6jDJwIs+TrgV
         8J5WbZGoi+zm9a9x/gRgpnRG0EpUy/pFH2NdlltLkz3/zNanyFcfUqaTkvyE0JE/1mBU
         lI+uRYdK45/gVneLNOPIbrqjLPCIBzqebHTqZ17w+ZqsDzYm769ie1Avwy8CktTqBTfM
         9hPA==
X-Gm-Message-State: AOAM5313TRybT1r0p4PKniCKKts+DSiR/hXCEl7VdesiIAIm/DuueFNN
	bnoqjYKbFCGolp+2VUoLqXHSqg==
X-Google-Smtp-Source: ABdhPJwkVrJOO62q5PXwr/cwXkC8EbHBmI5RrtDQMNOIV8TCWBx1nOEFg+tM3xHTGTzBkkgZdE3vdA==
X-Received: by 2002:a1c:48d:: with SMTP id 135mr354226wme.102.1595265538004;
        Mon, 20 Jul 2020 10:18:58 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from 5.f.a.a.6.6.c.6.8.7.0.3.0.b.c.1.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (5.f.a.a.6.6.c.6.8.7.0.3.0.b.c.1.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:1cb0:3078:6c66:aaf5])
        by smtp.gmail.com with ESMTPSA id k126sm191267wme.17.2020.07.20.10.18.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jul 2020 10:18:57 -0700 (PDT)
Message-ID: <1be512a8c6122e1305c4290514a4603f8e4ebfaa.camel@linuxfoundation.org>
Subject: Re: [yocto] Adjusting Extensible SDK for build setup
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>, 
	"yocto@lists.yoctoproject.org"
	 <yocto@lists.yoctoproject.org>
Date: Mon, 20 Jul 2020 18:18:54 +0100
In-Reply-To: <MADEUP.1623853FAF59D08E.10418@lists.yoctoproject.org>
References: <MADEUP.1623853FAF59D08E.10418@lists.yoctoproject.org>
User-Agent: Evolution 3.36.3-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2020-07-20 at 17:13 +0000, Monsees, Steven C (US) wrote:
> No, I guess I wasn't clear, I needed to add to lines of code in the
> scripts to adjust things so that my env script was copied to the
> proper SDK build env "layers" directory and set the conf_initpath to
> use my env script...
> 
> The variable assignments mentioned are configured in my distro config
> for the overall SDK build.

It would be helpful to understand which two lines you needed to modify
and how.

Was the setup script being copied at all without your changes? If so
where was it being copied? If not, what did you change and where was it
copied afterwards?

What value are you setting conf_initpath to?

Its very difficult to answer questions on a layer structure which isn't
clearly described :(

Cheers,

Richard

