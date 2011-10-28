Return-Path: <josh@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C7BEE01404
	for <yocto@yoctoproject.org>; Fri, 28 Oct 2011 10:07:24 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 28 Oct 2011 10:07:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,419,1315206000"; d="scan'208";a="31127598"
Received: from unknown (HELO [10.255.15.141]) ([10.255.15.141])
	by AZSMGA002.ch.intel.com with ESMTP; 28 Oct 2011 10:07:23 -0700
Message-ID: <4EAAE14B.4060503@linux.intel.com>
Date: Fri, 28 Oct 2011 10:07:23 -0700
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0.1) Gecko/20110930 Thunderbird/7.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <alpine.DEB.2.02.1110281201530.17318@localhost6.localdomain6>
In-Reply-To: <alpine.DEB.2.02.1110281201530.17318@localhost6.localdomain6>
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
X-List-Received-Date: Fri, 28 Oct 2011 17:07:24 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 28/10/11 09:07, Robert P. J. Day wrote:
> 
>   i ran into this a few weeks back, and i'm still having this grief.
> I'm running:
> 
>   $ bitbake -c fetchall core-image-sato
> 
> and it's perpetually failing trying to fetch the sat-solver package.
> based on the .bb file, the fetcher should be using git:
> 
> ...
> 
> SRCREV = "0a7378d5f482f477a01cf1690d76871ab8bdcc32"
> PV = "0.0-git${SRCPV}"
> PR = "r12"
> 
> PARALLEL_MAKE=""
> 
> SRC_URI = "git://github.com/openSUSE/sat-solver.git;protocol=git \
>            file://sat-solver_rpm5.patch \
>            file://sat-solver_obsolete.patch \
>            file://cmake.patch \
>            file://db5.patch \
>            file://sat-solver_core.patch \
>            file://fix_gcc-4.6.0_compile_issue.patch \
>           "
> .. etc etc ...
> 
> but the resulting tarball is perpetually broken:
> 
> $ tar tvzf git2_github.com.openSUSE.sat-solver.git.tar.gz
> drwxrwxrwx pokybuild/users   0 2011-09-20 14:45 ./
> drwxrwxrwx pokybuild/users   0 2011-09-20 14:44 ./branches/
> drwxrwxrwx pokybuild/users   0 2011-09-20 14:44 ./info/
> -rw-rw-rw- pokybuild/users 240 2011-09-20 14:44 ./info/exclude
> -rw-rw-rw- pokybuild/users 889 2011-09-20 14:45 ./packed-refs
> drwxrwxrwx pokybuild/users   0 2011-09-20 14:44 ./refs/
> drwxrwxrwx pokybuild/users   0 2011-09-20 14:44 ./refs/heads/
> drwxrwxrwx pokybuild/users   0 2011-09-20 14:44 ./refs/tags/
> drwxrwxrwx pokybuild/users   0 2011-09-20 14:44 ./hooks/
> ... snip ...
> drwxrwxrwx pokybuild/users    0 2011-09-20 14:45 ./objects/pack/
> -r--r--r-- pokybuild/users 177372595 2011-09-20 14:45
> ./objects/pack/pack-988f73d811514444fa8fed89532c75e67d4250f8.pack
> 
> gzip: stdin: unexpected end of file
> tar: Unexpected EOF in archive
> tar: Error is not recoverable: exiting now
> 
> === end ===
> 
>   is no one else seeing this?  i've tried several times and this is,
> at the moment, the only package that's causing trouble.
> 

I cannot reproduce this on my F16 workstation here.

I recall similar issues in the past due to buggy tar on the host system,
for which we added a tar native recipe.

My system is fetching the tarball from the autobuilder mirror, you could
try fetching that and seeing if you're able to extract it outside of
Poky as a diagnosis step?

http://autobuilder.yoctoproject.org/sources/git2_github.com.openSUSE.sat-solver.git.tar.gz


Regards,
Joshua
-- 
Joshua Lock
        Yocto Project "Johannes factotum"
        Intel Open Source Technology Centre

