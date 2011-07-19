Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6AD934C800A3
	for <yocto@yoctoproject.org>; Tue, 19 Jul 2011 12:11:06 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 19 Jul 2011 10:06:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,229,1309762800"; d="scan'208";a="27669962"
Received: from unknown (HELO [10.255.14.85]) ([10.255.14.85])
	by orsmga002.jf.intel.com with ESMTP; 19 Jul 2011 10:06:51 -0700
From: Joshua Lock <josh@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 19 Jul 2011 10:06:46 -0700
In-Reply-To: <CAEsOVNdmyZSK2rv2+2zAQXpf8Txz_3=v62NZ85pO-D7esChwCQ@mail.gmail.com>
References: <CAEsOVNdmyZSK2rv2+2zAQXpf8Txz_3=v62NZ85pO-D7esChwCQ@mail.gmail.com>
X-Mailer: Evolution 3.0.2 (3.0.2-3.fc15) 
Message-ID: <1311095211.2115.6.camel@scimitar>
Mime-Version: 1.0
Subject: Re: pseudo issue on CentOS5
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
X-List-Received-Date: Tue, 19 Jul 2011 17:11:06 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-07-15 at 21:23 +0000, McClintock Matthew-B29882 wrote:
> This bug: http://bugzilla.yoctoproject.org/show_bug.cgi?id=1177 only
> occurs on my CentOS 5 boxes (not on my Fedora 13 box). I have
> determined that this git patch
> 4b66ce472871618cfe4761861392b7f9c3c265b0 is causing the problem.
> Reverting the patch fixes this.
> 
> Still looking at this more but I thought I would share this with
> everyone and see if anyone has a more specific reason why this is
> happening.

I filed bug #1251[1] based on our conversation on IRC and a brief follow
on with Mark, who does some pseudo work.

Mark indicated that we'll need to check glibc on the CentOS machine and
find the symbol and versions for all of the realpath functions.

I need to set up a CentOS VM before I can get around to this but if you
get opportunity you could do so and update the bug?

You can use 'objdump -T' for this, i.e. (from my F15 box):
joshual@scimitar:~
$ objdump -T /lib/libc.so.6 | grep realpath
416c3f00 g    DF .text	00000041 (GLIBC_2.0)  realpath
415e60e0 g    DF .text	00000478  GLIBC_2.3   realpath
4169a330 g    DF .text	00000037  GLIBC_2.4   __realpath_chk

Thanks,
Joshua

1. http://bugzilla.yoctoproject.org/show_bug.cgi?id=1251
-- 
Joshua Lock
        Yocto Project "Johannes factotum"
        Intel Open Source Technology Centre


