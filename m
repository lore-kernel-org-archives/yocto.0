Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33E08E0044C
	for <yocto@yoctoproject.org>; Tue,  6 Mar 2012 08:44:57 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 06 Mar 2012 08:44:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="134351822"
Received: from unknown (HELO [10.255.15.96]) ([10.255.15.96])
	by fmsmga002.fm.intel.com with ESMTP; 06 Mar 2012 08:44:56 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: Koen Kooi <koen@beagleboard.org>
In-Reply-To: <65EC9795-B3B6-4823-BB94-AEBD23A82B93@beagleboard.org>
References: <CADzUK1K0WwAZ=j0u_osRnmtwf0jBosh-jkaGQnUofbgHkecp+A@mail.gmail.com>
	<CADzUK1LCU0zyddgUBbdb-Sg6iTKJoSZ390SQ3XHuRtiQ6z1UHA@mail.gmail.com>
	<CADzUK1JCDWysYpL=7JZARZ=Lmgh+4izk5k-3nwX-nnODTHmQqA@mail.gmail.com>
	<1331010578.2107.2.camel@elnicho>
	<A25F549E4D43CD42B4C02DF47A1913230FCD71B1@SHSMSX102.ccr.corp.intel.com>
	<4F55A7D7.8020100@windriver.com> <1331016505.2107.37.camel@elnicho>
	<65EC9795-B3B6-4823-BB94-AEBD23A82B93@beagleboard.org>
Date: Tue, 06 Mar 2012 10:44:55 -0600
Message-ID: <1331052295.2107.40.camel@elnicho>
Mime-Version: 1.0
X-Mailer: Evolution 2.30.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: iptables not building on master
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
X-List-Received-Date: Tue, 06 Mar 2012 16:44:57 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-03-06 at 13:14 +0100, Koen Kooi wrote:
> Op 6 mrt. 2012, om 07:48 heeft Tom Zanussi het volgende geschreven:
> 
> > In the meantime, if you remove the line:
> > 
> > PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
> 
> Why is a BSP layer poking at DISTRO settings?!?!?![1]

Yes, you're right - I've been carrying a patch to remove this as part of
my current BSP work, but hadn't posted it yet.  Just now did though...

Tom  

> 
> koen
> 
> [1] Yes RP, that really needed that many exclamation marks :)



