Return-Path: <sgw@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4F70EE00815; Tue, 27 Jan 2015 13:14:17 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C0A9E00753
	for <yocto@yoctoproject.org>; Tue, 27 Jan 2015 13:14:12 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga103.fm.intel.com with ESMTP; 27 Jan 2015 13:08:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,476,1418112000"; d="scan'208";a="657547783"
Received: from cmfiguer-mobl.amr.corp.intel.com (HELO
	swold-mobl5.amr.corp.intel.com) ([10.252.248.194])
	by fmsmga001.fm.intel.com with ESMTP; 27 Jan 2015 13:14:10 -0800
Message-ID: <54C7FFA2.3010407@linux.intel.com>
Date: Tue, 27 Jan 2015 13:14:10 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: Ash Charles <ashcharles@gmail.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <CAK8F28mUrgh3nXrOu0Mdb0zrWEgvtnjX-bD2UebzGskA4y4taA@mail.gmail.com>
In-Reply-To: <CAK8F28mUrgh3nXrOu0Mdb0zrWEgvtnjX-bD2UebzGskA4y4taA@mail.gmail.com>
Subject: Re: 'screen' MACHINE_FEATURE
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
X-List-Received-Date: Tue, 27 Jan 2015 21:14:17 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 01/27/2015 11:01 AM, Ash Charles wrote:
> Hi,
>
> Based on the yocto manual [1], it looks like "screen" is a valid
> MACHINE_FEATURE and, in fact, it looks like some machines actually
> call out this feature.  That said, I can't actually see that this
> MACHINE_FEATURE is used.  I checked with buildhistory and some
> grepping but maybe I missed something?
> Should I be keeping this in my machines or is the deprecated?
>
It seems to be deprecated, looking back in history shows 
task-base-screen which is included in older releases has been empty, 
although that allows BSPs to override it, but since it's not even 
included in newer versions.

See: ca8f7ecca7c19933ffcf1a9f080a39a84318ebb4

git log -p (great option).

Sau!

> Thanks for any insight,
> --Ash
>
> [1] http://www.yoctoproject.org/docs/1.7.1/mega-manual/mega-manual.html#ref-features-machine
>

