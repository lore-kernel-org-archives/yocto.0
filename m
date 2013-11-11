Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B9DDE0172C
	for <yocto@yoctoproject.org>; Mon, 11 Nov 2013 07:59:17 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by azsmga101.ch.intel.com with ESMTP; 11 Nov 2013 07:44:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,678,1378882800"; d="scan'208";a="425620390"
Received: from unknown (HELO helios.localnet) ([10.252.121.166])
	by fmsmga001.fm.intel.com with ESMTP; 11 Nov 2013 07:44:26 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Mon, 11 Nov 2013 15:44:25 +0000
Message-ID: <1513961.n6Rc8aklOD@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <alpine.DEB.2.02.1311110627260.10782@oneiric>
References: <alpine.DEB.2.02.1311110627260.10782@oneiric>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: do any yocto docs clearly distinguish between "+=" and "_append"?
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
X-List-Received-Date: Mon, 11 Nov 2013 16:01:29 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Robert,

On Monday 11 November 2013 06:30:46 Robert P. J. Day wrote:
>   still slogging my way through the dev manual, and here:
> 
> http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html#usingpoky
> -extend-customimage
> 
> section 5.2.1 recommends that recipe files use:
> 
> IMAGE_INSTALL += "strace"
> 
> while, further down in section 5.2.4, developers are encouraged to add
> to their personal local.conf:
> 
> IMAGE_INSTALL_append = " strace"

There is a good reason for this difference - it's likely that IMAGE_INSTALL 
will be set using = in the image recipe, and thus if you use += to add to it 
in local.conf it will have no effect. _append on the other hand is deferred 
until later and thus it will always work from local.conf. In the image recipe 
it's OK to use IMAGE_INSTALL += because you'll be able to put it in the right 
place with regard to any other assignment of the variable.

As I've noted more than once, modifying IMAGE_INSTALL or 
CORE_IMAGE_EXTRA_INSTALL from local.conf is really only appropriate for quick 
testing - for anything beyond that users should be creating their own image 
recipe(s).

>   is there somewhere in a yocto doc a clear explanation of the proper
> usage of "+=" versus "_append"? because, in my experience, that's a
> point of serious confusion for new users.

The proper place for the general discussion about how these operators work is 
really the BitBake manual; we're planning on promoting that to a first-class 
citizen and publishing it with the rest of our manuals for 1.6.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

