Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2C24E007D4
	for <yocto@yoctoproject.org>; Thu, 12 Dec 2013 08:37:48 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 12 Dec 2013 08:37:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,879,1378882800"; d="scan'208";a="443181089"
Received: from mmckenna-mobl1.ger.corp.intel.com (HELO helios.localnet)
	([10.252.121.252])
	by fmsmga001.fm.intel.com with ESMTP; 12 Dec 2013 08:37:46 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Thu, 12 Dec 2013 16:37:45 +0000
Message-ID: <21339055.Kdy9A2es3f@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-34-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <52A9E4CE.1060000@mlbassoc.com>
References: <52A9D0F7.7050501@mlbassoc.com> <52A9E41A.8010601@mlbassoc.com>
	<52A9E4CE.1060000@mlbassoc.com>
MIME-Version: 1.0
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: How to force the use of git-native?
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
X-List-Received-Date: Thu, 12 Dec 2013 16:37:50 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 12 December 2013 09:31:10 Gary Thomas wrote:
> On 2013-12-12 09:28, Gary Thomas wrote:
> > On 2013-12-12 09:20, Paul Eggleton wrote:
> >> Hi Gary,
> >> 
> >> On Thursday 12 December 2013 08:06:31 Gary Thomas wrote:
> >>> I've found that the latest bitbake fetcher changes (require
> >>> the use of branch names) fails with older versions of git.
> >>> I have a Fedora 13 machine which I routinely use to build
> >>> my Yocto projects that has git version 1.7.7.6.  On that machine,
> >>> all git fetches fail, no matter what.  On my Ubuntu builder
> >>> which has git 1.7.9.4, all is OK.
> >>> 
> >>> I see that there is a git recipe in OE-core.  How can I force
> >>> it to be built and used where the host's native git is inadequate?
> >> 
> >> The solution we provide for this kind of situation is buildtools-tarball,
> >> as described here (linked from the QS guide as well):
> >> 
> >> http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#requi
> >> red-git-tar-and-python-versions> 
> > Thanks, I'll give this a go.
> 
> Oops, looks like I have a circular dependency problem since trying to make
> the buildtools-tarball actually needs a working version of git??

I don't think it's reasonable to expect to build buildtools-tarball on a 
system that isn't capable of building at the moment; you should just download 
a prebuilt version as linked from the manual section above *or* build it on 
another machine.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

