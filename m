Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net [217.70.183.200])
 by mx.groups.io with SMTP id smtpd.web08.45108.1629232622523062841
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Aug 2021 13:37:03 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: bootlin.com, ip: 217.70.183.200, mailfrom: alexandre.belloni@bootlin.com)
Received: (Authenticated sender: alexandre.belloni@bootlin.com)
	by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 19B4F20007;
	Tue, 17 Aug 2021 20:36:59 +0000 (UTC)
Date: Tue, 17 Aug 2021 22:36:59 +0200
From: "Alexandre Belloni" <alexandre.belloni@bootlin.com>
To: Manuel Wagesreither <ManWag@fastmail.fm>
Cc: yocto <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] ZFS/ZoL on Yocto
Message-ID: <YRwd6wQKT89SA+Cj@piout.net>
References: <d8353869-6136-45f7-a2eb-a1397cf05693@www.fastmail.com>
MIME-Version: 1.0
In-Reply-To: <d8353869-6136-45f7-a2eb-a1397cf05693@www.fastmail.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On 17/08/2021 17:52:17+0200, Manuel Wagesreither wrote:
> Hello all,
> 
> I would like to know if anyone has experiences with equipping Yocto created images with ZFS support.
> 
> If I'm not mistaken, the main problems of using ZFS in linux are of legal nature. ZFS can not go into the linux kernel source tree, as it conflicts with the GPL. Hence, the linux version of ZFS called ZoL (ZFS-On-Linux) must be compiled as kernel module and recompiled at every kernel bump. On normal machines, that's a bit cumbersome, but for Yocto this shouldn't be a problem at all.
> 
> So, given the large fanbase ZFS has, I'm wondering why there are no recipes around?
> 

I'm guessing that ZFS is not really popular on embedded systems ;)

> I googled a bit, and these are the only meaningful results I found:
> * https://lists.yoctoproject.org/g/yocto/message/29331
> * https://gist.github.com/cveilleux/54961ccc41071e8aee8c19b69fcba78f
> 
> Regards,
> Manuel

> 
> 
> 


-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com
