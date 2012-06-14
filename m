Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B33C4E0140C
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2012 00:11:36 -0700 (PDT)
Received: from [192.168.0.2] (host86-170-68-235.range86-170.btcentralplus.com
	[86.170.68.235]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id 9D8C79C07
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2012 08:11:35 +0100 (BST)
Message-ID: <4FD98EA6.1050403@r-finger.com>
Date: Thu, 14 Jun 2012 08:11:34 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.3) Gecko/20120329 Icedove/10.0.3
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4FD93175.7070202@linux.intel.com>
In-Reply-To: <4FD93175.7070202@linux.intel.com>
Subject: Re: RFC: poky-tiny: init procedure
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
X-List-Received-Date: Thu, 14 Jun 2012 07:11:36 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Darren,

On 14/06/12 01:33, Darren Hart wrote:
> o Do not include the standard Busybox init
...
> o Do not provide inittab functionality

I am not entirely clear what you are hoping to gain by creating a home
grown init solution?

A system that runs nothing but a shell is really not useful for anything
all, everyone using it will be adding some sort of services, so the
question of how the extending works (or does not work), needs to be in
the forefront of the design. My main reservation is that you are
suggesting to break one of the basic premisses behind the whole
ecosystem, namely that if I add a package that provides a service to an
image, I get that service running; 'fix by documentation' is never a fix.

So back to my original question, what are the expected benefits to the
Poky users of not using initd in such minimal systems, and do you have
any numbers to show it is worth it? Maybe the numbers are compelling,
but considering that currently Poky does not even support systemd,
adding yet another, home grown, init system seems like a step in the
wrong direction (perhaps sorting out the systemd mess is an opportunity
to deal with the init sequence in a more generic way).

(I hear what you are saying about a system that only includes packages
you want and nothing else, but this is orthogonal to the system size; I
for one want to be able to create a midsized system that includes only
packages that I want and nothing else. :) )

Tomas

