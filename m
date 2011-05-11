Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8D5434C800BA
	for <yocto@yoctoproject.org>; Wed, 11 May 2011 04:06:43 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 11 May 2011 02:06:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,351,1301900400"; 
   d="scan'208";a="206342"
Received: from unknown (HELO helios.localnet) ([10.255.16.118])
	by fmsmga002.fm.intel.com with ESMTP; 11 May 2011 02:06:29 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Organization: Intel Corporation (UK)
To: yocto@yoctoproject.org
Date: Wed, 11 May 2011 10:06:28 +0100
User-Agent: KMail/1.13.6 (Linux/2.6.38-8-generic-pae; KDE/4.6.2; i686; ; )
References: <201105031700.43005.paul.eggleton@linux.intel.com>
	<1305069620.2317.22.camel@scimitar>
In-Reply-To: <1305069620.2317.22.camel@scimitar>
MIME-Version: 1.0
Message-Id: <201105111006.28522.paul.eggleton@linux.intel.com>
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
X-List-Received-Date: Wed, 11 May 2011 09:06:48 -0000
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

On Wednesday 11 May 2011 00:20:14 Joshua Lock wrote:
> >  * Check when calculating dependencies if anything is scheduled to be
> >  built  that is on the blacklist - if any are, gather all of them up and
> >  then  stop and list them in an error message along with reason and
> >  depchain for each one
> 
> This sounds like overlap with a task Scott Garman is set to work on
> (Error handling in bitbake), let's make sure you guys are collaborating
> here.
> http://bugzilla.yoctoproject.org/show_bug.cgi?id=542

I hadn't considered this - you may well be right. It depends on how Scott 
proposes to attack that particular problem, I will check with him.
 
> >  * Replace COMMERCIAL* with some more generic exclusion mechanism that
> >  allows the reason to be defined as part of the exclusion list?
> 
> Sounds reasonable, care to elaborate? Something like:
> 
> COMMERCIAL_LICENSE = "naughty packages from copyright hell"
> PERL_PACKAGES = "packages I don't want to include because I dislike
> Perl"
> EXCLUDED_PATTERNS = "PERL_PACKAGES COMMERCIAL_LICENSE"

More like:

EXCLUDED_PACKAGES += "broken1,broken2:These packages are broken by design and 
not supported;"
EXCLUDED_PACKAGES += "licenserequired,clickthru,special1:These packages 
require a special license agreement;"

The example syntax is horrible but you get the idea.

> >  * As a helper for non-en_US users, fail on parse if user defines any of
> >  the *LICENSE* variables as *LICENCE*? (we definitely don't want the build
> >  to continue and just ignore this as the user might not realise what has
> > happened)
> 
> Darn tootin!

I think you meant to say "hear hear!" or maybe even "good show!"... ;)
 
Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

