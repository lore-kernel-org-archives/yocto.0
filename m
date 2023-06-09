Return-Path: <zhangjialing@loongson.cn>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EC6D4C7EE29
	for <webhook@archiver.kernel.org>; Fri,  9 Jun 2023 03:05:05 +0000 (UTC)
Received: from mail.loongson.cn (mail.loongson.cn [114.242.206.163])
 by mx.groups.io with SMTP id smtpd.web11.5261.1686279904336758687
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Jun 2023 20:05:04 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: loongson.cn, ip: 114.242.206.163, mailfrom: zhangjialing@loongson.cn)
Received: from loongson.cn (unknown [10.20.42.22])
	by gateway (Coremail) with SMTP id _____8BxL_DcloJkBt0AAA--.2774S3;
	Fri, 09 Jun 2023 11:05:00 +0800 (CST)
Received: from [10.20.42.22] (unknown [10.20.42.22])
	by localhost.localdomain (Coremail) with SMTP id AQAAf8DxFOTYloJkjpYJAA--.29364S3;
	Fri, 09 Jun 2023 11:04:56 +0800 (CST)
Message-ID: <d30745fa-6a9b-c36a-282c-6ea2ebef1b5a@loongson.cn>
Date: Fri, 9 Jun 2023 11:04:56 +0800
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
X-CM-TRANSID: AQAAf8DxFOTYloJkjpYJAA--.29364S3
X-CM-SenderInfo: x2kd0wxmldzxtqj6z05rqj20fqof0/1tbiAQARB2SBxQEKlAABsp
X-Coremail-Antispam: 1Uk129KBj93XoWxAw47GF15Kr1kAFy7Wry8JFc_yoWrJr47pF
	y7trnYka1UWr4SyrWDuFyxXFn8Wan3Jr4rGwsIyrWfC3Wj9ryqq392q3sYgrsrJa1kWr1Y
	qan8ZrZ7ua1DWrXCm3ZEXasCq-sJn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7KY7ZEXa
	sCq-sGcSsGvfJ3Ic02F40EFcxC0VAKzVAqx4xG6I80ebIjqfuFe4nvWSU5nxnvy29KBjDU
	0xBIdaVrnRJUUUv2b4IE77IF4wAFF20E14v26r1j6r4UM7CY07I20VC2zVCF04k26cxKx2
	IYs7xG6rWj6s0DM7CIcVAFz4kK6r106r15M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48v
	e4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_Jr0_JF4l84ACjcxK6xIIjxv20xvEc7CjxVAFwI
	0_Jr0_Gr1l84ACjcxK6I8E87Iv67AKxVW8Jr0_Cr1UM28EF7xvwVC2z280aVCY1x0267AK
	xVW8Jr0_Cr1UM2AIxVAIcxkEcVAq07x20xvEncxIr21l57IF6xkI12xvs2x26I8E6xACxx
	1l5I8CrVACY4xI64kE6c02F40Ex7xfMcIj6xIIjxv20xvE14v26r1j6r18McIj6I8E87Iv
	67AKxVWUJVW8JwAm72CE4IkC6x0Yz7v_Jr0_Gr1lF7xvr2IY64vIr41lc7I2V7IY0VAS07
	AlzVAYIcxG8wCF04k20xvY0x0EwIxGrwCFx2IqxVCFs4IE7xkEbVWUJVW8JwC20s026c02
	F40E14v26r1j6r18MI8I3I0E7480Y4vE14v26r106r1rMI8E67AF67kF1VAFwI0_Jrv_JF
	1lIxkGc2Ij64vIr41lIxAIcVC0I7IYx2IY67AKxVWUJVWUCwCI42IY6xIIjxv20xvEc7Cj
	xVAFwI0_Jr0_Gr1lIxAIcVCF04k26cxKx2IYs7xG6r1j6r1xMIIF0xvEx4A2jsIE14v26r
	1j6r4UMIIF0xvEx4A2jsIEc7CjxVAFwI0_Jr0_GrUvcSsGvfC2KfnxnUUI43ZEXa7IU8cz
	VUUUUUU==
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 09 Jun 2023 03:05:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60236

Hello Ross,

     I get this error ,  something is wrong in self.active_maintainers()


```

Environment:


Request Method: GET
Request URL: 
http://layers.openembedded.org/layerindex/branch/master/layer/meta-loongarch/

Django Version: 3.2.16
Python Version: 3.10.6
Installed Applications:
('django.contrib.auth',
  'django.contrib.contenttypes',
  'django.contrib.sessions',
  'django.contrib.sites',
  'django.contrib.messages',
  'django.contrib.staticfiles',
  'django.contrib.admin',
  'layerindex',
  'django_registration',
  'reversion',
  'reversion_compare',
  'captcha',
  'axes',
  'rest_framework',
  'corsheaders',
  'rrs',
  'bootstrap_pagination')
Installed Middleware:
('corsheaders.middleware.CorsMiddleware',
  'django.middleware.common.CommonMiddleware',
  'django.contrib.sessions.middleware.SessionMiddleware',
  'django.middleware.csrf.CsrfViewMiddleware',
  'django.contrib.auth.middleware.AuthenticationMiddleware',
  'django.contrib.messages.middleware.MessageMiddleware',
  'django.middleware.clickjacking.XFrameOptionsMiddleware',
  'axes.middleware.AxesMiddleware',
  'layerindex.middleware.NonAtomicRevisionMiddleware')



Traceback (most recent call last):
   File 
"/usr/local/lib/python3.10/dist-packages/django/core/handlers/exception.py", 
line 47, in inner
     response = get_response(request)
   File 
"/usr/local/lib/python3.10/dist-packages/django/core/handlers/base.py", 
line 181, in _get_response
     response = wrapped_callback(request, *callback_args, **callback_kwargs)
   File 
"/usr/local/lib/python3.10/dist-packages/django/views/generic/base.py", 
line 70, in view
     return self.dispatch(request, *args, **kwargs)
   File "/opt/layerindex/layerindex/views.py", line 410, in dispatch
     res = super(LayerDetailView, self).dispatch(request, *args, **kwargs)
   File 
"/usr/local/lib/python3.10/dist-packages/django/views/generic/base.py", 
line 98, in dispatch
     return handler(request, *args, **kwargs)
   File 
"/usr/local/lib/python3.10/dist-packages/django/views/generic/detail.py", 
line 107, in get
     context = self.get_context_data(object=self.object)
   File "/opt/layerindex/layerindex/views.py", line 424, in get_context_data
     context['useredit'] = layer.user_can_edit(self.user)
   File "/opt/layerindex/layerindex/models.py", line 178, in user_can_edit
     for maintainer in self.active_maintainers():

Exception Type: TypeError at /layerindex/branch/master/layer/meta-loongarch/
Exception Value: 'NoneType' object is not iterable
```

在 2023/6/8 18:10, Ross Burton 写道:
> On 8 Jun 2023, at 08:21, 张家岭 via lists.yoctoproject.org <zhangjialing=loongson.cn@lists.yoctoproject.org> wrote:
>> I would like to submit a new layer named meta-loongarch for the LoongArch machine to http://layers.openembedded.org/layerindex/branch/master/layers/. However, when I attempted to submit, I encountered the error message "Layer with this Layer name already exists." Yet, I cannot find the layer named meta-loongarch in the layer index. Could you please help me or provide some advice on this matter?
> New layers need to be approved before they’re publicly visible, I’ve just approved the layer you submitted:
>
> https://layers.openembedded.org/layerindex/branch/master/layer/meta-loongarch/
>
> Ross


