Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id E46344C80121
	for <yocto@yoctoproject.org>; Tue, 19 Oct 2010 17:07:58 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 19 Oct 2010 15:07:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.57,352,1283756400"; d="scan'208";a="565564534"
Received: from unknown (HELO [10.255.12.85]) ([10.255.12.85])
	by orsmga002.jf.intel.com with ESMTP; 19 Oct 2010 15:07:56 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: "Hart, Darren" <darren.hart@intel.com>
In-Reply-To: <4CBE1150.6090807@intel.com>
References: <4807CBBFD12C484EBEAB6D8DFBDCE47C267E303C06@orsmsx501.amr.corp.intel.com>
	<B27EBC40D200ED48A3F4CC2EBEABAE0B25BBC510A2@orsmsx501.amr.corp.intel.com>
	<1287504271.26874.205.camel@elmorro>  <4CBE1150.6090807@intel.com>
Date: Tue, 19 Oct 2010 17:07:32 -0500
Message-ID: <1287526052.26874.216.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Mailman-Approved-At: Tue, 19 Oct 2010 17:10:12 -0500
Cc: "Li, Susie" <susie.li@intel.com>, "Lock, Joshua" <joshua.lock@intel.com>,
	"'McCombe, Kevin'" <kevin.mccombe@windriver.com>, "'Ta,
	Lieu'" <Lieu.Ta@windriver.com>, "'Anderson,
	Paul'" <paul.anderson@windriver.com>,
	"'yocto@yoctoproject.org'" <yocto@yoctoproject.org>,
	'Bruce Ashfield' <bruce.ashfield@windriver.com>, "Purdie,
	Richard" <richard.purdie@intel.com>
Subject: Re: Yocto Linux Project Sync notes
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <https://lists.pokylinux.org/private/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 19 Oct 2010 22:07:59 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2010-10-19 at 14:44 -0700, Hart, Darren wrote:
> On 10/19/2010 09:04 AM, Zanussi, Tom wrote:
> > On Tue, 2010-10-19 at 08:40 -0700, Stewart, David C wrote:
> >
> >>
> >> * demo
> >>
> >> ** Alex will put the hardware bits together, Darren to write down the description of what needs to come together and wiki-fy it. RP suggests that maybe getting all the pieces running on one hardware might be a good way to try it out just in case.
> >>
> >
> > I can try getting everything running on one machine too - would it make
> > sense to try that all on e.g. emenlow, or all on a laptop using qemu, or
> > both?
> 
> Everything on One machine doesn't make a lot of sense to me, for two 
> reasons:
> 
> 1) This is heavily network dependent, making sure the machines can find 
> eachother is a critical aspect of testing this.
> 2) Qemu does some magic with tun/tap devices, you have to configure 
> things to get multicast working between guests. I've tested the 
> mediatomb image in qemu, it works. We need to test on real hardware.
> 3) We don't an image that will install everything on the same machine, 
> and making one doesn't make a lot of sense to me.
> 4) Running a NAS to serve up media to itself doesn't test the networking 
> side of things as well.
> 
> I'd rather use 3 real devices (even if they are all emenlow or 
> blacksand) rather than qemu or all on one.
> 

Yeah, it doesn't make sense as a demo per se, but for the folks who only
have one system, to get it all going.  Another motivition I thought was
to have 'something' as a worst-case fallback, e.g. with all the 'moving
pieces' Dave is worried about.

Actually, it could make a little bit of sense to have a single
nas-mediatomb-xxxclient image, pointing to each other on localhost, that
could be easily tweaked in the field and swapped in/out as any one of
the components - just a thought and probably not worth it at this point.

Tom

> --
> Darren
> 
> >
> > Tom
> >
> 
> 



