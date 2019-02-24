Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9ACEAE00CEE; Sat, 23 Feb 2019 21:41:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93C7FE00B5C
	for <yocto@yoctoproject.org>; Sat, 23 Feb 2019 21:41:16 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x1O5ex3Y027352
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sat, 23 Feb 2019 21:40:59 -0800 (PST)
Received: from [128.224.163.169] (128.224.163.169) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.435.0;
	Sat, 23 Feb 2019 21:40:40 -0800
To: Richard Purdie <richard.purdie@linuxfoundation.org>, Manjukumar Harthikote
	Matha <MANJUKUM@xilinx.com>,
	Stephen Lawrence <stephen.lawrence@renesas.com>,
	"mhalstead@linuxfoundation.org" <mhalstead@linuxfoundation.org>,
	"ross.burton@intel.com" <ross.burton@intel.com>, "raj.khem@gmail.com"
	<raj.khem@gmail.com>, "paul.eggleton@linux.intel.com"
	<paul.eggleton@linux.intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <1550749039-67320-1-git-send-email-hongxu.jia@windriver.com>
	<TYAPR01MB20314DDA5FAB24441BC69EAC927F0@TYAPR01MB2031.jpnprd01.prod.outlook.com>
	<BYAPR02MB600561B688584916C429A316B97F0@BYAPR02MB6005.namprd02.prod.outlook.com>
	<2c3baa056663af88ed9e15b89128802cfc686b4e.camel@linuxfoundation.org>
From: Hongxu Jia <hongxu.jia@windriver.com>
Message-ID: <c83d8448-4f6e-e7ce-9d1d-a4f3abf2aae8@windriver.com>
Date: Sun, 24 Feb 2019 13:40:37 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <2c3baa056663af88ed9e15b89128802cfc686b4e.camel@linuxfoundation.org>
Cc: "lpd-cdc-core-dev@windriver.com" <lpd-cdc-core-dev@windriver.com>,
	"Zhangle.Yang@windriver.com" <Zhangle.Yang@windriver.com>
Subject: Re: Review request 0/13: Contribute meta-tensorflow to Yocto
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
X-List-Received-Date: Sun, 24 Feb 2019 05:41:17 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

On 2019/2/23 下午11:29, Richard Purdie wrote:
> Please don't do the meta-openembedded part!

OK, I can't agree more, for tensorflow, if we move it to 
meta-openembedded/meta-ai,

we have to move the depending layer `meta-java' to meta-openembedded  
but it has

been already as a standalone layer , otherwise the meta-openembedded 
will depend outer layer.

//Hongxu

> I believe that meta-oe is too large to be maintainable and that we need
> a larger number of smaller layers.
>
> Having tensorflow in its own layer which as a specific purpose and its
> specific maintainers who understand it is in my view much more
> desirable and sustainable.
>
> Cheers,
>
> Richard



