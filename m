Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D4954E00E79; Wed, 28 Feb 2018 08:08:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95956E00A61
	for <yocto@yoctoproject.org>; Wed, 28 Feb 2018 08:08:29 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	28 Feb 2018 08:08:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.47,406,1515484800"; d="scan'208";a="204418457"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga005.jf.intel.com with ESMTP; 28 Feb 2018 08:08:27 -0800
To: Laigui Qin <qinlaigui@126.com>, Johnny R Cash <j_r.cash@yahoo.de>
References: <4225ccb9.2bcb.161cd3007f8.Coremail.qinlaigui@126.com>
	<798b595e-d2d2-ac15-84c9-1c21d2050ceb@yahoo.de>
	<552c44f.9421.161d276e79a.Coremail.qinlaigui@126.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <b23ebcac-8b34-69c8-98ec-d0f839aca71c@linux.intel.com>
Date: Wed, 28 Feb 2018 18:02:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <552c44f.9421.161d276e79a.Coremail.qinlaigui@126.com>
Cc: yocto@yoctoproject.org
Subject: Re: [Meta-Raspberrypi] Yocto apt sources.list for Raspberry Pi
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
X-List-Received-Date: Wed, 28 Feb 2018 16:08:29 -0000
Content-Type: text/plain; charset=gbk; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 02/26/2018 04:14 PM, Laigui Qin wrote:
> I would like to think there is a well maintained Yocto/Poky repository 
> somewhere in the world like the debian/Raspbian deb source to leverage 
> (build and maintain my own repo is not my purpose.) Looks like there is 
> not such repo available...

Please consider that Yocto is not a distribution. It's a toolkit for 
creating distributions aimed at embedded use cases. While Poky is a 
reference distro created using Yocto components, it has a fairly limited 
set of supported hardware, which is mostly various QEMU emulator 
machines. Almost anyone else will have a different machine, different 
distribution features, and various other customizations. So any attempt 
to provide an 'offical' package feed from Yocto itself will just cause 
confusion and breakage, and will tie up the limited manpower we have 
even more.


Alex

