Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53ECAE00C97; Tue,  7 Jun 2016 14:24:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2CF2EE00C81
	for <yocto@yoctoproject.org>; Tue,  7 Jun 2016 14:24:55 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga103.fm.intel.com with ESMTP; 07 Jun 2016 14:24:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,435,1459839600"; d="scan'208";a="823617425"
Received: from ntjioe-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.145.211])
	by orsmga003.jf.intel.com with ESMTP; 07 Jun 2016 14:24:51 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 08 Jun 2016 09:24:44 +1200
Message-ID: <2350549.ml0Nc00s8v@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.5.5-201.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <CAJTo0La74HkwkgqQZwECS2ruzSe-guCCBJFG0_u=e1FBT8q3CA@mail.gmail.com>
References: <575456D5.4080800@mlbassoc.com>
	<CAJTo0LYaBXixDk1vzzt=wFtqYzsFQAtanUa3Hgu-CB86kHGdOw@mail.gmail.com>
	<CAJTo0La74HkwkgqQZwECS2ruzSe-guCCBJFG0_u=e1FBT8q3CA@mail.gmail.com>
MIME-Version: 1.0
Cc: Gary Thomas <gary@mlbassoc.com>
Subject: Re: What's this
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
X-List-Received-Date: Tue, 07 Jun 2016 21:24:59 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tue, 07 Jun 2016 17:20:12 Burton, Ross wrote:
> On 7 June 2016 at 17:02, Burton, Ross <ross.burton@intel.com> wrote:
> > It means the hash calculated my the bitbake master was different to the
> > hash calculated when the worker started up.  This usually means that
> > you're
> > using something like ${TIME} in the recipe but not marking it appropriatly
> > so the cache ignores it.  Do you have a base-files bbappend that writes a
> > timestamp?
> 
> The always wise Joshua reminds me that if your DISTRO_VERSION contains
> ${DATETIME} then this happens.  If you're doing this then you'll want to
> set [vardepsexclude] on DISTRO_VERSION to stop the DATETIME from getting
> into the cache (or not put the current date/time into the distro version).

I think we need to handle this situation better - if it's really worth 
producing an error about then it's worth producing an error message that 
people can actually understand, particularly as it's recently added 
validation.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

