Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B26A5E011FD; Thu, 19 Jul 2018 07:02:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90B70E00EE3
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2018 07:02:51 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	19 Jul 2018 07:02:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,374,1526367600"; d="scan'208";a="247060870"
Received: from wulili-mobl.ger.corp.intel.com (HELO localhost.localdomain)
	([10.252.50.201])
	by fmsmga006.fm.intel.com with ESMTP; 19 Jul 2018 07:02:38 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Mauro Ziliani <mauro@faresoftware.it>
Date: Thu, 19 Jul 2018 16:02:38 +0200
Message-ID: <2219937.nEza9XO89O@localhost.localdomain>
Organization: Intel Corporation
In-Reply-To: <ee33909d-862b-cbd6-0e72-79dbf568b781@faresoftware.it>
References: <ee33909d-862b-cbd6-0e72-79dbf568b781@faresoftware.it>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Setting recipe version inside an image recipe
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
X-List-Received-Date: Thu, 19 Jul 2018 14:02:55 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Mauro

On Thursday, 19 July 2018 2:36:18 PM CEST Mauro Ziliani wrote:
> I'm working with Krogoth.
> 
> I'd like to do this.
> 
> - I have my application added to yocto tree by its own recipe myapp_git.bb
> 
> This recipe get the source code from a local git repository setting  
> SRCREV for the last stable application source code.
> 
> SRCREV is fixed in myapp_git.bb
> 
> 
> - I have the recipe for the final production image for the embedded  
> system  myos.bb, which declare
> 
> IMAGE_INSTALL_append = " myapp "
> 
> The myos.bb compiles myapp with the version declare in myapp_git.bb recipe
> 
> 
> I'd like to do that
> 
> - prepare a base recipe myos-base.inc  where I define all I need the 
> produce the final image with
> 
> IMAGE_INSTALL_append = " myapp "
> 
> - prepare myos.bb recipe where I can fix the version of myapp.bb to a 
> prpduction version
> 
> - prepare myos-test.bb recipre where I can fix the HEAD branch of git 
> from I can download the  latest source code for test.
> 
> 
> I try this
> 
> - inside myapp_git.bb I put SRCREV="${MYAPP_SRCREV}"
> 
> - inside myos.bb I set MYAPP_SRCREV="prodution-version-X" to download 
> the tag/branch production-version-X
> 
> - inside myos-test.bb I set MYAPP_SRCREV="${AUTOREV}" to download the 
> latest git commit

You cannot do this I'm afraid - in general you cannot set a variable in one
recipe that will be read by another. See:

https://wiki.yoctoproject.org/wiki/Technical_FAQ#How_do_I_change_how_my_recipe_is_built_depending_on_what_image_I.27m_building.3F

The only real way to do what you're looking for is to have two different
recipes (where the name is actually different, not just the version). e.g. you
could have myapp_git.bb and myapp-test_git.bb. You could use a common
inc file and "require" that from both .bb files in order to keep the common
parts in one place. Then you can specify the corresponding package name
in each image recipe.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre



