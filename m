Received: from mail.stusta.mhn.de (mail.stusta.mhn.de [141.84.69.5])
 by mx.groups.io with SMTP id smtpd.web09.5687.1582272189328281779
 for <yocto@lists.yoctoproject.org>;
 Fri, 21 Feb 2020 00:03:12 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@stusta.de header.s=default header.b=Lmxrc1uu;
 spf=pass (domain: stusta.de, ip: 141.84.69.5, mailfrom: bunk@stusta.de)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 48P3qF2dNGz4H;
	Fri, 21 Feb 2020 09:03:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1582272186;
	bh=1JNEy1CGz8bpV33sh7dTj7fvhb/0a7NiRDbHghq/uNU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Lmxrc1uu4nnAHsfKjlcZ2XASLTXY5CoIb9o8VPlyJ1TyCG6ett9Jlt9g5lr2Xex4e
	 Hcq7XalClS+fxAd2rPHCFYOVFD2Q4z5mZ6b+hXuYhPjr9Zhqj3bz6b+C3ePHrgkeeT
	 ADApW2z3K/7TLIzzUzZ/QgvnrG00AxgWQJr9fPa7lLpSdynhwHL0PlbBtUkG1HnZ7g
	 Kpe9ngkr9iJA6rSLamiUN+V4X5AZSm/C+QRxz9cfZjysCskoea8a7K4kdI1hW4M4yO
	 UUYUgdD7afwEBQOnthBhZcK8tuKL5KVALbbCdoOR3oDhwuxaXPdkf71uNYyUEOUKm/
	 TiW6OsPFsL0VP5+hls+7Mw96Gl54lj0AZbgCEijDiC7aeRI5ApvHHcUNWhSoINhBgj
	 xQ9xFGLKlf4oUI4p9t13OI8qxjw6S6PHDioFJf2AwcDVQTB1h9gvul/ttGs7GUNe1a
	 I50S/da3zkQIAvqkzIc+KFwOwmEoyItBQYi398PjkHev13KctiMTDG0uaiXJLtvmMb
	 SJFNqfMUTiZYOvnhBZ+Pze/Rr7mRBVENcTWt401F5NmL2s1dNc3x8zIffxwmpJlEZ/
	 vfa4Zj+zfV6vHswcLxxi9v40wLVOJlHD9JPsiyUwz5PAy3zaVd8kTBrMGP70Ysbm5I
	 9MOF/mem2mm1awFs1sZoR/f0=
Date: Fri, 21 Feb 2020 10:03:01 +0200
From: "Adrian Bunk" <bunk@stusta.de>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] QA Cycle report for build (yocto-3.0.2.rc2)
Message-ID: <20200221080301.GA6680@localhost>
References: <CY4PR11MB1879657C3887087DEC4B7573E3100@CY4PR11MB1879.namprd11.prod.outlook.com>
 <c5548ebb-b027-40da-5c93-d944aed949d0@gmail.com>
 <c49287d5cf34bb5318b34e60028eda8ab3efe088.camel@linuxfoundation.org>
 <C0207330DF60C5409302EC78C3FE68F3034491FD@PGSMSX101.gar.corp.intel.com>
 <CY4PR11MB1879F1750C572C67229F7824E3130@CY4PR11MB1879.namprd11.prod.outlook.com>
 <004690a057a50b8554de69a4259b0045de0a7d99.camel@linuxfoundation.org>
MIME-Version: 1.0
In-Reply-To: <004690a057a50b8554de69a4259b0045de0a7d99.camel@linuxfoundation.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Thu, Feb 20, 2020 at 10:44:24PM +0000, Richard Purdie wrote:
>...
> This would also include the bitbake memory optimisation during parsing
> which merged.
>...

I would consider this too risky for a last-minute addition
since it is a non-urgent optimization and not a regression fix.

> Cheers,
> 
> Richard

cu
Adrian
