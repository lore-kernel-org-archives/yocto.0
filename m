Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.web12.2812.1582932362848225447
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Feb 2020 15:26:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=fQTtOcZS;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.54, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f54.google.com with SMTP id n64so3810654wme.3
        for <yocto@lists.yoctoproject.org>; Fri, 28 Feb 2020 15:26:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=7SUd89ZYUST9zf/ST/G4eqcEdd9f3a3wBh1ELdn4KSs=;
        b=fQTtOcZSOKUdo6eVc22JpODnBASohPZxFDs50s3/NwibCAOPpPLy7Fq1chVO1caBtj
         ys2dh2a+iBapb/Q5ncd365v78kwvXNZmC30XkT4X2atOtPyQ5FFaZNUn293nSQy2ik4z
         d2FzFcglwe4LBnaWa2ecO7fl8WmHOOEePpaJI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=7SUd89ZYUST9zf/ST/G4eqcEdd9f3a3wBh1ELdn4KSs=;
        b=YVlBhi4b+Gsx/GzRlVtVSCUgluoH+nVXhjsYdLDU6ZML1WuJoFGmfP5moc8SGXhK1e
         mMS8rUlJ5wc+4gu1Z5g/fWaFrGSUFu0Yn7kzEFd0lEyq/c2p7ioxkXO/O28lBU0KBCGz
         oldAa5VzFxFYW8gPhzVSb53zDMbSOuLWf7dKmYUPZZcK/Dfhor04+v7ZIZFB4YgWHXnP
         lw0PdUuMnmOgGbi0aBvVo6d+uf1/zC6D9/DHq4cd0suq0CBYgdD23EU9+U1iO3BVCX8O
         BYCEmub+hieAsjEClnXbnFkih8W8+VJSF5Yloj9fBAmAsczvruBI0KIcMxSmUC/KEKO6
         s/Zw==
X-Gm-Message-State: APjAAAV2AMaaJP/J+Z2qGWryl/Aj+b/q7QMzcgyXyIF2gI+1xtZwjF6O
	6mWGkegg4oNz7P17W4f/uTnhZA==
X-Google-Smtp-Source: APXvYqx6mZvOnGGtVctHJy0eC2lyWT48Kj9W32EPzliLakbj01EH6+GlOZ1OEU/2qi0RbwRyIl1VeA==
X-Received: by 2002:a7b:c183:: with SMTP id y3mr6476800wmi.45.1582932361212;
        Fri, 28 Feb 2020 15:26:01 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id y3sm4193905wmi.14.2020.02.28.15.26.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Feb 2020 15:26:00 -0800 (PST)
Message-ID: <18c5d510bec23fbb83c7d82e9ea7e2594b58d44f.camel@linuxfoundation.org>
Subject: Re: [yocto] Should changing a task in the .bb file cause the task to be rerun?
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Sean McKay <sean.mckay@hpe.com>, "yocto@lists.yoctoproject.org"
	 <yocto@lists.yoctoproject.org>
Date: Fri, 28 Feb 2020 23:25:59 +0000
In-Reply-To: <TU4PR8401MB115177E1CDF301758DE3E72A82E80@TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM>
References: 
	<TU4PR8401MB115177E1CDF301758DE3E72A82E80@TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM>
User-Agent: Evolution 3.34.1-4 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2020-02-28 at 22:51 +0000, Sean McKay wrote:
> This is probably a fairly short question (I hope):
> I’m working on a branch based on zeus. I found a bug in the way that
> one of our recipes was handling something during do_configure (which
> caused an error to pop up in a do_compile task). When I modified the
> do_configure task (do_configure_append, actually) to behave properly
> (which involved changing the actual commands run in that function)
> and reran bitbake -c compile <recipe>, the do_configure task wasn’t
> rerun despite the change to the function’s code.
>  
> Is it safe to assume this means we’ve done something to mess up the
> way our system is processing things? Or is that expected behavior

Its not expected behaviour and yes, it sounds like something is messed
up...

Cheers,

Richard

