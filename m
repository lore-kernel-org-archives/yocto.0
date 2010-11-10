Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 85E0E4C81068
	for <yocto@yoctoproject.org>; Wed, 10 Nov 2010 07:38:15 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oAADcD5d002801;
	Wed, 10 Nov 2010 13:38:13 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 02706-02; Wed, 10 Nov 2010 13:38:09 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oAADc1Hv002794
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 10 Nov 2010 13:38:04 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: =?ISO-8859-1?Q?Jo=E3o?= Henrique Freitas <joaohf@gmail.com>
In-Reply-To: <AANLkTimr0Vm+kdDzCiJ07nOTZLgJDDC+DvNNwpgZ72xz@mail.gmail.com>
References: <AANLkTimr0Vm+kdDzCiJ07nOTZLgJDDC+DvNNwpgZ72xz@mail.gmail.com>
Date: Wed, 10 Nov 2010 21:37:59 +0800
Message-ID: <1289396279.1272.282.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
Subject: Re: two layers: hardware and distro.
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
X-List-Received-Date: Wed, 10 Nov 2010 13:38:15 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Hi,

On Wed, 2010-11-10 at 09:41 -0200, João Henrique Freitas wrote:
> I am novice yocto user.
> 
> My target is create a BSP to my hardware+application. Is Yocto a
> suitable project to do it?
> 
> I want to create two layers:
> 
> bsp-myhardware: linux kernel, firmware, specific hardware configuration
> bsp-myapplication: linux distro with all software need. Ex: net-snmp,
> lksctp (the target is telecom applications)
> 
> Currently yocto does not have many recipes that I need. No problem, I
> can get from OE. We use kernel 2.6.22 and I presume that I need a
> recipe to it and put inside bsp-myhardware, right?

Yes, this sounds like a very reasonable approach.

In general (this applies to anyone out there), we're interested to know
what kinds of software people use so please let us know what you're
putting into application layers anyone creates like this. Our focus is
currently on making sure there is a rock solid core for people to build
from but if there are core applications missing we'd like to know about
it.

Also, if anyone establishes a layer with a specific focus, we're happy
to provide a git repository for it on git.yoctoproject.org where you
could maintain and share this code with other people with a similar
goal.

Cheers,

Richard




