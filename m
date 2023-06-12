Return-Path: <zhangjialing@loongson.cn>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 44B79C7EE2E
	for <webhook@archiver.kernel.org>; Mon, 12 Jun 2023 02:04:20 +0000 (UTC)
Received: from mail.loongson.cn (mail.loongson.cn [114.242.206.163])
 by mx.groups.io with SMTP id smtpd.web11.49702.1686535452519874432
 for <yocto@lists.yoctoproject.org>;
 Sun, 11 Jun 2023 19:04:13 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: loongson.cn, ip: 114.242.206.163, mailfrom: zhangjialing@loongson.cn)
Received: from loongson.cn (unknown [10.20.42.22])
	by gateway (Coremail) with SMTP id _____8Ax0OgYfYZkzVgDAA--.5477S3;
	Mon, 12 Jun 2023 10:04:08 +0800 (CST)
Received: from [10.20.42.22] (unknown [10.20.42.22])
	by localhost.localdomain (Coremail) with SMTP id AQAAf8AxJeQWfYZkOq8UAA--.59732S3;
	Mon, 12 Jun 2023 10:04:06 +0800 (CST)
Message-ID: <dad6e312-8b1f-1cae-b4a5-87cbe6d944a7@loongson.cn>
Date: Mon, 12 Jun 2023 10:04:06 +0800
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
From: =?UTF-8?B?5byg5a625bKt?= <zhangjialing@loongson.cn>
In-Reply-To: <8918F74E-0EF7-4BFA-8B89-55312F8490AB@arm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CM-TRANSID: AQAAf8AxJeQWfYZkOq8UAA--.59732S3
X-CM-SenderInfo: x2kd0wxmldzxtqj6z05rqj20fqof0/1tbiAQARB2SBxQEdegAFsU
X-Coremail-Antispam: 1Uk129KBj93XoWxCFyDKw47XFyDJryUAr48KrX_yoWrKF4rpF
	yI9rn8K345urWfCr4DCFyxWFWDZw43Zw42ganxtF1q9FWUAryqqw1vq3s0gF17Jan3ZFy7
	Ww45X3yDuFWDXrbCm3ZEXasCq-sJn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7KY7ZEXa
	sCq-sGcSsGvfJ3Ic02F40EFcxC0VAKzVAqx4xG6I80ebIjqfuFe4nvWSU5nxnvy29KBjDU
	0xBIdaVrnRJUUUvFb4IE77IF4wAFF20E14v26r1j6r4UM7CY07I20VC2zVCF04k26cxKx2
	IYs7xG6rWj6s0DM7CIcVAFz4kK6r1j6r18M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48v
	e4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_Gr0_Xr1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI
	0_Cr0_Gr1UM28EF7xvwVC2z280aVAFwI0_Gr0_Cr1l84ACjcxK6I8E87Iv6xkF7I0E14v2
	6r4UJVWxJr1le2I262IYc4CY6c8Ij28IcVAaY2xG8wAqjxCEc2xF0cIa020Ex4CE44I27w
	Aqx4xG64xvF2IEw4CE5I8CrVC2j2WlYx0E2Ix0cI8IcVAFwI0_Jr0_Jr4lYx0Ex4A2jsIE
	14v26r1j6r4UMcvjeVCFs4IE7xkEbVWUJVW8JwACjcxG0xvEwIxGrwCYjI0SjxkI62AI1c
	AE67vIY487MxAIw28IcxkI7VAKI48JMxC20s026xCaFVCjc4AY6r1j6r4UMI8I3I0E5I8C
	rVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE17CEb7AF67AKxVWUXVWUAw
	CIc40Y0x0EwIxGrwCI42IY6xIIjxv20xvE14v26r1j6r1xMIIF0xvE2Ix0cI8IcVCY1x02
	67AKxVWUJVW8JwCI42IY6xAIw20EY4v20xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_Jr
	0_Gr1lIxAIcVC2z280aVCY1x0267AKxVWUJVW8JbIYCTnIWIevJa73UjIFyTuYvjxUzsqW
	UUUUU
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 12 Jun 2023 02:04:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60245

Hi Ross .

     I have changed the default branch to master, But I stil get this 
error , is there something wrong in self.active_maintainers()?

```

/usr/local/lib/python3.10/dist-packages/django/core/handlers/exception.py, 
line 47, in inner
                 response = get_response(request) …
▼ Local vars
Variable    Value
exc
TypeError("'NoneType' object is not iterable")
get_response
<bound method BaseHandler._get_response of 
<django.core.handlers.wsgi.WSGIHandler object at 0x7f437f0b0370>>
request
<WSGIRequest: GET '/layerindex/branch/master/layer/meta-loongarch/'>
/usr/local/lib/python3.10/dist-packages/django/core/handlers/base.py, 
line 181, in _get_response
                 response = wrapped_callback(request, *callback_args, 
**callback_kwargs) …
▼ Local vars
Variable    Value
callback
<function LayerDetailView at 0x7f437e1a27a0>
callback_args
()
callback_kwargs
{'branch': 'master', 'slug': 'meta-loongarch'}
middleware_method
<bound method CsrfViewMiddleware.process_view of 
<django.middleware.csrf.CsrfViewMiddleware object at 0x7f437f1c2aa0>>
request
<WSGIRequest: GET '/layerindex/branch/master/layer/meta-loongarch/'>
response
None
self
<django.core.handlers.wsgi.WSGIHandler object at 0x7f437f0b0370>
wrapped_callback
<function LayerDetailView at 0x7f437e1a27a0>
/usr/local/lib/python3.10/dist-packages/django/views/generic/base.py, 
line 70, in view
             return self.dispatch(request, *args, **kwargs) …
▼ Local vars
Variable    Value
args
()
cls
<class 'layerindex.views.LayerDetailView'>
initkwargs
{'template_name': 'layerindex/detail.html'}
kwargs
{'branch': 'master', 'slug': 'meta-loongarch'}
request
<WSGIRequest: GET '/layerindex/branch/master/layer/meta-loongarch/'>
self
<layerindex.views.LayerDetailView object at 0x7f437af523b0>
/opt/layerindex/layerindex/views.py, line 410, in dispatch
         res = super(LayerDetailView, self).dispatch(request, *args, 
**kwargs) …
▼ Local vars
Variable    Value
__class__
<class 'layerindex.views.LayerDetailView'>
args
()
kwargs
{'branch': 'master', 'slug': 'meta-loongarch'}
request
<WSGIRequest: GET '/layerindex/branch/master/layer/meta-loongarch/'>
self
<layerindex.views.LayerDetailView object at 0x7f437af523b0>
/usr/local/lib/python3.10/dist-packages/django/views/generic/base.py, 
line 98, in dispatch
         return handler(request, *args, **kwargs) …
▼ Local vars
Variable    Value
args
()
handler
<bound method BaseDetailView.get of <layerindex.views.LayerDetailView 
object at 0x7f437af523b0>>
kwargs
{'branch': 'master', 'slug': 'meta-loongarch'}
request
<WSGIRequest: GET '/layerindex/branch/master/layer/meta-loongarch/'>
self
<layerindex.views.LayerDetailView object at 0x7f437af523b0>
/usr/local/lib/python3.10/dist-packages/django/views/generic/detail.py, 
line 107, in get
         context = self.get_context_data(object=self.object) …
▼ Local vars
Variable    Value
args
()
kwargs
{'branch': 'master', 'slug': 'meta-loongarch'}
request
<WSGIRequest: GET '/layerindex/branch/master/layer/meta-loongarch/'>
self
<layerindex.views.LayerDetailView object at 0x7f437af523b0>
/opt/layerindex/layerindex/views.py, line 424, in get_context_data
         context['useredit'] = layer.user_can_edit(self.user) …
▼ Local vars
Variable    Value
__class__
<class 'layerindex.views.LayerDetailView'>
context
{'layeritem': <LayerItem: meta-loongarch>,
  'object': <LayerItem: meta-loongarch>,
  'view': <layerindex.views.LayerDetailView object at 0x7f437af523b0>}
kwargs
{'object': <LayerItem: meta-loongarch>}
layer
<LayerItem: meta-loongarch>
self
<layerindex.views.LayerDetailView object at 0x7f437af523b0>
/opt/layerindex/layerindex/models.py, line 178, in user_can_edit
             for maintainer in self.active_maintainers(): …
▼ Local vars
Variable    Value
self
<LayerItem: meta-loongarch>
user
<SimpleLazyObject: <User: zhangjialing@loongson.cn>>
user_email
'zhangjialing@loongson.cn'

```
在 2023/6/9 19:33, Ross Burton 写道:
> Hi,
>
> This would be https://bugzilla.yoctoproject.org/show_bug.cgi?id=14989, because your layer has a ‘main’ branch not a ‘master’ branch.  You can either rename main to master, or keep a master branch in sync with main, or wait for that to be fixed.
>
> Ross


