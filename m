Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91269E00DE7; Wed,  3 Aug 2016 00:41:45 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50B3CE00DD1
	for <yocto@yoctoproject.org>; Wed,  3 Aug 2016 00:41:43 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga101.fm.intel.com with ESMTP; 03 Aug 2016 00:41:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,465,1464678000"; d="scan'208";a="1028839609"
Received: from mbabyjoh-desk.fi.intel.com (HELO
	mbabyjoh-desk.ger.corp.intel.com) ([10.237.72.71])
	by orsmga002.jf.intel.com with ESMTP; 03 Aug 2016 00:41:37 -0700
Date: Wed, 3 Aug 2016 10:41:22 +0300
From: "Maxin B. John" <maxin.john@intel.com>
To: Scott Rifenbark <srifenbark@gmail.com>
Message-ID: <20160803074122.GA12566@mbabyjoh-desk.ger.corp.intel.com>
References: <1469186936-2848-1-git-send-email-maxin.john@intel.com>
	<CAFNP8OtXx_G4s6wS5G24UJAEGv2=udYfGDYDMUhTrrg+fk1y5w@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAFNP8OtXx_G4s6wS5G24UJAEGv2=udYfGDYDMUhTrrg+fk1y5w@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] swabber: remove from documentation
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
X-List-Received-Date: Wed, 03 Aug 2016 07:41:45 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Scott,

On Fri, Jul 22, 2016 at 08:14:24AM -0700, Scott Rifenbark wrote:
>Hi,
>
>>Is it safe to apply this patch to the docs?  In the past, I have applied patches too soon to the docs.  Let me know.

Since swabber support in oe-core is a dead parrot now, this patch
is safe to apply to the docs :)

>Thanks,
>Scott
>>
>>On Fri, Jul 22, 2016 at 4:28 AM, Maxin B. John <maxin.john@intel.com> wrote:
>>
>> Remove documentation as swabber was removed from
>> oe-core with this commit:
>> commit a7ddbea345c90646e6b9ddb89f768865caffdf07
>> Author: Richard Purdie <richard.purdie@linuxfoundation.org>
>> Date:   Mon Jun 6 12:08:56 2016 +010
<snip>

Best Regards,
Maxin

