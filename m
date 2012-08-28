Return-Path: <bjst@giant.haxx.se>
Received: from giant.haxx.se (giant.haxx.se [80.67.6.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07383E0141D
	for <yocto@yoctoproject.org>; Tue, 28 Aug 2012 04:17:16 -0700 (PDT)
Received: from giant.haxx.se (localhost.localdomain [127.0.0.1])
	by giant.haxx.se (8.14.4/8.14.4/Debian-2) with ESMTP id q7SBH8Nc017152
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Tue, 28 Aug 2012 13:17:08 +0200
Received: (from bjst@localhost)
	by giant.haxx.se (8.14.4/8.14.4/Submit) id q7SBH8lf017150;
	Tue, 28 Aug 2012 13:17:08 +0200
Date: Tue, 28 Aug 2012 13:17:08 +0200
From: =?iso-8859-1?Q?Bj=F6rn?= Stenberg <bjst@enea.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Message-ID: <20120828111708.GB28777@giant>
References: <1345731602-47313-1-git-send-email-bjst@enea.com>
	<1345731602-47313-2-git-send-email-bjst@enea.com>
	<1345822661.14369.79.camel@ted>
MIME-Version: 1.0
In-Reply-To: <1345822661.14369.79.camel@ted>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/3] Add -ptest package group
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 28 Aug 2012 11:17:17 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Richard Purdie wrote:
> Would a ptest.bbclass containing the above make more sense? How
> widespread do we think these tests will be?

Most source packages include some form of test suite that we want to make into a -ptest package. I would guesstimate the number to be somewhere between the number of -dbg and the number of -dev packages. This is why I felt it made sense to add the handling of -ptest side-by-side with the handling of -dev and -dbg.

> My biggest worry is the overhead of the patches to
> software to enable the tests. Are you planning to engage the upstreams
> and see if we can get them to accept the patches?

Upstreaming is absolutely the idea, both for the benefit of the entire ecosystem and of course to reduce the number of patches.

However I won't downplay the effort required to get hundreds of upstream projects to agree on a common concept for test cross compilation and result formatting.

I see two main options: Implement first or discuss first.

a) Implement first: We design and implement a good system for yocto/oe and then, once it has proven itself, engage the larger open source community with our already tested concept.

Pro: It's easier to discuss an already working system
Con: We'll have to manage patches for all packages until agreement

b) Discuss first: We invite the whole open source community to discuss and try to agree on how to handle cross-compiled test cases and test result formatting before we implement anything.

Pro: No increased patch load until agreement
Con: No result until agreement, which could potentially take a long time

My suggestion is a). I'm open for any and all suggestions that would make the patch load easier to manage.

> Also these patches are against OE-Core so need to go to the
> openembedded-code mailing list.

I'll update the patches with the feedback I've got and post them to oe-core for further discussion.

Thanks.

-- 
Björn

