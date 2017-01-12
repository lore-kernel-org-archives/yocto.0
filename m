Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20410E007AE; Wed, 11 Jan 2017 20:57:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54ED4E00524
	for <yocto@yoctoproject.org>; Wed, 11 Jan 2017 20:57:49 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v0C4vdsV003165
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 11 Jan 2017 20:57:39 -0800 (PST)
Received: from [128.224.162.196] (128.224.162.196) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.294.0;
	Wed, 11 Jan 2017 20:57:38 -0800
To: Joe MacDonald <Joe_MacDonald@mentor.com>, <shrikant_bobade@mentor.com>
References: <20170110144821.GC8258@mentor.com>
From: wenzong fan <wenzong.fan@windriver.com>
Message-ID: <5fe24a37-12c7-13f1-c2a4-5c1f2dffef3c@windriver.com>
Date: Thu, 12 Jan 2017 12:57:33 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <20170110144821.GC8258@mentor.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux] What's the point of refpolicy-minimum?
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
X-List-Received-Date: Thu, 12 Jan 2017 04:57:52 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 01/10/2017 10:48 PM, Joe MacDonald wrote:
> Wenzong / Shrikant,
>
> I thought I knew the answer to the above question, and maybe my
> understanding is still correct, but I think I need to ask it now anyway.
>
> I don't use refpolicy-minimum for anything, so when I did the updates to
> refpolicy*_git I didn't even glance at refpolicy-minimum_git.  Wenzong's
> change to refpolicy-minimum_2.20161023 (in the same thread as the uprev
> of the recipe) piqued my curiosity, so I had a look.  Of course,
> refpolicy-minimum_git.bb also needs to be updated (or thrown out), but
> now that I'm looking at the recipe I see what seems like conflicting
> statements in the recipe:
>
>    recipes-security/refpolicy/refpolicy-minimum_2.20161023.bb:
>
>      1 include refpolicy-targeted_${PV}.bb
>      2
>      3 SUMMARY = "SELinux minimum policy"
>      4 DESCRIPTION = "\
>      5 This is a minimum reference policy with just core policy modules, and \
>      6 could be used as a base for customizing targeted policy. \
>      7 Pretty much everything runs as initrc_t or unconfined_t so all of the \
>      8 domains are unconfined. \
>      9 "
>
> and:
>
>    recipes-security/refpolicy/refpolicy-targeted_2.20161023.bb:
>
>      1 SUMMARY = "SELinux targeted policy"
>      2 DESCRIPTION = "\
>      3 This is the targeted variant of the SELinux reference policy.  Most service \
>      4 domains are locked down. Users and admins will login in with unconfined_t \
>      5 domain, so they have the same access to the system as if SELinux was not \
>      6 enabled. \
>      7 "
>
> So now I'm trying to understand what the point of refpolicy-minimum
> really is here.  Those of you who are using it, what are you using it
> for and what do you expect would be the correct behaviour of a system
> running that policy?
>

I don't have much experience on using the refpolicy-minimum as well.

But from the original logs it should be "minimum targeted policy".

commit 65675f02e33f5da31ec5dbac7a45849f4952569b
Author: Wenzong Fan <wenzong.fan@windriver.com>
Date:   Mon Mar 24 21:07:50 2014 -0400

     refpolicy: add minimum targeted policy

     This is a minimum targeted policy with just core policy modules, and
     could be used as a base for customizing targeted policy.
     Pretty much everything runs as initrc_t or unconfined_t so all of the
     domains are unconfined.

     Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
     Signed-off-by: Joe MacDonald <joe@deserted.net>


> At the very least, I'm going to remove the 'include [...].bb' from both
> 'minimum' recipes, as that's completely incorrect, but when I do that I
> want to know what anyone using this recipe wants to see from it, so
> whatever the 'include' gets replaced with is doing the right thing
> (which isn't necessarily what it's doing today).

I won't object to make the changes, if you think there should be a 
different minimum policy with targeted.

Thanks
Wenzong

>

