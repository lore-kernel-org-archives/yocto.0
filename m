Return-Path: <bunk@stusta.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 931D8E00D00; Wed,  6 Nov 2019 13:41:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [141.84.69.5 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail.stusta.mhn.de (mail.stusta.mhn.de [141.84.69.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67CA6E00BB5
	for <yocto@yoctoproject.org>; Wed,  6 Nov 2019 13:41:12 -0800 (PST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 477g2Z3tmdz9v;
	Wed,  6 Nov 2019 22:41:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1573076470;
	bh=l2Gxf3HpoIo8ARDKF61anQdWtuHoxneZqIYYSNtmaro=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=THxfQ8kbwedo4zPNHKHopMttbcSVr1FjOi2ZMVQDToNAoGnLmPV/FpqQf6zPLA6qt
	bAyxl4IxFUpj6FqT5gz2g3iMFO7PLDswMwrQWJOVHPiECPuGpiPWlqNZW3JcvhS4eY
	oQrSTkVofUpsC5zhUySF/ZtHy1gry4KC/ANk6QH1OEgSWjeIApr+mK9PNgVM+pqjSN
	u7Y58HOABfevvrJFg7mCJLpG8Y7rkDTMKJrmM09z/mbasmDLBvAwYwx93puX1I+BHY
	ozjIjYT3xEODwz9WEwNpHafRYZxV/c8a2VnYc0fGgKaI0SCzIgZ1X8uEj2Yu0avCBi
	zTbSoLqP8qZWt58/M1FRaDQJjte2sIdNprK/VcBqu68LV53+MFoiAnDOuhCyTBtS3h
	E4iRgP1vKIwgEyHlak0QpGg8EyQpIPDFT2Hn/Evd/W7P94R7+hol9zq543b3/485aq
	zwq+cLNQzcIGlgSVip42MfAI6EYrrx5EC6ZVR+PTsR7/jLmBVDlDHQZFBfFgEUF/pK
	Deh748DDYGzI0RTCzY9mJhdKrRFqjPkPyty6zoDDw8Jh3kHB1cI2WrQjofRw1/nkmD
	HOYWuFifklZcrytiObsjfZr2hNyFWnsdv6M/mSEk9eMp0Zx5ldM/v1oyQFJXaSKc7K
	u3fof44ThkkwcFFTxlvAlwzA=
Date: Wed, 6 Nov 2019 23:41:08 +0200
From: Adrian Bunk <bunk@stusta.de>
To: Paul Barker <paul@betafive.co.uk>
Message-ID: <20191106214108.GC14721@localhost>
References: <ab96ec4a-5dcb-4d01-8519-13c00094a44c@www.fastmail.com>
MIME-Version: 1.0
In-Reply-To: <ab96ec4a-5dcb-4d01-8519-13c00094a44c@www.fastmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	OE Architecture <openembedded-architecture@lists.openembedded.org>,
	OE Devel <openembedded-devel@lists.openembedded.org>
Subject: Re: Using GitLab for OE/Yocto layers
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
X-List-Received-Date: Wed, 06 Nov 2019 21:41:15 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Wed, Nov 06, 2019 at 04:01:03PM +0000, Paul Barker wrote:
>...
> At the risk of bikeshedding I'd like to get some feedback on these ideas at this stage. Have I missed any advantages/disadvantages?
>...

Three comments from me:


1. Patch review

Merge requests work well when there is one maintainer who reviews 
everything. For not regressing on the current level of review before
something hits master, merging a merge request into master-next
should then result in patch review emails sent to a list.
Or a setup where creation of a merge request automatically generates
review emails.

This is similar to all patches for stable branches now being sent for 
review to the mailing list a few days before they get merged into the 
stable branch, which has caught problematic patches due to more people 
reviewing them.


2. Maintaining an own GitLab instance

This was mentioned as an option. Expect upgrades to new GitLab releases 
once per month, which is work and as with all software never without 
regression risk.

Not a dealbreaker, but has to be resourced.


3. Long-term suistainability

Whatever the past track record of GitLab is, chances are the company 
behind it will sooner or later be bought by another company - and then 
anything can happen.

The code behind SourceForge was also at some point made available under
an open source licence, and forks being used in instances like Debian
Alioth ended up being unmaintainable dead ends long-term.

Berkeley DB would be an example where the company behind the software 
was bought by another company, and now there are plenty of CVEs that
are unfixable due to changed licencing.

Is there anyone capable and willing to continue open source maintainance 
of the GitLab open source sources if the company behind it would stop 
the open source releases tomorrow?

With projects like GNOME using GitLab the answer might be "yes",
but this should be evaluated before moving infrastructure to GitLab.


> Paul Barker

cu
Adrian

-- 

       "Is there not promise of rain?" Ling Tan asked suddenly out
        of the darkness. There had been need of rain for many days.
       "Only a promise," Lao Er said.
                                       Pearl S. Buck - Dragon Seed


