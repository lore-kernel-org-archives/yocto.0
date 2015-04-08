Return-Path: <sgw@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7BFBE0076B; Wed,  8 Apr 2015 08:34:03 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F3DAE00952
	for <yocto@yoctoproject.org>; Wed,  8 Apr 2015 08:33:59 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga103.fm.intel.com with ESMTP; 08 Apr 2015 08:33:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,545,1422950400"; d="scan'208";a="552936229"
Received: from vg1-mobl.amr.corp.intel.com (HELO
	swold-mobl.amr.corp.intel.com) ([10.254.110.78])
	by orsmga003.jf.intel.com with ESMTP; 08 Apr 2015 08:33:59 -0700
Message-ID: <55254A67.1080001@linux.intel.com>
Date: Wed, 08 Apr 2015 08:33:59 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: "J.J. Garcia" <sm0ketst@gmail.com>, yocto@yoctoproject.org
References: <CABMtxuwPi_2Z700qF3ESMZRoqRnFYfbXO1Hb=p3X2oEw+DFniw@mail.gmail.com>
In-Reply-To: <CABMtxuwPi_2Z700qF3ESMZRoqRnFYfbXO1Hb=p3X2oEw+DFniw@mail.gmail.com>
Subject: Re: [meta-intel]
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
X-List-Received-Date: Wed, 08 Apr 2015 15:34:03 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 04/08/2015 06:28 AM, J.J. Garcia wrote:
> Hi all
>
> I'm trying to use the meta-intel/DIZZY branch (MACHINE defined as
> intel-core2-32) for an Atom D2550 unit.
>
> AFAIK the 2550 supports the 64 bits so, which is the best way to build the
> image for the unit?
>
> Is it recommended to go for DEFAULTTUNE="core2-64" in local.conf while
> using the intel-core2-32 MACHINE?
>
Yes that should be correct, if you want to use 64 bit instructions with 
that cpu you need to use the core2-64 tune.  Please let us know if you 
have any problems with that.

Also for meta-intel related questions please use the 
meta-intel@yoctoproject.org list as it will be seen by the right team

Sau!

> Thanks in advance
>
> JJ
>
>
>

