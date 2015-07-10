Return-Path: <picmaster@mail.bg>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4F8C7E00A54; Fri, 10 Jul 2015 01:47:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [193.201.172.118 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (picmaster[at]mail.bg)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mx2.mail.bg (mx2.mail.bg [193.201.172.118])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37D95E009D6
	for <yocto@yoctoproject.org>; Fri, 10 Jul 2015 01:47:51 -0700 (PDT)
Received: from [192.168.0.62] (unknown [93.152.143.60])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx2.mail.bg (Postfix) with ESMTPSA id A89BC60055EB;
	Fri, 10 Jul 2015 11:47:50 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mail.bg; s=default;
	t=1436518070; bh=uXnEG1BKgO+2reUOJY8YDPSdKHbFFXAg43OgjH53aB0=;
	h=Message-ID:Date:From:MIME-Version:To:CC:Subject:References:
	In-Reply-To:Content-Type:Content-Transfer-Encoding;
	b=8qeLpoFkoJbJqKyLqKcCCDzz2ms9D2XxdgFipYs96Mt1anV21xeJO3sVvFs41UwNX
	yw776IMY1FeSluNqtb0bGKvAsPk5N6kEP96e1K2aaEd7HA6VQ6UUisAW8ivXklPeoZ
	wQcsu1nVwxJxvhjgAIuGw1DxZgCgl/px80rxV8uM=
Message-ID: <559F86B6.9030100@mail.bg>
Date: Fri, 10 Jul 2015 11:47:50 +0300
From: Nikolay Dimitrov <picmaster@mail.bg>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Icedove/31.7.0
MIME-Version: 1.0
To: Andrei Gherzan <andrei@gherzan.ro>, 
	Paul Eggleton <paul.eggleton@linux.intel.com>
References: <1435292188-29514-1-git-send-email-jon.szymaniak@gmail.com>	<20150706084005.GA8098@ad.chargestorm.se>
	<559A4F02.8040907@mail.bg>	<8257415.nZmIxnRxaN@peggleto-mobl.ger.corp.intel.com>
	<CAK18fxGnkbAtveQND5zCs-KntpPjoZPMzn1_hmHVNKZMWrc1zQ@mail.gmail.com>
In-Reply-To: <CAK18fxGnkbAtveQND5zCs-KntpPjoZPMzn1_hmHVNKZMWrc1zQ@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>,
	Anders Darander <anders@chargestorm.se>
Subject: Re: [meta-raspberrypi][PATCH] firmware.inc: Fetch a zip instead of cloning a git repo
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
X-List-Received-Date: Fri, 10 Jul 2015 08:47:55 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Hi Andrei,

On 07/09/2015 11:13 PM, Andrei Gherzan wrote:
> Finally I hop on to this discussion too.
>
> On Mon, Jul 6, 2015 at 12:58 PM, Paul Eggleton
> <paul.eggleton@linux.intel.com <mailto:paul.eggleton@linux.intel.com>>
> wrote:
>
>     On Monday 06 July 2015 12:48:50 Nikolay Dimitrov wrote:
>     > One issue with the regularly changing tarball checksums is that people
>     > start to get used to thes changes (e.g. everything looks like false
>     > positive). Currently the tarball checksums and SCM revisions are
>     > probably the most important tool for builds traceability. If we get
>     > used to think about these checksums as "unreliable", it will be much
>     > easier to miss an important component change, which would otherwise
>     > ring a bell.
>
>     Fully agreed.
>
>     There are a couple of things I think we can do here:
>
>     1) Implement shallow cloning in bitbake's git fetcher as suggested. This
>     shouldn't be too tricky. I've filed a bug to track this:
>
>     https://bugzilla.yoctoproject.org/show_bug.cgi?id=7958
>
>     (Richard is the default assignee, but anyone could potentially work
>     on this).
>
>
> This should be the fix that would really fix the issue. And would be a
> useful feature for many other BSPs / layers out there.
>
>     2) In the mean time we could consider upload git mirror tarballs to
>     a source
>     mirror that gets enabled through meta-raspberrypi (would need to be via
>     PREMIRRORS to actually solve the issue). This has the advantage that it
>     wouldn't require any changes to the kernel recipe itself, but new
>     tarballs
>     would of course need to be uploaded every time SRCREV is changed in the
>     recipe.
>
>
> And until 1) is done, we can have a premirror. Paul, can you upload a
> tarball? Can I help you with anything for having this up? After we have
> this, can we force premirrors when using a specific layer? Was thinking
> of forcing it by adding PREMIRRORS to layer.conf.

I don't think this is a good move. The current solution is already
working properly, although with slower-than-ideal download speed.

Prepackaged tarballs will require constant manpower for supporting,
and it's probably better to be invested into looking for a better
solution.

>
> Using github snapshots is not a good idea. Most of the issues you guys
> pointed out above I experienced as well. In my opinion we should combine
> Paul's solutions in order to address this problem.
>
> One more thing. Given the fact the the repository we are talking about
> is not under our control, we shouldn't rely on releases or other things
> from the remote repository.
>
> Andrei
>
>

Regards,
Nikolay

