Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE05CE00A44; Wed, 22 Jun 2016 07:57:52 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF992E00A44
	for <yocto@yoctoproject.org>; Wed, 22 Jun 2016 07:57:49 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id u5MEvl06006580
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 22 Jun 2016 07:57:48 -0700 (PDT)
Received: from soho-mhatle-m.local (172.25.36.230) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.248.2;
	Wed, 22 Jun 2016 07:57:44 -0700
To: Kyle Russell <bkylerussell@gmail.com>
References: <CAFrQVPMhmCAT+TfdOmQ95LsaTSc13=6GNvc=L=6cHmACGHRZgw@mail.gmail.com>
	<856fbb9f-74bc-545b-f5e5-3405d452c0f2@windriver.com>
	<CAFrQVPOE2bwaiQ9iDx8ogKuc_CCG2RjVu8NKfW-UOgp+LPLR8w@mail.gmail.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <2dd61737-29f6-98e6-60e1-13625d355de9@windriver.com>
Date: Wed, 22 Jun 2016 09:57:45 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:45.0)
	Gecko/20100101 Thunderbird/45.1.1
MIME-Version: 1.0
In-Reply-To: <CAFrQVPOE2bwaiQ9iDx8ogKuc_CCG2RjVu8NKfW-UOgp+LPLR8w@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: prelink support
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
X-List-Received-Date: Wed, 22 Jun 2016 14:57:52 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit

On 6/22/16 3:06 AM, Kyle Russell wrote:
> The cross_prelink_staging branch seems to work for our ARM Cortex-A53 configuration.
> 
> The only issue that I ran into was building src/rtld/dl-open.c.  I guess the
> GCCVERSION we declared (4.9%) was defaulting to a language standard that didn't
> support for loop initial declarations.

What is the specific error you got?  This is the type of stuff I'd like to resolve.

Are you using a branch and gcc that is part of OpenEmbedded?  If so, I need to
know how to configure the system so I can attempt to reproduce and work around
the issue.

--Mark

> On Mon, Jun 20, 2016 at 9:15 AM, Mark Hatle <mark.hatle@windriver.com
> <mailto:mark.hatle@windriver.com>> wrote:
> 
>     On 6/20/16 7:24 AM, Kyle Russell wrote:
>     > It looks like the image-prelink support is still disabled in master because of
>     > an issue with IFUNC symbol relocation.
>     >
>     >
>     https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/meta-poky/conf/local.conf.sample?id=8debfea81e69d038bd2d56314b272cb74f5582ed
>     >
>     > Is there still a problem, or is it safe to reenable image-prelink?  I see
>     a "Fix
>     > ARM IFUNC support" in the prelink-cross repo, but that appears to have been
>     > committed several months before image-prelink was disabled.  We'd like to
>     enable
>     > image-prelink on a build off jethro.
>     >
>     > Any help or links to a recent discussion thread would be helpful.  Thanks!
>     >
>     >
> 
>     The ARM fix is for a different IFUNC problem.
> 
>     Disabling the prelinker was caused by a serious of problems that started with a
>     fork failure traced back to shared library processing orders.
> 
>     (For comments below, I'm referring to the repository:
>     http://git.yoctoproject.org/cgit/cgit.cgi/prelink-cross/)
> 
>     The initial problem, IFUNC processing, showed that processing order of the
>     shared libraries could lead to a case where the wrong IFUNC was used.  We
>     believe this particular issues was fixed in the staging tree.
> 
>     In the tree you'll see a cross_prelink_staging branch.  In that branch the fix
>     is commit ID: "8f55afd84b3580b1f1d6af904e8c2a39221055b7"  This fixes the 'fork'
>     issue by ensuring the proper sort order for shared library processing.  (This
>     was finally fixed in March.)
> 
>     However with that we determined there was at least one more issue related to
>     section ordering.  The prelink test suite was failing due to various integrity
>     checks showing that once we prelinked something, we could not reverse the
>     process.  It has taken us months to identify the cause of the problem and the
>     solution.  (Cause BTW was a change in binutils-2.22 that no longer ensured that
>     the section order was sorted by offset order... a small amount of the prelink
>     processing needed to be changed to deal with that behavior.  It's taken far
>     longer to fix then we had ever expected.)
> 
>     See commit (33be255d62af533189f1f7bc66c06602b703980a) in the
>     cross_prelink_staging branch.
> 
>     With this commit, I think the two major issues have been resolved.  I've got a
>     small set of additional patches I need to put into place -- and then I have to
>     finish going through the regression suite to verify everything is working
>     properly.  (Seems like every time I get to this step, something else comes up
>     and I'm not getting it done...)
> 
>     So if you've read this far, the point in all of this is that I THINK that the
>     cross_prelink_staging branch and current top commit
>     "33be255d62af533189f1f7bc66c06602b703980a" are working.  However, I've not
>     completed testing so I'm not sure of that yet.
> 
>     If you can help with testing, you should modify your prelink recipe to use the
>     'cross_prelink_staging' branch, and the 33be255 commit.  Verify that this is
>     working for your use cases.  If you are using glib or graphical environments pay
>     particular attention to process startup messages that indicate failures.
> 
>     If this IS working for you, I'd like a reply back with the architecture and
>     processor you are using so I can add that to my matrix.  (I'm traveling for the
>     next couple of days, and then should be back in the officer where I hope to
>     finish my regression testing, apply the last couple of patches from Gentoo
>     developers, regression test again and prepare a release version.)
> 
>     Any help is appreciated, thanks for understanding why this is taking so long.
> 
>     --Mark
> 
> 


