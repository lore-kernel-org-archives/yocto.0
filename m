Return-Path: <josh@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29BC3E01404
	for <yocto@yoctoproject.org>; Fri, 28 Oct 2011 10:14:16 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 28 Oct 2011 10:14:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,419,1315206000"; d="scan'208";a="83621863"
Received: from unknown (HELO [10.255.15.141]) ([10.255.15.141])
	by fmsmga002.fm.intel.com with ESMTP; 28 Oct 2011 10:14:15 -0700
Message-ID: <4EAAE2E7.6030004@linux.intel.com>
Date: Fri, 28 Oct 2011 10:14:15 -0700
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0.1) Gecko/20110930 Thunderbird/7.0.1
MIME-Version: 1.0
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
References: <alpine.DEB.2.02.1110281201530.17318@localhost6.localdomain6>
	<4EAAE14B.4060503@linux.intel.com>
	<alpine.DEB.2.02.1110281309120.31199@localhost6.localdomain6>
In-Reply-To: <alpine.DEB.2.02.1110281309120.31199@localhost6.localdomain6>
Cc: yocto@yoctoproject.org
Subject: Re: am i the only person having trouble fetching sat-solver?
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
X-List-Received-Date: Fri, 28 Oct 2011 17:14:16 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 28/10/11 10:12, Robert P. J. Day wrote:
> On Fri, 28 Oct 2011, Joshua Lock wrote:
> 
>> I cannot reproduce this on my F16 workstation here.
>>
>> I recall similar issues in the past due to buggy tar on the host system,
>> for which we added a tar native recipe.
>>
>> My system is fetching the tarball from the autobuilder mirror, you could
>> try fetching that and seeing if you're able to extract it outside of
>> Poky as a diagnosis step?
>>
>> http://autobuilder.yoctoproject.org/sources/git2_github.com.openSUSE.sat-solver.git.tar.gz
> 
>   never mind, just cleared *everything* out and tried again and it
> worked.  mystery.

Probably that a stale tarball was still on your system. Can you tell me
how you're proceeding when the fetch has failed?

Do you cleanall before trying again?

Sounds like we have a bug to fix in here somewhere...

>   in any event, there's a minor typo in the sat-solver_git.bb file:
> 
> HOMEPAGE = "http://en.opensue.org/Portal:Libzypp"
>                       ^^^^^^^
> 
> shall i submit a patch to the mailing list?

Please do, that'd be great.

Thanks,
Joshua
-- 
Joshua Lock
        Yocto Project "Johannes factotum"
        Intel Open Source Technology Centre

