Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 685BDE01409
	for <yocto@yoctoproject.org>; Fri, 21 Jun 2013 09:53:46 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 21 Jun 2013 09:53:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,914,1363158000"; d="scan'208";a="353623947"
Received: from unknown (HELO helios.localnet) ([10.252.122.78])
	by fmsmga001.fm.intel.com with ESMTP; 21 Jun 2013 09:54:12 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Chris Tapp <opensource@keylevel.com>
Date: Fri, 21 Jun 2013 17:53:31 +0100
Message-ID: <2225944.Df6aZdSxGh@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.3 (Linux/3.8.0-25-generic; KDE/4.10.3; i686; ; )
In-Reply-To: <AE80DF1D-A094-4F9F-96BE-8A782F1DB5FE@keylevel.com>
References: <AE80DF1D-A094-4F9F-96BE-8A782F1DB5FE@keylevel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Openembedded-core
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
X-List-Received-Date: Fri, 21 Jun 2013 16:53:49 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 21 June 2013 17:47:13 Chris Tapp wrote:
> Simple question - Is openembedded-core included in one of the Yocto meta
> layers, or do I need to download it from the OE git repository?

It comes as part of the poky repository if you're using that. The alternative 
is to use bitbake and OE-Core separately.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

