Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23A83E00BC4; Wed, 21 Jun 2017 02:27:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3269E00B2E
	for <yocto@yoctoproject.org>; Wed, 21 Jun 2017 02:27:25 -0700 (PDT)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	21 Jun 2017 02:27:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,368,1493708400"; d="scan'208";a="100055296"
Received: from pkoeberl-mobl.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.42.40])
	by orsmga004.jf.intel.com with ESMTP; 21 Jun 2017 02:27:21 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Aaron_Wright@selinc.com
Date: Wed, 21 Jun 2017 11:27:20 +0200
Message-ID: <5720328.AT7l5fZ327@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <OFAC33F033.6C57D957-ON88258145.007322E1-88258145.0073CEEA@selinc.com>
References: <OFAC33F033.6C57D957-ON88258145.007322E1-88258145.0073CEEA@selinc.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Yocto eSDK, Editing/Adding Recipes, and VCS
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
X-List-Received-Date: Wed, 21 Jun 2017 09:27:28 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Aaron,

On Tuesday, 20 June 2017 11:04:56 PM CEST Aaron_Wright@selinc.com wrote:
> I've been trying to document some workflows for my developers using the 
> Yocto eSDK for our image, but I am coming up empty when it comes to 
> editing or adding recipes. I can use devtool to edit a recipe like so:
> 
> devtool edit-recipe -a my-recipe
> 
> But any changes I make are hidden away in the 
> esdk/layers/poky/meta-mylayer directory, which isn't managed by a VCS (git 
> in this instance). So there's this modified file in a directory--great. 
> What is the developer supposed to do with it? Copy it over to a VCS 
> managed directory of meta-mylayer, commit, and push?
> 
> I feel like I'm missing something with the devtool workflow. Can anyone 
> point me in the right direction?

So making changes to existing recipes isn't a very well developed area of the
eSDK at the moment, you're not missing anything. There is a bug open to deal
with this:

  https://bugzilla.yoctoproject.org/show_bug.cgi?id=10505

Thinking off the top of my head, a relatively simple workaround would be
to do something like this (in your image recipe or a class inherited from
it):

sdk_ext_postinst_append() {
	cd $target_sdk_dir/layers/<layerpath>
	git init
	git add -A .
	git commit -m "Initial commit"
	cd $target_sdk_dir
}

This will be executed at the end of installation and would at least let you track
changes, although as you rightly point out they will be a bit buried inside the
SDK structure.

Cheers,
Paul



-- 

Paul Eggleton
Intel Open Source Technology Centre

