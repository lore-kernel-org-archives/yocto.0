Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 067EDE00D5F; Fri,  5 Jan 2018 07:15:39 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F025AE00CE8
	for <yocto@yoctoproject.org>; Fri,  5 Jan 2018 07:15:37 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	05 Jan 2018 07:15:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,318,1511856000"; 
   d="scan'208";a="8350799"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga008.jf.intel.com with ESMTP; 05 Jan 2018 07:15:35 -0800
To: Kirill Kondrashov <kondrashovks1989@gmail.com>
References: <CACm3r4pXMHtKg53xBTPkLZ=Pnf8sBRrd6GTQsHi+zJ+CZXphPg@mail.gmail.com>
	<8113993a-10a7-1fee-6784-86a8de8c495b@linux.intel.com>
	<CACm3r4reF3Z3FH_3OruhonWGRoAmuxJh5RnMgTfmZWOmBhbgpw@mail.gmail.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <d002fdc9-23f5-d323-a796-1ed33238dfd7@linux.intel.com>
Date: Fri, 5 Jan 2018 17:15:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <CACm3r4reF3Z3FH_3OruhonWGRoAmuxJh5RnMgTfmZWOmBhbgpw@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Smart Project Manager
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
X-List-Received-Date: Fri, 05 Jan 2018 15:15:39 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 01/05/2018 05:06 PM, Kirill Kondrashov wrote:
> Thanks for advice, but at the moment it's a bit of a problem, I'm stuck 
> with poky2.0.3 bound to a specific board, so I will keep up with smart. 
> But what's the benefit of dnf?

Talk to the provider of the BSP layer, and ask why you need to be stuck 
with an ancient version of the YP.

Dnf is not abandonware like smartpm is, for one thing :) It's actively 
maintained and supports python 3.x.

Alex

