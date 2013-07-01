Return-Path: <darren.hart@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B183E013DE;
	Mon,  1 Jul 2013 10:28:18 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 01 Jul 2013 10:28:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,975,1363158000"; d="scan'208";a="362956900"
Received: from unknown (HELO [10.255.13.39]) ([10.255.13.39])
	by orsmga002.jf.intel.com with ESMTP; 01 Jul 2013 10:28:10 -0700
Message-ID: <1372699690.18377.6.camel@envy.home>
From: Darren Hart <darren.hart@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Date: Mon, 01 Jul 2013 10:28:10 -0700
In-Reply-To: <1372661219.25291.6.camel@ted>
References: <1372409484.9930.245.camel@ted> <51CD86F1.7090409@windriver.com>
	<1372424223.9930.257.camel@ted> <51CD8973.7020704@windriver.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB123797FF5244E@ORSMSX101.amr.corp.intel.com>
	<51CD9264.2040609@windriver.com> <1372427783.9930.258.camel@ted>
	<1372482483.9243.42.camel@envy.home>
	<41DEA4B02DBDEF40A0F3B6D0DDB123797FF52828@ORSMSX101.amr.corp.intel.com>
	<51D11493.6030602@yoctoproject.org> <1372657489.4401.7.camel@envy.home>
	<51D11F2E.6070104@yoctoproject.org> <1372661219.25291.6.camel@ted>
X-Mailer: Evolution 3.6.4 (3.6.4-2.fc18) 
Mime-Version: 1.0
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: poky-extras
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
X-List-Received-Date: Mon, 01 Jul 2013 17:28:20 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2013-07-01 at 07:46 +0100, Richard Purdie wrote:
> On Sun, 2013-06-30 at 23:18 -0700, Michael Halstead wrote:
> > On 06/30/2013 10:44 PM, Darren Hart wrote:
> > > On Sun, 2013-06-30 at 22:33 -0700, Michael Halstead wrote:
> > > > I can change the name shortly. Is there any reason to keep a read-only
> > > > copy available at the current location temporarily?
> > > Not really. Unless Bruce is using it in some automated scripts that need
> > > to be updated.
> > > 
> >
> > The name has been changed. Shall we update the description or is
> > "Supplementary metadata layers to extend the Poky core" still
> > appropriate?
> 
> We can change it to something like "Supplementary linux-yocto kernel
> development metadata" unless Bruce has any better description.

Bruce is out this week with limited email access. He isn't terribly
picky on naming and that description should work as good as any.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel


