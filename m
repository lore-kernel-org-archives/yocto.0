Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com [209.85.221.66])
 by mx.groups.io with SMTP id smtpd.web12.2839.1578517808741848135
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Jan 2020 13:10:09 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: gmail.com, ip: 209.85.221.66, mailfrom: andre.draszik@gmail.com)
Received: by mail-wr1-f66.google.com with SMTP id d16so4933586wre.10
        for <yocto@lists.yoctoproject.org>; Wed, 08 Jan 2020 13:10:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=Y4K3fadwnJnj5e9lhiBA9kl21QcJImN0DYg0tiSTuPk=;
        b=ESCGZF9nsW8mA176RmAlsQlGQ1c+7pZT7uNXW8sSHPl8hnaNE0Gz2VwQa81Qkd7183
         SX7BO0kE1R0mqUrWhDdrz+CCyko5kBqPGwN0EqdIlf0kd8/K+gbwrTodpzmxJ1tMR4uC
         vJuhvrMnVsSn9/06TDPhX2olkt1Y9uVQVvgNi4hueB7+2XMmbrdXLHLMIqIVeIks79ny
         NMX+TlT8SGnIgjp9ar41d/93FGhq2Y50Ry3+1xNWcKJaAi3npJLJxiuoWCffpNu7ONnN
         NvZxZWk+Vxu/EwXh/UOSFLh4Iao1WU9zO7vSe9LeGr+gmUTlymv5ycywUSRZhAk3ZbJs
         mdwA==
X-Gm-Message-State: APjAAAUdDhA4NEAv8maRxFbnzjnpHJmffZrCozL5ZQp7YBKTpHhbG+Iw
	1kT3cwVW13AInKk0m9DcsMoD+Pco
X-Google-Smtp-Source: APXvYqzT4EQ6JUAGPronJzSa0zJRgBdAeL7pqjhEOVrxtEBPXSGCZreGL3V6+RAd+L1jv5zZFHAU1g==
X-Received: by 2002:a5d:49c3:: with SMTP id t3mr6836974wrs.113.1578517806926;
        Wed, 08 Jan 2020 13:10:06 -0800 (PST)
Return-Path: <andre.draszik@gmail.com>
Received: from tfsielt31850.fritz.box ([79.97.20.138])
        by smtp.gmail.com with ESMTPSA id s65sm357009wmf.48.2020.01.08.13.10.06
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2020 13:10:06 -0800 (PST)
Message-ID: <c13622e5b56d9ecc3f7c175ed8bc1082123b3159.camel@andred.net>
Subject: Re: [yocto][meta-gplv2][PATCH 2/2 v2] diffutils: musl has working malloc() and realloc()
From: "Andr? Draszik" <git@andred.net>
To: yocto@lists.yoctoproject.org
Date: Wed, 08 Jan 2020 21:10:05 +0000
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

Sorry, I was too quick replying here... It's simply defaulting to no
because of cross-compilation, no matter what libc is in use.

I wanted to be conservative, but Adrian reminded me of actual issue
here...

Cheers,
Andre'


