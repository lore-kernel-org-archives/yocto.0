Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 27438E0095D; Tue, 10 Feb 2015 03:00:34 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04B80E00949
	for <yocto@yoctoproject.org>; Tue, 10 Feb 2015 03:00:22 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga101.fm.intel.com with ESMTP; 10 Feb 2015 03:00:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,549,1418112000"; d="scan'208";a="525276735"
Received: from mjbowe-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.18.120])
	by orsmga003.jf.intel.com with ESMTP; 10 Feb 2015 02:52:16 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Raghavendra Kakarla <raghavendra.kakarla@inedasystems.com>
Date: Tue, 10 Feb 2015 11:00:19 +0000
Message-ID: <3732014.yvI11M98F7@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.17.8-200.fc20.x86_64; KDE/4.14.4; x86_64; ; )
In-Reply-To: <25422212.26.1423556266104.JavaMail.kraghavendra@Raghavendra>
References: <18041737.50.1422871220143.JavaMail.kraghavendra@Raghavendra>
	<25422212.26.1423556266104.JavaMail.kraghavendra@Raghavendra>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Yocto-custom kernel build issue
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
X-List-Received-Date: Tue, 10 Feb 2015 11:00:34 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 10 February 2015 13:47:45 Raghavendra Kakarla wrote:
> I am built the yocto for my custom machine. After booting a login prompt was
> came. For that I tried the "root" as user name but it did not take it.
> 
> Could please tell me where i can get the login and password details for
> yocto rootfs.

The default is root with no password. If that doesn't work, do you have 
"debug-tweaks" in your EXTRA_IMAGE_FEATURES? It should be there by default.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

