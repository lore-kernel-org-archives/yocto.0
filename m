Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97AFDE00975; Wed, 14 May 2014 11:06:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.3 RDNS_NONE Delivered to internal network by a host
	with no rDNS
Received: from mail.chez-thomas.org (unknown [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CEFE1E006EF
	for <yocto@yoctoproject.org>; Wed, 14 May 2014 11:06:27 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 90C20F811F5; Wed, 14 May 2014 12:06:27 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id CC02FF811F4;
	Wed, 14 May 2014 12:06:26 -0600 (MDT)
Message-ID: <5373B0AB.4070204@mlbassoc.com>
Date: Wed, 14 May 2014 12:06:35 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: Where did my preferred version go?
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
X-List-Received-Date: Wed, 14 May 2014 18:06:32 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I have a number of platforms which [for whatever reason]
need older versions of GCC.  I've been supporting this by
keeping the older code around in my own layers - I need
4.7.x for some targets, even 4.6.x for others.

With the changes in the latest master (post 1.6/daisy), I
am no longer able to build those older compilers :-(  First
I had to fix up some core changes to just get the recipes to
even parse (bb.utils.contains), but now I get a slew of errors
like these:

   NOTE: preferred version 4.7% of libgcc-initial not available (for item libgcc-initial)
   NOTE: versions of libgcc-initial available: 4.8.2 4.9.0

I looked at the old recipes and they don't provide these
packages which make them unsuitable.

I know I should move these targets to the newer GCC, but at
this moment there simply are not the resources to do so, but
we still want to benefit from other improvements in OE-core
(and Poky/Yocto).

How can I move forward?  Is there some way to retrofit the
older compilers into the new [required] structures?  Perhaps
I could use the older compilers as external tool chain, but
the last time I tried to use this (in place of the internal,
build in place) tools, I could never make things happy :-(

Any suggestions more than welcome, thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

