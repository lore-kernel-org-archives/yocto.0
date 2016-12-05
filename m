Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7200BE00C4F; Mon,  5 Dec 2016 06:29:40 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2DC20E00C1F
	for <yocto@yoctoproject.org>; Mon,  5 Dec 2016 06:29:38 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 05 Dec 2016 06:29:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,747,1477983600"; d="scan'208";a="1077648648"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga001.fm.intel.com with ESMTP; 05 Dec 2016 06:29:37 -0800
To: Kun Yi <kunyi@google.com>
References: <CAGMNF6VXO9PzmXEb-tPHnw7zxRAM-pUgHa3O2XUVKE2xYidD1A@mail.gmail.com>
	<aad8d580-b2f9-4cd1-9e2a-d355f6f7cf2e@linux.intel.com>
	<CAGMNF6ViY9i1Rx5Qf4AsSaoqTLhCuSGvJoxOo5SC6NFwKTfknQ@mail.gmail.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <37e97874-51f6-dcd0-35b0-c8192215b7e7@linux.intel.com>
Date: Mon, 5 Dec 2016 16:29:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Icedove/45.4.0
MIME-Version: 1.0
In-Reply-To: <CAGMNF6ViY9i1Rx5Qf4AsSaoqTLhCuSGvJoxOo5SC6NFwKTfknQ@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Yocto doesn't recognize cross-compiled binaries inside SDK
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
X-List-Received-Date: Mon, 05 Dec 2016 14:29:40 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/02/2016 08:36 PM, Kun Yi wrote:
> Thanks for the explanation Alex! Will give the alternative you suggested a try.
> As I understand I will need to instruct Yocto to fetch necessary
> "native" toolchains and libs to compile the native variant recipe.
> Doesn't that make my recipe non-portable to other host architectures?

The recipe remains portable, because you don't need to specify any 
particular native architecure. Simply add

BBCLASSEXTEND = "native"

to the recipe, and that will enable the native variant without any 
additional fuss (*):

$ bitbake myrecipe-native

(*) Depending on your chain of dependencies, you may need to enable 
native variants for them in a similar fashion.




Alex

