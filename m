Return-Path: <darren.hart@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 091F0E013B8;
	Sun, 30 Jun 2013 22:44:50 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 30 Jun 2013 22:44:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,971,1363158000"; d="scan'208";a="358337432"
Received: from unknown (HELO [10.255.13.33]) ([10.255.13.33])
	by fmsmga001.fm.intel.com with ESMTP; 30 Jun 2013 22:45:41 -0700
Message-ID: <1372657489.4401.7.camel@envy.home>
From: Darren Hart <darren.hart@intel.com>
To: Michael Halstead <michael@yoctoproject.org>
Date: Sun, 30 Jun 2013 22:44:49 -0700
In-Reply-To: <51D11493.6030602@yoctoproject.org>
References: <1372409484.9930.245.camel@ted> <51CD86F1.7090409@windriver.com>
	<1372424223.9930.257.camel@ted> <51CD8973.7020704@windriver.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB123797FF5244E@ORSMSX101.amr.corp.intel.com>
	<51CD9264.2040609@windriver.com> <1372427783.9930.258.camel@ted>
	<1372482483.9243.42.camel@envy.home>
	<41DEA4B02DBDEF40A0F3B6D0DDB123797FF52828@ORSMSX101.amr.corp.intel.com>
	<51D11493.6030602@yoctoproject.org>
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
X-List-Received-Date: Mon, 01 Jul 2013 05:44:51 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2013-06-30 at 22:33 -0700, Michael Halstead wrote:
> I can change the name shortly. Is there any reason to keep a read-only
> copy available at the current location temporarily?

Not really. Unless Bruce is using it in some automated scripts that need
to be updated.

--
Darren

> 
> Michael Halstead
> Yocto Project / Sys Admin
> 
> On 06/30/2013 10:19 PM, Rifenbark, Scott M wrote:
> > Hi, 
> >
> > I updated the dev-manual section that tells the user what is in this repo and shows an example of cloning it.  Nothing changes except for the name, which I switched to 'meta-yocto-kernel-extras'.  To me, it appears that the contents of the repo still contain the kernel BitBake append files that you edit to point to your locally modified kernel source files as described in the text.  Within the entire YP documentation set, this little area is the only reference to the old 'poky-extras' repo.  Here is the link to see the changes - http://www.yoctoproject.org/docs/1.5/dev-manual/dev-manual.html#meta-yocto-kernel-extras-repo. 
> >
> > I am assuming that the name of the repo will indeed be changed to 'meta-yocto-kernel-extras'.  If I don't hear from anyone, I will assume everything is good.
> >
> > Thanks,
> > Scott
> >
> >> -----Original Message-----
> >> From: Hart, Darren
> >> Sent: Friday, June 28, 2013 10:08 PM
> >> To: Richard Purdie
> >> Cc: Bruce Ashfield; Rifenbark, Scott M; yocto; Michael Halstead
> >> Subject: Re: poky-extras
> >>
> >> On Fri, 2013-06-28 at 14:56 +0100, Richard Purdie wrote:
> >>> On Fri, 2013-06-28 at 09:40 -0400, Bruce Ashfield wrote:
> >>>> On 13-06-28 09:22 AM, Rifenbark, Scott M wrote:
> >>>>> All I need is the name to make some initial changes.
> >>>> Personally, I'm fine with 'meta-yocto-kernel'. Naming things is
> >>>> never easy, so I won't agonize over whether or not an "extras"
> >>>> should be on the end. But the name should be clear that it isn't
> >>>> the main yocto kernel, it's just a few crappy bbappends that make
> >>>> working with it locally easier for some :)
> >>>>
> >>>> So my only counter proposal is: meta-yocto-kernel-extras
> >>>>
> >>>> I'm going to de-crapify the bbappends so they are more useful, and
> >>>> have started on that work, but haven't finished it yet.
> >>> No strong feelings here. I just wiped out meta-linaro from there
> >> (hoping
> >>> Darren won't mind) and that checksums.ini file.
> >> That's fine, I was just thinking about that last week when I saw Linaro
> >> has a meta-linaro. That's where it belongs, so buh-bye. :-)
> >>
> >> --
> >> Darren Hart
> >> Intel Open Source Technology Center
> >> Yocto Project - Technical Lead - Linux Kernel
> 
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel


