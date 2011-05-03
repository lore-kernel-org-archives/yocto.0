Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9C0EC4C8011E
	for <yocto@yoctoproject.org>; Tue,  3 May 2011 18:09:01 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 03 May 2011 16:09:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,312,1301900400"; d="scan'208";a="637456512"
Received: from unknown (HELO [10.255.13.13]) ([10.255.13.13])
	by orsmga002.jf.intel.com with ESMTP; 03 May 2011 16:09:00 -0700
Message-ID: <4DC08B0B.9040009@intel.com>
Date: Tue, 03 May 2011 16:08:59 -0700
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Thunderbird/3.1.8
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <201105031700.43005.paul.eggleton@linux.intel.com>
In-Reply-To: <201105031700.43005.paul.eggleton@linux.intel.com>
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
X-List-Received-Date: Tue, 03 May 2011 23:09:02 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit



On 05/03/2011 09:00 AM, Paul Eggleton wrote:
> Hi all,
>
> As part of the 1.1 feature list I suggested a review of the
> INCOMPATIBLE_LICENSE and COMMERCIAL* package exclusion mechanisms we have
> within Poky. Below I've outlined my ideas and would appreciate any
> comments/additions/corrections.
>
> ==== Aims ====
>
>   * Make error messages clear when user/dependencies have asked for something
> to be built that can't be due to restrictions
>
>   * Ensure that exclusion system is reliable
>
> ====  Proposed implementation ====
>
>   1) Ensure all documentation of LICENSE field value syntax is clear, concise
> and up-to-date (wiki and manual)
>
>   2) Go through and audit all recipes LICENSE field values to ensure that they
> all conform to the specifications. This includes making sure that | (package
> may be used under one of a selection of licences) and&  (recipe has mixed
> licences that apply to the code base, so conditions of all must be observed)
> are used correctly.
>
>   3) bitbake/core changes:
>
>   * LICENSE field checking must fully parse the field and understand the
> difference between | and&, and must not e.g. mark Qt as being GPLv3 only.
>
>   * Make the LICENSE validity checking more strict (given recipes have been
> audited and rules are clear after above)
>
>   * Don't exclude any recipes at parse time - simply record all excluded
> recipes and their runtime provides in a blacklist which also includes flags
> indicating the reason for blacklisting
>
>   * Ensure all excluded licences in INCOMPATIBLE_LICENSE are valid (e.g. catch
> GPL3 as apposed to GPLv3) - if not, error out
>
>   * Check when calculating dependencies if anything is scheduled to be built
> that is on the blacklist - if any are, gather all of them up and then stop and
> list them in an error message along with reason and depchain for each one
>
>   * Check when constructing the rootfs if anything in the runtime provides
> blacklist is going to be included - if so, error out
>

Most of the issues surrounding the license field is currently on my plate for M1.D

License tracking	Build a parser to do license tracking more gracefully and make sure all recipes are correct. (takes 
~2 weeks)	1	Accept	Beth	Beth	M1, Sprint D

There is currently no specification on the LICENSE field values and how they should be parsed. I'm going to be starting 
that in the next week or so. We should sync up with each other if this work is going to overlap. Schedule some time for 
this week?

-b


> Cheers,
> Paul
>

-- 
---------------
Elizabeth Flanagan
Yocto Project
Release Engineer

