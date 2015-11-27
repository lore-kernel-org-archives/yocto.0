Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD0E9E0086D; Fri, 27 Nov 2015 07:21:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D423E007C3
	for <yocto@yoctoproject.org>; Fri, 27 Nov 2015 07:21:35 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 27 Nov 2015 07:21:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,352,1444719600"; d="scan'208";a="848369442"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga001.fm.intel.com with ESMTP; 27 Nov 2015 07:21:33 -0800
To: yocto@yoctoproject.org
References: <565872AC.5040502@exmachina.fr>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <5658747C.7080406@linux.intel.com>
Date: Fri, 27 Nov 2015 17:19:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Icedove/38.3.0
MIME-Version: 1.0
In-Reply-To: <565872AC.5040502@exmachina.fr>
Subject: Re: Python3 and Numpy
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
X-List-Received-Date: Fri, 27 Nov 2015 15:21:39 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 11/27/2015 05:11 PM, Benoit Rapidel wrote:

> I want to install NumPy with Python3 supporton a Beaglebone Black.
> Unfortunately, I couldn't find any information or a recipe. Anyone has
> ever tried, success, failed ?

There is a recipe for numpy in oe-core, but it's not particularly up to 
date, and doesn't have python3 support. You are welcome to update it and 
send patches :)

Alex


