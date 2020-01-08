Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com [209.85.221.68])
 by mx.groups.io with SMTP id smtpd.web09.10653.1578502360079429694
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Jan 2020 08:52:40 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: gmail.com, ip: 209.85.221.68, mailfrom: andre.draszik@gmail.com)
Received: by mail-wr1-f68.google.com with SMTP id z7so4071149wrl.13
        for <yocto@lists.yoctoproject.org>; Wed, 08 Jan 2020 08:52:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=gX2OJkj8CKy1Y7vIfkIO1u4GA5x64OkvYSKDKGRBrps=;
        b=MclWOHpQ+oMZ+0KzNEA7EZNrLvzXxi0MSKMP32YstijaLQDGUzZviedIBOGl+vS0qT
         uQ8Wio0RzlIzmQaeB9oNgjr8NxOgukYe351nx1C6ixSB3IW96/yzQlXEEcf1ZXltTg31
         2Iw16nfJdElXKy1n9A0RAGK2XHueGu/fzkUVGm2YkHJhEeRvnGWvECVg5Ngy3mBhsUYy
         LAd/B68SZyIHacpgVfYo2Ek7/FViWrK5ge+SHN8km9xsrrMg+uWeYcDUalFBqj3VKuYv
         UikQnUuU/9nQfpujOQOzn5hizFb5INZXmxtHPpnxUb6ton/DdTtpcHD/UfCqm9bekzNx
         iPAQ==
X-Gm-Message-State: APjAAAXmXEOly3KZqxOMfI6z1/ZRe/b8UvSK6DUZgEyN38A25tVvS8BS
	sdGmifFlJm3NWDKY6ss8eonRmDXB
X-Google-Smtp-Source: APXvYqyf0uNuiASGAq3E/i7uWLODDwsfU4Z4QQK3zqtGWrX2x2aUOoyKV96VHTM/nEoIAXRNDHnvuA==
X-Received: by 2002:adf:f3d1:: with SMTP id g17mr5755188wrp.378.1578502358247;
        Wed, 08 Jan 2020 08:52:38 -0800 (PST)
Return-Path: <andre.draszik@gmail.com>
Received: from tfsielt31850 ([77.107.218.170])
        by smtp.gmail.com with ESMTPSA id h66sm4722585wme.41.2020.01.08.08.52.37
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2020 08:52:37 -0800 (PST)
Message-ID: <cce968f63ba8eaa3d77bc86b3a55e3b4a8532998.camel@andred.net>
Subject: Re: [yocto][meta-gplv2][PATCH 2/2 v2] diffutils: musl has working malloc() and realloc()
From: "Andr? Draszik" <git@andred.net>
To: yocto@lists.yoctoproject.org
Date: Wed, 08 Jan 2020 16:52:36 +0000
In-Reply-To: <95d58b9a-555d-af0c-cb4f-812cc9e91d3c@intel.com>
References: <15E7F1D320E9D777.2841@lists.yoctoproject.org>
	 <20200108161558.40180-1-git@andred.net>
	 <95d58b9a-555d-af0c-cb4f-812cc9e91d3c@intel.com>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2020-01-08 at 16:18 +0000, Ross Burton wrote:
> On 08/01/2020 16:15, Andr? Draszik wrote:
> > +CACHED_CONFIGUREVARS_libc-musl = "\
> > +    jm_cv_func_working_malloc=yes \
> > +    jm_cv_func_working_realloc=yes \
> > +"
> 
> Why is this musl-specific?  Does the configure explicitly detect glibc 
> and know it's good, or should we do this for glibc too?

That's musl specific, because it's a property of the C-library in use.

E.g. somebody could be using this with an outdated vendor(?) toolchain
using an old glibc which could behave incorrectly...


Cheers,
Andre'


