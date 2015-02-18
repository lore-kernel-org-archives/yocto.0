Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A550BE00757; Wed, 18 Feb 2015 04:11:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D110AE0034E
	for <yocto@yoctoproject.org>; Wed, 18 Feb 2015 04:11:07 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 18 Feb 2015 04:11:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,512,1418112000"; d="scan'208";a="668034201"
Received: from cbulfin-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.18.182])
	by fmsmga001.fm.intel.com with ESMTP; 18 Feb 2015 04:11:05 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Valentin Le bescond <valentin.lebescond@gmail.com>
Date: Wed, 18 Feb 2015 12:11:05 +0000
Message-ID: <2971571.L9pmXd2OeC@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.18.6-100.fc20.x86_64; KDE/4.14.4; x86_64; ; )
In-Reply-To: <CAP2S6e5oBGTDWNJ1eT9YsnWAV+xeDEBKKbCE2h3_34rmJu7ycg@mail.gmail.com>
References: <CAP2S6e5oBGTDWNJ1eT9YsnWAV+xeDEBKKbCE2h3_34rmJu7ycg@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: How to switch kernel version without touching PREFERED VERSION
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
X-List-Received-Date: Wed, 18 Feb 2015 12:11:11 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Valentin,

On Wednesday 18 February 2015 11:53:57 Valentin Le bescond wrote:
> I'm working an a meta-wolfson layer to add the wolfson audio card support
> to the meta-raspberrypi layer.
> 
> It's a very simple set of patche, but they apply to linux kernel 3.10.*
> 
> And the PREFERED_VERSION of the machine configuration (raspberrypi.conf)
> is  :
> PREFERRED_VERSION_linux-raspberrypi ?= "3.12.%"
> 
> I would like to build my images using
> linux-raspberrypi_3.10.38.bb
> instead of
> linux-raspberrypi_3.12.26.bb
> 
> What is the most "best practice" whay to achive this ?

Why do you say "without touching PREFERRED_VERSION"? That would be the proper 
way to select that kernel for building. Seeing as it is set with ?= it is easy 
to override it with = from your local.conf if that's what you want to do.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

