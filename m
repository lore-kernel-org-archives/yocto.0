Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 64EB7E00CAA; Wed, 15 Jun 2016 05:51:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [208.80.206.84 listed in list.dnswl.org]
Received: from smtp684.redcondor.net (smtp684.redcondor.net [208.80.206.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF362E00CA5
	for <yocto@yoctoproject.org>; Wed, 15 Jun 2016 05:51:55 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp684.redcondor.net ({700db0a8-6fb7-4c8b-9b2a-6812225182d8})
	via TCP (outbound) with ESMTPS id 20160615125153550_0684
	for <yocto@yoctoproject.org>; Wed, 15 Jun 2016 12:51:53 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [216.191.234.70] (port=18763 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1bDAK6-0003Zh-7r
	for yocto@yoctoproject.org; Wed, 15 Jun 2016 08:53:34 -0400
Date: Wed, 15 Jun 2016 08:51:11 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Yocto discussion list <yocto@yoctoproject.org>
In-Reply-To: <alpine.LFD.2.20.1606150839230.9417@localhost.localdomain>
Message-ID: <alpine.LFD.2.20.1606150849540.25853@localhost.localdomain>
References: <alpine.LFD.2.20.1606150839230.9417@localhost.localdomain>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Subject: Re: is there an actual "compiler-gcc6.h" patch?
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
X-List-Received-Date: Wed, 15 Jun 2016 12:51:58 -0000
Content-Type: text/plain; charset=US-ASCII

On Wed, 15 Jun 2016, Robert P. J. Day wrote:

>
>   following on a post to the list from back on jun 1:
>
> https://www.mail-archive.com/yocto@yoctoproject.org/msg29568.html
>
> i figured it wouldn't be hard to find the place where that header file
> was added to the master branch for (in this case) the 4.1 kernel, but
> i just checked the git repo, master branch, and i don't see that file
> there, but i see that a patch to add it was submitted back on june 2:
>
> https://github.com/Freescale/meta-fsl-arm/blob/master/recipes-kernel/linux/linux-ls1/Fix-the-compile-issue-under-gcc6.patch
>
> so what is the status of this? am i just reading this incorrectly? or
> doing something wrong?

  i do realize that that patch referred to above was for the
meta-fsl-arm repo, i just assumed it would work its way into master in
short order. but i could be totally off-base here.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


