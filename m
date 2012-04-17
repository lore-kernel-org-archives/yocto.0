Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5911AE0044A
	for <yocto@yoctoproject.org>; Tue, 17 Apr 2012 02:32:06 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 17 Apr 2012 02:32:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="133399032"
Received: from unknown (HELO helios.localnet) ([10.252.120.61])
	by orsmga002.jf.intel.com with ESMTP; 17 Apr 2012 02:32:05 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Darren Hart <dvhart@linux.intel.com>
Date: Tue, 17 Apr 2012 10:32:04 +0100
Message-ID: <2015392.m3Bv0akb5L@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.2 (Linux/3.0.0-17-generic-pae; KDE/4.8.2; i686; ; )
In-Reply-To: <4F8CE449.8060501@linux.intel.com>
References: <4F8CE449.8060501@linux.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Writing do_install_append for target and virtclass-native in a bbappend
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
X-List-Received-Date: Tue, 17 Apr 2012 09:32:06 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 16 April 2012 20:32:25 Darren Hart wrote:
> I'm trying to address a symlink naming issue in the bzip2 package when
> used with Chrome. Chrome is looking for a specific soname, which the
> default install of bzip2 doesn't setup. I can address this easily by
> adding the symlink via a bzip2 bbappend in do_install_append().
> Unfortunately, this fails for the virtclass-native variant. I tried
> adding and empty:
> 
> do_install_append_virtclass-native() {
> 
> }
> 
> function to the bbappend, which still failed. I then added an echo
> statement which appeared in the output, but it still ran non-native
> do_install_append() and failed. Switching the order of the functions
> made the echo output disappear, but the native variant still failed.
> 
> I figure I must be missing something rather fundamental here. Any ideas
> what it might be?

Unfortunately the virtclass overrides can't help you when you want to just 
append something in the target case; however, what we usually do is just do an 
normal append and then check within it if [ "${PN}" = "${BPN}" ] which will be 
false for -native, -nativesdk etc.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

