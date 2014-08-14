Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82B4FE007A1; Thu, 14 Aug 2014 06:34:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0EFC2E0079A
	for <yocto@yoctoproject.org>; Thu, 14 Aug 2014 06:34:28 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga102.fm.intel.com with ESMTP; 14 Aug 2014 06:34:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,862,1389772800"; d="scan'208";a="372363739"
Received: from atdias-mobl.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.122.159])
	by FMSMGA003.fm.intel.com with ESMTP; 14 Aug 2014 06:30:53 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Marius Avram <marius.avram@intel.com>
Date: Thu, 14 Aug 2014 14:34:13 +0100
Message-ID: <1580471.XteULgeLPi@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.13.3 (Linux/3.15.8-200.fc20.x86_64; KDE/4.13.3; x86_64; ; )
In-Reply-To: <1407936728-15722-1-git-send-email-marius.avram@intel.com>
References: <1407936728-15722-1-git-send-email-marius.avram@intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/7] AUH: buildhistory-diff support
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
X-List-Received-Date: Thu, 14 Aug 2014 13:34:34 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 13 August 2014 16:32:01 Marius Avram wrote:
> The maintainer will received the output given by
> buildhistory-diff. If no diff is found the attachement
> will not be created.
> 
> A branch with the changes included in this patcheset
> can also be found here:
> 
> http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=mavram/buildhi
> story-diff
> 
> Marius Avram (7):
>   Add buildhistory-diff as attachment to email
>   Fixed bug of selected attachements for email
>   Added error message when buildhistory not active
>   README: Added buildhistory configuration
>   Info messages start with upper case
>   Fix adding new files to recipe bug
>   Add missing import

Thanks Marius - I've merged these, though I squashed the last commit into the 
first and tweaked the README addition slightly.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

