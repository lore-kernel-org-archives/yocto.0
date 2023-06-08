Return-Path: <zhangjialing@loongson.cn>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFBE2C7EE23
	for <webhook@archiver.kernel.org>; Thu,  8 Jun 2023 10:29:48 +0000 (UTC)
Received: from mail.loongson.cn (mail.loongson.cn [114.242.206.163])
 by mx.groups.io with SMTP id smtpd.web10.5658.1686220178922885889
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Jun 2023 03:29:39 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: loongson.cn, ip: 114.242.206.163, mailfrom: zhangjialing@loongson.cn)
Received: from loongson.cn (unknown [10.20.42.22])
	by gateway (Coremail) with SMTP id _____8AxnOqPrYFkhX4AAA--.1837S3;
	Thu, 08 Jun 2023 18:29:35 +0800 (CST)
Received: from [10.20.42.22] (unknown [10.20.42.22])
	by localhost.localdomain (Coremail) with SMTP id AQAAf8BxTMqMrYFkAkkHAA--.14648S3;
	Thu, 08 Jun 2023 18:29:32 +0800 (CST)
Message-ID: <d309f088-56be-9325-e2ce-640692d0dad3@loongson.cn>
Date: Thu, 8 Jun 2023 18:29:32 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [yocto] Submit a new layer meta-loongarch to the layer index
Content-Language: en-US
To: Ross Burton <Ross.Burton@arm.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <7c04fe75-a0dc-394f-6e7a-a1fa4e50960f@loongson.cn>
 <F3C5E126-A6BC-471B-B054-5918881B5B7F@arm.com>
From: =?UTF-8?B?5byg5a625bKt?= <zhangjialing@loongson.cn>
In-Reply-To: <F3C5E126-A6BC-471B-B054-5918881B5B7F@arm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CM-TRANSID: AQAAf8BxTMqMrYFkAkkHAA--.14648S3
X-CM-SenderInfo: x2kd0wxmldzxtqj6z05rqj20fqof0/1tbiAQAQB2SAc4EPSQAFsD
X-Coremail-Antispam: 1Uk129KBj9xXoW7GF4DKrWxuFyUWrWfAw4rCrX_yoWfJwc_GF
	WxJ3yv9rWxCayDJw12qr45Aw4UtFWjqwnrCas5G3ZIv34fAas8ta1aq3s3ZF1xt3yxWrn8
	C3y3W34akw10vosvyTuYvTs0mTUanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUj1kv1TuYvT
	s0mT0YCTnIWjqI5I8CrVACY4xI64kE6c02F40Ex7xfYxn0WfASr-VFAUDa7-sFnT9fnUUI
	cSsGvfJTRUUUbI8YFVCjjxCrM7AC8VAFwI0_Jr0_Gr1l1xkIjI8I6I8E6xAIw20EY4v20x
	vaj40_Wr0E3s1l1IIY67AEw4v_JrI_Jryl8cAvFVAK0II2c7xJM28CjxkF64kEwVA0rcxS
	w2x7M28EF7xvwVC0I7IYx2IY67AKxVWUCVW8JwA2z4x0Y4vE2Ix0cI8IcVCY1x0267AKxV
	WUJVW8JwA2z4x0Y4vEx4A2jsIE14v26r4UJVWxJr1l84ACjcxK6I8E87Iv6xkF7I0E14v2
	6r4UJVWxJr1le2I262IYc4CY6c8Ij28IcVAaY2xG8wAqjxCEc2xF0cIa020Ex4CE44I27w
	Aqx4xG64xvF2IEw4CE5I8CrVC2j2WlYx0E2Ix0cI8IcVAFwI0_Jr0_Jr4lYx0Ex4A2jsIE
	14v26r1j6r4UMcvjeVCFs4IE7xkEbVWUJVW8JwACjcxG0xvEwIxGrwCYjI0SjxkI62AI1c
	AE67vIY487MxAIw28IcxkI7VAKI48JMxC20s026xCaFVCjc4AY6r1j6r4UMI8I3I0E5I8C
	rVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE17CEb7AF67AKxVWUXVWUAw
	CIc40Y0x0EwIxGrwCI42IY6xIIjxv20xvE14v26r1j6r1xMIIF0xvE2Ix0cI8IcVCY1x02
	67AKxVWUJVW8JwCI42IY6xAIw20EY4v20xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_Jr
	0_Gr1lIxAIcVC2z280aVCY1x0267AKxVWUJVW8JbIYCTnIWIevJa73UjIFyTuYvjxU25Ef
	UUUUU
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 08 Jun 2023 10:29:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60230

Hi, Ross

     Thank you for your help .

在 2023/6/8 18:10, Ross Burton 写道:
> On 8 Jun 2023, at 08:21, 张家岭 via lists.yoctoproject.org <zhangjialing=loongson.cn@lists.yoctoproject.org> wrote:
>> I would like to submit a new layer named meta-loongarch for the LoongArch machine to http://layers.openembedded.org/layerindex/branch/master/layers/. However, when I attempted to submit, I encountered the error message "Layer with this Layer name already exists." Yet, I cannot find the layer named meta-loongarch in the layer index. Could you please help me or provide some advice on this matter?
> New layers need to be approved before they’re publicly visible, I’ve just approved the layer you submitted:
>
> https://layers.openembedded.org/layerindex/branch/master/layer/meta-loongarch/
>
> Ross


