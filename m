Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.11475.1579613273191149378
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Jan 2020 05:27:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=d/lhITpF;
 spf=softfail (domain: linuxfoundation.org, ip: 140.211.169.56, mailfrom: richard.purdie@linuxfoundation.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 11CFFE01449; Tue, 21 Jan 2020 05:27:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.128.68 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com [209.85.128.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8FA88E00C92
	for <yocto@yoctoproject.org>; Tue, 21 Jan 2020 05:27:49 -0800 (PST)
Received: by mail-wm1-f68.google.com with SMTP id d73so2960872wmd.1
        for <yocto@yoctoproject.org>; Tue, 21 Jan 2020 05:27:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=2Gw8C1SnjvqUmfBMZlXJ42j5eYKdCJiGTycO9UTFN6E=;
        b=d/lhITpFRg+DmxdSHcAdTtfoLsE8+sgFlr8yIYa2gKhzk3LDb9/gDgebSft9mLdTxj
         J5wAHq/WEfhYP3dRZtYTkohRqqqepRlNZ4Nb8xzaOurBFaQrROMnvBzaJhIoHAgWDHZy
         IVyC77OzFaaalkXoXeQ79MqfkeG03reD2D95Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=2Gw8C1SnjvqUmfBMZlXJ42j5eYKdCJiGTycO9UTFN6E=;
        b=blrbGjKn3d9uM7J+tsc/JLS4IXP0MhcAkHfLQsKHMPvC6otkoMDoHQfKKMJlB3YcGh
         nXH4YgvZJ3u8RHFtxWHCj9dm6zw8956nrSu30+3oObPe1wyDwDxTmJ+qxwN72zefdCGW
         +UOb1c27XHCBvGbs+T3VJ8O3in3mmN8tSMrG1FkN20wUrfgNas0+ejPxtdvu1Wn9lmbY
         pKB6B/edvE7JUeZNZFHRqLqnbx0jblVLSAyIitOk0nNSCNOU2WromccBCQ/aFRnHuhtm
         dmvXb4B1owGrAzheRPh7F11kCoBIxTeKB/rBymUSSZMrrLZ9++MFeRtRTiKumiI8SXY9
         nS0A==
X-Gm-Message-State: APjAAAW0kQaFe9+NydU5vV/q2VM6SaJqyHMuO/BZMPIcAw4n30UZe9HV
	e+ifbdNU8W7/viSzr/spFGuIfg==
X-Google-Smtp-Source: APXvYqztlyeEoBAZH3SKFmj9QtKy5Ve3R904yOlpxD5/voK7P7PeaUaE1JITgzSYmfUXH6OPbe3Sug==
X-Received: by 2002:a1c:3dd5:: with SMTP id k204mr4358804wma.92.1579613268597;
        Tue, 21 Jan 2020 05:27:48 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id u18sm52181209wrt.26.2020.01.21.05.27.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jan 2020 05:27:47 -0800 (PST)
Message-ID: <ea4942e9d00ec8444d5fc92eebee9eb0dd68e058.camel@linuxfoundation.org>
Subject: Re: [psplash][PATCH v2] add systemd support
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Stefan Agner <stefan@agner.ch>, yocto@yoctoproject.org
Cc: Stefan Agner <stefan.agner@toradex.com>
Date: Tue, 21 Jan 2020 13:27:46 +0000
In-Reply-To: <20200121100732.1441871-1-stefan@agner.ch>
References: <20200121100732.1441871-1-stefan@agner.ch>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2020-01-21 at 11:07 +0100, Stefan Agner wrote:
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
>  Makefile.am       |   7 ++
>  configure.ac      |   9 +++
>  psplash-systemd.c | 179
> ++++++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 195 insertions(+)
>  create mode 100644 psplash-systemd.c

Thanks. I've merged this and some other patches which were outstanding
and tweaked the license headers.

Hopefully we can update the recipe in OE-Core to use all this now...

Cheers,

Richard

