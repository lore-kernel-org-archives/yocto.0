Return-Path: <maciej.pijanowski@3mdeb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A30A9E00D3A; Tue, 16 Apr 2019 15:12:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [46.105.72.36 listed in list.dnswl.org]
X-Greylist: delayed 19199 seconds by postgrey-1.32 at yocto-www;
	Tue, 16 Apr 2019 15:12:25 PDT
Received: from 2.mo4.mail-out.ovh.net (2.mo4.mail-out.ovh.net [46.105.72.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D801E00D39
	for <yocto@yoctoproject.org>; Tue, 16 Apr 2019 15:12:25 -0700 (PDT)
Received: from player794.ha.ovh.net (unknown [10.108.42.192])
	by mo4.mail-out.ovh.net (Postfix) with ESMTP id 30AD51E4365
	for <yocto@yoctoproject.org>; Tue, 16 Apr 2019 18:16:43 +0200 (CEST)
Received: from 3mdeb.com (89-64-55-187.dynamic.chello.pl [89.64.55.187])
	(Authenticated sender: maciej.pijanowski@3mdeb.com)
	by player794.ha.ovh.net (Postfix) with ESMTPSA id 4E3044D24F87;
	Tue, 16 Apr 2019 16:16:41 +0000 (UTC)
To: nick <xerofoify@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <a40ab493-39a9-3290-631f-5474557d1a82@gmail.com>
From: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
Message-ID: <473f0906-e1ff-9f3c-1e1c-6cf79f9bb3f0@3mdeb.com>
Date: Tue, 16 Apr 2019 18:15:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <a40ab493-39a9-3290-631f-5474557d1a82@gmail.com>
X-Ovh-Tracer-Id: 18440833101289762473
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduuddrfedugddutddtucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenuc
Subject: Re: Intel Galleio Board SSH Minimal Poky Image
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
X-List-Received-Date: Tue, 16 Apr 2019 22:12:26 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US


On 16.04.2019 17:36, nick wrote:
> Greetings,
Hello,
>
> What is the minimal image from the poky yocto recipes that has ssh enabled by
> default or is it just better to enable it in the core minimal image on system
> startup.
I would go with the core-image-minimal or the core-image-full-cmdline 
(depending
on the requirements) and enable the ssh-server via IMAGE_FEATURES: 
https://www.yoctoproject.org/docs/2.5/ref-manual/ref-manual.html#ref-features-image

Typically, at the start of development, by adding the following line in 
build/conf/local.conf:

IMAGE_FEATURES_append = " ssh-server-openssh"
>
> Thanks,
>
> Nick

-- 
Maciej Pijanowski
Embedded Systems Engineer
https://3mdeb.com | @3mdeb_com


