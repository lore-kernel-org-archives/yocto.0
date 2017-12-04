Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 54865E00CBE; Mon,  4 Dec 2017 03:21:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ECD4BE00B1E
	for <yocto@yoctoproject.org>; Mon,  4 Dec 2017 03:21:27 -0800 (PST)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	04 Dec 2017 03:21:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,359,1508828400"; d="scan'208";a="183752560"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga006.fm.intel.com with ESMTP; 04 Dec 2017 03:21:26 -0800
To: Rail Shafigulin <rail@esenciatech.com>, yocto@yoctoproject.org
References: <CAOLNbFam6L17D-sfHFnuJsQarjZzoV6ca3iWCGwe+fJNNEfQBg@mail.gmail.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <4681cf8c-12df-82ee-eb84-088b7c956eda@linux.intel.com>
Date: Mon, 4 Dec 2017 13:22:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <CAOLNbFam6L17D-sfHFnuJsQarjZzoV6ca3iWCGwe+fJNNEfQBg@mail.gmail.com>
Subject: Re: include and a library dependency in a recipe which uses a Makefile
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
X-List-Received-Date: Mon, 04 Dec 2017 11:21:28 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 12/01/2017 10:41 PM, Rail Shafigulin wrote:

> I need to use this Makefile in a recipe which but I'm struggling to
> figure out how to make it point to correct include folder as well as a
> library folder.

While knowing how to do these things is useful, I think you should just 
drop the custom makefile, pick a build system, and write the 
configuration for it. If it's just one library, it's fairly trivial with 
all of them.

Alex

