Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2CED2E00AB4; Wed,  8 Jul 2015 07:36:18 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53530E00978
	for <yocto@yoctoproject.org>; Wed,  8 Jul 2015 07:35:29 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga102.jf.intel.com with ESMTP; 08 Jul 2015 07:35:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,431,1432623600"; d="scan'208";a="520836087"
Received: from ybaig-mobl1.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.19.160])
	by FMSMGA003.fm.intel.com with ESMTP; 08 Jul 2015 07:35:28 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Darcy Watkins <dwatkins@sierrawireless.com>
Date: Wed, 08 Jul 2015 15:35:26 +0100
Message-ID: <130581424.7RvSPDq1dn@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.0.6-200.fc21.x86_64; KDE/4.14.9; x86_64; ; )
In-Reply-To: <8F90F944E50427428C60E12A34A309D2459F358B20@carmd-exchmb01.sierrawireless.local>
References: <8F90F944E50427428C60E12A34A309D2459F124C2C@carmd-exchmb01.sierrawireless.local>
	<8F90F944E50427428C60E12A34A309D2459F358B20@carmd-exchmb01.sierrawireless.local>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: do_make_scripts race condition with externalsrc
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
X-List-Received-Date: Wed, 08 Jul 2015 14:36:18 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Darcy,

On Wednesday 08 July 2015 07:27:02 Darcy Watkins wrote:
> I believe that recent commit to poky master branch dated June 16, 2015 by
> Paul Eggleton touching
> 
>       meta/classes/externalsrc.bbclass
> 
> with comment "classes/externalsrc: handle tasks with existing lockfile"
> 
> Resolves this issue.
> 
> Are there any plans to retro merge it to previous releases such as 'daisy'?

Yep, this one is a good candidate for backporting. I'll add it to my todo 
list.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

