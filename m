Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93CDDE014FA
	for <yocto@yoctoproject.org>; Tue, 14 May 2013 02:22:56 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 14 May 2013 02:22:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,669,1363158000"; d="scan'208";a="336887707"
Received: from unknown (HELO helios.localnet) ([10.255.12.153])
	by orsmga002.jf.intel.com with ESMTP; 14 May 2013 02:22:55 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Felix01 Fischer <felix01.fischer@iav.de>,
	Nitin A Kamble <nitin.a.kamble@intel.com>
Date: Tue, 14 May 2013 10:22:53 +0100
Message-ID: <5657638.Np3iF1lsb7@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.2 (Linux/3.8.0-19-generic; KDE/4.10.2; i686; ; )
In-Reply-To: <OFF65EFDAC.F177D7D1-ONC1257B6B.002720EC-C1257B6B.00288BEC@retarus.de>
References: <OFF65EFDAC.F177D7D1-ONC1257B6B.002720EC-C1257B6B.00288BEC@retarus.de>
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
X-List-Received-Date: Tue, 14 May 2013 09:22:56 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Felix,

On Tuesday 14 May 2013 09:22:53 Felix01 Fischer wrote:
> I'm currently trying to build a booting core-image-sato image with MACHINE
> ?="crownbay". I'm using  poky 9.0.0 and meta-intel (dylan branch).
> 
> I've discovered something which confuses me:
> 
> First meta-intel/meta-crownbay/README states that it is to be used with
> the openembedded.org bitbake and openembedded-core layer (both on branch
> master). Isn't this opposite in using yocto (as both provide bitbake) ?

It's not the opposite, it's the same. Poky is composed of openembedded-core, 
bitbake, yocto-docs and a few other bits and pieces; so you can either use 
poky here or openembedded-core + bitbake.

> Second meta-intel/meta-crownbay/README.sources points to yocto-1.3 (Line
> 10).

This is an oversight. Nitin, can you please correct this or avoid having the 
fixed version URL in the document at all?

> Is it possible that these layers aren't ready for yocto 1.4 despite being
> packaged as "1.4-final", "1.4" and "danny-9.0.0"?

No, I think this is just a case where the URL hasn't been updated in the 
README.sources file.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

