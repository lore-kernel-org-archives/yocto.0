Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F032DE013A2
	for <yocto@yoctoproject.org>; Thu, 25 Jul 2013 06:44:58 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 25 Jul 2013 06:44:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,743,1367996400"; d="scan'208";a="273131303"
Received: from unknown (HELO helios.localnet) ([10.252.122.176])
	by AZSMGA002.ch.intel.com with ESMTP; 25 Jul 2013 06:44:38 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: mulhern <mulhern@gmail.com>
Date: Thu, 25 Jul 2013 14:44:37 +0100
Message-ID: <5546180.0Max780gjA@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-26-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <CADM5y7v6xs5iaUtnt8hWypAgRz981Sx90nSLHb9NM5F6BoNidw@mail.gmail.com>
References: <CADM5y7v6DT9Ls=UZNRc_uYPdrgh2AtrY_HMRPbEss=CYxOWxoQ@mail.gmail.com>
	<CALmOhg=b9JaHpH9+bRsebAoE+pq9K0QYziwT7Ji7uYjsCfOtCQ@mail.gmail.com>
	<CADM5y7v6xs5iaUtnt8hWypAgRz981Sx90nSLHb9NM5F6BoNidw@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Discovering available Perl modules OR writing recipes for your own
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
X-List-Received-Date: Thu, 25 Jul 2013 13:44:59 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi mulhern,

On Thursday 25 July 2013 09:25:04 mulhern wrote:
> Thanks, but that specific module isn't the whole total of my problem. It's
> nice of you to point out for me the location of that one but what about the
> more like 15 or so others I didn't list and where they might or might not
> be hiding? Should that particular module really be in the meta-security
> layer just because it is meta-security that needed it first? 

I think the problem is we still don't have a good home for perl recipes not 
needed by anything in OE-Core but that are still useful. I am aware that a 
community member is working on a large number of perl recipes for CPAN modules 
(Stygia on IRC) but I'm not sure what the current status of that work is.

> My real problem is not that particular module it's that
> 1) I don't know a good way to find out if all those modules that I need
> haven't already been packaged up by someone somewhere.

The best way we have for finding these is the recipe search function in the OE 
layer index:

http://layers.openembedded.org/layerindex/recipes/

> 2) I'm not certain that writing a separate recipe for each and every one of
> those little modules is the correct way to go about getting them all if
> they aren't already available somewhere.

This is the convention we have established. Hopefully with what's in OE-Core, 
meta-security and what's coming in the new layer I referred to above we'll on 
our way to a sizable portion of the packages available. It might be worth 
pinging Stygia to find out how work is going on that layer.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

