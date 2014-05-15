Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 339F4E00A44; Thu, 15 May 2014 13:54:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.3 RDNS_NONE Delivered to internal network by a host
	with no rDNS
Received: from dan.rpsys.net (unknown [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91470E0053B
	for <yocto@yoctoproject.org>; Thu, 15 May 2014 13:54:07 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu4) with ESMTP id
	s4FKrsmT002855; Thu, 15 May 2014 21:53:54 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id XkgXUGoPQBYE; Thu, 15 May 2014 21:53:54 +0100 (BST)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	s4FKrlWU002845
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NOT);
	Thu, 15 May 2014 21:53:49 +0100
Message-ID: <1400187220.28353.15.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
Date: Thu, 15 May 2014 21:53:40 +0100
In-Reply-To: <5373B0AB.4070204@mlbassoc.com>
References: <5373B0AB.4070204@mlbassoc.com>
X-Mailer: Evolution 3.8.4-0ubuntu1 
Mime-Version: 1.0
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Where did my preferred version go?
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
X-List-Received-Date: Thu, 15 May 2014 20:54:12 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2014-05-14 at 12:06 -0600, Gary Thomas wrote:
> I have a number of platforms which [for whatever reason]
> need older versions of GCC.  I've been supporting this by
> keeping the older code around in my own layers - I need
> 4.7.x for some targets, even 4.6.x for others.
> 
> With the changes in the latest master (post 1.6/daisy), I
> am no longer able to build those older compilers :-(  First
> I had to fix up some core changes to just get the recipes to
> even parse (bb.utils.contains), but now I get a slew of errors
> like these:
> 
>    NOTE: preferred version 4.7% of libgcc-initial not available (for item libgcc-initial)
>    NOTE: versions of libgcc-initial available: 4.8.2 4.9.0
> 
> I looked at the old recipes and they don't provide these
> packages which make them unsuitable.
> 
> I know I should move these targets to the newer GCC, but at
> this moment there simply are not the resources to do so, but
> we still want to benefit from other improvements in OE-core
> (and Poky/Yocto).
> 
> How can I move forward?  Is there some way to retrofit the
> older compilers into the new [required] structures?  Perhaps
> I could use the older compilers as external tool chain, but
> the last time I tried to use this (in place of the internal,
> build in place) tools, I could never make things happy :-(
> 
> Any suggestions more than welcome, thanks

How are you doing this? Have you a completely separate set of gcc
recipes including the include files or is this using the current include
files. You basically have two options:

a) Apply the changes that were made in master gcc to the 4.7 recipes,
you can then probably share includes.

b) Use a separate set of 4.7 files and "undo" some of the changes in
master using creative variable names. E.g., libgcc-initial was added:

recipes-core/eglibc/eglibc-initial.inc:DEPENDS = "linux-libc-headers virtual/${TARGET_PREFIX}gcc-initial libgcc-initial"
recipes-core/eglibc/eglibc.inc:DEPENDS = "virtual/${TARGET_PREFIX}gcc-initial libgcc-initial linux-libc-headers virtual/${TARGET_PREFIX}libc-initial"

so you could do a:

DEPENDS_remove_pn-eglibc-initial - "libgcc-initial"
DEPENDS_remove_pn-eglibc - "libgcc-initial"

Thinking a bit more, the issue that is going to hit you hard are the -PN
additions to the cross recipe changes (and their change in arch). My
strong recommendation is therefore a) and then replaying the gcc changes
made in master against the 4.7 version. These were:

http://git.yoctoproject.org/cgit.cgi/poky/log/meta/recipes-devtools/gcc

there are about 10 or so changes there you'd need to check in your 4.7
recipes (since the 25th April) but nothing particularly difficult.

Cheers,

Richard


