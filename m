Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D643E011B7
	for <yocto@yoctoproject.org>; Thu, 18 Aug 2011 06:02:39 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 18 Aug 2011 06:02:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,245,1312182000"; 
   d="scan'208";a="8515679"
Received: from unknown (HELO [10.255.14.5]) ([10.255.14.5])
	by AZSMGA002.ch.intel.com with ESMTP; 18 Aug 2011 06:02:35 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
In-Reply-To: <4E4C90F2.7040904@windriver.com>
References: <4E4C85B8.3000301@linux.intel.com> <4E4C90F2.7040904@windriver.com>
Date: Thu, 18 Aug 2011 08:02:47 -0500
Message-ID: <1313672567.2394.35.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: Yocto Project <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>
Subject: Re: linux-yocto 3.0.1 upgrade broke PREFERRED_VERSION setting in BSPs
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
X-List-Received-Date: Thu, 18 Aug 2011 13:02:39 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-08-17 at 21:11 -0700, Bruce Ashfield wrote:
> On 11-08-17 11:23 PM, Darren Hart wrote:
> > We have just rolled out PREFERRED_VERSION="3.0+git%", and these now fail
> > with messages like:
> >
> > NOTE: preferred version 3.0+git% of linux-yocto not available (for item
> > virtual/kernel)
> >
> > I could patch everything really quick to use 3.0.1+git%... but 3.0.2 was
> > just released and I'd have to do it again tomorrow. For 2.6.37, the
> > LINUX_VERSION remained the same across point releases. I recommend we do
> > the same for 3.0. I really don't want to have to go through and update
> > all the PREFERRED_VERSIONs in addition to all the SRCREVs everytime a
> > point release comes out.
> 
> I made this change due to some other explicit requests about the
> kernel version not being obvious. I don't really see this as a big
> deal, I'm already updating SRCREVs, we are already updating the
> SRCREVs in the meta-* layers .. so I fail to see how this is much
> more load.
> 

Maybe the extra load isn't a big deal, but at least the SRCREVs can
change most of the time without breaking everything like this does.

> I'd argue that 2.6.37 was a mistake, and you shouldn't even need
> to set the preferred version anymore once the latest kernel works
> for your machines. It will always be selected and you shouldn't
> need to force it. We only needed this during the transition phase,
> and I'm about to change the default in meta-yocto .. so you definitely
> won't need it.
> 

It would be great not to have to set the preferred version at all - how
do I get that to work?

Tom

> Cheers,
> 
> Bruce
> 
> >
> 



