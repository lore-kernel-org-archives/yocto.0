Return-Path: <sancelot@numalliance.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30033E00D48; Fri, 20 Oct 2017 01:45:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.numalliance.com (mail.numalliance.com [194.2.198.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D0D7E00D46
	for <yocto@yoctoproject.org>; Fri, 20 Oct 2017 01:45:54 -0700 (PDT)
Received: from [192.168.0.78] (unknown [192.168.0.78])
	(Authenticated sender: sancelot@numalliance.com)
	by mail.numalliance.com (Postfix) with ESMTPSA id 8286A20B6449
	for <yocto@yoctoproject.org>; Fri, 20 Oct 2017 10:45:53 +0200 (CEST)
To: yocto <yocto@yoctoproject.org>
From: =?UTF-8?Q?St=c3=a9phane_Ancelot?= <sancelot@numalliance.com>
Message-ID: <5ca5e19a-869d-ee9f-7cfb-693b203be91c@numalliance.com>
Date: Fri, 20 Oct 2017 10:45:53 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
Subject: deploying linux kernel bzimage on real disk
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
X-List-Received-Date: Fri, 20 Oct 2017 08:45:56 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: fr

Hi,

I can run the image in qemu.

however , in the ext3 root fs , the kernel is not copied.

Is there a way to have the ext3 image ready with the kernel inside ?

Then I will only have to setup the bootloader against the target hard disk.

Regards,

S.Ancelot


