Received: from mail.stusta.mhn.de (mail.stusta.mhn.de [141.84.69.5])
 by mx.groups.io with SMTP id smtpd.web12.95.1578506673452595702
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Jan 2020 10:04:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@stusta.de header.s=default header.b=gx84r4Ry;
 spf=pass (domain: stusta.de, ip: 141.84.69.5, mailfrom: bunk@stusta.de)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 47tHFT4rbCz4K;
	Wed,  8 Jan 2020 19:04:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1578506670;
	bh=TyKsl5OqiCLN/D2puepiY+UFkmlbtWj5xvrGLO8OEUA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gx84r4RylWxpTjYTo3lLEk8D0ZkIFS73OO53mS9NzHj4Ab+H1hL2vizd2OkMJqnIv
	 66xYhEKMrZ3Pic/8cXYh2pyAAVp0OIGdpxcAC5LaErn9FqEV8cFqmqATPuOR3HjlOE
	 2M4H/Vp+7Dl3BxypL6PhQ/VXJ+6OaHfoam8ZtjVpNh5RvGjAfBhXuyjf4mRuU0a+fc
	 r/wvt3N1w5mD0+DHGdDeiPFqUbRcekGKvL+xrc3tfsVGbDNjIZBF6/pLJEntuKMpsO
	 2Mjq6AQw5wrr/n0HffJnU4ilmAvf3czmgw+IXvK0Z2PQaA7LGjUMVoZq23lx5boXaK
	 AoJYYZCTRJShuY+bczx5CKtBX4KyXceFnrkiXRcJhGQqYxUmqWUVz6nViZdAXzuV7I
	 hF5/yGe7vkPUQ+ZN+HCRa/Tj+6o82jDp+MReKeYn9SNR1euvv8w3gMHkAs7gEFB4Kr
	 AkqKZvXGRBL2qSAYuO8oRhkdgx1lRUxAYKH6+beKF9qD0URL39MFVWkRtmGdo8Ii1M
	 a5ccXAsHXKPv7As+xdl9IIm8i7ZpC7Ui2YoN53YO+6SnvR8/j1PbHnCTJup5Wksses
	 d5uU6ylmBeC1qQ1tMN8UxliwRB0Wn9jNRgKB13Sq9Bg/3zNMtPmc6gBV/zEYR6iLa7
	 u+Djd27/lnLYw7wK3yk4la7E=
Date: Wed, 8 Jan 2020 20:04:27 +0200
From: "Adrian Bunk" <bunk@stusta.de>
To: Andr? Draszik <git@andred.net>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto][meta-gplv2][PATCH 2/2 v2] diffutils: musl has working malloc() and realloc()
Message-ID: <20200108180427.GA8831@localhost>
References: <15E7F1D320E9D777.2841@lists.yoctoproject.org>
 <20200108161558.40180-1-git@andred.net>
 <95d58b9a-555d-af0c-cb4f-812cc9e91d3c@intel.com>
 <cce968f63ba8eaa3d77bc86b3a55e3b4a8532998.camel@andred.net>
MIME-Version: 1.0
In-Reply-To: <cce968f63ba8eaa3d77bc86b3a55e3b4a8532998.camel@andred.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Wed, Jan 08, 2020 at 04:52:36PM +0000, Andr? Draszik wrote:
> On Wed, 2020-01-08 at 16:18 +0000, Ross Burton wrote:
> > On 08/01/2020 16:15, Andr? Draszik wrote:
> > > +CACHED_CONFIGUREVARS_libc-musl = "\
> > > +    jm_cv_func_working_malloc=yes \
> > > +    jm_cv_func_working_realloc=yes \
> > > +"
> > 
> > Why is this musl-specific?  Does the configure explicitly detect glibc 
> > and know it's good, or should we do this for glibc too?
> 
> That's musl specific, because it's a property of the C-library in use.
> 
> E.g. somebody could be using this with an outdated vendor(?) toolchain
> using an old glibc which could behave incorrectly...
>...

The jm_cv_func_working_malloc test is:
    main ()
    {
      exit (malloc (0) ? 0 : 1);
    }

The C standard says that this is implementation defined,
both results are permitted.

glibc has the same behaviour forever,
musl switched to the glibc behaviour a few years ago.

> Cheers,
> Andre'

cu
Adrian
