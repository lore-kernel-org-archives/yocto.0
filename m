Return-Path: <linux+yocto=yoctoproject.org@arm.linux.org.uk>
Received: from caramon.arm.linux.org.uk (caramon.arm.linux.org.uk
	[78.32.30.218])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE27DE011B8
	for <yocto@yoctoproject.org>; Fri, 26 Aug 2011 09:36:32 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@arm.linux.org.uk;
	x-dkim-adsp=none (insecure policy)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=arm.linux.org.uk; s=caramon; 
	h=Sender:In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date;
	bh=Ujkd1bhBYpIbsQTJrxBZk3pmjQOHhjh2qmELK0xuJcg=; 
	b=h1m1XfS+iVvaykpgxgpQ1w3LYko4e6os09at6IkiwFH30J8pqPNxLU7tRnUWDI7qX8s+YRMl2CIdbJxb+ftoxRE4ZsqNJQI3iIgvmPV12uubVZjQaBBNDVNyt+4U+hTkyKxj16KFEdjyliNhS1kLVAWyhvuDitsn+fbWh4wkxdA=;
Received: from n2100.arm.linux.org.uk ([2002:4e20:1eda:1:214:fdff:fe10:4f86])
	by caramon.arm.linux.org.uk with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.72) (envelope-from <linux@arm.linux.org.uk>)
	id 1QwzN2-0003Xw-FF; Fri, 26 Aug 2011 17:35:05 +0100
Received: from linux by n2100.arm.linux.org.uk with local (Exim 4.72)
	(envelope-from <linux@n2100.arm.linux.org.uk>)
	id 1QwzN0-0006wc-JP; Fri, 26 Aug 2011 17:35:02 +0100
Date: Fri, 26 Aug 2011 17:35:02 +0100
From: Russell King - ARM Linux <linux@arm.linux.org.uk>
To: Bill Gatliff <bgat@billgatliff.com>
Message-ID: <20110826163502.GB23469@n2100.arm.linux.org.uk>
References: <20110809181534.GR10171@einval.com>
	<20110823161134.GV3053@linaro.org>
	<efc47c3039402c1507d76f381a790115@mail.shatteredsilicon.net>
	<CAPweEDwkVWH=r_moJj1_CKLxRUkkbBgHenZhwi8CzY9z3BO-Cw@mail.gmail.com>
	<CADkCAuuaH5k2duuvUdmj1j9=6oaCKORN-NJGg4gt2ovEshHYmw@mail.gmail.com>
	<alpine.DEB.2.02.1108241648360.29431@asgard.lang.hm>
	<CADkCAut2sMMKcCLiG0g+Rwt5z4dXJgRZYyvUAzCQVTQQMPFJmA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CADkCAut2sMMKcCLiG0g+Rwt5z4dXJgRZYyvUAzCQVTQQMPFJmA@mail.gmail.com>
User-Agent: Mutt/1.5.19 (2009-01-05)
Sender: Russell King - ARM Linux <linux@arm.linux.org.uk>
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
X-List-Received-Date: Fri, 26 Aug 2011 16:36:34 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Aug 26, 2011 at 11:11:41AM -0500, Bill Gatliff wrote:
> As such refactoring consolidated larger and larger chunks of kernel
> code, new designs would gravitate towards those consolidated
> implementations because they would be the dominant references.

Don't bet on it.  That's not how it works (unfortunately.)

Just look at the many serial port inventions dreamt up by SoC designers -
everyone is different from each other.  Now consider: why didn't they use
a well established standard 16550A or later design?

Also consider why ARM Ltd designed the PL010 and PL011 primecells which
are different from the 16550A.

This "need to be different" is so heavily embedded in the mindset of the
hardware people that I doubt "providing consolidated implementations"
will make the blind bit of difference.  I doubt that hardware people
coming up with these abominations even care one bit about what's in
the kernel.

