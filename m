Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.1872.1579559239018814659
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Jan 2020 14:27:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Jfad+jii;
 spf=softfail (domain: linuxfoundation.org, ip: 140.211.169.56, mailfrom: richard.purdie@linuxfoundation.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81E5EE01547; Mon, 20 Jan 2020 14:27:18 -0800 (PST)
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
	*      [209.85.128.65 listed in list.dnswl.org]
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com [209.85.128.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4687BE0080F
	for <yocto@yoctoproject.org>; Mon, 20 Jan 2020 14:27:13 -0800 (PST)
Received: by mail-wm1-f65.google.com with SMTP id p9so965457wmc.2
        for <yocto@yoctoproject.org>; Mon, 20 Jan 2020 14:27:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=kD/iLgwd775J/PG4/2gu8WXklcQl3Ayj5yh+mcchRXo=;
        b=Jfad+jiiaZPXIcfceBmozQcZj5H+HN/s2kaViblYeIg0HbK3hrtW5NO61EeccFkKTa
         +9RzJn2OwtoTjq0agt29hb3GxuxbBMP8W6YtVmRSrkkCBSETGuWieRldsQHMV654I+sY
         NSUnZFJEyrNREsVoA0nOLr/5Yk8wDyU62hqOw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=kD/iLgwd775J/PG4/2gu8WXklcQl3Ayj5yh+mcchRXo=;
        b=L16o9sXx4N+yZRj4EcbyjTPFEd9sPVGDApbsLbw/BGJ3DuSpzzb4m/jOAmla98mMJJ
         rwG6UHoScDJKL2EoEHxhgJweZQgnuvPHtzgdwSeZFNwcgM3CoddLVKSqNCdXRVUQYiwk
         HOyMoLNX8hx87DfwztYT18Jh14Sji5MlT6ZvQZrzN5Ny/Pfwd2zTZWxQ+MfUUgnPQL9/
         rB3unD/eWwga4CdWsmGv1GHaOfcSMmYXUPPN0RSyjzPXm6sxD5KM+hqVNxDzUFDWU6Kw
         ub2hJ9+Z+Zz+CoJ3CG30Si9BwdA5qnIIdWCJmSHB+cjaNlooazoG3KbJfCRSEJ97gMnD
         TZpg==
X-Gm-Message-State: APjAAAX4nENbgEm8rV50UrDorbVAa976wJo7KOs68HjR4D/p71JmtXlf
	0Ww54nzKsK8/aOj0x/dW1f+8ZA==
X-Google-Smtp-Source: APXvYqzGhXIx+JCaAapJMgGhTCpHQhHahsJy8/3LW/IGNbu6YWAliyG74IkU8UIthndWTs8n96JSHg==
X-Received: by 2002:a7b:c84a:: with SMTP id c10mr868685wml.157.1579559232363;
        Mon, 20 Jan 2020 14:27:12 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id m7sm49636753wrr.40.2020.01.20.14.27.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jan 2020 14:27:11 -0800 (PST)
Message-ID: <eb0bb4c7cb4f8b8487114946ab13c10647f5c9ee.camel@linuxfoundation.org>
Subject: Re: [psplash][PATCH] add systemd support
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Stefan Agner <stefan@agner.ch>, yocto@yoctoproject.org
Cc: Stefan Agner <stefan.agner@toradex.com>
Date: Mon, 20 Jan 2020 22:27:07 +0000
In-Reply-To: <20200120220004.1321837-1-stefan@agner.ch>
References: <20200120220004.1321837-1-stefan@agner.ch>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2020-01-20 at 23:00 +0100, Stefan Agner wrote:
> From: Stefan Agner <stefan.agner@toradex.com>
> 
> This adds optional systemd support. When enabled, an utility called
> psplash-systemd is built. This tool will connect to systemd using the
> system bus to obtain progress information and communicate that to
> psplash. Once full boot progress is reported by systemd psplash
> psplash is closed using the quit command.
> 
> Signed-off-by: Stefan Agner <stefan.agner@toradex.com>
> ---
>  Makefile.am       |   6 +-
>  configure.ac      |   2 +
>  psplash-systemd.c | 168 ++++++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 175 insertions(+), 1 deletion(-)
>  create mode 100644 psplash-systemd.c

At a quick glance this looks like it will fail to build with sysvinit
so that needs to be fixed.

Also, can you put a license/copyright on the new file please. Bonus
marks for an SPDX license line :)

FWIW I'm about to add the license tags to the rest of the files.

Cheers,

Richard

