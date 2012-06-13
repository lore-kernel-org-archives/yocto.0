Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20827E01304
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2012 06:17:22 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 13 Jun 2012 06:17:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="157076718"
Received: from unknown (HELO helios.localnet) ([10.252.120.116])
	by orsmga002.jf.intel.com with ESMTP; 13 Jun 2012 06:17:20 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 13 Jun 2012 14:17:20 +0100
Message-ID: <2242461.IjNys3ksEU@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.3 (Linux/3.2.0-24-generic-pae; KDE/4.8.3; i686; ; )
In-Reply-To: <4FD7285A.3050701@mlbassoc.com>
References: <1B44395A-0DD8-4136-83B3-FD82C9F5DDCA@keylevel.com>
	<334879383.0TimNBShEg@helios> <4FD7285A.3050701@mlbassoc.com>
MIME-Version: 1.0
Subject: Re: RaspberryPi Kernel - sometimes it works, sometimes it doesn't
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
X-List-Received-Date: Wed, 13 Jun 2012 13:17:22 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 12 June 2012 05:30:34 Gary Thomas wrote:
> On 2012-06-12 05:26, Paul Eggleton wrote:
> > FWIW, we will be looking at fixing this exact workflow pretty soon
> > although it may involve an extra explicit step to invalidate the stamps.
> 
> IMO, if you run a specific step like "-c compile -f", this should
> automatically invalidate any stamps and sstate info for the package that
> depend on that step. In this case, it should invalidate "install, package,
> ..." - everything that normally happens after "compile".  This would fix
> the observed weirdness above.

FYI I'm going to track/fix this under bug 2256 since that is pretty much the 
same thing.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

