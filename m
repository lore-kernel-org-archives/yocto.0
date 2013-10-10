Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41C43E015E2
	for <yocto@yoctoproject.org>; Thu, 10 Oct 2013 03:01:56 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 10 Oct 2013 02:58:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,1070,1371106800"; d="scan'208";a="417111741"
Received: from unknown (HELO helios.localnet) ([10.252.120.176])
	by orsmga002.jf.intel.com with ESMTP; 10 Oct 2013 03:01:54 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: JC <jc@vtkloud.com>
Date: Thu, 10 Oct 2013 11:01:53 +0100
Message-ID: <2874521.TO6dkNyroi@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <524B4663.1020106@vtkloud.com>
References: <524B4663.1020106@vtkloud.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: ${libdir} usage
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
X-List-Received-Date: Thu, 10 Oct 2013 10:01:59 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Jay,

On Wednesday 02 October 2013 00:02:11 JC wrote:
> I'm currently putting together a bunch of recipes to install some cpan
> modules. I had some complaints by bitbake about files being installed
> but not shipped.
> 
> I figured that I need to populate FILES_{PN} but I'm not clear about
> what I should do with it: use ${libdir}, use "usr/*" ? Knowing that my
> image(s) directories mostly contain usr/lib/perl/* and sometimes usr/bin/*

Ultimately it depends on how those files have ended up there. If files have been 
installed in in /usr/lib because they've been installed in ${libdir} (this is 
the default for all autotooled recipes), then you should also use ${libdir} to 
match in FILES in case that value changes - some distros do this to flatten out 
/usr altogether for example.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

