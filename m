Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11144E008C8
	for <yocto@yoctoproject.org>; Sun,  2 Mar 2014 04:59:30 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 02 Mar 2014 04:59:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,572,1389772800"; d="scan'208";a="465046138"
Received: from pmckerno-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.123.249])
	by orsmga001.jf.intel.com with ESMTP; 02 Mar 2014 04:59:15 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Rick Bianchi <bianchirickkutta@gmail.com>
Date: Sun, 02 Mar 2014 12:59:02 +0000
Message-ID: <11914575.EXu7RhDefO@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.2 (Linux/3.13.4-200.fc20.x86_64; KDE/4.12.2; x86_64; ; )
In-Reply-To: <CAA7h+Ep1+4wTDDfmp=CETPJMLFkP9M_AtRtR8BSvq+Mua3hS9A@mail.gmail.com>
References: <CAA7h+Ep1+4wTDDfmp=CETPJMLFkP9M_AtRtR8BSvq+Mua3hS9A@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: openjade-0.6.14.tar.gz Compile Error
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
X-List-Received-Date: Sun, 02 Mar 2014 12:59:31 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Rick,

On Saturday 01 March 2014 23:13:02 Rick Bianchi wrote:
> I get the following error when I try to compile. I cannot locate the file
> "openjade-0.6.14.tar.gz". Any thoughts?
> 
> 
> 
> 
> WARNING: Failed to fetch URL
> http://downloads.sourceforge.net/openjade/openjade-0.6.14.tar.gz,
> attempting MIRRORS if available
> ERROR: Fetcher failure: Fetch command failed with exit code 8, output:
> http://downloads.sourceforge.net/openjade/openjade-0.6.14.tar.gz:
> 2014-03-01 23:05:10 ERROR 404: Not Found.
> 
> ERROR: Function failed: Fetcher failure for URL: '
> http://downloads.sourceforge.net/openjade/openjade-0.6.14.tar.gz'. Unable
> to fetch URL from any source.
> ERROR: Logfile of failure stored in:
> /home/infinitezero/yocto001/build/tmp/work/x86_64-linux/docbook-utils-native
> /0.6.14-r5/temp/log.do_fetch.9159 ERROR: Task 1501
> (/home/infinitezero/yocto001/poky/meta/recipes-devtools/docbook-utils/
> docbook-utils-native_0.6.14.bb, do_fetch) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 1815 tasks of which 1808 didn't need to be
> rerun and 1 failed.

Something is very wrong here - the docbook-utils-native recipe has no 
reference to an openjade tarball.

What version of the build system are you running?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

