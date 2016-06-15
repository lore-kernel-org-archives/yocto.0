Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 75B37E00D31; Wed, 15 Jun 2016 13:24:43 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40F90E00D2C
	for <yocto@yoctoproject.org>; Wed, 15 Jun 2016 13:24:40 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga103.fm.intel.com with ESMTP; 15 Jun 2016 13:24:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,477,1459839600"; d="scan'208";a="122588168"
Received: from ctan86-mobl2.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.141.217])
	by fmsmga004.fm.intel.com with ESMTP; 15 Jun 2016 13:24:38 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Rajasekaran, Monica" <Monica.Rajasekaran@us.fujitsu.com>
Date: Thu, 16 Jun 2016 08:24:35 +1200
Message-ID: <7482070.IBUNiqSIt6@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.5.6-200.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <111ACD726EC3464BAED310F5EA7BEBDA6000AA@RCHEXMBP1.fnc.net.local>
References: <111ACD726EC3464BAED310F5EA7BEBDA6000AA@RCHEXMBP1.fnc.net.local>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: autoreconf
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
X-List-Received-Date: Wed, 15 Jun 2016 20:24:43 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Monica,

On Wed, 15 Jun 2016 20:17:16 Rajasekaran, Monica wrote:
> What is the package to install autoreconf ? (Ubuntu equivalent: apt-get
> install dh-autoreconf )
> 
> I am getting the following error for one of my applications:
> "autoreconf: command not found"

autoreconf is part of autoconf.

Where is this? On the target or within the build system?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

