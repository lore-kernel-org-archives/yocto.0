Return-Path: <sgw@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BB8C2E009B2; Thu, 30 Mar 2017 10:38:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	RCVD_IN_DNSWL_HI,T_DKIM_INVALID autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3C22E00961
	for <yocto@yoctoproject.org>; Thu, 30 Mar 2017 10:38:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=intel.com; i=@intel.com; q=dns/txt; s=intel;
	t=1490895523; x=1522431523;
	h=message-id:subject:from:to:cc:date:in-reply-to:
	references:mime-version:content-transfer-encoding;
	bh=UMBoEe36XFd1gqPxvn/IaLQXKAhz25w9KMt51UOMmLs=;
	b=a8bo+MjCJK9TsdUWzDiIuLfCNW9Ric3OoIMgtaKSMK7F55D9O0Q4SExm
	3CwP05XpkLQ6j3FCWIk6OiBst5yQIw==;
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	30 Mar 2017 10:38:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,247,1486454400"; d="scan'208";a="71979763"
Received: from swold-mobl2.amr.corp.intel.com ([10.254.113.228])
	by orsmga004.jf.intel.com with ESMTP; 30 Mar 2017 10:38:40 -0700
Message-ID: <1490895519.18921.279.camel@linux.intel.com>
From: Saul Wold <sgw@linux.intel.com>
To: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
Date: Thu, 30 Mar 2017 10:38:39 -0700
In-Reply-To: <1490894066.17259.57.camel@linux.intel.com>
References: <1490892970-11447-1-git-send-email-sgw@linux.intel.com>
	<1490894066.17259.57.camel@linux.intel.com>
X-Mailer: Evolution 3.20.5 (3.20.5-1.fc24) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] i386 machine.cfg: Explicitly disable 64BIT
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
X-List-Received-Date: Thu, 30 Mar 2017 17:38:43 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2017-03-30 at 11:14 -0600, Leonardo Sandoval wrote:
> On Thu, 2017-03-30 at 09:56 -0700, Saul Wold wrote:
> > 
> > Since we do not set the 64 bit flags, newer kernels seem to build
> > 64bit
> > config files by default. This is due to a hard-coded uname -m check
> > that
> > selects the KBUILD_DEFCONFIG based on the host, not the cross
> > target.
> > 
> 
> 
> Saul, this is poky code, so wrong list.
> 
I am just having a bad day with email!

Sau!

> 
> 
> > 
> > Similar to e9ec769926b2378e63380bd7762ce7ce201af151 in the yocto-
> > kernel-cache repo
> > 
> > [YOCTO #11230]
> > 
> > Signed-off-by: Saul Wold <sgw@linux.intel.com>
> > ---
> >  .../substrate/target/arch/i386/recipes-
> > kernel/linux/files/machine.cfg  | 3 +++
> >  1 file changed, 3 insertions(+)
> > 
> > diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-
> > kernel/linux/files/machine.cfg
> > b/scripts/lib/bsp/substrate/target/arch/i386/recipes-
> > kernel/linux/files/machine.cfg
> > index 3b168b7..fe5b882 100644
> > --- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-
> > kernel/linux/files/machine.cfg
> > +++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-
> > kernel/linux/files/machine.cfg
> > @@ -1,5 +1,8 @@
> >  # yocto-bsp-filename {{=machine}}.cfg
> >  CONFIG_X86_32=y
> > +# Must explicitly disable 64BIT
> > +# CONFIG_64BIT is not set
> > +
> >  CONFIG_MATOM=y
> >  CONFIG_PRINTK=y
> >  
> > -- 
> > 2.7.4
> > 
> 
> 

