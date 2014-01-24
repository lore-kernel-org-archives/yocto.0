Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E393CE00893
	for <yocto@yoctoproject.org>; Fri, 24 Jan 2014 05:53:09 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 24 Jan 2014 05:53:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,712,1384329600"; d="scan'208";a="470229988"
Received: from unknown (HELO peggleto-mobl5.ger.corp.intel.com)
	([10.252.123.57])
	by fmsmga002.fm.intel.com with ESMTP; 24 Jan 2014 05:53:07 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Brian Hutchinson <b.hutchman@gmail.com>
Date: Fri, 24 Jan 2014 13:53:06 +0000
Message-ID: <4881727.Fp3ZJb6UjL@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.11.5 (Linux/3.12.8-300.fc20.x86_64; KDE/4.11.5; x86_64; ; )
In-Reply-To: <CAFZh4h9J7qjXvHD2esvgRLQwEBqYM_Ha5LkBScmo1hcXG=hMiQ@mail.gmail.com>
References: <CAFZh4h-zi=pDLr5JYgFeEfU72+qMRz2FJZ8iDt-Q3f=P+wVgKA@mail.gmail.com>
	<CF07F9D1.3B9E2%belen.barros.pena@intel.com>
	<CAFZh4h9J7qjXvHD2esvgRLQwEBqYM_Ha5LkBScmo1hcXG=hMiQ@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: How to get a list of packages (with versions) used to create an image?
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
X-List-Received-Date: Fri, 24 Jan 2014 13:53:18 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 24 January 2014 08:46:02 Brian Hutchinson wrote:
> That is VERY nice!  I like it.  I'm looking for something a bit simpler
> though ... just want to be able to have a text file with the package names
> and their versions that we can either include as a file or copy paste in
> our release notes since we have to keep up with this (and license info.)
> for every release we do.
> 
> How did you generate the html for that?  Looks like buildhistory is what I
> need to be looking into from the responses so far.

If you want license and version information, probably the best place to
get that is the automatically produced license manifest for the image:

http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#maintaining-open-source-license-compliance-during-your-products-lifecycle

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

