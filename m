Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38D78E00510;
	Mon, 25 Nov 2013 07:01:33 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 25 Nov 2013 07:01:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,768,1378882800"; d="scan'208";a="439390690"
Received: from akagikob-mobl.ger.corp.intel.com (HELO helios.localnet)
	([10.252.121.166])
	by fmsmga002.fm.intel.com with ESMTP; 25 Nov 2013 07:01:30 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Michael Halstead <michael@yoctoproject.org>
Date: Mon, 25 Nov 2013 15:01:29 +0000
Message-ID: <6760837.T0hJxS54r8@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <528FEC3E.8060304@yoctoproject.org>
References: <528FEC3E.8060304@yoctoproject.org>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: RFC Autobuilder Naming
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
X-List-Received-Date: Mon, 25 Nov 2013 15:01:36 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Michael,

On Friday 22 November 2013 15:43:58 Michael Halstead wrote:
> Currently all builders are simply named ab00-ab13 based on when we
> acquired them. The name doesn't change except for ab01 which has been
> reused on new hardware. As we increase the number of builders and make
> the build process more flexible this becomes inconvenient. I'd like to
> switch to embedding useful information in the name.
> 
> Going forward as I refresh builders I'd like to name them with their
> distro and location.
> 
> For example at OSL:
> 
> fedora19.osl.yoctoproject.org
> fedora20.osl.yoctoproject.org
> opensuse131.osl.yoctoproject.org
> ubuntu1310.osl.yoctoproject.org
> etc.
> 
> And if we added a build clusters in the EasyStreet datacenter in Portland:
> 
> centos64.pdx.yoctoproject.org
> debian7.pdx.yoctoproject.org
> etc.
> 
> This allows for additional build clusters to be added and makes the
> distro clear to anyone viewing the logs. The current available build
> slaves can be found on the relevant cluster's buildbot interface
> (http://autobuilder.yoctoproject.org/main/buildslaves) so as names
> change there is an easy place to look them up.
> 
> Comments?

I guess this works fine until you want to have two builders with the same 
distro. Maybe we plan not to do that anymore...?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

