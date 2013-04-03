Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE3A3E014D0
	for <yocto@yoctoproject.org>; Wed,  3 Apr 2013 00:47:13 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 03 Apr 2013 00:47:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,399,1363158000"; d="scan'208";a="316132060"
Received: from unknown (HELO helios.localnet) ([10.255.13.234])
	by fmsmga002.fm.intel.com with ESMTP; 03 Apr 2013 00:47:12 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Michael Fainstein <Michael.Fainstein@ecitele.com>
Date: Wed, 03 Apr 2013 08:47:10 +0100
Message-ID: <2281089.7AcPuKSElP@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.1 (Linux/3.5.0-26-generic; KDE/4.10.1; i686; ; )
In-Reply-To: <62673661A504604B856269DAADA8BC281DE2C5CC@ILPTWPVEXMB02.ecitele.com>
References: <62673661A504604B856269DAADA8BC281DE2C5CC@ILPTWPVEXMB02.ecitele.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: how to convert source rpm spec to bitbake recipe?
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
X-List-Received-Date: Wed, 03 Apr 2013 07:47:13 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Michael,

On Sunday 31 March 2013 08:45:23 Michael Fainstein wrote:
> Is there a tool or guide for conversion of source rpm spec file to bitbake
> recipe?

There is scripts/create-recipe - this is aimed at just downloading source and 
using a spec file contained within as a basis for a new recipe (among other 
methods it uses to determine recipe contents), however it could be adapted to 
read a specified spec file I would think.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

