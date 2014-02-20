Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D245E00832
	for <yocto@yoctoproject.org>; Thu, 20 Feb 2014 05:31:36 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 20 Feb 2014 05:31:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,512,1389772800"; d="scan'208";a="484838420"
Received: from pmckerno-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.123.159])
	by fmsmga002.fm.intel.com with ESMTP; 20 Feb 2014 05:30:37 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Yang Chengwei <chengwei.yang@intel.com>
Date: Thu, 20 Feb 2014 13:30:36 +0000
Message-ID: <3288268.NjMvuFWqDF@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.2 (Linux/3.13.3-201.fc20.x86_64; KDE/4.12.2; x86_64; ; )
In-Reply-To: <20140220121723.GN20025@chengwei-workstation.bj.intel.com>
References: <20140220092731.GL20025@chengwei-workstation.bj.intel.com>
	<4890456.akrrDeAUnM@peggleto-mobl5.ger.corp.intel.com>
	<20140220121723.GN20025@chengwei-workstation.bj.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: No 'directfb' distro feature
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
X-List-Received-Date: Thu, 20 Feb 2014 13:31:37 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 20 February 2014 20:17:23 Yang Chengwei wrote:
> On Thu, Feb 20, 2014 at 10:08:25AM +0000, Paul Eggleton wrote:
> > > Is there a plan to fix this?
> > 
> > This is not a bug - the intention is that you customise DISTRO_FEATURES to
> > include the feature if you need it. You may find this section of the
> > manual useful:
> > 
> > http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#creati
> > ng-your-own-distribution
>
> Thank you, I did read developer manual or maybe I missed them? Since
> I didn't find 'directfb' as a DISTRO_FEATURES in ref manual, so I
> think it's a non-exist feature.
> 
> Is there a way to list all available image features, distro features?

We should be listing all of the ones we define in the manual, if we aren't we 
need to fix the manual. There isn't really a way to list them in the code 
(other than searching it with "git grep") because the features are only really 
defined by the checks that are made for them e.g. 
${@base_contains('DISTRO_FEATURES', 'systemd', 'true', 'false', d)}

You are of course free to define your own DISTRO_FEATURES simply by checking 
for them in your recipes (where it makes sense; typically PACKAGECONFIG is 
used for configuration options for individual recipes these days and 
DISTRO_FEATURES is left for features that are controlled system-wide).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

