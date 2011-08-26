Return-Path: <bgat@billgatliff.com>
Received: from mail-qy0-f176.google.com (mail-qy0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E44BE011BE
	for <yocto@yoctoproject.org>; Fri, 26 Aug 2011 11:41:56 -0700 (PDT)
Received: by qyk7 with SMTP id 7so3145099qyk.14
	for <yocto@yoctoproject.org>; Fri, 26 Aug 2011 11:41:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.229.52.7 with SMTP id f7mr1970416qcg.5.1314384115670; Fri, 26
	Aug 2011 11:41:55 -0700 (PDT)
Received: by 10.229.110.11 with HTTP; Fri, 26 Aug 2011 11:41:55 -0700 (PDT)
In-Reply-To: <20110826163502.GB23469@n2100.arm.linux.org.uk>
References: <20110809181534.GR10171@einval.com>
	<20110823161134.GV3053@linaro.org>
	<efc47c3039402c1507d76f381a790115@mail.shatteredsilicon.net>
	<CAPweEDwkVWH=r_moJj1_CKLxRUkkbBgHenZhwi8CzY9z3BO-Cw@mail.gmail.com>
	<CADkCAuuaH5k2duuvUdmj1j9=6oaCKORN-NJGg4gt2ovEshHYmw@mail.gmail.com>
	<alpine.DEB.2.02.1108241648360.29431@asgard.lang.hm>
	<CADkCAut2sMMKcCLiG0g+Rwt5z4dXJgRZYyvUAzCQVTQQMPFJmA@mail.gmail.com>
	<20110826163502.GB23469@n2100.arm.linux.org.uk>
Date: Fri, 26 Aug 2011 13:41:55 -0500
Message-ID: <CADkCAuvjVJZ0CahQYtZM_BoOodxrYPZuQZ93Y3JwHqSqiA+kBw@mail.gmail.com>
From: Bill Gatliff <bgat@billgatliff.com>
To: Russell King - ARM Linux <linux@arm.linux.org.uk>
X-Mailman-Approved-At: Tue, 30 Aug 2011 21:37:51 -0700
Cc: david@lang.hm, cross-distro@lists.linaro.org,
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
X-List-Received-Date: Fri, 26 Aug 2011 18:41:56 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Russell:

On Fri, Aug 26, 2011 at 11:35 AM, Russell King - ARM Linux
<linux@arm.linux.org.uk> wrote:
> On Fri, Aug 26, 2011 at 11:11:41AM -0500, Bill Gatliff wrote:
>> As such refactoring consolidated larger and larger chunks of kernel
>> code, new designs would gravitate towards those consolidated
>> implementations because they would be the dominant references.
>
> Don't bet on it. =A0That's not how it works (unfortunately.)

I wasn't being clear.

The Linux community isn't large enough to dictate to ARM SoC designers
how their hardware should work--- mostly because the "Linux community"
doesn't buy chips, corporations do.  And it has been my experience
that the parts of corporations that negotiate deals for the hardware
aren't populated with the developers of the drivers for said hardware.

What I meant was that as new hardware becomes available, if we have
strong driver models then driver authors will adopt those APIs rather
than inventing their own.

I'm thinking about GPIO before gpiolib, for example.  Or the current
state of PWM.

> This "need to be different" is so heavily embedded in the mindset of the
> hardware people that I doubt "providing consolidated implementations"
> will make the blind bit of difference. =A0I doubt that hardware people
> coming up with these abominations even care one bit about what's in
> the kernel.

I don't routinely see a "need to be different" as existing strictly
for its' own sake, even with the hardware guys.  Rather, I see a lot
of developers (hardware and software) that are so consumed with their
own requirements and deadlines that they don't get the chance to step
back and see the bigger picture.  The resulting fragmentation is a
symptom, not the disease itself.

And honestly, some of the fragmentation is a really good thing.  I
love how Atmel does their GPIO controllers on the SAM-series parts,
for example.  The SODR and CODR registers are a godsend for concurrent
code.  We wouldn't have such treats if everybody did things the same
way.

So I'm generally ambivalent to the hardware situation.  But that
doesn't mean that the software has to be equally fragmented.  In fact,
I think the hardware situation necessitates that we pay particular
attention to NOT fragmenting the drivers for said hardware.  Gpiolib
proves that is possible, something I didn't think I would find myself
saying when David Brownell started his effort.  I'm glad he proved me
wrong.



b.g.
--=20
Bill Gatliff
bgat@billgatliff.com

