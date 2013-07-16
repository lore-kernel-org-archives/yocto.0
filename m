Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36857E0071F
	for <yocto@yoctoproject.org>; Tue, 16 Jul 2013 14:29:00 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by azsmga101.ch.intel.com with ESMTP; 16 Jul 2013 14:28:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,679,1367996400"; d="scan'208";a="366274265"
Received: from unknown (HELO helios.localnet) ([10.252.122.79])
	by fmsmga001.fm.intel.com with ESMTP; 16 Jul 2013 14:28:58 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Brian Hutchinson <b.hutchman@gmail.com>
Date: Tue, 16 Jul 2013 22:28:57 +0100
Message-ID: <59742333.4mCOApeMVS@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.4 (Linux/3.8.0-26-generic; KDE/4.10.4; i686; ; )
In-Reply-To: <CAFZh4h-cZH_CU--Vsjq7=97HDbQXH67SCO5aKYR9cX7h4uNxuQ@mail.gmail.com>
References: <CAFZh4h-cZH_CU--Vsjq7=97HDbQXH67SCO5aKYR9cX7h4uNxuQ@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Yocto + meta-networking
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
X-List-Received-Date: Tue, 16 Jul 2013 21:29:03 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Brian,

On Tuesday 16 July 2013 17:06:46 Brian Hutchinson wrote:
> What is the "right" way of adding the meta-networking to Yocto?  I'm
> obviously not doing something right.
> 
> At the poky directory level, I cloned meta-openembedded.  I then tried to
> go to my build's local.conf and adding meta-networking and meta-oe layers
> and I'm getting a dependency message when I try to bitbake net-snmp that
> says:
> 
> ERROR: Layer dependency core of layer networking not found
> 
> This makes me think that meta-openembedded is wanting openembedded-core but
> I've never tried to use that with Yocto before so I thought I better ask
> before I totally mess up my build environment.
> 
> I have a rootfilesystem build based on Denzil and I need net-snmp and the
> meta-networking Denzil branch is pretty much empty so I cloned master in
> order to get net-snmp so I don't know if mixing branches could be my
> problem (don't know how much that matters but I usually try to use the same
> release branch of various components).

Mixing branches is the issue here. meta-networking added a LAYERDEPENDS on 
"core" which the denzil poky/OE-Core doesn't provide. This is just an 
incidental error though, if it hadn't failed on this you'd have hit other 
problems.

meta-networking wasn't even around in the denzil days. If you need net-snmp 
from there on top of denzil the only way is to backport the recipe and any 
missing dependencies and add it to an additional layer (assuming you don't 
already have a layer for customisations). In practice backporting should be 
fairly trivial; I'd suggest copying the recipe over and seeing how far you 
get.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

