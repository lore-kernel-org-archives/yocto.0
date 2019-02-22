Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 167B2E00C1E; Fri, 22 Feb 2019 09:24:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99D51E00BE8
	for <yocto@yoctoproject.org>; Fri, 22 Feb 2019 09:24:53 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x1MHN4bd011451
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 22 Feb 2019 09:23:15 -0800
Received: from [128.224.163.169] (128.224.163.169) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.435.0;
	Fri, 22 Feb 2019 09:22:41 -0800
To: Stephen Lawrence <stephen.lawrence@renesas.com>,
	"richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>, 
	"mhalstead@linuxfoundation.org" <mhalstead@linuxfoundation.org>,
	"ross.burton@intel.com" <ross.burton@intel.com>, "raj.khem@gmail.com"
	<raj.khem@gmail.com>, "paul.eggleton@linux.intel.com"
	<paul.eggleton@linux.intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <1550749039-67320-1-git-send-email-hongxu.jia@windriver.com>
	<TYAPR01MB20314DDA5FAB24441BC69EAC927F0@TYAPR01MB2031.jpnprd01.prod.outlook.com>
From: Hongxu Jia <hongxu.jia@windriver.com>
Message-ID: <49689306-caf5-27fe-1989-2aff0111e117@windriver.com>
Date: Sat, 23 Feb 2019 01:22:39 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <TYAPR01MB20314DDA5FAB24441BC69EAC927F0@TYAPR01MB2031.jpnprd01.prod.outlook.com>
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
X-List-Received-Date: Fri, 22 Feb 2019 17:24:54 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

On 2019/2/23 上午12:51, Stephen Lawrence wrote:
> Good work.
>
> You might be interested in the yocto layers for tensorflow, tensorflow-lite and caffe2
> on github here [1]. I'm not part of the team that developed that work but I forwarded
> your announcement to them. Perhaps there is the opportunity for some collaboration
> on the platform independent parts. The maintainer details are in the readme.

Yes, I know meta-renesas-ai, my first try of tensorflow build was based 
on it,

but failed, I am afraid its version is old and no maintenance. So I 
choose to

refer upstream arm compiler which `Build from source for the Raspberry Pi'

https://www.tensorflow.org/install/source_rpi


For tensorflow-lite, I am afraid it is not completed in meta-renesas-ai.

But tensorflow-lite is on my TODO list, Currently I am not sure what to 
build

(may be c/c++ framework) and how to use (use cases).


For caffe2, it is another story `pytorch', I am afraid I don't have 
resources(time)

to focus


//Hongxu


> [1]https://github.com/renesas-rz/meta-renesas-ai
>
> The layers were developed for the industrial focused Renesas RZ/G1 platforms.
>
> Regards



