Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 475EEE00BC6; Thu, 26 Nov 2015 03:04:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36EC5E00343
	for <yocto@yoctoproject.org>; Thu, 26 Nov 2015 03:04:06 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 26 Nov 2015 03:03:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,346,1444719600"; d="scan'208";a="860165350"
Received: from boonguan-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.169.188])
	by fmsmga002.fm.intel.com with ESMTP; 26 Nov 2015 03:03:46 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Belisko Marek <marek.belisko@gmail.com>
Date: Fri, 27 Nov 2015 00:03:44 +1300
Message-ID: <1906079.hoisBn1qUN@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.1.13-100.fc21.x86_64; KDE/4.14.11; x86_64; ;
	)
In-Reply-To: <CAAfyv37MZCr1cRNedU9xsbNwXQLejQSaibmd+z6cwYBANzAt=g@mail.gmail.com>
References: <CAAfyv37MZCr1cRNedU9xsbNwXQLejQSaibmd+z6cwYBANzAt=g@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: PRINC functionality workaround
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
X-List-Received-Date: Thu, 26 Nov 2015 11:04:08 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Marek,

On Thursday 26 November 2015 08:16:51 Belisko Marek wrote:
> after upgrading to jethro release PRINC functionality was removed by
> commit : a4d530bcf55f03258078c10a123e2717444e1060 on oe-core. PRINC
> functionality was used in some of our recipes so I took part from
> PRINC funtionality and put is to separate method (in bbclass) [0]

You'll have to forgive me for asking the obvious question - why aren't you 
using the PR server?
 
> I'm trying to use it in bbappend like:
> inherit veryspecial_helpers
> PR := ${increase_pr(5)} but this seems to be then evaluated as :
> u-boot/2015.07-${increase_pr(5)} which is wrong and fails.
> 
> Any ideas what is wrong with this approach? Maybe some brackets? Many
> thanks.

missing @ ?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

