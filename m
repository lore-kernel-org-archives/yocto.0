Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C1431E00E4C; Tue, 30 Aug 2016 17:57:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,PLING_QUERY,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.0 PLING_QUERY Subject has exclamation mark and question mark
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D779E00E41
	for <yocto@yoctoproject.org>; Tue, 30 Aug 2016 17:57:12 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id u7V0v96r007213
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 30 Aug 2016 17:57:09 -0700 (PDT)
Received: from [172.25.44.6] (172.25.44.6) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.248.2;
	Tue, 30 Aug 2016 17:57:08 -0700
To: "Daniel." <danielhilst@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <CAF3SDA445Eh-L501nQvd+VBuVGpER0kX4DZd3GZ16RvvQ_qZOQ@mail.gmail.com>
From: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <cec26c43-f123-2b0c-a181-90de9d47fd87@windriver.com>
Date: Tue, 30 Aug 2016 20:57:07 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <CAF3SDA445Eh-L501nQvd+VBuVGpER0kX4DZd3GZ16RvvQ_qZOQ@mail.gmail.com>
X-Originating-IP: [172.25.44.6]
Subject: Re: Automating imaging building and testing, what aproach to use!?
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
X-List-Received-Date: Wed, 31 Aug 2016 00:57:14 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-08-30 04:18 PM, Daniel. wrote:
> Hey everybody!
>
> While writing software we're used to delivery packages, libraries and
> stacks. There are out there a lot of continuos integration solutions
> to automatically build and test these kinds of software. But when
> dealing to images the thing is more tricky.
>
> I can't run the tests at the same machine that build the image because
> crosscompilation take place on 99% of the cases. What is approach that
> you guys are using to automate and increase the quality of your
> images?

We have a custom automated build system running 100s of configs/day

Some people I work with have started using LAVA [1] to
do automated testing for both Qemu and hardware targets.

Let me know if you are interested and I'll ask them to
summarize what they think of it so far.

../Randy

[1] http://www.linaro.org/initiatives/lava/

>
> Automating the build is the easy part my concert is about automating
> the runtime tests that need the target board to run. In my case I
> depend on hardware to fully test the image features. Is there any
> reliable way to automate image installation and boot!?
>
> Best regards to everybody!
>


-- 
# Randy MacLeod. SMTS, Linux, Wind River
Direct: 613.963.1350 | 350 Terry Fox Drive, Suite 200, Ottawa, ON, 
Canada, K2K 2W5

