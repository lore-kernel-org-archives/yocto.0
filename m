Return-Path: <lsorense@csclub.uwaterloo.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CEF8CE0050B; Mon, 12 Sep 2016 09:02:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from caffeine.csclub.uwaterloo.ca (caffeine.csclub.uwaterloo.ca
	[129.97.134.17])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8AE91E00444
	for <yocto@yoctoproject.org>; Mon, 12 Sep 2016 09:02:43 -0700 (PDT)
Received: by caffeine.csclub.uwaterloo.ca (Postfix, from userid 20367)
	id C5ADAC0086; Mon, 12 Sep 2016 12:02:42 -0400 (EDT)
Date: Mon, 12 Sep 2016 12:02:42 -0400
To: Ronald Oakes <ronaldo@brc2.com>
Message-ID: <20160912160242.GB14313@csclub.uwaterloo.ca>
References: <CALRMKQqgbk9Oj42figT=iXqJJfhHRgTjQ9PkUtwTUEzUomyX=w@mail.gmail.com>
	<CALRMKQqP5KT+batqRh20AbO=jSWKRhYrhtWF=SzHms0LwfMsLA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CALRMKQqP5KT+batqRh20AbO=jSWKRhYrhtWF=SzHms0LwfMsLA@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
From: lsorense@csclub.uwaterloo.ca (Lennart Sorensen)
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Naive Questsions about 3rd Party Kernel Module
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
X-List-Received-Date: Mon, 12 Sep 2016 16:02:47 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Sep 09, 2016 at 04:02:21PM -0600, Ronald Oakes wrote:
> Following up as I've done more investigation and debugging this afternoon:
> 
> I've been able to resolve my problem with the missing symbolic link to
> <filename>.so by explicitly including a runtime dependency
> (RDEPENDS_${PN}) to the -dev module, so my link is now present on the
> filesystem image at boot.  I've also found reasonably strong evidence
> that that library contains the function __stack_chk_fail; but the
> evidence could equally indicate that that library calls it as I found
> the string using the strings function.
> 
> Either way, it looks like I have a critical kernel module, and a less
> critical kernel module, that are relying on a shared library that
> either are missing on my image or are not available properly in kernel
> space.  Any suggestions on how I can resolve this would be greatly
> appreciated.

Kernel modules only use kernel code.  They never use user space libraries.
It simply doesn't work that way.

-- 
Len Sorensen

