Received: from wp323.webpack.hosteurope.de (wp323.webpack.hosteurope.de [80.237.133.92])
 by mx.groups.io with SMTP id smtpd.web08.2416.1606900903342832899
 for <yocto@lists.yoctoproject.org>;
 Wed, 02 Dec 2020 01:21:44 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: delisys.ch, ip: 80.237.133.92, mailfrom: n.jeker@delisys.ch)
Received: from 22.71.14.46.static.wline.lns.sme.cust.swisscom.ch ([46.14.71.22] helo=[192.168.120.138]); authenticated
	by wp323.webpack.hosteurope.de running ExIM with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	id 1kkOKS-0007Cr-CJ; Wed, 02 Dec 2020 10:21:40 +0100
Message-ID: <c718cad1f8be40c0e8fe2d533fdc685ba260b2c8.camel@delisys.ch>
Subject: Re: [yocto] #yocto
From: "Nicolas Jeker" <n.jeker@delisys.ch>
To: yocto@lists.yoctoproject.org
Date: Wed, 02 Dec 2020 10:21:39 +0100
In-Reply-To: <MADEUP.164CB074CF07EE24.20854@lists.yoctoproject.org>
References: <MADEUP.164CB074CF07EE24.20854@lists.yoctoproject.org>
User-Agent: Evolution 3.38.2 
MIME-Version: 1.0
X-bounce-key: webpack.hosteurope.de;n.jeker@delisys.ch;1606900903;13a324d8;
X-HE-SMSGID: 1kkOKS-0007Cr-CJ
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Hi Steve

On Tue, 2020-12-01 at 20:06 +0000, Monsees, Steven C (US) via
lists.yoctoproject.org wrote:
>  
> I still haven’t been able to track this down, can someone tell me in
> what package is the banner output generated ? 

I'm not sure to what lines you refer by "banner", so I just wrote my
thoughts to both below.

Both are probably produced by getty, either util-linux-agetty or
systemd-getty.

> Thanks,
> Steve
> From: yocto@lists.yoctoproject.org [mailto: 
> yocto@lists.yoctoproject.org]On Behalf Of Monsees, Steven C (US) via
> lists.yoctoproject.org
> Sent: Wednesday, November 18, 2020 8:08 AM
> To: yocto@lists.yoctoproject.org
> Subject: [yocto] #yocto
>  
>                              ***WARNING***
> EXTERNAL EMAIL -- This message originates from outside our
> organization.
>  
>   
> I was going through the kernel boot output and saw the following
> output, can someone tell me why this might be popping up and how I
> might modify configuration to resolve? :
> . 
> . 
> LIMWS (BAE LIMWS base distro) 3.0.4 sbcb-default ttyS0   

This "banner" output is the content of /etc/issue (which gets installed
by the base-file package).

> -sh: cannot set terminal process group (1137): Inappropriate ioctl
> for device
> -sh: no job control in this shell 
> . 

The error you see about the shell is probably getty failing to open a
shell.

Maybe this could be relevant:
https://unix.stackexchange.com/questions/338214/error-trying-to-run-agetty-in-a-runit-based-linux-installation

> . 
>   
> Thanks, 
> Steve 


