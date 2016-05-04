Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EA144E00C4F; Wed,  4 May 2016 07:56:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84E7EE00BDE
	for <yocto@yoctoproject.org>; Wed,  4 May 2016 07:56:06 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u44Eu48w007849
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Wed, 4 May 2016 07:56:05 -0700
Received: from server.local (147.11.117.154) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.248.2;
	Wed, 4 May 2016 07:56:04 -0700
To: Ronald Oakes <ronaldo@brc2.com>, Yocto discussion list
	<yocto@yoctoproject.org>
References: <CALRMKQrH5LpDC5pGK_ef_r2rxPC1t7vTqb=nB=1Go=xx7m3VtA@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <04f8b412-ca73-9a7a-04a3-5b8b5f2f23f6@windriver.com>
Date: Wed, 4 May 2016 10:56:03 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:45.0)
	Gecko/20100101 Thunderbird/45.0
MIME-Version: 1.0
In-Reply-To: <CALRMKQrH5LpDC5pGK_ef_r2rxPC1t7vTqb=nB=1Go=xx7m3VtA@mail.gmail.com>
Subject: Re: Problems building core-minimal-rt on Jethro (2.0.1) and Krogoth (2.1)
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
X-List-Received-Date: Wed, 04 May 2016 14:56:11 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-05-04 10:02 AM, Ronald Oakes wrote:
> My project will need to be real-time (we're probably putting a crystal
> controlled clock in), so I'd like to have the real-time kernel.  So,
> I've been attempting to build core-minimal-rt on both 2.0.1 and 2.1.
> I get errors on both, albeit different errors.
>
> Jethro:
>
> On 2.0.1, the do-patch for linux-yocto-rt-* fails, ultimately with the
> message: "Your branch is behind 'origin/standard/preempt-rt/base' by
> 691 commits, and can be fast-forwarded." followed by "(use "git pull"
> to update your local branch)"
>
> I get this error on all distros, including poky-bleeding.  I've not
> been successful in disabling the mirrors just for linux-yocto-rt.  I
> am now trying a build, albeit on my slow machine (two cores, where if
> I don't force bitbake into running one task at a time, it hangs),
> after deleting everything except the conf directory to see if that
> makes any difference
>
> Krogoth:
>
> On 2.1, the error message occurs very quickly:
>
> ERROR: Nothing PROVIDES 'linux-yocto-rt' (but
> /home/ron/yocto_2.1/poky/meta/recipes-rt/images/core-image-rt.bb
> DEPENDS on or otherwise requires it)
> ERROR: linux-yocto-rt was skipped: PREFERRED_PROVIDER_virtual/kernel
> set to linux-yocto, not linux-yocto-rt
> ERROR: linux-yocto-rt was skipped: PREFERRED_PROVIDER_virtual/kernel
> set to linux-yocto, not linux-yocto-rt
> NOTE: Target 'linux-yocto-rt' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['linux-yocto-rt']
> NOTE: Target 'core-image-rt' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['core-image-rt', 'linux-yocto-rt']
> ERROR: Required build target 'core-image-rt' has no buildable providers.
> Missing or unbuildable dependency chain was: ['core-image-rt', 'linux-yocto-rt']
>
> ---
>
> Any clues as how to work around either?

On 2.1, set:

PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-rt"

I also have all my latest SRCREV commits here:

git://git.pokylinux.org/poky-contrib master:zedd/kernel

That's the latest 4.1 and 4.4 -rt changes that I'm about to send
to the mailing list.

Bruce

>
> Ron Oakes
>


