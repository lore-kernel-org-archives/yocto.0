Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BF0DE01304
	for <yocto@yoctoproject.org>; Wed, 27 Jun 2012 13:14:52 -0700 (PDT)
Received: from [192.168.0.2] (host86-170-68-253.range86-170.btcentralplus.com
	[86.170.68.253]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id E4B7D9C07
	for <yocto@yoctoproject.org>; Wed, 27 Jun 2012 21:14:51 +0100 (BST)
Message-ID: <4FEB69BB.2080906@r-finger.com>
Date: Wed, 27 Jun 2012 21:14:51 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.3) Gecko/20120329 Icedove/10.0.3
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <alpine.DEB.2.02.1206260459040.8547@oneiric>
	<10398861.esnekvBoZU@helios> <4FE9D965.4070906@linux.intel.com>
	<3153041.1FMPtSpq0x@helios> <4FE9E58C.9020408@r-finger.com>
	<alpine.DEB.2.02.1206261252060.5948@oneiric>
	<4FE9EEF6.7050001@r-finger.com> <4FEA0505.6010108@am.sony.com>
	<4FEACDE6.7040701@r-finger.com>
	<83905E03-FF88-48EC-9336-273B02FB9FB1@beagleboard.org>
In-Reply-To: <83905E03-FF88-48EC-9336-273B02FB9FB1@beagleboard.org>
Subject: Re: <rant>the current yocto FAQ is pretty much valueless</rant>
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
X-List-Received-Date: Wed, 27 Jun 2012 20:14:52 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Koen,

On 27/06/12 15:59, Koen Kooi wrote:
> Yocto is NOT a distro. 

Is that so? :-), meta-yocto distro.conf:

DISTRO = "poky"
DISTRO_NAME = "Yocto (Built by Poky 7.0)"
DISTRO_VERSION = "1.2"

I am well aware that textual meaning is pretty much constructed by the
reader, and that authorial intent is an elusive concept, but I am ready
to argue that the conventional understanding of the above is that Poky
is a build tool, and Yocto is the public name of the distro that you
build if you use meta-yocto. To read that as 'Yocto is NOT a distro' I
think requires a definite pre-understanding that Yocto is not a distro,
which would need to come from some other source (or perhaps it is an
axiom of faith; myself, I tend hold firmly to the authority of the
source code alone). I shall not deny you the right to hold to such a
reading, but I do reserve the right to deconstruct it. :-)


> This thread highlights the reason the oe folks have been pushing to get rid of the 'poky' name completely

Perhaps one of the reasons; but then the erasure of Poky would mean that
you could no longer say 'Yocto is a NOT a distro', which I suspect would
achieve the very opposite of what you seek (and, perhaps more
importantly, might cost Dave and Saul a lunch or two). Personally, I
think much better solution would be if the distro was simply called Poky
v7.0, then we could all say 'Yocto is NOT a distro!' with conviction.
Plus Poky is such a lovely name, don't you think? ;-)

Tomas

