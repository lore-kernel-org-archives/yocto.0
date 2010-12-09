Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id AECC94C80FA4
	for <yocto@yoctoproject.org>; Thu,  9 Dec 2010 12:34:24 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 09 Dec 2010 10:34:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,321,1288594800"; d="scan'208";a="582200835"
Received: from eflanlinux.jf.intel.com (HELO [10.7.201.99]) ([10.7.201.99])
	by orsmga002.jf.intel.com with ESMTP; 09 Dec 2010 10:34:24 -0800
Message-ID: <4D012133.5010806@intel.com>
Date: Thu, 09 Dec 2010 10:34:27 -0800
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.15) Gecko/20101026 SUSE/3.0.10 Lightning/1.0b1
	Thunderbird/3.0.10 ThunderBrowse/3.3.3
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <cover.1291786378.git.bruce.ashfield@windriver.com>
	<4D00FC35.8050101@windriver.com>
In-Reply-To: <4D00FC35.8050101@windriver.com>
Subject: Re: [PATCH 0/3] linux-yocto: refactor recipes and update the	kernel
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
X-List-Received-Date: Thu, 09 Dec 2010 18:34:25 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 12/09/2010 07:56 AM, Bruce Ashfield wrote:
> On 10-12-08 09:35 AM, Bruce Ashfield wrote:
>> Richard,
>>
>> Consider these patches for merging. I've been building and working
>> with these for 2 weeks now, and while they aren't perfect, they
>> work and we need more eyes on 2.6.37.
> 
> Does anyone with the right admin privs have time to look
> into this ?
> 
>  >  git clone git://git.pokylinux.org/linux-yocto-2.6.37
> fatal: destination path 'linux-yocto-2.6.37' already exists and is not 
> an empty directory.
> yow-bashfiel-d2 [/tmp]> rm -rf linux-yocto-2.6.37/
> yow-bashfiel-d2 [/tmp]> git clone git://git.pokylinux.org/linux-yocto-2.6.37
> Initialized empty Git repository in /tmp/linux-yocto-2.6.37/.git/
> fatal: The remote end hung up unexpectedly
> yow-bashfiel-d2 [/tmp]> git clone 
> git://git.pokylinux.org/linux-2.6-windriver
> Initialized empty Git repository in /tmp/linux-2.6-windriver/.git/
> ^Cmote: Counting objects: 125026
> 
> ------
> 
> In other words, the 2.6.37 repo is only reachable by a ssh
> based clone :)
> 
> When I get that working, I can fixup the SRCREV issue and
> resubmit this for merge.
> 
> Cheers,
> 
> Bruce
> 

Fixed this. Due to the repo not being public.

-b

