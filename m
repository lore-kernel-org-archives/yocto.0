Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2184E009C6; Thu, 16 Apr 2015 05:55:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B6A9E009A5
	for <yocto@yoctoproject.org>; Thu, 16 Apr 2015 05:55:55 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga103.fm.intel.com with ESMTP; 16 Apr 2015 05:55:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,588,1422950400"; d="scan'208";a="696260985"
Received: from nwalsh-mobl1.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.27.88])
	by fmsmga001.fm.intel.com with ESMTP; 16 Apr 2015 05:55:40 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: John Ernberg <john.ernberg@actia.se>
Date: Thu, 16 Apr 2015 13:55:39 +0100
Message-ID: <14610153.uBZ2VKfICl@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.18.9-200.fc21.x86_64; KDE/4.14.6; x86_64; ; )
In-Reply-To: <552FA28B.5010507@actia.se>
References: <552FA28B.5010507@actia.se>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Badly formatted subpath for git SRC_URI deletes portions of hard drive.
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
X-List-Received-Date: Thu, 16 Apr 2015 12:55:57 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi John,

On Thursday 16 April 2015 11:52:48 John Ernberg wrote:
> I was writing a bitbake recipe for a project hosted on a git-server. I
> applied subpath in order to limit the checkout to a specific directory.
> 
> When I ran the recipe it failed in do_fetch (or do_unpack) complaining
> about missing files. It had deleted the entire Yocto directory and
> selected directories from my home-dir like ssh-keys, my dir where I keep
> my code, and some configuration files for Thunderbird and my terminal.
> 
> Since I had no Yocto directory left I was unable to debug the recipe.
> 
> After restoring everything I re-created the recipe, this time I also
> saved a copy of the recipe at a safe location.
> At the end of the path given to subpath I had added a '/' as it was not
> specified what the format of the path should be. I figured I would see
> an error if the path was wrong, and technically I did.
> Essentially the SRC_URI looked like this:
> SRC_URI = "git://git@<server+repo>;protocol=ssh;subpath=path/"
> 
> Running the recipe resulted in do_fetch (or do_unpack) failing again and
> complaining about missing files. This time the deletion was on a much
> greater scale, it had deleted so much of my home-dir that my user
> account was rendered entirely useless. The fastest way to recover this
> time was re-installing the machine.
> 
> I was keeping bitbake in my home-dir both of these times.
> 
> The poky version I am using is Daisy.

Very sorry about this :(

Looking at the code I can see at least two problems we need to fix relating to 
this issue. It seems that having '/' either at the start or the end of the 
value was unexpected and would trigger undesirable behaviour.

It may be worth noting in case it wasn't clear that when it is working 
correctly subpath= doesn't do a shallow clone, it still clones the full 
repository, it's just that you only get the specified subdirectory unpacked 
into the work directory after that.

- Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

