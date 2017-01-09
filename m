Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2ECA8E00947; Mon,  9 Jan 2017 05:11:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57526E009B9
	for <yocto@yoctoproject.org>; Mon,  9 Jan 2017 05:10:54 -0800 (PST)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga104.jf.intel.com with ESMTP; 09 Jan 2017 05:10:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,339,1477983600"; d="scan'208";a="50895456"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga005.jf.intel.com with ESMTP; 09 Jan 2017 05:10:53 -0800
To: yocto@yoctoproject.org
References: <CAHX_jjtT_JE9L9A4hmxL1QgftWEfC75nabgfGYEYCYWaKTKdNg@mail.gmail.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <de6ecb7c-afa3-348d-a226-24fb735d48ef@linux.intel.com>
Date: Mon, 9 Jan 2017 15:10:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Icedove/45.4.0
MIME-Version: 1.0
In-Reply-To: <CAHX_jjtT_JE9L9A4hmxL1QgftWEfC75nabgfGYEYCYWaKTKdNg@mail.gmail.com>
Subject: Re: openjdk 8 support compile for arm with jit support
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
X-List-Received-Date: Mon, 09 Jan 2017 13:11:03 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 01/07/2017 05:05 PM, Rohit Jindal wrote:
> Please suggest me the solution for compiling
> Openjdk 8 for arm adding support for any jit compiler like shark or jamvm

This is not how you should ask for help from people who have no 
obligation to help you. No one is going to respond, and sending the same 
request several times makes it even less likely.

You should describe, in detail:

1) what are you trying to achieve and why;
2) what steps you took to that goal;
3) what doesn't work; what is the step that you got stuck at?


Alex


