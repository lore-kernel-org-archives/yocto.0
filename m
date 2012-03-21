Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB34FE00747
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2012 07:24:23 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 21 Mar 2012 07:24:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="123409791"
Received: from unknown (HELO helios.localnet) ([10.252.123.204])
	by orsmga002.jf.intel.com with ESMTP; 21 Mar 2012 07:24:22 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Wed, 21 Mar 2012 14:24:21 +0000
Message-ID: <5626092.n39Mf9gN6O@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.0 (Linux/3.0.0-16-generic-pae; KDE/4.8.1; i686; ; )
In-Reply-To: <4F69BA1B.8030500@mlbassoc.com>
References: <alpine.DEB.2.02.1203210703200.7447@oneiric>
	<alpine.DEB.2.02.1203210710090.2402@oneiric>
	<4F69BA1B.8030500@mlbassoc.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: setting of BBPATH differs between ref manual and actual layer.conf file
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
X-List-Received-Date: Wed, 21 Mar 2012 14:24:24 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 21 March 2012 05:23:07 Gary Thomas wrote:
> Indeed it does matter, as does the order that these statements are processed
> (which I think is the order the layers are listed in bblayers.conf?) 

Correct - each layer's layer.conf will be read in the order the layers are 
listed in bblayers.conf. Since variables such as BBPATH are usually appended 
or prepended within layer.conf, you will get different final values depending on 
the order they are listed.

> It can matter if two layers contain the same .conf file [at least].  I
> experienced this when I had two layers with abi_version.conf - actually
> three: meta, meta-yocto and meta-MINE - and I got very confused when I
> removed meta-yocto from the mix :-(  

I have to say, IMHO it is best practice to not expect to be able to change 
your layer configuration and keep the same previously-built TMPDIR contents. 
Now that we've enabled OEBasicHash (in Poky) that will protect you against 
most changes that could result from playing around with your layer config by 
forcing a rebuild of the affected recipes, but if you don't have that enabled 
it's entirely possible the contents of your TMPDIR (sysroots, output packages, 
etc.) will no longer match up with the metadata.

> The ordering of BBPATH isn't as important with recipes as they use the layer
> priority mechanism, but if you had two layers with identical priorities and
> recipes, it might matter as well.

BBPATH only influences how class, configuration and include files are found. It 
has no effect on searching for recipes themselves.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

