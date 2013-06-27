Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4CC31E01554
	for <yocto@yoctoproject.org>; Thu, 27 Jun 2013 13:25:41 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 27 Jun 2013 13:25:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,954,1363158000"; d="scan'208";a="323576603"
Received: from unknown (HELO helios.localnet) ([10.252.122.92])
	by azsmga001.ch.intel.com with ESMTP; 27 Jun 2013 13:25:39 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: varun bhatnagar <varun292006@gmail.com>
Date: Thu, 27 Jun 2013 21:25:38 +0100
Message-ID: <2897880.FC0dZLhceG@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.3 (Linux/3.8.0-25-generic; KDE/4.10.3; i686; ; )
In-Reply-To: <CAGxOggG7R-5rLHg3H_WH9wtgSnf0EZfRAYs2jtQvGK+DeQfTiA@mail.gmail.com>
References: <CAGxOggHpJNSb6vetbD40+ww-iyVxS3cUaZVhOF1t_OFCfQ4zSw@mail.gmail.com>
	<51C9EBCE.40501@linux.intel.com>
	<CAGxOggG7R-5rLHg3H_WH9wtgSnf0EZfRAYs2jtQvGK+DeQfTiA@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Yocto Layers not getting recognized by bitbake
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
X-List-Received-Date: Thu, 27 Jun 2013 20:25:45 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 27 June 2013 23:28:05 varun bhatnagar wrote:
>  Thanks a ton Paul and Saul for the reply. Your suggestion worked. :)
> But after building my recipe file I executed bitbake -k core-image-minimal
> and I got the following error:
> 
> NOTE: Resolving any missing task queue dependencies
> Missing or unbuildable dependency chain was: ['app-ea']
> ERROR: Nothing RPROVIDES 'app-ea' (but
> /local/varun/poky-yocto-1.4-m3/meta/recipes-core/images/
> core-image-minimal.bb RDEPENDS on or otherwise requires it)
> NOTE: Runtime target 'com-ea' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['test-ea']
> ERROR: Nothing RPROVIDES 'tipcutils' (but
> /local/varun/poky-yocto-1.4-m3/meta/recipes-core/images/
> core-image-minimal.bb RDEPENDS on or otherwise requires it)
> NOTE: Runtime target 'tipcutils' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['tipcutils']
> NOTE: Preparing runqueue
> ERROR: All buildable tasks have been run but the build is incomplete
> (--continue mode). Errors for the tasks that failed will have been printed
> above.
> 
> Summary: There were 3 ERROR messages shown, returning a non-zero exit code.
> 
> 
> Any idea how to resolve this one?

None of "com-ea", "test-ea" or "tipcutils" are normally in core-image-minimal 
nor are they in any OE layer that I am aware of. I can only suggest that you 
might have added these to CORE_IMAGE_EXTRA_INSTALL, is that correct? If so, 
either remove these or ensure they actually exist somewhere in an enabled 
layer where that layer has BBFILES correctly set up in its conf/layer.conf file 
to match the directory structure of the layer.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

