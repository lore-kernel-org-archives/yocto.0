Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.5158.1624005039675176878
 for <yocto@lists.yoctoproject.org>;
 Fri, 18 Jun 2021 01:30:39 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: bootlin.com, ip: 198.145.29.25, mailfrom: alexandre.belloni@bootlin.com)
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net [217.70.183.200])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 1FA5E38C06B9
	for <yocto@yoctoproject.org>; Fri, 18 Jun 2021 08:30:37 +0000 (UTC)
Received: (Authenticated sender: alexandre.belloni@bootlin.com)
	by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id A62D920014;
	Fri, 18 Jun 2021 08:30:34 +0000 (UTC)
Date: Fri, 18 Jun 2021 10:30:34 +0200
From: "Alexandre Belloni" <alexandre.belloni@bootlin.com>
To: Randy MacLeod <randy.macleod@windriver.com>
Cc: Sakib Sajal <sakib.sajal@windriver.com>,
	richard.purdie@linuxfoundation.org,
	"Wold, Saul" <saul.wold@windriver.com>,
	Yocto discussion list <yocto@yoctoproject.org>,
	"Tascioglu, Tony" <Tony.Tascioglu@windriver.com>,
	Trevor Gamblin <trevor.gamblin@windriver.com>
Subject: Re: Yocto Autobuilder: Latency Monitor and AB-INT - Meeting notes: June 17, 2021
Message-ID: <YMxZqseT0gcoZovU@piout.net>
References: <cf0b6c6b-c779-3730-7f12-b19f70cb07f4@windriver.com>
MIME-Version: 1.0
In-Reply-To: <cf0b6c6b-c779-3730-7f12-b19f70cb07f4@windriver.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On 17/06/2021 10:05:48-0400, Randy MacLeod wrote:
> 5. On the ubuntu-18.04 builders, we seem to see issues there,
>    we dont' know why, maybe only that we have more of those workers...
>    Alex, could you possibly get failures per worker statistics?
> 

Specifically for bug 14273 (the rcu stall is seen on the logs):

ubuntu1804-ty-1    6   23.1%
ubuntu1804-ty-2    5   19.2%
ubuntu1804-ty-3   12   38.5%
fedora31-ty-1      2    7.7%
debian8-ty-1       3   11.5%

> 
> 6. discussed Sakib's summary script. It's coming along.
>    TO DO:
>    - special activities: rm (of trash), tar, qemu*
>    - report all zombies
>      (The current hoard are due to Paul Barker's patch)
> 7.
> make: job server
>  - the fifo was being re-created by the wrapper on each call
>    so Trevor will fix that.
> 
> 
> 
> 8. From last week, I don't think we've increased the timeouts:
> 
>  - qemu-runner? timeout increase 120 -> 240
>  - ptest timeouts 300 -> 450?
> 
> 
> 
> 
> 8.
>   Plans for the week:
> 
>   Richard: RCU stall
>   Alex:
>   Sakib: task summary
>   Trevor: make job server
>   Tony: ptests and work with upstream valgrind on fixing bugs.
>   Saul: (1 week) have QMP deal with sigusr1 to close the QMP socket
>   Randy: coffee, herd cats!!
> 
> 
> ../Randy

-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com
