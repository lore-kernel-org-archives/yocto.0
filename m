Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15AA4E00C8F; Thu,  4 Feb 2016 01:16:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DDC9EE00C88
	for <yocto@yoctoproject.org>; Thu,  4 Feb 2016 01:16:05 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga103.fm.intel.com with ESMTP; 04 Feb 2016 01:16:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,393,1449561600"; d="scan'208";a="876769850"
Received: from npanwar-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.174.40])
	by orsmga001.jf.intel.com with ESMTP; 04 Feb 2016 01:16:02 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: shubham.kumar4@wipro.com
Date: Thu, 04 Feb 2016 22:15:59 +1300
Message-ID: <3567390.mrz9OiGkxe@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.3.4-300.fc23.x86_64; KDE/4.14.16; x86_64; ;
	)
In-Reply-To: <SIXPR03MB06723015AFA054223A0F4226D4D10@SIXPR03MB0672.apcprd03.prod.outlook.com>
References: <SIXPR03MB0672F01139FBB3CB521AAB45D4D00@SIXPR03MB0672.apcprd03.prod.outlook.com>
	<CAMKF1so_i2iZJxv2fdV58XtYnDVODCzi8d1nFEEKqm=Z1wH4vA@mail.gmail.com>
	<SIXPR03MB06723015AFA054223A0F4226D4D10@SIXPR03MB0672.apcprd03.prod.outlook.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-intel]:Quark not accepting "root" username at login prompt
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
X-List-Received-Date: Thu, 04 Feb 2016 09:16:09 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thu, 04 Feb 2016 07:31:32 shubham.kumar4@wipro.com wrote:
> That entry is already there in "<build>/conf/local.conf " file as follows:-
> 
> # We default to enabling the debugging tweaks.
> EXTRA_IMAGE_FEATURES = "debug-tweaks"
> 
> In addition to the above, I have also added "tools-sdk" and "tools-debug" as
> follows in the same file :-
> 
> #Other packages
> EXTRA_IMAGE_FEATURES = "tools-sdk"
> EXTRA_IMAGE_FEATURES = "tools-debug"
> 
> Is there anything else I'm missing?

Er... is that exactly how you are setting the EXTRA_IMAGE_FEATURES value? If 
it is, = sets the value, it does not add to it, so you're wiping out the 
previous items. You presumably want to be using += rather than = .

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

