Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.12992.1579536846287100115
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Jan 2020 08:14:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=LfcgwtVg;
 spf=softfail (domain: linuxfoundation.org, ip: 140.211.169.56, mailfrom: richard.purdie@linuxfoundation.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CB4BAE015C2; Mon, 20 Jan 2020 08:14:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.221.68 listed in list.dnswl.org]
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com [209.85.221.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 897F4E01382
	for <yocto@yoctoproject.org>; Mon, 20 Jan 2020 08:14:02 -0800 (PST)
Received: by mail-wr1-f68.google.com with SMTP id q6so5494wro.9
        for <yocto@yoctoproject.org>; Mon, 20 Jan 2020 08:14:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=7zye4xxC4cUd85Fh2faHrgK3kZpHmPMs3DL9y5AErH8=;
        b=LfcgwtVgyNubYj6qwMFwkKYhlXMeZPtgkoMYaNhOUmD6ISc6EiofHidAdAdViiHMXE
         BROG1Mcu1qRQF+9XuKuTQc4sZ13GaqnYpf23+jBldQx7wUtVvefDHg/StFmCEu0r2CxX
         BPX50yv6upR63WkHoisNFAEMvXLrIcFm2C83g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=7zye4xxC4cUd85Fh2faHrgK3kZpHmPMs3DL9y5AErH8=;
        b=GdlqTBi9K9t4c4Pr8HjTCQZiwtEs4qDfEo8Qw64OZoHGrAN+S71pk8kp7xNQ/zA2iy
         LMhPBZbuvuH6/+5j4pxwo8Uh9j8IeyC9aXPbsVTmRc9T0DYBxH0ntKIWqkiXQbPb5jiw
         zyn9MfX5TyyP5R7qHFO0xngY/e+XlAP++l/jRm0CTPsWZ70ncJQGdmq9FCIBvXF+qCeo
         nrrBMnJsvzyAY9xB+MI2OGjRjoanOUdOO0FAkSwtnpCdLoLq+nTZXJPkXBSm6OoAiOFj
         SYmspUE6uGE2XVOqqmC5UaUuLnNQVm1WlhvWFNxwYVbSrsBYOkezF2SO+v+JWqqENAsq
         +Uxg==
X-Gm-Message-State: APjAAAWZnqbr6rbmeaQirq44fx8AO8f3lx9sALl6JCvupNojcmrzKC6r
	oXG2KrLrkYSerPUkuuo7zlEMAw==
X-Google-Smtp-Source: APXvYqwuQa1InLlLD9m68wVRInopq7pH7DOz7yLfBi36vH8KyLS6H5MhIOD78edeZ5vPuhKoxwWV3Q==
X-Received: by 2002:a5d:4a84:: with SMTP id o4mr258299wrq.396.1579536841635;
        Mon, 20 Jan 2020 08:14:01 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id n3sm193663wmc.27.2020.01.20.08.14.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jan 2020 08:14:01 -0800 (PST)
Message-ID: <578197128dbbb082b8d842fa3e46ee394501b522.camel@linuxfoundation.org>
Subject: Re: [yocto] [psplash][PATCH 1/3] add recovered bar.png
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Stefan Agner <stefan@agner.ch>, yocto@yoctoproject.org, 
	ross.burton@intel.com
Cc: Stefan Agner <stefan.agner@toradex.com>
Date: Mon, 20 Jan 2020 16:14:00 +0000
In-Reply-To: <56d5850f22c8b31a50a5b2839d1021f9@agner.ch>
References: <20190225151619.2754-1-stefan@agner.ch>
	 <56d5850f22c8b31a50a5b2839d1021f9@agner.ch>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2020-01-20 at 14:31 +0100, Stefan Agner wrote:
> Hi list, hi Ross,
> 
> We still carry this downstream, any chance to get them still merged
> in
> psplash?
> 
> If it is really considered unmaintained, then we probably should drop
> the psplash recipe altogether?

I've just merged them, sorry about the delay.

Cheers,

Richard

