Received: from bsmtp1.bon.at (bsmtp1.bon.at [213.33.87.15])
 by mx.groups.io with SMTP id smtpd.web12.1396.1610096259256574878
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 Jan 2021 00:57:39 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.15, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp1.bon.at (Postfix) with ESMTPSA id 4DBxnX5k5xz5tlD;
	Fri,  8 Jan 2021 09:57:36 +0100 (CET)
Date: Fri, 8 Jan 2021 09:57:35 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Jupiter <jupiter.hce@gmail.com>
Cc: kapllaj.elvis@gmail.com, yocto <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] How to select Linux kernel version?
Message-ID: <20210108085735.qdujpbo67whhjsch@qschulz>
References: <CAA=hcWRgT3j9cwhHu4r-+x3_G8E_Yv3qPVKaFOn67-GOSRJh8Q@mail.gmail.com>
 <32166.1610008905321916245@lists.yoctoproject.org>
 <CAA=hcWT=s8VBLkbEkd9mVdCRrScxhNta_Yf+SvqBiMm1ZjGfyw@mail.gmail.com>
 <20210107102520.t34e5sf4q7hewvat@qschulz>
 <CAA=hcWR57QV0Yzviv8Ks2ZK0ru1PGQc-fjq4ROfA4i8OHP7wEQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAA=hcWR57QV0Yzviv8Ks2ZK0ru1PGQc-fjq4ROfA4i8OHP7wEQ@mail.gmail.com>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Jupiter,

On Fri, Jan 08, 2021 at 02:03:47PM +1100, Jupiter wrote:
> Thanks Quentin, here are results:
> 
> > So we can stop half guessing and help you can you give us the output of:
> 
> > bitbake -e virtual/kernel | grep -e "^PREFERRED_PROVIDER_"
> 
> $ bitbake -e virtual/kernel | grep -e "^PREFERRED_PROVIDER_"
[...]
> PREFERRED_PROVIDER_virtual/kernel="linux-yocto"
[...]
> 
> > bitbake -e virtual/kernel | grep -e "^PREFERRED_VERSION_"
> 
> $  bitbake -e virtual/kernel | grep -e "^PREFERRED_VERSION_"
> PREFERRED_VERSION_linux-libc-headers="5.2%"
> PREFERRED_VERSION_linux-yocto="5.10.%"
> 

Not sure this will fly nicely (the kernel headers being older than your
kernel).

Otherwise ok.

> 
> > bitbake -e virtual/kernel | grep -e "^OVERRIDES="
> 
> $  bitbake -e virtual/kernel | grep -e "^OVERRIDES="
> OVERRIDES="linux:i686:pn-linux-yocto:x86:qemuall:qemux86:solar-distro:class-target:libc-glibc:forcevariable"
> 
> > bitbake-layers show-recipes linux-yocto linux-fslc
> 
> $ bitbake-layers show-recipes linux-yocto linux-fslc
> NOTE: Starting bitbake server...
> Loading cache: 100% |############################################| Time: 0:00:00
> Loaded 1473 entries from dependency cache.
> Parsing recipes: 100% |##########################################| Time: 0:00:02
> Parsing of 922 .bb files complete (920 cached, 2 parsed). 1475
> targets, 295 skipped, 0 masked, 0 errors.
> === Matching recipes: ===
> linux-fslc:
>   meta-freescale       5.1 (skipped)
> linux-yocto:
>   meta                 5.2.28+gitAUTOINC+dd6019025c_992280855e
>   meta                 4.19.87+gitAUTOINC+4f5d761316_b44ad1b1e7
> 

And here we have the winner :)

You don't have a 5.10 linux-yocto recipe so obviously bitbake can't
compile it.

Now, I don't know why 4.19 is taken and not 5.2. I quickly looked into
both recipes and didn't find a DEFAULT_PREFERENCE
(c.f. https://docs.yoctoproject.org/ref-manual/variables.html?highlight=preference#term-DEFAULT_PREFERENCE).

So, can you tell us how you created your 5.10 recipe and where you put
it (the filename, the path in the layer, is it in a new layer? if yes,
did you add it to bblayers.conf? etc...).

Quentin
