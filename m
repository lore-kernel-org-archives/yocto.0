Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.24117.1581350422088563382
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Feb 2020 08:00:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=JD4zM+B0;
 spf=softfail (domain: linuxfoundation.org, ip: 140.211.169.56, mailfrom: richard.purdie@linuxfoundation.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B61DFE0171E; Mon, 10 Feb 2020 08:00:21 -0800 (PST)
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
	*      [209.85.221.49 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 560C5E0171C
	for <yocto@yoctoproject.org>; Mon, 10 Feb 2020 08:00:19 -0800 (PST)
Received: by mail-wr1-f49.google.com with SMTP id w15so8429611wru.4
        for <yocto@yoctoproject.org>; Mon, 10 Feb 2020 08:00:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=LSitsesaIpIvI0Iz6iy+Jq2BKTP+pc4s4/Kf9JaduA0=;
        b=JD4zM+B0whm8Fom6su3cm3BidV6O4mz9dg3U50UbAO74FMhbOkwkqBVfvEzpWyCui9
         04EeJGewR5/e+k7ejb1XMqohqq0rgn3P4uEXQnPFX6NHgKKB1sRUMSMv5Vhk2ivpX0aZ
         K86rv09E+ZgChudw3q0MNPbNEiWmQEKzYJp2Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=LSitsesaIpIvI0Iz6iy+Jq2BKTP+pc4s4/Kf9JaduA0=;
        b=tjwzpWy8579YDEnu9UkIgoYD/UdLNULEimnPdi7cMf52dLT1HITxT3gljYnjBKQbu+
         FBlKGtrT3L8mfwPZp4MQWfB46rO7pZZgeTXxKlkMeqPqMVmcD3oWIVzOp9RDZJlugThl
         U5j69ZqV7DdFno26pRx6xWvLDya2bpzRDGcJwbYQFZC5A31SaLaqEzmXWrBy/zevGj+Q
         tk4csjx/YRHBIMKWMaU0JMBquQHW6hiOOu8dymbWcADr7oSfjJ6TClZZMEdGQDAp21rJ
         6wsPyvFo8XC8c22bVBo5D/1toLobn97nIcEsdenpdJ3ONwwYpQu14qb2NVVnJ8YHyVAJ
         H02A==
X-Gm-Message-State: APjAAAVLnfDad2zmfMPEcRCETNWeGonnAhPndMqvfenNDeAynaKT5OU7
	MYndhfp80osQCuhOqvffxck5HA==
X-Google-Smtp-Source: APXvYqxL5BYLjt/QpZRxZ+ZsJ8gxSnbwrgWISTYIoN5njzztaHK3DB2IOGlRikSkJ/tsHMWGsyE0sg==
X-Received: by 2002:a5d:6b88:: with SMTP id n8mr2786341wrx.288.1581350418434;
        Mon, 10 Feb 2020 08:00:18 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id s139sm1072278wme.35.2020.02.10.08.00.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2020 08:00:17 -0800 (PST)
Message-ID: <15e9f32b0fdadfe015b29aad87b5adfe7821a2ab.camel@linuxfoundation.org>
Subject: Re: [yocto] more nitpicky pedantry: question about DEFAULT_PREFERENCE
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: "rpjday@crashcourse.ca" <rpjday@crashcourse.ca>, Yocto discussion list
	 <yocto@yoctoproject.org>
Date: Mon, 10 Feb 2020 16:00:09 +0000
In-Reply-To: <alpine.LFD.2.21.2002081322430.2157404@localhost.localdomain>
References: <alpine.LFD.2.21.2002081322430.2157404@localhost.localdomain>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2020-02-08 at 13:31 -0500, rpjday@crashcourse.ca wrote:
>   (part of the nitpickiness of some of these questions stems from
> that, in my updated courseware, i want to use actual examples out of,
> say, the openembedded layer, and not just contrived examples
> involving
> packages like "foo" and "bar". to that end, i want to be able to
> explain why some recipes are written the way they are and,
> conversely,
> to explain why some recipes might look weird.)
> 
>   the bitbake manual has a reasonable explanation of
> DEFAULT_PREFERENCE but there are examples in the OE layer that seem
> to
> not be written as cleanly as they could be.
> 
>    consider under recipes-devtools the two directories "pkgconfig"
> and
> "pkgconf", and the respective .bb files:
> 
>   - pkgconfig_git.bb
>   - pkgconf_1.6.3.bb
> 
> the pkgconfig recipe file does *not* contain a PROVIDES setting,
> while pkgconfig_1.6.3.bb does:
> 
>   PROVIDES += "pkgconfig"

It doesn't, pkgconf_1.6.3.bb does, which is quite different and it then
makes sense.

Cheers,

Richard

