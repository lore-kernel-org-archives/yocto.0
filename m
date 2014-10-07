Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6E116E0084E; Tue,  7 Oct 2014 04:08:49 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E672E007C1
	for <yocto@yoctoproject.org>; Tue,  7 Oct 2014 04:08:46 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga103.fm.intel.com with ESMTP; 07 Oct 2014 03:59:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,862,1389772800"; d="scan'208";a="396504815"
Received: from dngooner-mobl4.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.121.35])
	by FMSMGA003.fm.intel.com with ESMTP; 07 Oct 2014 04:01:58 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Chris Tapp <opensource@keylevel.com>
Date: Tue, 07 Oct 2014 12:08:40 +0100
Message-ID: <7852401.M5oHezChO3@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.1 (Linux/3.16.3-200.fc20.x86_64; KDE/4.14.1; x86_64; ; )
In-Reply-To: <364730A1-6000-43D1-8A25-1A899C8ED5DB@keylevel.com>
References: <364730A1-6000-43D1-8A25-1A899C8ED5DB@keylevel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Fan speed control
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
X-List-Received-Date: Tue, 07 Oct 2014 11:08:49 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Chris,

On Wednesday 01 October 2014 23:53:16 Chris Tapp wrote:
> Are there any recipes compatible with generic_pc to allow the cpu and system
> fan speeds to be controlled?

Presumably lm_sensors (recipe lmsensors in meta-oe) would work for this?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

