Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59A85E009C5; Thu, 13 Aug 2015 05:39:19 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3EA6E00947
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 05:39:17 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga102.fm.intel.com with ESMTP; 13 Aug 2015 05:39:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,670,1432623600"; d="scan'208";a="747848914"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.143])
	([10.237.68.143])
	by orsmga001.jf.intel.com with ESMTP; 13 Aug 2015 05:39:13 -0700
Message-ID: <55CC903F.2030801@linux.intel.com>
Date: Thu, 13 Aug 2015 15:40:31 +0300
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Icedove/31.7.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <90967689f471f5ac0cf4edca77457a8c@codethink.co.uk>
In-Reply-To: <90967689f471f5ac0cf4edca77457a8c@codethink.co.uk>
Subject: Re: How to submit patches upstream for repos at git.yoctoproject.org (eg meta-renesas)
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
X-List-Received-Date: Thu, 13 Aug 2015 12:39:19 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 08/13/2015 02:21 PM, Paul Sherwood wrote:
> I am not affiliated to any Yocto Project member organisation, but am
> assisting with integration at the Automotive Grade Linux project, which
> is re-using some work from upstreams at git.yoctoproject.org
>
> Recently members of the AGL community have started contributing patches
> for meta-renesas at our mirror [1]. We would like to offer this and
> future work to upstream, and I am hoping to understand so that I can
> help guide AGL's activities so that we are properly aligned. Please can
> someone guide us on the accepted way to offer these and subsequent patches?

I think these two pages provide a comprehensive answer:

http://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded
http://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines


Alex


