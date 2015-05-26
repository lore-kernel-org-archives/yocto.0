Return-Path: <yocto@mindchasers.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 343A8E00820; Tue, 26 May 2015 08:20:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 2032 seconds by postgrey-1.32 at yocto-www;
	Tue, 26 May 2015 08:20:42 PDT
Received: from smtp.webfaction.com (mail6.webfaction.com [74.55.86.74])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D076EE00293
	for <yocto@yoctoproject.org>; Tue, 26 May 2015 08:20:42 -0700 (PDT)
Received: from [192.168.1.10] (c-73-194-208-34.hsd1.nj.comcast.net
	[73.194.208.34])
	by smtp.webfaction.com (Postfix) with ESMTP id B8BDB20FBE66
	for <yocto@yoctoproject.org>; Tue, 26 May 2015 14:46:06 +0000 (UTC)
Message-ID: <5564872C.80804@mindchasers.com>
Date: Tue, 26 May 2015 10:46:04 -0400
From: Bob Cochran <yocto@mindchasers.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Yocto discussion list <yocto@yoctoproject.org>
References: <bug-6945-213@https.bugzilla.yoctoproject.org/>
	<bug-6945-213-arNSwBAwi6@https.bugzilla.yoctoproject.org/>
In-Reply-To: <bug-6945-213-arNSwBAwi6@https.bugzilla.yoctoproject.org/>
Subject: Re: [Bug 6945] kernel-dev: multiple kernel build
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
X-List-Received-Date: Tue, 26 May 2015 15:20:45 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

Does this enhancement only address using the same kernel git branch with 
different .configs to build multiple kernels?

I want to create a single build directory that generates one rootfs but 
has multiple kernels from different git branches and with different 
patch sets applied.

The generated rootfs should have the multiple /lib/module/<uname -r> 
trees created for me.

And I'm wondering how the kernel-devsrc.bb recipe would work in this 
situation?  Would I have multiple preferred kernel providers for my 
multiple kernel builds?

Currently I build multiple kernels outside of yocto and then patch 
things up with my own scripts.

By tracking the bugzilla 6945 enhancement bug, will I know when the 
features have been added to the poky repo so I can try them out?

Thanks

Bob





On 05/12/2015 04:29 PM, bugzilla-daemon@yoctoproject.org wrote:
> Bruce Ashfield <mailto:bruce.ashfield@windriver.com> changed bug 6945
> <https://bugzilla.yoctoproject.org/show_bug.cgi?id=6945>
> What 	Removed 	Added
> Target Milestone 	1.9 	1.9 M3
>
> ------------------------------------------------------------------------
> You are receiving this mail because:
>
>   * You are watching the assignee of the bug.
>   * You are watching someone on the CC list of the bug.
>   * You are watching the reporter of the bug.
>


