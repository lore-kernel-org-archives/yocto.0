Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2FCEE00796
	for <yocto@yoctoproject.org>; Thu, 12 Dec 2013 08:20:11 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 12 Dec 2013 08:20:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,879,1378882800"; d="scan'208";a="451260577"
Received: from mmckenna-mobl1.ger.corp.intel.com (HELO helios.localnet)
	([10.252.121.252])
	by orsmga002.jf.intel.com with ESMTP; 12 Dec 2013 08:20:07 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Thu, 12 Dec 2013 16:20:06 +0000
Message-ID: <3017575.Mc510FLHbh@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-34-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <52A9D0F7.7050501@mlbassoc.com>
References: <52A9D0F7.7050501@mlbassoc.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Thu, 12 Dec 2013 16:20:11 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Gary,

On Thursday 12 December 2013 08:06:31 Gary Thomas wrote:
> I've found that the latest bitbake fetcher changes (require
> the use of branch names) fails with older versions of git.
> I have a Fedora 13 machine which I routinely use to build
> my Yocto projects that has git version 1.7.7.6.  On that machine,
> all git fetches fail, no matter what.  On my Ubuntu builder
> which has git 1.7.9.4, all is OK.
> 
> I see that there is a git recipe in OE-core.  How can I force
> it to be built and used where the host's native git is inadequate?

The solution we provide for this kind of situation is buildtools-tarball, as
described here (linked from the QS guide as well):

http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#required-git-tar-and-python-versions

Interesting that git 1.7.7.6 is still not adequate though, that may be a
prompt to either fix the check to work with older versions of git or
increase our version number requirement.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

