Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id B35B54C800A9
	for <yocto@yoctoproject.org>; Wed,  3 Aug 2011 09:29:19 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 03 Aug 2011 07:29:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,310,1309762800"; d="scan'208";a="34697118"
Received: from unknown (HELO helios.localnet) ([10.255.18.43])
	by azsmga001.ch.intel.com with ESMTP; 03 Aug 2011 07:29:18 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 3 Aug 2011 15:29:17 +0100
User-Agent: KMail/1.13.6 (Linux/2.6.38-8-generic-pae; KDE/4.6.2; i686; ; )
References: <B27EBC40D200ED48A3F4CC2EBEABAE0B260B53A4B7@orsmsx501.amr.corp.intel.com>
	<39D3DACD-5A1F-4992-BB52-C581EAD4B17C@kernel.crashing.org>
	<1312381376.2344.671.camel@rex>
In-Reply-To: <1312381376.2344.671.camel@rex>
MIME-Version: 1.0
Message-Id: <201108031529.17776.paul.eggleton@linux.intel.com>
Subject: Re: examples / docs on utilizing an external toolchain
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
X-List-Received-Date: Wed, 03 Aug 2011 14:29:20 -0000
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

On Wednesday 03 August 2011 15:22:56 Richard Purdie wrote:
> On Wed, 2011-08-03 at 09:04 -0500, Kumar Gala wrote:
> > Bug submitted:
> > 
> > http://bugzilla.pokylinux.org/show_bug.cgi?id=1323
> > 
> > My question still stands even w/o it being in formal docs.
> 
> FWIW, POKYMODE was replaced by TCMODE as part of the OE-Core changes.
> I'd be interested to know where we've missed the references to it and
> get to get those references fixed.

git grep tells me we still have it in local.conf.sample in meta-yocto, as well 
as in the reference manual.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

