Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 514A0E0044A
	for <yocto@yoctoproject.org>; Tue,  3 Apr 2012 11:04:01 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 03 Apr 2012 11:04:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="137187844"
Received: from unknown (HELO envy.home) ([10.255.12.143])
	by fmsmga001.fm.intel.com with ESMTP; 03 Apr 2012 11:04:00 -0700
Message-ID: <4F7B3B68.3040101@linux.intel.com>
Date: Tue, 03 Apr 2012 11:03:20 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.1) Gecko/20120209 Thunderbird/10.0.1
MIME-Version: 1.0
To: Brian Hutchinson <b.hutchman@gmail.com>
References: <95AC7E09-D28F-46CE-A49B-30719BB50B1B@dominion.thruhere.net>
	<4F765C0D.4000902@linux.intel.com>
	<8986DA27-376D-447E-A9CF-5BEF1B309961@dominion.thruhere.net>
	<4F766B84.9080505@linux.intel.com>
	<20120402171356.GE4829@bill-the-cat>
	<4F7B1EBD.1030500@linux.intel.com>
	<20120403162541.GB3943@jama.jama.net>
	<4F7B261B.1090101@linux.intel.com>
	<20120403164432.GC3943@jama.jama.net>
	<4F7B2E9C.7040600@linux.intel.com>
	<20120403171540.GF4816@bill-the-cat>
	<CABcZANnBGC_uhsO0aE-U3s8QjYGP+1JDupdqoTPW=XpNcOEcFA@mail.gmail.com>
	<CAFZh4h947zMXK54SdSiHKFdo3eNXuCQtm3Wjk2g+t4zTBLbesw@mail.gmail.com>
In-Reply-To: <CAFZh4h947zMXK54SdSiHKFdo3eNXuCQtm3Wjk2g+t4zTBLbesw@mail.gmail.com>
X-Enigmail-Version: 1.4
Cc: yocto@yoctoproject.org, Chris Larson <clarson@kergoth.com>
Subject: Re: Moving angstrom under the yocto banner
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
X-List-Received-Date: Tue, 03 Apr 2012 18:04:01 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 04/03/2012 10:34 AM, Brian Hutchinson wrote:
> On Tue, Apr 3, 2012 at 1:26 PM, Chris Larson <clarson@kergoth.com> wrote:
>> I really don't see what the issue is here. If you want a stable
>> branch, we can look into creating such a thing upstream, though I'm
>> personally of the opinion that master should remain release-quality,
>> and make better use of feature branches, potentially a
>> next/integration branch for forthcoming features, than trying to
>> cherry pick onto a "stable" branch. There's nothing poky's structure
>> provides that can't also be provided via branching policy in the
>> individual repositories.
> 
> I like what Chris said.  I vote for this.  It is standard SCM
> practice.  All development goes on in a branch.  Integration on
> another branch.  When good enough, it is merged to master and tagged
> as a milestone release.

I'd really like to see this as well.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

