Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1243FE0080D; Thu,  7 Aug 2014 06:05:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B78BFE00801
	for <yocto@yoctoproject.org>; Thu,  7 Aug 2014 06:05:05 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 07 Aug 2014 06:05:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,818,1400050800"; d="scan'208";a="555138453"
Received: from bidesilv-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.122.223])
	by orsmga001.jf.intel.com with ESMTP; 07 Aug 2014 06:05:02 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Date: Thu, 07 Aug 2014 14:05:01 +0100
Message-ID: <2374073.Q4LByM6bcI@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.13.3 (Linux/3.15.7-200.fc20.x86_64; KDE/4.13.3; x86_64; ; )
In-Reply-To: <53E3512E.5090008@dynamicdevices.co.uk>
References: <1571948.CrPtZqAbFm@peggleto-mobl5.ger.corp.intel.com>
	<53E3512E.5090008@dynamicdevices.co.uk>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, openembedded-core@lists.openembedded.org
Subject: Re: RFC: Improving the developer workflow
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
X-List-Received-Date: Thu, 07 Aug 2014 13:05:11 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Alex,

On Thursday 07 August 2014 11:13:02 Alex J Lennon wrote:
> On 07/08/2014 10:10, Paul Eggleton wrote:
> fwiw Upgrade solutions are something that is still a read need imho,  as
> I think we discussed at one of the FOSDEMs.
>
> (The other real need being an on-board test framework, again imho, and
> which I believe is ongoing)

Indeed; I think we've made some pretty good progress here in that the Yocto 
Project QA team is now using the automated runtime testing to do QA tests on 
real hardware. Reporting and monitoring of ptest results is also being looked 
at as well as integration with LAVA.
 
> Historically I, and I suspect others, have done full image updates of
> the storage medium,  onboard flash or whatever but these images are
> getting so big now that I am trying to  move away from that and into
> using package feeds for updates to embedded targets.

Personally with how fragile package management can end up being, I'm convinced 
that full-image updates are the way to go for a lot of cases, but ideally with 
some intelligence so that you only ship the changes (at a filesystem level 
rather than a package or file level). This ensures that an upgraded image on 
one device ends up exactly identical to any other device including a newly 
deployed one. Of course it does assume that you have a read-only rootfs and 
keep your configuration data / logs / other writeable data on a separate 
partition or storage medium. However, beyond improvements to support for 
having a read-only rootfs we haven't really achieved anything in terms of out-
of-the-box support for this, mainly due to lack of resources.

However, whilst I haven't had a chance to look at it closely, there has been 
some work on this within the community:

http://sbabic.github.io/swupdate/swupdate.html
https://github.com/sbabic/swupdate
https://github.com/sbabic/meta-swupdate/
 
> My initial experience has been that
> 
> - as you mention it would be really helpful to have something "more"
> around management  of package feed releases / targets.
> 
> - some automation around deployment of package feeds to production
> servers would help,   or at least some documentation on best practice.

So the scope of my proposal is a little bit narrower, i.e. for the SDK; and 
I'm suggesting that we mostly bypass the packaging system since it doesn't 
really add much benefit and sometimes gets in the way when you're an 
application developer in the middle of development and the level of churn is 
high (as opposed to making incremental changes after the product's release).

> The other big issue I am seeing, which is mostly my own fault thus far,
> is that I have sometimes  taken  the easy option of modifying the root
> filesystem image in various ways within the image recipe (for example
> changing  a Webmin configuration perhaps)
> 
> However when I then come to upgrade a package in-situ, such as Webmin,
> the changes  are  then overwritten.
> 
> I think this is probably also an issue when upgrading packages that have
> had local modifications made, and I wonder whether there's a solution to
> this that I'm not aware of?

We do have CONFFILES to point to configuration files that may be modified (and 
thus should not just be overwritten on upgrade). There's not much logic in the 
actual build system to deal with this, we just pass it to the package manager; 
but it does work, and recipes that deploy configuration files (and bbappends, if 
the configuration file is being added rather than changed from there) should set 
CONFFILES so that the right thing happens on upgrade if you are using a 
package manager on the target.

A related issue is that for anything other than temporary changes it's often 
not clear which recipe you need to change/append in order to provide your own 
version of a particular config file. FYI I entered the following enhancement bug 
some months ago to add a tool to help with that:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=6447

> I am aware of course that mainstream package management tools allow
> diffing, upgrading,  ignoring and such but I am unsure as to how that is
> supported under Yocto at present?

There isn't really any support for this at the moment, no; I think we'd want 
to try to do this kind of thing at the build system end though to avoid tying 
ourselves to one particular package manager.
 
Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

