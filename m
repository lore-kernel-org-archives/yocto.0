Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 359FAE008DC
	for <yocto@yoctoproject.org>; Fri, 24 Jan 2014 06:20:12 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 24 Jan 2014 06:20:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,712,1384329600"; d="scan'208";a="464143975"
Received: from unknown (HELO peggleto-mobl5.ger.corp.intel.com)
	([10.252.123.57])
	by fmsmga001.fm.intel.com with ESMTP; 24 Jan 2014 06:20:10 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Brian Hutchinson <b.hutchman@gmail.com>
Date: Fri, 24 Jan 2014 14:20:09 +0000
Message-ID: <1879146.hMO1iD1hZ7@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.11.5 (Linux/3.12.8-300.fc20.x86_64; KDE/4.11.5; x86_64; ; )
In-Reply-To: <CAFZh4h8gSP9PWCVLm+uNJQR4uc3GsCEkCgpvYeFP0W413yDubw@mail.gmail.com>
References: <CAFZh4h-zi=pDLr5JYgFeEfU72+qMRz2FJZ8iDt-Q3f=P+wVgKA@mail.gmail.com>
	<4881727.Fp3ZJb6UjL@peggleto-mobl5.ger.corp.intel.com>
	<CAFZh4h8gSP9PWCVLm+uNJQR4uc3GsCEkCgpvYeFP0W413yDubw@mail.gmail.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Fri, 24 Jan 2014 14:20:22 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 24 January 2014 09:07:46 Brian Hutchinson wrote:
> On Fri, Jan 24, 2014 at 8:53 AM, Paul Eggleton <
> 
> paul.eggleton@linux.intel.com> wrote:
> > If you want license and version information, probably the best place to
> > get that is the automatically produced license manifest for the image:
> > 
> > 
> > http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#mainta
> > ining-open-source-license-compliance-during-your-products-lifecycle
> > 
> > Cheers,
> > Paul
> 
> For license compliance, I've just been taring up the deploy/licenses dir.
> 
> I know it includes way more than just the licenses for the packages in the
> images but I've not investigated yet if there's a fancy way of managing
> those better.
> 
> I've seen that section of the document you point out before ... I just need
> to spend more time in it.  Our release procedure in this area needs to be
> automated/streamlined and improved too!  I'll have to search the archives
> and see if I can find prior discussions on that topic.

The point is, there is a file 
tmp/deploy/licenses/<image_name>-<datestamp>/license.manifest which contains
a list of all installed packages, their version, their license and the recipe 
they were produced by. Isn't that what you were after?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

