Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 571E9E00CAB; Sat, 27 Feb 2016 20:23:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A102BE00C60
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 20:23:30 -0800 (PST)
Received: from c-50-185-54-102.hsd1.ca.comcast.net ([50.185.54.102]
	helo=[10.79.148.125])
	by smtp.twobit.us with esmtpsa (TLSv1.2:DHE-RSA-AES128-SHA:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1aZssa-0003Ix-MC; Sun, 28 Feb 2016 04:22:49 +0000
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <56D274C6.90607@twobit.us>
From: Philip Tricca <flihp@twobit.us>
Message-ID: <56D27649.4040306@twobit.us>
Date: Sat, 27 Feb 2016 20:23:37 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Icedove/38.6.0
MIME-Version: 1.0
In-Reply-To: <56D274C6.90607@twobit.us>
X-SA-Exim-Connect-IP: 50.185.54.102
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Subject: Re: [meta-selinux] git recipes
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
X-List-Received-Date: Sun, 28 Feb 2016 04:23:37 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Adding a sensible subject.

On 02/27/2016 08:17 PM, Philip Tricca wrote:
> While going through the backlog I ran across the 'git' versions of the
> user space. I noticed that a recent contribution was adding a patch to
> the git recipe and I figured that this patch would already be upstream
> and so wouldn't be necessary. Not so. The 'git' versions have SRCREV
> hard wired (SRCREV) to a commit id but it's way back from the end of
> 2013. They're also disabled via DEFAULT_PREFERENCE = "-1"
> 
> These 'git' versions seem super useful for testing bleeding edge stuff
> so IMHO keeping them around would be the right thing to do. Not sure how
> I feel about them tracking an ancient commit though. Since they're never
> built by default it seems reasonable to track the master branch.
> 
> What's our philosophy w/r to recipes that pull from git? Is there some
> history behind this SRCREV?
> 
> Thanks,
> Philip
> 


