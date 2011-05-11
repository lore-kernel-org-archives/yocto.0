Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 461BC4C81001
	for <yocto@yoctoproject.org>; Wed, 11 May 2011 12:57:30 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 11 May 2011 10:57:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,353,1301900400"; d="scan'208";a="641345501"
Received: from unknown (HELO [10.255.12.49]) ([10.255.12.49])
	by orsmga002.jf.intel.com with ESMTP; 11 May 2011 10:57:27 -0700
From: Joshua Lock <josh@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 11 May 2011 10:57:21 -0700
In-Reply-To: <201105111006.28522.paul.eggleton@linux.intel.com>
References: <201105031700.43005.paul.eggleton@linux.intel.com>
	<1305069620.2317.22.camel@scimitar>
	<201105111006.28522.paul.eggleton@linux.intel.com>
X-Mailer: Evolution 3.0.1 (3.0.1-1.fc15) 
Message-ID: <1305136647.1988.4.camel@scimitar>
Mime-Version: 1.0
Subject: Re: RFC: Package exclusion
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
X-List-Received-Date: Wed, 11 May 2011 17:57:30 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-05-11 at 10:06 +0100, Paul Eggleton wrote:
> On Wednesday 11 May 2011 00:20:14 Joshua Lock wrote:
> > >  * Check when calculating dependencies if anything is scheduled to be
> > >  built  that is on the blacklist - if any are, gather all of them up and
> > >  then  stop and list them in an error message along with reason and
> > >  depchain for each one
> > 
> > This sounds like overlap with a task Scott Garman is set to work on
> > (Error handling in bitbake), let's make sure you guys are collaborating
> > here.
> > http://bugzilla.yoctoproject.org/show_bug.cgi?id=542
> 
> I hadn't considered this - you may well be right. It depends on how Scott 
> proposes to attack that particular problem, I will check with him.

Cool. If they don't overlap I'd be surprised.

>  
> > >  * Replace COMMERCIAL* with some more generic exclusion mechanism that
> > >  allows the reason to be defined as part of the exclusion list?
> > 
> > Sounds reasonable, care to elaborate? Something like:
> > 
> > COMMERCIAL_LICENSE = "naughty packages from copyright hell"
> > PERL_PACKAGES = "packages I don't want to include because I dislike
> > Perl"
> > EXCLUDED_PATTERNS = "PERL_PACKAGES COMMERCIAL_LICENSE"
> 
> More like:
> 
> EXCLUDED_PACKAGES += "broken1,broken2:These packages are broken by design and 
> not supported;"
> EXCLUDED_PACKAGES += "licenserequired,clickthru,special1:These packages 
> require a special license agreement;"
> 
> The example syntax is horrible but you get the idea.

The idea is sound, yeah.

> 
> > >  * As a helper for non-en_US users, fail on parse if user defines any of
> > >  the *LICENSE* variables as *LICENCE*? (we definitely don't want the build
> > >  to continue and just ignore this as the user might not realise what has
> > > happened)
> > 
> > Darn tootin!
> 
> I think you meant to say "hear hear!" or maybe even "good show!"... ;)
>  

Bravo!

Joshua
-- 
Joshua Lock
        Yocto Build System Monkey
        Intel Open Source Technology Centre


