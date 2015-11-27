Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E3DF7E00C09; Fri, 27 Nov 2015 08:43:11 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99B66E007C3
	for <yocto@yoctoproject.org>; Fri, 27 Nov 2015 08:43:09 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga102.fm.intel.com with ESMTP; 27 Nov 2015 08:43:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,352,1444719600"; d="scan'208";a="608183015"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by FMSMGA003.fm.intel.com with ESMTP; 27 Nov 2015 08:43:06 -0800
To: yocto@yoctoproject.org
References: <5658862A.2040706@exmachina.fr> <5658874D.6050408@exmachina.fr>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <56588799.9040008@linux.intel.com>
Date: Fri, 27 Nov 2015 18:40:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Icedove/38.3.0
MIME-Version: 1.0
In-Reply-To: <5658874D.6050408@exmachina.fr>
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
X-List-Received-Date: Fri, 27 Nov 2015 16:43:12 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 11/27/2015 06:39 PM, Benoit Rapidel wrote:
> I found one in meta. How do I update it ? I'm using poky jethro.
> Should a create a new one named python3-numpy or the same recipe should
> handle both
> python versions ?

 From what I can see, the standard approach is to create a separate 
recipe for python3.

If you want to tweak, it's best to base your work on poky master.

Alex


