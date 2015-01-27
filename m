Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5935AE008DC; Tue, 27 Jan 2015 02:53:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93208E0083A
	for <yocto@yoctoproject.org>; Tue, 27 Jan 2015 02:53:44 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 27 Jan 2015 02:53:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,474,1418112000"; d="scan'208";a="657230505"
Received: from krogon-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.16.44])
	by fmsmga001.fm.intel.com with ESMTP; 27 Jan 2015 02:53:41 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Fung, Joshua" <joshua.fung@intel.com>
Date: Tue, 27 Jan 2015 10:53:41 +0000
Message-ID: <5139171.QZNK8fR1PZ@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.3 (Linux/3.17.8-200.fc20.x86_64; KDE/4.14.3; x86_64; ; )
In-Reply-To: <0391341A8FEB8748B378C04B6DDBCC0B349FACBE@PGSMSX107.gar.corp.intel.com>
References: <0391341A8FEB8748B378C04B6DDBCC0B349FACBE@PGSMSX107.gar.corp.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Add a new recipe/meta layer to Yocto
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
X-List-Received-Date: Tue, 27 Jan 2015 10:53:48 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Joshua,

On Tuesday 27 January 2015 06:56:14 Fung, Joshua wrote:
> I am new to Yocto project.  I have been working on some SW components, and
> I'll like to know how can I upstream it to Yocto so that it may be reused
> by others. I have searched the FAQ and find
> https://www.yoctoproject.org/blogs/dvhart/2011/extending-yocto-project-poky
> -meta-layers. Yet I still have no clue what to do with the job.
> Anyone care to shed some light ?

Adding new software almost always means adding a recipe, assuming none already
exists. If it's some third-party piece of software you can search the recipes
available in the community here in case someone has already created one:

  http://layers.openembedded.org/layerindex/recipes/

If you need to write a new recipe, have a look here:

  http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#new-recipe-writing-a-new-recipe

Once you're done, if the recipe fits into an existing layer, you could
send a patch to add it to the appropriate layer - here's some info on how
to do that:

  http://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded

Here's some more general information on layers:

  http://www.openembedded.org/Layers_FAQ

HTH.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

