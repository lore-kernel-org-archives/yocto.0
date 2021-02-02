Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.web11.50048.1612258386498254159
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Feb 2021 01:33:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=BR7uifS9;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.53, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f53.google.com with SMTP id z6so19600963wrq.10
        for <yocto@lists.yoctoproject.org>; Tue, 02 Feb 2021 01:33:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=Rp3zBMJjNI9nvxAytFrNCT/f2+lzNqltOScxtYmUbq4=;
        b=BR7uifS9bGTczpxde5mfbE8cSWH9kAQLs/b2bbNoo3tBVjsCWK0tozZG0R2rDr4ruq
         2eFKt60GNFSDOMKrRtulAO5sFc1WQ0YMU1Xab2QGXtYFanjqhb3UuuraQkyXC9yBLqVs
         XS8leSxpcKZrpcjcWIhV+cJ7iOR4k7Y6HjprI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=Rp3zBMJjNI9nvxAytFrNCT/f2+lzNqltOScxtYmUbq4=;
        b=LUOdIYHmAKodrK5tF75LTQA3A5Gn102IAr3rpTgUexh0ijinUV7wiAnimtqWS+6mkH
         eJaVAoGiTRtpeaRFBMxNWshz19Lgeo6wQSDyzgUgSHPaKoW1eM2SgInoMZOcKfmFDoP3
         TAu48mcyoQVexrvY4MyOrFS6ZJwIKL5wg4ZcVCQBdHyly4NASArCJSdYnIp1La0p/G+D
         /odWKyRTQ0LLA2RDyTnk2LIZ6jlAM1tYI+jrYrC+5JfIrIWn9g2rk0uSMib5mjW9UOw2
         0R8HSFIC7p32BYaFzyN75qyCJafPuzK8vhZ68ShLCkgsobmgax1lQixLHtA2Lv3o5DBd
         o0uA==
X-Gm-Message-State: AOAM531BDLCI+bq/qg74r9t94Narb9MA7bCj2wE3O9hPxuuotPxPUx+i
	FCCs7Ajgh6AciEVcl+pCESzUJw==
X-Google-Smtp-Source: ABdhPJzPTqRJ5weztck8DgeoVGZg4GV7od5zxyytxRjFYdQwHk11JmZY0xQ1Q3tnHlPQvmb64eSKaQ==
X-Received: by 2002:a05:6000:188b:: with SMTP id a11mr22299053wri.151.1612258384941;
        Tue, 02 Feb 2021 01:33:04 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:1d48:268:5d93:58e4? ([2001:8b0:aba:5f3c:1d48:268:5d93:58e4])
        by smtp.gmail.com with ESMTPSA id p12sm2010327wmq.1.2021.02.02.01.33.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Feb 2021 01:33:04 -0800 (PST)
Message-ID: <456f2eb44ad30da1e4422d06267c07e7c57595aa.camel@linuxfoundation.org>
Subject: Re: [yocto] [OE-core] Let me tell you how I really feel. Zero filter. If you need meta-python2, you need to become a maintainer. Immediately. Period.
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Martin Jansa <Martin.Jansa@gmail.com>
Cc: Tim Orling <ticotimo@gmail.com>, Yocto-mailing-list
	 <yocto@lists.yoctoproject.org>, openembedded-core
	 <openembedded-core@lists.openembedded.org>, 
	"openembedded-devel@lists.openembedded.org"
	 <Openembedded-devel@lists.openembedded.org>, Anibal Limon
	 <anibal.limon@linaro.org>
Date: Tue, 02 Feb 2021 09:33:03 +0000
In-Reply-To: <CA+chaQeJnDzgusQvqEWkkNwkoDxR1fMhrb0kM3932D71yWTMRw@mail.gmail.com>
References: 
	<CANx9H-DFtcdnZwDqHEPg4t5ySyJe++KS8hO9QDFX5r31KLz3Ww@mail.gmail.com>
	 <16406E32EA0586FD.712@lists.yoctoproject.org>
	 <CA+chaQeJnDzgusQvqEWkkNwkoDxR1fMhrb0kM3932D71yWTMRw@mail.gmail.com>
User-Agent: Evolution 3.38.1-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2021-02-01 at 15:40 +0100, Martin Jansa wrote:
> can I get the write access to meta-python2 as mentioned above?
> 
> I have 2 fixes to make it parse able with latest oe-core:
> https://lists.openembedded.org/g/openembedded-devel/message/89201
> https://lists.openembedded.org/g/openembedded-devel/message/89200
> 
> to fix issues discussed in:
> https://github.com/openembedded/openembedded-core/commit/fd6a007efa7cb45101a66f294af81d9d33bb3fab#commitcomment-46565284
> https://lists.openembedded.org/g/openembedded-core/message/147477
> https://lists.openembedded.org/g/openembedded-core/message/147514

This sounds like a good idea to me and I have admin right so I've given
you access :)

Cheers,

Richard

