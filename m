Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6CB07E0086D; Fri, 13 Mar 2015 01:53:29 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38D2FE00858
	for <yocto@yoctoproject.org>; Fri, 13 Mar 2015 01:53:26 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 13 Mar 2015 01:53:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,393,1422950400"; d="scan'208";a="691531571"
Received: from bonchen-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.8.183])
	by fmsmga002.fm.intel.com with ESMTP; 13 Mar 2015 01:53:25 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Raghavendra Kakarla <Raghavendra.Kakarla@inedasystems.com>
Date: Fri, 13 Mar 2015 08:53:24 +0000
Message-ID: <2800438.dQj2Pq3DsR@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.18.7-100.fc20.x86_64; KDE/4.14.4; x86_64; ; )
In-Reply-To: <1426234453004.44900@inedasystems.com>
References: <18041737.50.1422871220143.JavaMail.kraghavendra@Raghavendra>
	<1425961288367.52845@inedasystems.com>
	<1426234453004.44900@inedasystems.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Difference b/w yocto kernels and normal linux.org kernels
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
X-List-Received-Date: Fri, 13 Mar 2015 08:53:29 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 13 March 2015 08:14:13 Raghavendra Kakarla wrote:
> Is it kernel is must be a git repository code for building in the yocto?
> 
> When i gave my custom kernel which is not a git repository code and it is in
> my development PC, i got invalid SRCREV number error. But when give the
> same kernel from the git repository it is working. Can you please help me
> in resolving this error.

If you want to use your own non-git sources you are moving further away from
how the linux-yocto recipe works. If you have not already I would suggest
using linux-yocto-custom as described in our kernel development manual:

http://www.yoctoproject.org/docs/current/kernel-dev/kernel-dev.html#working-with-your-own-sources

Note that you must not have SRCPV included in the recipe's value of PV, or
you will get the error you mentioned.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

