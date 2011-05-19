Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 057B04C8016A
	for <yocto@yoctoproject.org>; Thu, 19 May 2011 12:57:37 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 19 May 2011 10:57:37 -0700
X-ExtLoop1: 1
Received: from eflanaga-mobl.jf.intel.com (HELO [10.7.198.51]) ([10.7.198.51])
	by orsmga002.jf.intel.com with ESMTP; 19 May 2011 10:57:37 -0700
Message-ID: <4DD55A10.3080800@intel.com>
Date: Thu, 19 May 2011 10:57:36 -0700
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Thunderbird/3.1.10
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <68002A430AC0584FB0A5391B435E93A902AAE3@ORSMSX101.amr.corp.intel.com>
	<4DD55643.1090507@intel.com>
In-Reply-To: <4DD55643.1090507@intel.com>
Subject: Re: Results from Yocto 1.0.1 Go/No-Go meeting: No-Go
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
X-List-Received-Date: Thu, 19 May 2011 17:57:38 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit



On 05/19/2011 10:41 AM, Saul Wold wrote:
> Investigation is complete.
>
> This issue is related to how libzypp constructs a header file in bitbake
> using PACKAGE_EXTRA_ARCHS. In 1.0.1 the PACKAGE_EXTRA_ARCHS was
> cumulative list defined in both crownbay*.conf and tune-atom.inc.  In
> 1.1 this was changed to just be set once in the tune-atom.inc.
>
> Because it was a cumulative list, it included x86 twice in 1.0.1 and
> only once and correctly 1.1.
>
> So the fix is in the crownbay BSP, and does not affect the core 1.0.1
> base as we currently have it.  This means no respin or re-test is
> required of the existing bit.
>
> ** Is this sufficient information to change to a "GO", pending the
> beagleboard testing at this point? **
>
> Sau!
>
>

I would like to just spin a nightly-external once the beagleboard patch gets in, to verify the fix. If the fix gets in 
today, I can have it done before our weekly 1.1-preM1 build.

---------------
Elizabeth Flanagan
Yocto Project
Release Engineer

