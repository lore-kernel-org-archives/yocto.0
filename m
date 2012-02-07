Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBB78E0136A
	for <yocto@yoctoproject.org>; Tue,  7 Feb 2012 07:58:56 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 07 Feb 2012 07:49:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="104150625"
Received: from unknown (HELO [10.255.15.2]) ([10.255.15.2])
	by azsmga001.ch.intel.com with ESMTP; 07 Feb 2012 07:49:39 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: autif khan <autif.mlist@gmail.com>
In-Reply-To: <CADzUK1L76iErCF25c3jqSaz_040gzRHcXEb7fKBhr5HMtCYkAg@mail.gmail.com>
References: <CADzUK1L76iErCF25c3jqSaz_040gzRHcXEb7fKBhr5HMtCYkAg@mail.gmail.com>
Date: Tue, 07 Feb 2012 09:49:38 -0600
Message-ID: <1328629778.2670.7.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: yocto@yoctoproject.org
Subject: Re: Unable to fetch file://lib for package emgd in yoctyo 1.2 (aka M2)
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
X-List-Received-Date: Tue, 07 Feb 2012 15:58:57 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-02-07 at 10:12 -0500, autif khan wrote:
> I am bitbaking core image sato for machine corwnbay (with the emgd
> driver) and the emgd-driver-bin recipe seems to fail.
> 
> Here is the error. I searched the archives, but could not find anything.
> 
> Please advise.

It looks like the problem may be forgetting to carry out the steps in
section 'II. Special notes for building the meta-crownbay BSP layer' in
the README.

Note that this is no longer necessary if you use master - the
emgd-driver-bin recipe has been upgraded to do the steps there
automatically, which is now possible because it uses the LICENSE_FLAGS,
but which does mean you need to set the LICENSE_FLAGS_WHITELIST as
mentioned in the new README for crownbay in master.

Tom

> 
> Here is the output for bitbake -b
> /data/autif/yocto/poky/meta-intel/common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.8.bb
> 
> NOTE: Running task 1 of 12 (ID: 4,
> /data/autif/yocto/poky/meta-intel/common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.8.bb,
> do_fetch)
> NOTE: package emgd-driver-bin-1.8-r8: task do_fetch: Started
> ERROR: Function 'Fetcher failure for URL: 'file://lib'. Unable to
> fetch URL file://lib from any source.' failed
> ERROR: Logfile of failure stored in:
> /ssd/autif/M2/crb/tmp/work/core2-poky-linux/emgd-driver-bin-1.8-r8/temp/log.do_fetch.31621
> Log data follows:
> | DEBUG: Trying PREMIRRORS
> | DEBUG: For url ['file', '', 'lib', '', '', {}] comparing ['bzr',
> '.*', '/.*', '', '', {}] to ['http', 'autobuilder.yoctoproject.org',
> '/sources/', '', '', {}]
> | DEBUG: For url ['file', '', 'lib', '', '', {}] comparing ['cvs',
> '.*', '/.*', '', '', {}] to ['http', 'autobuilder.yoctoproject.org',
> '/sources/', '', '', {}]
> | DEBUG: For url ['file', '', 'lib', '', '', {}] comparing ['git',
> '.*', '/.*', '', '', {}] to ['http', 'autobuilder.yoctoproject.org',
> '/sources/', '', '', {}]
> | DEBUG: For url ['file', '', 'lib', '', '', {}] comparing ['hg',
> '.*', '/.*', '', '', {}] to ['http', 'autobuilder.yoctoproject.org',
> '/sources/', '', '', {}]
> | DEBUG: For url ['file', '', 'lib', '', '', {}] comparing ['osc',
> '.*', '/.*', '', '', {}] to ['http', 'autobuilder.yoctoproject.org',
> '/sources/', '', '', {}]
> | DEBUG: For url ['file', '', 'lib', '', '', {}] comparing ['p4',
> '.*', '/.*', '', '', {}] to ['http', 'autobuilder.yoctoproject.org',
> '/sources/', '', '', {}]
> | DEBUG: For url ['file', '', 'lib', '', '', {}] comparing ['svk',
> '.*', '/.*', '', '', {}] to ['http', 'autobuilder.yoctoproject.org',
> '/sources/', '', '', {}]
> | DEBUG: For url ['file', '', 'lib', '', '', {}] comparing ['svn',
> '.*', '/.*', '', '', {}] to ['http', 'autobuilder.yoctoproject.org',
> '/sources/', '', '', {}]
> | DEBUG: Trying Upstream
> | ERROR: Function 'Fetcher failure for URL: 'file://lib'. Unable to
> fetch URL file://lib from any source.' failed
> NOTE: package emgd-driver-bin-1.8-r8: task do_fetch: Failed
> ERROR: Task 4 (/data/autif/yocto/poky/meta-intel/common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.8.bb,
> do_fetch) failed with exit code '1'
> ERROR: '/data/autif/yocto/poky/meta-intel/common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.8.bb'
> failed
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



