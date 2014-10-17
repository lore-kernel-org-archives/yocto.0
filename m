Return-Path: <sgw@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CAEB2E007B9; Fri, 17 Oct 2014 09:33:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1FA19E006EF
	for <yocto@yoctoproject.org>; Fri, 17 Oct 2014 09:33:07 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga103.fm.intel.com with ESMTP; 17 Oct 2014 09:22:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,740,1406617200"; d="scan'208";a="607094010"
Received: from unknown (HELO [10.255.13.70]) ([10.255.13.70])
	by fmsmga001.fm.intel.com with ESMTP; 17 Oct 2014 09:32:40 -0700
Message-ID: <544144A8.9040204@linux.intel.com>
Date: Fri, 17 Oct 2014 09:32:40 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.7.0
MIME-Version: 1.0
To: Jate Sujjavanich <jatedev@gmail.com>, 
	Elizabeth Flanagan <elizabeth.flanagan@intel.com>
References: <CAPphmgZBXAod92ddPR_3VFReStBgBNshTNEKxfOATZ1caeq+Kw@mail.gmail.com>
In-Reply-To: <CAPphmgZBXAod92ddPR_3VFReStBgBNshTNEKxfOATZ1caeq+Kw@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: local.conf assignment priority with autobuilder
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
X-List-Received-Date: Fri, 17 Oct 2014 16:33:12 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10/15/2014 02:45 PM, Jate Sujjavanich wrote:
> I am attempting to control debug-tweaks via an image recipe.
>
> Previous posts suggest that the autobuilder will use auto.conf and ignore
> local.conf. However, meta/conf/bitbake.conf says that the include order is
> auto.conf, and then local.conf.
>
Correct, the autobuilder will use auto.conf to load it's modifications, 
but as you note in bitbake.conf, the local.conf will also be loaded 
after auto.conf.

> This means that the default local.conf.template installed overrides with a
> regular assignment.
>
> EXTRA_IMAGE_FEATURES = "debug-tweaks"
>
>
> Perhaps the assignment in local.conf be a weak one, i.e. ?= where it would
> not override a previous assignment.
>

You can use EXTRA_IMAGE_FEATURES_remove = "debug-tweaks" which will 
remove it when it's finalized.

If you want to add to EXTRA_IMAGE_FEATURES you can use += operation.

Sau!

> Or maybe I need a new buildstep. How should I be doing this?
>
>
> - Jate S.
>
>
>

