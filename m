Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com [209.85.221.67])
 by mx.groups.io with SMTP id smtpd.web11.2829.1578517884254127426
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Jan 2020 13:11:24 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: gmail.com, ip: 209.85.221.67, mailfrom: andre.draszik@gmail.com)
Received: by mail-wr1-f67.google.com with SMTP id w15so4996317wru.4
        for <yocto@lists.yoctoproject.org>; Wed, 08 Jan 2020 13:11:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=yHVlVkseADciG+LDThvkTx6RETEheZBSbkltXyMJ03Q=;
        b=BjVmkPEtPj2EFYRfajscYr4pHhgPPBNJkdP9Lt1aaWngDFRVCdE5v+cy/4nOuBc2li
         uxXbGj4pTOzsx/IUpk1v1P9ww25awpgRzQmWKjDU1586z3MyzJNDA86LgiUMu1sU3coI
         uM6SXarQCo7kLUEEj+d+qo91ZyVHdkHxjlOllw3PNpxbY7QevLGaHGrWLSGUJ2K3xyMu
         kTeDllJcI9rgq2BjrVyFwcet/YTRAL2egiLIwCWOmTtbxhUl7teihXHAo4AwIc+28BR/
         udMFN9HD/UO2JxUAIrU65OSfUTrhsC8j+C0U5jeroq0S0KTPKXZQ780o6BKsFdplHIok
         DKfg==
X-Gm-Message-State: APjAAAXY27xMQ+0wcpFSYOn/FHEEQMBG+c9TSEfo9LGdM+NXhcrUmHjl
	3MHZImygcrue5ErX+v3df5nRHFi4
X-Google-Smtp-Source: APXvYqynCmIZKVadtmEFbNc8o4pwJEoYdu6aqSk1ddMXTrwmwR+Jo98U6dCeIMYwFoSRhWDzSbW0vA==
X-Received: by 2002:a5d:404b:: with SMTP id w11mr7179996wrp.171.1578517882718;
        Wed, 08 Jan 2020 13:11:22 -0800 (PST)
Return-Path: <andre.draszik@gmail.com>
Received: from tfsielt31850.fritz.box ([79.97.20.138])
        by smtp.gmail.com with ESMTPSA id p26sm370134wmc.24.2020.01.08.13.11.22
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2020 13:11:22 -0800 (PST)
Message-ID: <52dab8bec9f10683fda36652164cea3ac11b9244.camel@andred.net>
Subject: Re: [yocto][meta-gplv2][PATCH 2/2 v2] diffutils: musl has working malloc() and realloc()
From: "Andr? Draszik" <git@andred.net>
To: yocto@lists.yoctoproject.org
Date: Wed, 08 Jan 2020 21:11:21 +0000
In-Reply-To: <20200108180427.GA8831@localhost>
References: <15E7F1D320E9D777.2841@lists.yoctoproject.org>
	 <20200108161558.40180-1-git@andred.net>
	 <95d58b9a-555d-af0c-cb4f-812cc9e91d3c@intel.com>
	 <cce968f63ba8eaa3d77bc86b3a55e3b4a8532998.camel@andred.net>
	 <20200108180427.GA8831@localhost>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2020-01-08 at 20:04 +0200, Adrian Bunk wrote:
> On Wed, Jan 08, 2020 at 04:52:36PM +0000, Andr? Draszik wrote:
> > On Wed, 2020-01-08 at 16:18 +0000, Ross Burton wrote:
> > > On 08/01/2020 16:15, Andr? Draszik wrote:
> > > > +CACHED_CONFIGUREVARS_libc-musl = "\
> > > > +    jm_cv_func_working_malloc=yes \
> > > > +    jm_cv_func_working_realloc=yes \
> > > > +"
> > > 
> > > Why is this musl-specific?  Does the configure explicitly detect glibc 
> > > and know it's good, or should we do this for glibc too?
> > 
> > That's musl specific, because it's a property of the C-library in use.
> > 
> > E.g. somebody could be using this with an outdated vendor(?) toolchain
> > using an old glibc which could behave incorrectly...
> > ...
> 
> The jm_cv_func_working_malloc test is:
>     main ()
>     {
>       exit (malloc (0) ? 0 : 1);
>     }
> 
> The C standard says that this is implementation defined,
> both results are permitted.
> 
> glibc has the same behaviour forever,
> musl switched to the glibc behaviour a few years ago.

Thanks for the reminder. Final note, Back in the days, uClibc had
a compile time option to select one behaviour or the other.


Cheers,
A.


