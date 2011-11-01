Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF287E0054F
	for <yocto@yoctoproject.org>; Tue,  1 Nov 2011 16:16:30 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 01 Nov 2011 16:16:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,440,1315206000"; d="scan'208";a="32341119"
Received: from unknown (HELO [10.255.15.209]) ([10.255.15.209])
	by AZSMGA002.ch.intel.com with ESMTP; 01 Nov 2011 16:16:29 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <alpine.DEB.2.02.1111011835470.5888@localhost6.localdomain6>
References: <CANFv2EkrNFQw57X=tV5Wz+a5F-cqp_GQHsOpLhOh7pXeTSnpXg@mail.gmail.com>
	<1320176449.2400.63.camel@elmorro>
	<alpine.DEB.2.02.1111011733510.5226@localhost6.localdomain6>
	<1320183968.2400.83.camel@elmorro> <1320184489.2400.88.camel@elmorro>
	<alpine.DEB.2.02.1111011835470.5888@localhost6.localdomain6>
Date: Tue, 01 Nov 2011 18:16:36 -0500
Message-ID: <1320189396.26655.6.camel@elmorro>
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
X-List-Received-Date: Tue, 01 Nov 2011 23:16:31 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-11-01 at 15:47 -0700, Robert P. J. Day wrote:
> some questions/observations as i'm getting close to the end of this
> appendix (some of which you've already seen and addressed), all done
> on my 64-bit ubuntu 11.10 system:
> 
>   * section A.3: rather than force the reader to follow a link or go
> to an earlier section, why not just supply the command to check out
> meta-intel/?
> 
>   $ git clone http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel
> 

Makes sense to me.  Also, the same comment would apply to the main poky
repo as well.

>   * section A.5.1: is it actually *necessary* to delete the
> crownbay.conf file, and to change the comments in the mymachine.conf
> file?  admittedly, it's nice to keep things consistent, but if the
> text claims that something is "needed", then it really should be
> required.

No, not strictly necessary, but assuming you're using these instructions
to create a new BSP, definitely desirable.

> 
>   * section A.5.2.1: as we've noted, that first command can be tossed.
> in addition, should one remove the "crownbay" directory from that
> location?  since "crownbay" content is being removed from other
> locations, it would be nice to be consistent.
> 
>   * section A.5.2.2: delete first command
> 

I think that's right.

>   * section A.5.2.4: the "SRCREV_meta" values listed in the appendix
> don't match what's in the actual file.  so what are the correct
> values?
> 

Well, this example seems to assume you want to base it on the atom-pc
branch, so I guess we should use the value for that branch in meta-yocto
(meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend).  The meta
branch SRCREV should be inherited from the main recipe
(meta/recipes-kernel/linux/linux-yocto_3.0.bb) which looks like it
matches the current value and doesn't need to be changed.

Or at least that's what I'm building now.  I'll post the full transcript
assuming I get a good build out of it...

Tom

>   ... back to work ...
> 
> rday
> 



