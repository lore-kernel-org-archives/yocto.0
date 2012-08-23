Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-qc0-f176.google.com (mail-qc0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10583E0140A
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2012 05:53:58 -0700 (PDT)
Received: by qcsc21 with SMTP id c21so501453qcs.35
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2012 05:53:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=KLGdftEYg6jHUWk8Q7ABO97pjwtRNnjb+Po1WYAQrGg=;
	b=WxLh1YV9hLIyGcrwURkt4z8koj6ZD3bPEgB0ElgavlyRq+01dB85KQGLHcmzuDU2wJ
	Kk7hvElJikSApFCV8vCwd7tXBi1qyJcwM6pH/RDKpinMc7fmmPyf/pWv0gNj6CM3vtRC
	m+POPQRv79551T7f7Mrt+ZAm+dsO9CTeHML4YA2enhAk9pSGMhlcLbBDuZSYIPmA38XH
	SQNI8z7OVTYTRG/dKL8mD5btxuZqFdmHcZhSFDqHolPlb8jFOJdqkx9GqE5gzfReCgQT
	uH1R+oJHcEJce8dzxlOQjpq1AMiUDKNf3/FzIKKvcDq+f8LqVJZUCLhbngcO7ns6Zsql
	FxUQ==
MIME-Version: 1.0
Received: by 10.229.136.82 with SMTP id q18mr596004qct.108.1345726438583; Thu,
	23 Aug 2012 05:53:58 -0700 (PDT)
Received: by 10.229.247.198 with HTTP; Thu, 23 Aug 2012 05:53:58 -0700 (PDT)
In-Reply-To: <CA+69FtCf42+XyXFWg+QHL=qM1B3FoeXNXEkNbQ66TCWeOMbubw@mail.gmail.com>
References: <CA+69FtCf42+XyXFWg+QHL=qM1B3FoeXNXEkNbQ66TCWeOMbubw@mail.gmail.com>
Date: Thu, 23 Aug 2012 08:53:58 -0400
Message-ID: <CADkTA4Oc7uD8Hc7MX3kb7PRaDnZKsFM2kHbNxN7pTVXJ122ZzA@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Hartmut Behrens <hartmut.behrens@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Changing PREFERRED_PROVIDER_virtual/kernel has no effect
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 23 Aug 2012 12:53:59 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Aug 23, 2012 at 8:40 AM, Hartmut Behrens
<hartmut.behrens@gmail.com> wrote:
> Hi,
>
> I've successfully created an image for a Gumstix Overo using the BSP layer
> available at https://github.com/squirly/meta-gumstix
> The MACHINE variable is set to "overo" in the build/conf/local.conf file.
>
> I then change the PREFERRED_PROVIDER_virtual/kernel variable in
> meta-gumstix/conf/machine/overo.inc (which is included from overo.conf) from
> the default "linux-omap3" to "linux-yocto-rt" and set
> PREFERRED_PROVIDER_linux-yocto-rt to "3.4%".
>
> Once this is done I execute bitbake -k core-image-minimal.
>
> However, this does not result in the linux-yocto-rt kernel being built for
> the new image. Instead, in the bitbake output I can see a warning informing
> me that multiple providers for virtual/kernel are present
> (linux-dummy,linux-omap3) and that I should set the PREFERRED_PROVIDER
> variable to the required virtual/kernel.
>
> Any ideas how to get linux-yocto-rt built instead of linux-omap3 ?

Did you also set your COMPATIBLE_MACHINE ? Setting that as well should at least
get the kernel building, but unless you also have a bbappend with a
config, or have
a BSP definition you'll probably not build what you expect.

If the layer you are using already has a defconfig, that will be a configuration
start, but als take a peek at the meta-intel layer and the BSPs there.
They set compatibility, and specify a branch that should be built, etc.

Cheers,

Bruce

>
> Hartmut
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

