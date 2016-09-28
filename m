Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E351E00DA8; Wed, 28 Sep 2016 13:07:28 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3A8DE00D99
	for <yocto@yoctoproject.org>; Wed, 28 Sep 2016 13:07:26 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga101.fm.intel.com with ESMTP; 28 Sep 2016 13:07:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.30,411,1470726000"; d="scan'208";a="1057919739"
Received: from kong20x-mobl5.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.185.230])
	by orsmga002.jf.intel.com with ESMTP; 28 Sep 2016 13:07:25 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 29 Sep 2016 09:07:21 +1300
Message-ID: <2034792.MztxIxJcpe@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.7.4-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <1474661403062.36694@seescan.com>
References: <HE1PR01MB188363A66CEC33154BFAAA9492C90@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
	<HE1PR01MB1883F7F4A2DB619936A62D5492C80@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
	<1474661403062.36694@seescan.com>
MIME-Version: 1.0
Subject: Re: How to add my own c++ project into a Yocto distro
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
X-List-Received-Date: Wed, 28 Sep 2016 20:07:28 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Fri, 23 Sep 2016 20:10:17 Fred Ollinger wrote:
> Here's how to write a recipe:
> 
> 
> http://www.yoctoproject.org/docs/1.6/dev-manual/dev-manual.html#new-recipe-w
> riting-a-new-recipe

That's the 1.6 version - you may want the "current" link so that you're
always looking the most recent stable version of the manual:

  http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#new-recipe-writing-a-new-recipe

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

