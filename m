Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82971E00BBD; Thu,  8 Nov 2018 14:50:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35C85E00A1A
	for <yocto@yoctoproject.org>; Thu,  8 Nov 2018 14:50:11 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	08 Nov 2018 14:50:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.54,481,1534834800"; d="scan'208";a="87797929"
Received: from yngiam-mobl1.gar.corp.intel.com (HELO localhost.localdomain)
	([10.249.68.155])
	by orsmga007.jf.intel.com with ESMTP; 08 Nov 2018 14:50:04 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Scott Rifenbark <srifenbark@gmail.com>
Date: Fri, 09 Nov 2018 11:50:01 +1300
Message-ID: <1625935.REkM3HMYJn@localhost.localdomain>
Organization: Intel Corporation
In-Reply-To: <6194709.vnUpm0U1CA@localhost.localdomain>
References: <2829165.0Ht5z2aexs@localhost.localdomain>
	<4820003.uEWOQMMmpA@localhost.localdomain>
	<6194709.vnUpm0U1CA@localhost.localdomain>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, openembedded-core@lists.openembedded.org
Subject: Re: [OE-core] 2.6 migration guide
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
X-List-Received-Date: Thu, 08 Nov 2018 22:50:12 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday, 9 November 2018 11:41:42 AM NZDT Paul Eggleton wrote:
> You could accomplish the latter using PACKAGECONFIG_pn-python3 = "pgo" at
> the configuration level 

Oops, I meant PACKAGECONFIG_remove_pn-python3 = "pgo" here.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre



