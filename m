Return-Path: <paul.eggleton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 12ED1E00D72; Thu, 20 Oct 2016 12:33:08 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29D43E00D72
	for <yocto@yoctoproject.org>; Thu, 20 Oct 2016 12:33:03 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga102.jf.intel.com with ESMTP; 20 Oct 2016 12:33:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,372,1473145200"; d="scan'208";a="892197666"
Received: from swang16-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.182.202])
	by orsmga003.jf.intel.com with ESMTP; 20 Oct 2016 12:33:01 -0700
From: Paul Eggleton <paul.eggleton@intel.com>
To: akuster808 <akuster808@gmail.com>
Date: Fri, 21 Oct 2016 08:32:58 +1300
Message-ID: <2598431.tXBTFlZuD7@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.7.7-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <d6402792-2a48-60f4-bf27-c9758128eabb@gmail.com>
References: <1669674.XxUMWkXXym@peggleto-mobl.ger.corp.intel.com>
	<d6402792-2a48-60f4-bf27-c9758128eabb@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: 2.2 release note material
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
X-List-Received-Date: Thu, 20 Oct 2016 19:33:08 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Armin,

On Thu, 20 Oct 2016 08:26:37 akuster808 wrote:
> Regarding the CVE list. I see some info is based on what was in the
> commit messages for package updates. I suspect the list would be bigger
> because of general package updates. Should the release notes make note
> of that?
>   Should the community in general provide more info in the commits to
> help with release notes if that is a source used for that process?

We really should include that - unfortunately I didn't have time to track down 
all of those, assembling this list took several days of grinding through the 
commits as it was. I did check upstream for some of the upgrades where a CVE 
patch was removed just to verify that fix was indeed included in the upgrade, 
and for those I collected any others that were listed as having been fixed, 
but I wasn't really systematic about that.

Do you know if there's any central resource we can use to find out which 
versions of upstream software included which CVE fixes, or is it perhaps time 
we started gathering links to the changelogs for each recipe? (Maybe we should 
do the latter anyway.)

Cheers,
Paul

-- 
Paul Eggleton
Intel Open Source Technology Centre

