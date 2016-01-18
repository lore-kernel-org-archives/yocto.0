Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6367BE0086B; Mon, 18 Jan 2016 12:15:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3CA7CE007F2
	for <yocto@yoctoproject.org>; Mon, 18 Jan 2016 12:15:29 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga102.fm.intel.com with ESMTP; 18 Jan 2016 12:15:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,313,1449561600"; d="scan'208";a="863249300"
Received: from unknown (HELO peggleto-mobl.ger.corp.intel.com)
	([10.255.180.49])
	by orsmga001.jf.intel.com with ESMTP; 18 Jan 2016 12:15:27 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Ulf Magnusson <ulfalizer@gmail.com>
Date: Tue, 19 Jan 2016 09:15:25 +1300
Message-ID: <1491845.TOkdZ1pxEy@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.3.3-300.fc23.x86_64; KDE/4.14.14; x86_64; ;
	)
In-Reply-To: <CAFkk2KRuH8g49LBzceZSnFcetQc6ANedd7iMFD8uUqMHZDbKCg@mail.gmail.com>
References: <CAFkk2KRuH8g49LBzceZSnFcetQc6ANedd7iMFD8uUqMHZDbKCg@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Mapping root filesystem files back into packages
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
X-List-Received-Date: Mon, 18 Jan 2016 20:15:36 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Ulf,

On Mon, 18 Jan 2016 10:56:41 Ulf Magnusson wrote:
> To support an in-house packaging format, we need to partition the root
> filesystem into a number of packages (called "internal packages" from
> here on to avoid confusion), where each internal package corresponds
> to a number of (e.g. IPK) packages.
> 
> The way this is currently done is by manually maintaining a database
> (implemented as a PACKAGE_CLASSES class) that maps files in the root
> filesystem back to packages, along with a list of what packages should
> go into each internal package. I suspect it is done this way so that
> post-processing steps on the root filesystem will be included in the
> internal packages.
> 
> To me this feels pretty roundabout, and I suspect that there are much
> nicer solutions (suggestions welcome!). What I'm mostly curious about
> at the moment though is whether there's some nicer way to map files
> from the root filesystem back to packages, without having to maintain
> a separate database. Having the method be independent of the package
> format (e.g., IPK) would be a bonus, though I'm not sure if it's a
> strict requirement.

So, aside from the "internal package" concept, there are two ways to do this:

1) oe-pkgdata-util find-path - this will tell you the build-time package name 
that provided the specified path within the image (expects a full path, 
wildcards allowed). It also provides some other lookup tools. Note that this 
relies on pkgdata so it'll only work for a particular recipe after that recipe 
has been packaged.

2) Use the Toaster web UI - it allows you to browse through the image and 
click through from any file back to the package that contained it.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

