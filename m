Received: from bsmtp2.bon.at (bsmtp2.bon.at [213.33.87.16])
 by mx.groups.io with SMTP id smtpd.web10.6443.1610015124159815551
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Jan 2021 02:25:24 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.16, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp2.bon.at (Postfix) with ESMTPSA id 4DBMnF4S7rz5tlF;
	Thu,  7 Jan 2021 11:25:21 +0100 (CET)
Date: Thu, 7 Jan 2021 11:25:20 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: JH <jupiter.hce@gmail.com>
Cc: kapllaj.elvis@gmail.com, yocto@lists.yoctoproject.org
Subject: Re: [yocto] How to select Linux kernel version?
Message-ID: <20210107102520.t34e5sf4q7hewvat@qschulz>
References: <CAA=hcWRgT3j9cwhHu4r-+x3_G8E_Yv3qPVKaFOn67-GOSRJh8Q@mail.gmail.com>
 <32166.1610008905321916245@lists.yoctoproject.org>
 <CAA=hcWT=s8VBLkbEkd9mVdCRrScxhNta_Yf+SvqBiMm1ZjGfyw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAA=hcWT=s8VBLkbEkd9mVdCRrScxhNta_Yf+SvqBiMm1ZjGfyw@mail.gmail.com>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Thu, Jan 07, 2021 at 09:07:58PM +1100, JH wrote:
> Thanks kapllaj.
> 
> > On meta-freescale, you find this on
> > meta-freescale-distro/conf/distro/include/fsl-base.inc:
> 
> Yes I use imx6ull, I've looked those config files, nothing set to run 4.19.
> 
> > Now, go to meta-freescale/recipes-kernel/linux folder, and take a look to
> > see what kernels are available for your machine. Note that the linux-imx
> > kernel provides currently on master branch the 5.4 version!
> > For you to select the 5.10 (assuming you are on master branch) you should
> > set:
> >
> > PREFERRED_PROVIDER_virtual/kernel = "linux-fslc"
> 
> I setup PREFERRED_PROVIDER_virtual/kernel = "linux-yocto", I have to
> say, it has been running for a year for 4.19 kernel.
> 
> > Yocto will automatically select the highest available version, but if you
> > would also like to fix the version, provide also that information:
> > PREFERRED_VERSION_linux-fslc = "5.%"
> 
> I know iit should automatically select the highest available version 5.10.
> 
> I set up following in local.conf:
> 
> PREFERRED_PROVIDER_virtual/kernel="linux-yocto"
> PREFERRED_VERSION_linux-yocto="5.10.%"
> 

So we can stop half guessing and help you can you give us the output of:
bitbake -e virtual/kernel | grep -e "^PREFERRED_PROVIDER_"
bitbake -e virtual/kernel | grep -e "^PREFERRED_VERSION_"
bitbake -e virtual/kernel | grep -e "^OVERRIDES="
bitbake-layers show-recipes linux-yocto linux-fslc

Thanks,
Quentin
