Received: from bsmtp2.bon.at (bsmtp2.bon.at [213.33.87.16])
 by mx.groups.io with SMTP id smtpd.web08.31204.1610356784901859911
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Jan 2021 01:19:45 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.16, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp2.bon.at (Postfix) with ESMTPSA id 4DDp7f3hZ2z5tl9;
	Mon, 11 Jan 2021 10:19:42 +0100 (CET)
Date: Mon, 11 Jan 2021 10:19:40 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Jupiter <jupiter.hce@gmail.com>
Cc: kapllaj.elvis@gmail.com, yocto <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] How to select Linux kernel version?
Message-ID: <20210111091940.2izokmeo5icbv3qu@qschulz>
References: <CAA=hcWRgT3j9cwhHu4r-+x3_G8E_Yv3qPVKaFOn67-GOSRJh8Q@mail.gmail.com>
 <32166.1610008905321916245@lists.yoctoproject.org>
 <CAA=hcWT=s8VBLkbEkd9mVdCRrScxhNta_Yf+SvqBiMm1ZjGfyw@mail.gmail.com>
 <20210107102520.t34e5sf4q7hewvat@qschulz>
 <CAA=hcWR57QV0Yzviv8Ks2ZK0ru1PGQc-fjq4ROfA4i8OHP7wEQ@mail.gmail.com>
 <20210108085735.qdujpbo67whhjsch@qschulz>
 <CAA=hcWT9VcyP=1BRKccBpOhfjzmuqL-GV73g7Nr5qx3FBbw5Hg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAA=hcWT9VcyP=1BRKccBpOhfjzmuqL-GV73g7Nr5qx3FBbw5Hg@mail.gmail.com>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Jupiter,

On Sat, Jan 09, 2021 at 09:56:13AM +1100, Jupiter wrote:
> Hi Quentin,
> 
> Thanks for your helps, I finally figured out an old Yocto version thud
> is able to pick up the latest the kernel version to run 5.10 where the
> Zeus could not, there are a couple of bugs in Zeus which I could not
> run Zeus in Ubuntu 20.4, it is time for me to upgrade to the latest
> Yocto version which hopefully fixes the kernel version issue.
> 

This should have nothing to do with a Yocto version, if your recipe is
not found, it's just not found and it is usually a tell that you either
put your recipe in the wrong tree layout or that you forgot to add the
layers to your bblayers.conf.

If both were done correctly and you still have the issue, it is an
important bug to report and investigate, so please share with us the
output of bblayers.conf and the path to your linux-yocto_5.10 recipe.

You could also add:
python __anonymous() {
	bb.warning("The recipe is being parsed as expected")
}

If when you run bitbake virtual/kernel you don't see a warning, your
recipe is for sure not parsed and obviously cannot be used by Yocto.

Cheers,
Quentin
