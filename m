Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E63BE006EE
	for <yocto@yoctoproject.org>; Fri,  7 Feb 2014 03:02:16 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 07 Feb 2014 03:02:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,799,1384329600"; d="scan'208";a="477492004"
Received: from ryanpete-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.123.135])
	by fmsmga002.fm.intel.com with ESMTP; 07 Feb 2014 03:01:45 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Adrian Dudau <Adrian.Dudau@enea.com>
Date: Fri, 07 Feb 2014 10:28:20 +0000
Message-ID: <1688934.FUjqbafrUe@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.2 (Linux/3.12.9-301.fc20.x86_64; KDE/4.12.2; x86_64; ; )
In-Reply-To: <1391766483.4155.33.camel@sestows129.enea.se>
References: <1391766483.4155.33.camel@sestows129.enea.se>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: release branches and package upgrades
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
X-List-Received-Date: Fri, 07 Feb 2014 11:02:17 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Adrian,

On Friday 07 February 2014 09:47:56 Adrian Dudau wrote:
> I would like to understand Yocto Project's policy on the
> release/maintenance branches (dora,dylan etc). My understanding was that
> these were considered stable branches and only bugfixes and general
> fixes that would not affect functionality were merged onto them.
> 
> However, lately, we identified patches that upgrade package versions and
> introduced some problems in our distro. We had a hard time identifying
> the source of these problems, since we expected the maintenance branch
> not to change in this way.
> 
> Here are a couple of these patches as example in poky/dora branch:
> 50574e41b882c3f2633f69486593eaea54d8e554
> 63335c87c1904287cdd5fd28d0ad6a73e985f2a4

Is that second revision correct? I don't see an upgrade of powertop to 2.5 on 
the dora branch.
 
> My question is: are patches like these normal and should we expect to
> get version upgrades for packages on the maintenance branches as well?

No, it is unusual to do recipe version upgrades in stable branches. For 
reference, here is a page I wrote on the wiki which describes how the stable 
branches should be managed:

https://wiki.yoctoproject.org/wiki/Stable_branch_maintenance

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

