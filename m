Return-Path: <lsorense@csclub.uwaterloo.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 92CD0E006D2; Mon, 12 Sep 2016 09:48:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from caffeine.csclub.uwaterloo.ca (caffeine.csclub.uwaterloo.ca
	[129.97.134.17])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1EDB6E0050B
	for <yocto@yoctoproject.org>; Mon, 12 Sep 2016 09:48:04 -0700 (PDT)
Received: by caffeine.csclub.uwaterloo.ca (Postfix, from userid 20367)
	id 202E9C0086; Mon, 12 Sep 2016 12:48:04 -0400 (EDT)
Date: Mon, 12 Sep 2016 12:48:04 -0400
To: "Daniel." <danielhilst@gmail.com>
Message-ID: <20160912164803.GJ14309@csclub.uwaterloo.ca>
References: <CALRMKQqgbk9Oj42figT=iXqJJfhHRgTjQ9PkUtwTUEzUomyX=w@mail.gmail.com>
	<CALRMKQqP5KT+batqRh20AbO=jSWKRhYrhtWF=SzHms0LwfMsLA@mail.gmail.com>
	<20160912160242.GB14313@csclub.uwaterloo.ca>
	<CAF3SDA7_wdqx-z732q1CyMKfXdwjhmEwiuq+cePOaibvMFRxCA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAF3SDA7_wdqx-z732q1CyMKfXdwjhmEwiuq+cePOaibvMFRxCA@mail.gmail.com>
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
X-List-Received-Date: Mon, 12 Sep 2016 16:48:05 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Sep 12, 2016 at 01:41:24PM -0300, Daniel. wrote:
> If you don't make your driver GPL you can't access GPL symbols. This
> *may* be the reason behind the "Unknown symbols"
> Regards,

Well at least for __stack_chk_fail the kernel has:

#ifdef CONFIG_CC_STACKPROTECTOR

/*
 * Called when gcc's -fstack-protector feature is used, and
 * gcc detects corruption of the on-stack canary value
 */
__visible void __stack_chk_fail(void)
{
        panic("stack-protector: Kernel stack is corrupted in: %p\n",
                __builtin_return_address(0));
}
EXPORT_SYMBOL(__stack_chk_fail);

#endif

So as long as the kernel is configured with CC_STACKPROTECTOR, it should
exist, and it is not GPL only.

So at least as long as the kernel module is built by the same kernel
build files as the kernel was with the same config and the same compiler,
it should work.  If someone tries to manually build the kernel module
instead of using the kernel build scripts to do it, then they are asking
for trouble.

-- 
Len Sorensen

