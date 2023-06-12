Return-Path: <zhangjialing@loongson.cn>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4504AC7EE2E
	for <webhook@archiver.kernel.org>; Mon, 12 Jun 2023 09:39:22 +0000 (UTC)
Received: from mail.loongson.cn (mail.loongson.cn [114.242.206.163])
 by mx.groups.io with SMTP id smtpd.web11.54457.1686562752531961595
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 Jun 2023 02:39:13 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: loongson.cn, ip: 114.242.206.163, mailfrom: zhangjialing@loongson.cn)
Received: from loongson.cn (unknown [10.20.42.22])
	by gateway (Coremail) with SMTP id _____8DxCepC54ZkJaYDAA--.7999S3;
	Mon, 12 Jun 2023 17:37:06 +0800 (CST)
Received: from [10.20.42.22] (unknown [10.20.42.22])
	by localhost.localdomain (Coremail) with SMTP id AQAAf8BxC8o554ZkZpIVAA--.53171S3;
	Mon, 12 Jun 2023 17:36:57 +0800 (CST)
Message-ID: <4c10e665-931b-6ac0-2ccf-2e073b4b4254@loongson.cn>
Date: Mon, 12 Jun 2023 17:36:57 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [yocto] Submit a new layer meta-loongarch to the layer index
Content-Language: en-US
To: Ross Burton <Ross.Burton@arm.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
References: <7c04fe75-a0dc-394f-6e7a-a1fa4e50960f@loongson.cn>
 <F3C5E126-A6BC-471B-B054-5918881B5B7F@arm.com>
 <d30745fa-6a9b-c36a-282c-6ea2ebef1b5a@loongson.cn>
 <8918F74E-0EF7-4BFA-8B89-55312F8490AB@arm.com>
 <dad6e312-8b1f-1cae-b4a5-87cbe6d944a7@loongson.cn>
 <9872223d-85e6-6c26-e659-b593e5e3f8ff@loongson.cn>
 <F2CE772D-124B-4F73-8282-EFDBE0F9FC2E@arm.com>
From: =?UTF-8?B?5byg5a625bKt?= <zhangjialing@loongson.cn>
In-Reply-To: <F2CE772D-124B-4F73-8282-EFDBE0F9FC2E@arm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CM-TRANSID: AQAAf8BxC8o554ZkZpIVAA--.53171S3
X-CM-SenderInfo: x2kd0wxmldzxtqj6z05rqj20fqof0/1tbiAQARB2SBxQEdegAKsb
X-Coremail-Antispam: 1Uk129KBj9xXoW7Jw1rGFWUJw1DKF4UWry7XFc_yoW3Jrb_CF
	ZrJ3s7KrW7Ca92kF1xCr45AF47Ja4DGrWUGwn5tw13Z34Sy3s8Ka1Yka4fZF1xW3Z7uF1Y
	kF909ryIyw1Y9osvyTuYvTs0mTUanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUj1kv1TuYvT
	s0mT0YCTnIWjqI5I8CrVACY4xI64kE6c02F40Ex7xfYxn0WfASr-VFAUDa7-sFnT9fnUUI
	cSsGvfJTRUUUbaxYFVCjjxCrM7AC8VAFwI0_Jr0_Gr1l1xkIjI8I6I8E6xAIw20EY4v20x
	vaj40_Wr0E3s1l1IIY67AEw4v_Jr0_Jr4l8cAvFVAK0II2c7xJM28CjxkF64kEwVA0rcxS
	w2x7M28EF7xvwVC0I7IYx2IY67AKxVWUCVW8JwA2z4x0Y4vE2Ix0cI8IcVCY1x0267AKxV
	WUJVW8JwA2z4x0Y4vEx4A2jsIE14v26r4UJVWxJr1l84ACjcxK6I8E87Iv6xkF7I0E14v2
	6F4UJVW0owAS0I0E0xvYzxvE52x082IY62kv0487Mc804VCY07AIYIkI8VC2zVCFFI0UMc
	02F40EFcxC0VAKzVAqx4xG6I80ewAv7VC0I7IYx2IY67AKxVWUGVWUXwAv7VC2z280aVAF
	wI0_Jr0_Gr1lOx8S6xCaFVCjc4AY6r1j6r4UM4x0Y48IcVAKI48JMxk0xIA0c2IEe2xFo4
	CEbIxvr21l42xK82IYc2Ij64vIr41l4I8I3I0E4IkC6x0Yz7v_Jr0_Gr1l4IxYO2xFxVAF
	wI0_Jrv_JF1lx2IqxVAqx4xG67AKxVWUJVWUGwC20s026x8GjcxK67AKxVWUGVWUWwC2zV
	AF1VAY17CE14v26r1Y6r17MIIYrxkI7VAKI48JMIIF0xvE2Ix0cI8IcVAFwI0_Jr0_JF4l
	IxAIcVC0I7IYx2IY6xkF7I0E14v26r1j6r4UMIIF0xvE42xK8VAvwI8IcIk0rVWUJVWUCw
	CI42IY6I8E87Iv67AKxVWUJVW8JwCI42IY6I8E87Iv6xkF7I0E14v26r1j6r4UYxBIdaVF
	xhVjvjDU0xZFpf9x07UWHqcUUUUU=
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 12 Jun 2023 09:39:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60250

Hi Ross:

     Thank you , I can edit this layer now , How can I show  this layer 
in http://layers.openembedded.org/layerindex/branch/master/layers/


在 2023/6/12 17:24, Ross Burton 写道:
> On 12 Jun 2023, at 07:39, 张家岭 <zhangjialing@loongson.cn> wrote:
>> Hi Ross:
>>
>>          I can open this web page http://layers.openembedded.org/layerindex/branch/master/layer/meta-loongarch/ , but there is no maintainer iterm in this web , so I can not edit this layer . Can you add this iterm for me ?
> Done.  You definitely filled that in correctly when you submitted the layer, but because maintainers are associated with branches it got lost when it couldn’t find the master branch.
>
> Cheers,
> Ross


