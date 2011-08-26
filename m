Return-Path: <bgat@billgatliff.com>
Received: from mail-qw0-f48.google.com (mail-qw0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7133E011B8
	for <yocto@yoctoproject.org>; Fri, 26 Aug 2011 09:11:42 -0700 (PDT)
Received: by qwj9 with SMTP id 9so3113222qwj.35
	for <yocto@yoctoproject.org>; Fri, 26 Aug 2011 09:11:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.229.1.224 with SMTP id 32mr1723097qcg.157.1314375101974; Fri,
	26 Aug 2011 09:11:41 -0700 (PDT)
Received: by 10.229.110.11 with HTTP; Fri, 26 Aug 2011 09:11:41 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1108241648360.29431@asgard.lang.hm>
References: <20110809181534.GR10171@einval.com>
	<20110823161134.GV3053@linaro.org>
	<efc47c3039402c1507d76f381a790115@mail.shatteredsilicon.net>
	<CAPweEDwkVWH=r_moJj1_CKLxRUkkbBgHenZhwi8CzY9z3BO-Cw@mail.gmail.com>
	<CADkCAuuaH5k2duuvUdmj1j9=6oaCKORN-NJGg4gt2ovEshHYmw@mail.gmail.com>
	<alpine.DEB.2.02.1108241648360.29431@asgard.lang.hm>
Date: Fri, 26 Aug 2011 11:11:41 -0500
Message-ID: <CADkCAut2sMMKcCLiG0g+Rwt5z4dXJgRZYyvUAzCQVTQQMPFJmA@mail.gmail.com>
From: Bill Gatliff <bgat@billgatliff.com>
To: david@lang.hm
X-Mailman-Approved-At: Fri, 26 Aug 2011 09:20:12 -0700
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
X-List-Received-Date: Fri, 26 Aug 2011 16:11:43 -0000
Content-Type: text/plain; charset=ISO-8859-1

David:

On Wed, Aug 24, 2011 at 6:55 PM,  <david@lang.hm> wrote:
> ARM is currently in worse shape than the PC market ever was in this aspect,
> but in this case it's less a matter of getting the hardware guys to change
> what they do than it is to get better documentation of what the hardware is
> really doing and not duplicating drivers for cases where the right answer is
> just replacing a constant with a variable (just as an example of the very
> common case where the same component is wired to a different address)

I agree.

Maybe Linaro or an equivalent organization could provide a "ARM kernel
janitor" service to the community, where they refactor existing ARM
platform/driver code to make it more common.  This is something that's
difficult for a single person with experience in only one or two SoCs
to do, but it would be pretty straightforward work for a team of three
or four people with broad coverage of the SoC devices the kernel
supports now.

As such refactoring consolidated larger and larger chunks of kernel
code, new designs would gravitate towards those consolidated
implementations because they would be the dominant references.


b.g.
-- 
Bill Gatliff
bgat@billgatliff.com

