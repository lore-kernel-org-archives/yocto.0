Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com [209.85.221.65])
 by mx.groups.io with SMTP id smtpd.web10.8216.1582291089907183849
 for <yocto@lists.yoctoproject.org>;
 Fri, 21 Feb 2020 05:18:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=UddYQEw8;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.65, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f65.google.com with SMTP id w15so2037416wru.4
        for <yocto@lists.yoctoproject.org>; Fri, 21 Feb 2020 05:18:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=94AT/HNhFzxcOTq80wYeg542FUkVIREc0UbtGfq3Saw=;
        b=UddYQEw8rsUhCxUQf+wIO3LV2wD70h0usFqO4bRUx8/nTJQs0h5gohXmtr76AjjHaF
         yxd1Sj1+oCMwwg6l1e9V2JpqkXsbPRBNil3tK7JVl1DSn/Mxwc3vYBEPYe9dWPtN9aen
         UDHrIhEnuVabRWpLAE2wAcYA0q+tcMgRGk56I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=94AT/HNhFzxcOTq80wYeg542FUkVIREc0UbtGfq3Saw=;
        b=IKWyObh3J1ER1kGZ7+KXF6ze225Ua4uEe/hE9nl70eVCdIWmVNdxabhw29BzG8K8Pf
         az5Sa5b1nJyJRE11ct1Dhnh9229pOO71+RpcU7Fj5vqRWytK3MXtP9o+JKt1zlwxANO+
         XNNvtPFjQ0L6XbaTO3saR8ElxTzvXDpPtu2Fz5PAnrjWzSdUtalCOk2hFYu8bhH03NSf
         AmY2X3bCZNj9tny3pt3yzPFj7werH2590X1WEUjjyfkp4OFxmUehbBkIL3e0KAbpEcBD
         kdsSIgFRJ7pPfSmBF1bGNKaUbtJJ+miGwnNuTkxr6x7gDPtfJZTGPuVHCQcbQLf2slEj
         mtgg==
X-Gm-Message-State: APjAAAWPySUYflx81sP16FG5DtwEL5NglIP9utvS6eLM1gPD1xAJWAUe
	JoDN511NioOKCbRaErPZLDfc0Q==
X-Google-Smtp-Source: APXvYqygITmltHpz8aj+dikT4kSI5bLEeDjfmN7GWdBamvl+Jc3Pftkhl1tOidEICLJ7IH6NzS1W6A==
X-Received: by 2002:adf:fac7:: with SMTP id a7mr21075804wrs.299.1582291088379;
        Fri, 21 Feb 2020 05:18:08 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id v16sm3638177wml.11.2020.02.21.05.18.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Feb 2020 05:18:07 -0800 (PST)
Message-ID: <77dfeafba3ccdbf582049865a1cd8155b82721de.camel@linuxfoundation.org>
Subject: Re: [yocto] QA Cycle report for build (yocto-3.0.2.rc2)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Adrian Bunk <bunk@stusta.de>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Date: Fri, 21 Feb 2020 13:18:05 +0000
In-Reply-To: <20200221080301.GA6680@localhost>
References: 
	<CY4PR11MB1879657C3887087DEC4B7573E3100@CY4PR11MB1879.namprd11.prod.outlook.com>
	 <c5548ebb-b027-40da-5c93-d944aed949d0@gmail.com>
	 <c49287d5cf34bb5318b34e60028eda8ab3efe088.camel@linuxfoundation.org>
	 <C0207330DF60C5409302EC78C3FE68F3034491FD@PGSMSX101.gar.corp.intel.com>
	 <CY4PR11MB1879F1750C572C67229F7824E3130@CY4PR11MB1879.namprd11.prod.outlook.com>
	 <004690a057a50b8554de69a4259b0045de0a7d99.camel@linuxfoundation.org>
	 <20200221080301.GA6680@localhost>
User-Agent: Evolution 3.34.1-4 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2020-02-21 at 10:03 +0200, Adrian Bunk wrote:
> On Thu, Feb 20, 2020 at 10:44:24PM +0000, Richard Purdie wrote:
> > ...
> > This would also include the bitbake memory optimisation during
> > parsing
> > which merged.
> > ...
> 
> I would consider this too risky for a last-minute addition
> since it is a non-urgent optimization and not a regression fix.

It can be argued its a bug fix which lets things work which otherwise
bring machines to a halt with swap/OOM conditions, its a pretty serious
memory usage leak (latest report says it reduces a 45GB memory use to
4.5GB on a real workload).

Speaking as someone who knows the code well and has an idea of the
impact of the change, I believe it to be safe. It was already also
merged with 3.0.3 in mind and hasn't caused any issues in master.

Excluding it from the respin would be harder and more disruptive than
not at this point due to the change to 3.0.3 so its been included.

Cheers,

Richard

