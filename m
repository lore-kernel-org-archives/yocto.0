Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A64FE0030B
	for <yocto@yoctoproject.org>; Fri, 23 Dec 2011 05:43:18 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 23 Dec 2011 05:43:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="89754167"
Received: from unknown (HELO helios.localnet) ([10.252.122.71])
	by orsmga001.jf.intel.com with ESMTP; 23 Dec 2011 05:43:16 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 23 Dec 2011 13:43:13 +0000
Message-ID: <7982955.p8V9rpaWRE@helios>
Organization: Intel Corporation
User-Agent: KMail/4.7.4 (Linux/3.0.0-14-generic-pae; KDE/4.7.4; i686; ; )
In-Reply-To: <7E61D6CF-5CC3-4DDA-B35B-7EC235014D3A@dominion.thruhere.net>
References: <4EF34776.9030002@gmail.com>
	<B65605DA-ADD9-4EBB-956A-6C785B5F204E@gmail.com>
	<7E61D6CF-5CC3-4DDA-B35B-7EC235014D3A@dominion.thruhere.net>
MIME-Version: 1.0
Subject: Re: meta-ti?????
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
X-List-Received-Date: Fri, 23 Dec 2011 13:43:18 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 23 December 2011 14:23:53 Koen Kooi wrote:
> > Being a Yocto newbie, it's hard enough to understand all the branches on
> > the yocto site. Relating the meta-angstrom is confusing.
>
> No, yocto (or is it poky? noone knows) 

Officially, Poky is the build system, Yocto is the umbrella project which also 
includes a number of other sub-projects (swabber, pseudo, etc.). There are 
some that use Yocto to refer to the build system; I'm not sure that does a 
great deal of harm nor is it really relevant to this discussion.

> has confusing messaging, It's best to
> find the official BSP for the board you use and follow the instructions in
> there and ignore anything else.

Personally I think this is a bit disappointing. The Yocto Project and the move 
to OE-Core is supposed to provide us a way to mix and match hardware support 
with available software packages. The apparent tying of meta-texasinstruments 
to meta-angstrom goes against that philosophy, IMHO. I haven't yet heard a 
compelling technical argument for why that should be necessary.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

