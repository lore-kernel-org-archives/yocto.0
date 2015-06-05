Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A2D0EE009DF; Fri,  5 Jun 2015 05:52:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24787E0098D
	for <yocto@yoctoproject.org>; Fri,  5 Jun 2015 05:52:36 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 05 Jun 2015 05:52:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,558,1427785200"; d="scan'208";a="741577287"
Received: from gzdancew-mobl1.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.5.87])
	by orsmga002.jf.intel.com with ESMTP; 05 Jun 2015 05:52:35 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Alex Franco <alejandro.franco@linux.intel.com>
Date: Fri, 05 Jun 2015 13:52:34 +0100
Message-ID: <3745667.55tUrhJBrM@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.7 (Linux/3.19.7-200.fc21.x86_64; KDE/4.14.7; x86_64; ; )
In-Reply-To: <1433277366-16113-1-git-send-email-alejandro.franco@linux.intel.com>
References: <1433277366-16113-1-git-send-email-alejandro.franco@linux.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/2] [layerindex-web] Support for recipe inherits field v2
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
X-List-Received-Date: Fri, 05 Jun 2015 12:52:39 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Alex,

On Tuesday 02 June 2015 15:36:05 Alex Franco wrote:
> Modified: models.py, update.py, recipes.html, detail.html,
> recipedetail.html, additional.css
> 
> To identify image recipes and provide inheritance data for recipes, an
> inherits field was added to the recipe model, and then populated using
> refactored data from __inherit_cache. Finally the field was also added
> to Toaster templates, along with style changes proposed in attachment.
> Inherits field skips recipes from globally inherited data as proposed.
> 
> [YOCTO #7575]

Thanks for this. I have one or two other (unrelated) minor changes I'd like to 
make to the layer index that'll also require db upgrades, so I'll try to get 
those sent out soon and do the upgrades for them together.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

