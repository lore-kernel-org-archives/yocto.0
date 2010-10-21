Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 14C3C4C801BF
	for <yocto@yoctoproject.org>; Thu, 21 Oct 2010 07:47:53 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id o9LClp4Z002691;
	Thu, 21 Oct 2010 13:47:51 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 02140-09; Thu, 21 Oct 2010 13:47:47 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id o9LCliVo002685
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 21 Oct 2010 13:47:45 +0100
From: Richard Purdie <rpurdie@linux.intel.com>
To: "You, Yongkang" <yongkang.you@intel.com>
In-Reply-To: <F26D193E20BBDC42A43B611D1BDEDE712151801BB8@shsmsx502.ccr.corp.intel.com>
References: <F26D193E20BBDC42A43B611D1BDEDE712151801BB8@shsmsx502.ccr.corp.intel.com>
Date: Thu, 21 Oct 2010 13:47:34 +0100
Message-ID: <1287665254.16386.453.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Please verify the fixed bug in bugzilla.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <https://lists.pokylinux.org/private/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 21 Oct 2010 12:47:54 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2010-10-21 at 15:44 +0800, You, Yongkang wrote:
> Hi all,
> 
> I just had a quick search in bugzilla and found a lot of bugs are resolved but not verified. We'd better to verify the fix before 0.9 launch. 
> 
> The M4 resolved (but not verified) bugs (88):
> http://bugzilla.pokylinux.org/buglist.cgi?bug_status=RESOLVED&query_format=advanced&target_milestone=0.9%20M4&query_based_on=&columnlist=bug_severity%2Creporter%2Cpriority%2Cop_sys%2Cassigned_to%2Cbug_status%2Cresolution%2Cshort_desc%2Cproduct%2Ccomponent
> 
> All resolved (but not verified) bugs (198):
> http://bugzilla.pokylinux.org/buglist.cgi?query_format=advanced&bug_status=RESOLVED

Just to remind people, who is responsible for verifying a bug? The
original reporter?

Cheers,

Richard


