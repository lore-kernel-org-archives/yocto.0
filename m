Return-Path: <sgw@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18FE4E00848; Mon, 27 Oct 2014 11:04:11 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7CBD8E00796
	for <yocto@yoctoproject.org>; Mon, 27 Oct 2014 11:03:55 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga102.fm.intel.com with ESMTP; 27 Oct 2014 11:03:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,862,1389772800"; d="scan'208";a="406796776"
Received: from mmckenna-mobl2.ger.corp.intel.com (HELO [10.255.13.77])
	([10.255.13.77])
	by FMSMGA003.fm.intel.com with ESMTP; 27 Oct 2014 10:55:56 -0700
Message-ID: <544E890A.5000402@linux.intel.com>
Date: Mon, 27 Oct 2014 11:03:54 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.7.0
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>, 
 Yocto Project <yocto@yoctoproject.org>
References: <544E77DC.5080408@mlbassoc.com>
In-Reply-To: <544E77DC.5080408@mlbassoc.com>
Subject: Re: Is the build system SCM sensitive?
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
X-List-Received-Date: Mon, 27 Oct 2014 18:04:11 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10/27/2014 09:50 AM, Gary Thomas wrote:
> I had a complete build (details probably don't matter) using
> Poky master.  I'm working on a fix to one of the core recipes,
> so I made a local branch:
>    % git checkout -b fix-python-pygtk master
> I made a single line change in the recipe (removing a line from
> the do_install step).  When I then rebuilt the recipe, to my
> surprise, there were more than 450 tasks (73 unique recipes)
> executed :-(
>
> How does this make any sense?  unless the build system cares
> that I changed the branch?
>
> n.b. I'm happy to provide more details if necessary.  Also, I
> did this twice in two different build trees and saw the same
> strangeness.
>
I think so additional info might be needed here, I am guessing that you 
are changing pygtk and somehow that is changing some dependency, you 
might try using bitbake-diffsigs between the 2 versions.

Sau!


