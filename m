Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45AB6E014F5
	for <yocto@yoctoproject.org>; Tue, 14 May 2013 02:45:06 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 14 May 2013 02:45:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,669,1363158000"; d="scan'208";a="337300635"
Received: from unknown (HELO helios.localnet) ([10.255.12.153])
	by fmsmga002.fm.intel.com with ESMTP; 14 May 2013 02:44:45 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Felix01 Fischer <felix01.fischer@iav.de>
Date: Tue, 14 May 2013 10:44:45 +0100
Message-ID: <9312274.8dCqzJR46U@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.2 (Linux/3.8.0-19-generic; KDE/4.10.2; i686; ; )
In-Reply-To: <OFE5D984C5.AA62713E-ONC1257B6B.00342B6A-C1257B6B.00349BEB@retarus.de>
References: <OFF65EFDAC.F177D7D1-ONC1257B6B.002720EC-C1257B6B.00288BEC@retarus.de>
	<5657638.Np3iF1lsb7@helios>
	<OFE5D984C5.AA62713E-ONC1257B6B.00342B6A-C1257B6B.00349BEB@retarus.de>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Confused which layers are needed for meta-intel/meta-crownbay
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
X-List-Received-Date: Tue, 14 May 2013 09:45:06 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 14 May 2013 11:34:38 Felix01 Fischer wrote:
> > It's not the opposite, it's the same. Poky is composed of
> > openembedded-core,
> > bitbake, yocto-docs and a few other bits and pieces; so you can either
> > use poky here or openembedded-core + bitbake.
> 
> First, thank you for your quick reply :-)
> 
> So I guess, it's fine only to add meta-intel and meta-intel/meta-crownbay
> to BBLayers and not openembedded-core and bitbake, too?

No, if you are already using poky, you wouldn't add openembedded-core to 
bblayers.conf and you would never add bitbake there (bitbake is the build 
tool, it's not a layer).
 
> If so, why not remove this confusing reference to open-embedded?

Most layers declare these dependencies because some users prefer to use 
separate openembedded-core and bitbake rather than the combined poky, and it 
is the established convention within the layer documentation to declare the 
separate dependencies. Perhaps we could be clearer in our documentation that 
poky can take place of those however.
 
Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

