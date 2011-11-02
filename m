Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5AAE1E006B4
	for <yocto@yoctoproject.org>; Wed,  2 Nov 2011 08:34:23 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 02 Nov 2011 08:34:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="70261030"
Received: from unknown (HELO [10.255.15.209]) ([10.255.15.209])
	by orsmga002.jf.intel.com with ESMTP; 02 Nov 2011 08:34:22 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Jim Abernathy <jfabernathy@gmail.com>
In-Reply-To: <1320246467.13661.10.camel@jim-ubuntu-10>
References: <CANFv2EkrNFQw57X=tV5Wz+a5F-cqp_GQHsOpLhOh7pXeTSnpXg@mail.gmail.com>
	<1320176449.2400.63.camel@elmorro>
	<CANFv2Emacwk4+Z+bYNs3MXZL-uxHmPUiB5tFXNM7Kx+NgFOnig@mail.gmail.com>
	<1320194738.26655.26.camel@elmorro>
	<1320243867.13661.6.camel@jim-ubuntu-10>
	<1320244912.26655.61.camel@elmorro>
	<1320246467.13661.10.camel@jim-ubuntu-10>
Date: Wed, 02 Nov 2011 10:34:33 -0500
Message-ID: <1320248073.26655.86.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Build error while following Appendix A. Yocto Project Development manual
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
X-List-Received-Date: Wed, 02 Nov 2011 15:34:23 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-11-02 at 08:07 -0700, Jim Abernathy wrote:
> > > Second, I looked at your cat of the same file containing the SRCREV
> > > commit strings and I don't see that they agree with the commits on the
> > > website even just this morning.  Can you explain that? Should I just use
> > > the ones in  your cat output or eventually the corrected Dev. Manual?
> > > 
> > 
> > I got these commits from the kernel .bb and .bbappends captured in the
> > edison branch, as mentioened above.
> 
> 
> That's a lot clearer now.  So does this mean that If I'm working with
> edison branch, should I have to change the commits strings at all???
> 

The commits in the doc should work - the SRCREV_machine is the last
commit on the edison branch for yocto/standard/common-pc/atom-pc and the
SRCREV_meta is also valid in edison, though in between the time the doc
was written and the time meta-intel was released for edison, the meta
SRCREV was bumped up to a later commit, which is the one I used in my
'cat'ed file.  Either one should be fine.  So no, you can directly use
the SRCREVS in the manual and don't have to change those at all.

> Because the commit strings from your cat'ing of the your file don't
> agree with what is in my clone of the edison branch for poky or
> meta-intel. Or am I missing something else (likely).
> 

Those commit strings identify commits in the linux-yocto_3.0 repo
(http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.0/).  The
specific commits used for edison are captured in the linux-yocto_3.0 .bb
and .bbappend files mentioned previously. 

Tom 

> Jim A
> 



