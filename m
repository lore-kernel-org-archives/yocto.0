Return-Path: <david@lang.hm>
Received: from bifrost.lang.hm (mail.lang.hm [64.81.33.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DBB0E006AB
	for <yocto@yoctoproject.org>; Wed, 24 Aug 2011 16:58:06 -0700 (PDT)
Received: from asgard.lang.hm (asgard.lang.hm [10.0.0.100])
	by bifrost.lang.hm (8.13.4/8.13.4/Debian-3) with ESMTP id
	p7ONtEMO026551; Wed, 24 Aug 2011 16:55:14 -0700
Date: Wed, 24 Aug 2011 16:55:14 -0700 (PDT)
From: david@lang.hm
X-X-Sender: dlang@asgard.lang.hm
To: Bill Gatliff <bgat@billgatliff.com>
In-Reply-To: <CADkCAuuaH5k2duuvUdmj1j9=6oaCKORN-NJGg4gt2ovEshHYmw@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1108241648360.29431@asgard.lang.hm>
References: <20110809181534.GR10171@einval.com>
	<20110823161134.GV3053@linaro.org>
	<efc47c3039402c1507d76f381a790115@mail.shatteredsilicon.net>
	<CAPweEDwkVWH=r_moJj1_CKLxRUkkbBgHenZhwi8CzY9z3BO-Cw@mail.gmail.com>
	<CADkCAuuaH5k2duuvUdmj1j9=6oaCKORN-NJGg4gt2ovEshHYmw@mail.gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 25 Aug 2011 10:56:59 -0700
Cc: cross-distro@lists.linaro.org, Russell King <linux@arm.linux.org.uk>,
	Ubuntu Devel <ubuntu-devel@lists.ubuntu.com>,
	GCC developers <gcc@gcc.gnu.org>, yocto@yoctoproject.org,
	Gentoo Embedded <gentoo-embedded@lists.gentoo.org>,
	Bruce Perens <bruce@perens.com>,
	LSB discuss <lsb-discuss@lists.freestandards.org>,
	Debian ARM <debian-arm@lists.debian.org>,
	Fedora ARM <arm@lists.fedoraproject.org>,
	OLPC Devel <devel@lists.laptop.org>,
	OpenEmbedded Devel <openembedded-devel@lists.openembedded.org>,
	cooker@mandrivalinux.org, MeeGo Dev <meego-dev@meego.com>,
	Luke Kenneth Casson Leighton <lkcl@lkcl.net>,
	Linux on small ARM machines <arm-netbook@lists.phcomp.co.uk>,
	torvalds@linux-foundation.org, Mageia Dev <mageia-dev@mageia.org>
Subject: Re: [fedora-arm] ARM summit at Plumbers 2011
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
X-List-Received-Date: Wed, 24 Aug 2011 23:58:06 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed

On Wed, 24 Aug 2011, Bill Gatliff wrote:

> I have observed all the hand-wringing regarding the state of ARM
> Linux, and it's obvious to everyone that there is still work to be
> done.  ARM isn't like PCs, and that's obviously inconvenient for Linus
> but it's an essential part of ARM's success.

I think that the thing being disputed isn't that ARM is different from 
PCs, but rather the issue that different ARM SOs do the same thing in 
different ways.

in the early days of the PC we had the same issues (those who were around 
to remember the 'almost' PC compatible machines (from some of the biggest 
names in the business). they all thought that they had good reasons to do 
things differently, but over time they all changed to hide the differences 
from the system.

ARM is currently in worse shape than the PC market ever was in this 
aspect, but in this case it's less a matter of getting the hardware guys 
to change what they do than it is to get better documentation of what the 
hardware is really doing and not duplicating drivers for cases where the 
right answer is just replacing a constant with a variable (just as an 
example of the very common case where the same component is wired to a 
different address)

David Lang

