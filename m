Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2127DE01479
	for <yocto@yoctoproject.org>; Sat, 16 Nov 2013 00:52:40 -0800 (PST)
Received: from [173.34.6.101] (port=53298 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1VhbcM-0002Bh-TK; Sat, 16 Nov 2013 03:52:38 -0500
Date: Sat, 16 Nov 2013 03:52:29 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: "Burton, Ross" <ross.burton@intel.com>
In-Reply-To: <CAJTo0LbYcXDDguCiVtun5qMUAgL=VxqhoHVjHKhRCdu8t4M2gw@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1311160341590.7043@oneiric>
References: <alpine.DEB.2.02.1311150538110.30641@oneiric>
	<CAJTo0LbYcXDDguCiVtun5qMUAgL=VxqhoHVjHKhRCdu8t4M2gw@mail.gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: undocumented MACHINE_FEATURES, and what makes something a MACHINE feature?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 16 Nov 2013 08:52:41 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 15 Nov 2013, Burton, Ross wrote:

> On 15 November 2013 10:49, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
> >   as you can see, the only tests for 'wifi' involve either
> > DISTRO_FEATURES or COMBINED_FEATURES, *not* MACHINE_FEATURES
> > individually. under the circumstances, then, can 'wifi' be considered
> > a legitimate MACHINE feature if it's never being tested in that
> > context? (the same can be said for 'bluetooth', by the way.)
>
> COMBINED_FEATURES is a union of MACHINE_ and DISTRO_FEATURES, so it
> does make sense for them to be listed as MACHINE_FEATURES as
> otherwise they can't be combined...  No point building wifi in the
> distro if the machine doesn't support it, and the machine supporting
> wifi isn't a reason to enable it in the distro.

  oh, wait, i think i see what's happening here. COMBINED_FEATURES is
*not*, as you claim, a simple union of MACHINE_ and DISTRO_FEATURES,
it's much more specific:

COMBINED_FEATURES = "\
    ${@base_both_contain("DISTRO_FEATURES", "MACHINE_FEATURES", "alsa", d)} \
    ${@base_both_contain("DISTRO_FEATURES", "MACHINE_FEATURES", "bluetooth", d)} \
    ${@base_both_contain("DISTRO_FEATURES", "MACHINE_FEATURES", "ext2", d)} \
    ${@base_both_contain("DISTRO_FEATURES", "MACHINE_FEATURES", "vfat", d)} \
    ${@base_both_contain("DISTRO_FEATURES", "MACHINE_FEATURES", "irda", d)} \
    ${@base_both_contain("DISTRO_FEATURES", "MACHINE_FEATURES", "pcmcia", d)} \
    ${@base_both_contain("DISTRO_FEATURES", "MACHINE_FEATURES", "pci", d)} \
    ${@base_both_contain("DISTRO_FEATURES", "MACHINE_FEATURES", "usbgadget", d)} \
    ${@base_both_contain("DISTRO_FEATURES", "MACHINE_FEATURES", "usbhost", d)} \
    ${@base_both_contain("DISTRO_FEATURES", "MACHINE_FEATURES", "wifi", d)}"

and *now* it makes sense -- that's the missing test of
MACHINE_FEATURES i was looking for. more in a bit while i tease
through more files ...

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

