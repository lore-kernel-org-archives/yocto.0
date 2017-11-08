Return-Path: <ayoub.zaki@embexus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3E80E00D4E; Wed,  8 Nov 2017 08:50:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE,T_FILL_THIS_FORM_SHORT
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.30.212.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
	*      information
Received: from mailrelay4-3.pub.mailoutpod1-cph3.one.com
	(mailrelay4-3.pub.mailoutpod1-cph3.one.com [46.30.212.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28B60E00CD0
	for <yocto@yoctoproject.org>; Wed,  8 Nov 2017 08:50:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=embexus.com; s=20140924;
	h=from:subject:date:message-id:to:cc:mime-version:content-type:
	content-transfer-encoding:in-reply-to:references;
	bh=AIejFP5d2zL/Ow0ciccLp0Oc3+c5NTsZFmFzlb3jD/w=;
	b=BYVZJKv43qgKQBTSUX/NbwornfbZMv98g1RSzOVb+GuLaqy2ODbMcYOaMxwAShrTIE3rSTC//O+6t
	y/RcMq5jcERPV4Fqmf6xJ7j4oDVp2cgjCvC3PNFeBKEmKgT1LtOMfYdlZjVFAc0MkOpFY4TMlWrlLn
	wqSsA7pm3XcjGw0A=
X-HalOne-Cookie: f68ebdbcc5251c5abd2654b89b10dace0aa58ad8
X-HalOne-ID: e1bbc2ec-c4a4-11e7-b9d5-d0431ea8bb10
Received: from [192.168.178.34] (unknown [93.184.187.27])
	by mailrelay4.pub.mailoutpod1-cph3.one.com (Halon) with ESMTPSA
	id e1bbc2ec-c4a4-11e7-b9d5-d0431ea8bb10;
	Wed, 08 Nov 2017 16:50:10 +0000 (UTC)
To: "Burton, Ross" <ross.burton@intel.com>
References: <CAE0QtjPDdktSRp6JSUtc_wmxxw5J4fTmP_29PrBEZ8bGo2uBig@mail.gmail.com>
	<7b91c698b1dd25c12d10792fa298e48c@sw-optimization.com>
	<CAE0QtjMWEr78VDNzPCd=sC2Uze9FwK=r23yNUt3ZsVEDTRvrfw@mail.gmail.com>
	<CAJTo0LaapSRMFq79XrQL1RJUgG1ZJtp909y+MOoUbuUBPHN37g@mail.gmail.com>
	<CAE0QtjMF=wfkypu8Fy=3Mq-Jd8RXvH2i6wmbmATpOBobzfssvg@mail.gmail.com>
	<CAJTo0LZYLhQWPKvwwsx_r-icVC-78QnOH-idvD8ag9NrTcxwQg@mail.gmail.com>
	<735cb870-42bf-298c-9e39-135e7e7da133@embexus.com>
	<CAJTo0LaUC6spUbg5TmX6WYLA_28-5LEPo2hYrDYWvVPGw4phRw@mail.gmail.com>
From: Ayoub Zaki <ayoub.zaki@embexus.com>
Message-ID: <920702c5-68fc-923e-a96c-0b6772a0b1e1@embexus.com>
Date: Wed, 8 Nov 2017 17:50:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0LaUC6spUbg5TmX6WYLA_28-5LEPo2hYrDYWvVPGw4phRw@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Annoying "rerun to fix" bug for bitbake: task failed, but rerun can fix it.
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
X-List-Received-Date: Wed, 08 Nov 2017 16:50:14 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US



On 08.11.2017 17:47, Burton, Ross wrote:
> On 8 November 2017 at 16:41, Ayoub Zaki <ayoub.zaki@embexus.com 
> <mailto:ayoub.zaki@embexus.com>> wrote:
>
>         (By the way, I just build brand new PC with 16 threads CPU, 32G
>
>             memory, and install Ubuntu 16.4.3 with ESXI-6.5)
>
>
>     Do you have a Ryzen 7 based CPU ?!
>
>     In this case Ubuntu 16.4 with Linux kernel 4.4.x is know to be broken
>     You should upgrade your System with a recent kernel !!!
>
>
> Following up, it's possible that this brand new PC has a cooling 
> problem and is overheating during the build, or the memory isn't 
> installed correctly.  This will cause random failures.

[1] 
https://www.pcworld.com/article/3176323/linux/kernel-410-gives-linux-support-for-zen-multithreading.html
>
> Ross

-- 
Ayoub Zaki
Embedded Systems Consultant

Vaihinger Straße 2/1
D-71634 Ludwigsburg

Tel.     : +4971415074546
Mobile   : +4917662901545
Email    : ayoub.zaki@embexus.com
Homepage : https://embexus.com
VAT No.  : DE313902634


