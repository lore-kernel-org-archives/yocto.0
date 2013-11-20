Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87935E0055C
	for <yocto@yoctoproject.org>; Wed, 20 Nov 2013 05:09:58 -0800 (PST)
Received: from [69.196.158.250] (port=44593 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Vj7XY-0007DL-MR; Wed, 20 Nov 2013 08:09:56 -0500
Date: Wed, 20 Nov 2013 08:09:53 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <3135869.AjjxWFArVx@helios>
Message-ID: <alpine.DEB.2.02.1311200802560.5855@oneiric>
References: <alpine.DEB.2.02.1311150538110.30641@oneiric>
	<CAJTo0LbYcXDDguCiVtun5qMUAgL=VxqhoHVjHKhRCdu8t4M2gw@mail.gmail.com>
	<alpine.DEB.2.02.1311160410010.8101@oneiric>
	<3135869.AjjxWFArVx@helios>
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
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Wed, 20 Nov 2013 13:09:59 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


... big snip ...

  finally have time to read paul's post on this so i'll go over this
again, but it seems that at the very least, what's needed is, in the
current reference manual, Chapter 10. Reference:Features:

http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#ref-features

there should be an explanation of COMBINED_FEATURES and how that
plays into possible configuration changes. there's absolutely no
mention of COMBINED_FEATURES anywhere in the reference manual except
in the variable glossary:

http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-COMBINED_FEATURES

and that explanation seems somewhat inadequate:

"A set of features common between MACHINE_FEATURES and
DISTRO_FEATURES. See the glossary descriptions for these variables for
more information."

  as i mentioned, that variable is defined *very* explicitly for a
*chosen* set of FEATURES in bitbake.conf:

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
COMBINED_FEATURES[vardeps] += "DISTRO_FEATURES MACHINE_FEATURES"

and i think that needs to be pointed out so people (like me :-) don't
get the wrong idea of what it represents.

  thoughts?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

