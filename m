Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13EF1E00CB3; Tue, 15 Aug 2017 18:38:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.67 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (antonius.riko[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.67 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f67.google.com (mail-pg0-f67.google.com [74.125.83.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66B7DE00A9B
	for <yocto@yoctoproject.org>; Tue, 15 Aug 2017 18:38:36 -0700 (PDT)
Received: by mail-pg0-f67.google.com with SMTP id l64so3956600pge.2
	for <yocto@yoctoproject.org>; Tue, 15 Aug 2017 18:38:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding:content-language;
	bh=YnKdn6/ibcARAk4iMiK+RrOgYHDcLd/yki3jQ+js0nA=;
	b=TNedgGmAoW3lR9ZoORZGXoxljE4B9944Khk27DgHHxS74QdYvYAGqXcpjQ/Ydo4aoP
	/qUNCSbleenPcE9WRd0rcHURzJ7JKHM9MkXvMVs+3AvpQ8reouwmY+8e8Un5F5/CiK2i
	Dah5T9mUR173V67m27ivBaDM1H/pjPO4iOOd0no0Nrdfgi22xn8tpc6UtRrRdrJfAm2M
	kC0gYfolme4ZYXJBF+OLm9LWt6u2rV6J6Zp+G81wO+ZRQrLqPomolHAnXu0MYOMii5iy
	TVBp2S6JWqYRD5U2B0OkjRqJeSwG7+3+3grRo+7Z7KGe1dTZnXHSF9IFfAlTV9wJZBtN
	E4nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=YnKdn6/ibcARAk4iMiK+RrOgYHDcLd/yki3jQ+js0nA=;
	b=dvJ1bmg+lzFhPtbjCEuS5AMM4thC8w87T+ljfUYIW1Uv4nRI/O7YFCf95xA6btfxdR
	vE6bIl1PWhg4E/kgZ6K4y14liZnuYvEAbMbI39ZYr0MX/sjAbyXKkS6WwdxonAWLAzqm
	sJFlc1+qWAkhjgF3MSWSHf4TJDHes83EKkxDdYjPa/v8HmUi1HkFjAnWbI+0RCjeEa8g
	URPMZP03EG6oT94B2iXnYwUziaKiAdi2rFEJg/1/oTYRppGtvRiTRVs4RzoATVjTl846
	a2GkRO/XlXTCMOX4Qurmeurcg66omXofc4FyYXo8N6aaSEhAA7i8r2yaourWZPr8T1iA
	PO0A==
X-Gm-Message-State: AHYfb5iBHWEjxt5bx0cMYHMmy4GVW0jkti5fWYP/PekhMP6zVoxuhZ0h
	RiqKbYhYuQkw8fgbWPw=
X-Received: by 10.99.106.193 with SMTP id f184mr100715pgc.290.1502847515357;
	Tue, 15 Aug 2017 18:38:35 -0700 (PDT)
Received: from ?IPv6:2001:8003:804a:b500:7ae4:ff:fe2d:ca29?
	([2001:8003:804a:b500:7ae4:ff:fe2d:ca29])
	by smtp.gmail.com with ESMTPSA id
	22sm3405444pfz.100.2017.08.15.18.38.32
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 15 Aug 2017 18:38:34 -0700 (PDT)
To: Martin Jansa <martin.jansa@gmail.com>
References: <39341581-7086-955e-d678-fa771e5941da@gmail.com>
	<1502725740.28941.13.camel@linux.intel.com>
	<CABcZANkw2EPzROT6WFkqzL+OoJtnXBu_HWJVevKg07RrmGOLfw@mail.gmail.com>
	<299105a1-2bf6-a89f-d1f1-e35bd2d458c1@gmail.com>
	<1502806378.28941.32.camel@linux.intel.com>
	<CA+chaQe_1GVYdmCwqQ-gSUZZ=_xcN5RR=ORuzZiUxTyj3tU8uQ@mail.gmail.com>
	<CAByQQ_qNcKpj5RYXX0EVtzLfqki0CW-FwSN-tAhvEYybKo24ug@mail.gmail.com>
	<20170815235004.GA3353@jama>
From: Riko <antonius.riko@gmail.com>
Message-ID: <0668d2f2-3718-1b31-8ace-9c736e3f4942@gmail.com>
Date: Wed, 16 Aug 2017 09:38:29 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20170815235004.GA3353@jama>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: layer.conf on openembedded-core ?
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
X-List-Received-Date: Wed, 16 Aug 2017 01:38:37 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

so from this page

https://layers.openembedded.org/layerindex/branch/pyro/layers/

for example I want to use 'pyro' branch :

I will do

#> git clone -b pyro git://git.openembedded.org/openembedded-core


On 16/08/17 07:50, Martin Jansa wrote:
> On Wed, Aug 16, 2017 at 07:40:10AM +0800, Riko Ho wrote:
>> I see, so I must use all layers within the same branch.
>> Could you tell me where I can download those layers in the sma branch?
>> I didn't see the branch when I clone the layers.
> This might help you:
> https://git-scm.com/documentation
>
>> On Aug 15, 2017 10:11 PM, "Martin Jansa" <martin.jansa@gmail.com> wrote:
>>
>>> But it's related to it, in this thread he added oe-core/meta in master
>>> branch to BBLAYERS in poky build (already including poky/meta) from pyro
>>> branch.
>>>
>>> That's why he is seeing 3 strange issues reported in couple threads
>>> already (and this is also 3rd time someone telling him that he shouldn't
>>> include oe-core meta twice and to use the same branch across all layers).
>>>
>>> On Tue, Aug 15, 2017 at 4:12 PM, Leonardo Sandoval <
>>> leonardo.sandoval.gonzalez@linux.intel.com> wrote:
>>>
>>>> On Tue, 2017-08-15 at 09:09 +0800, Riko wrote:
>>>>> Dear Team Yocto Members,
>>>>>
>>>>> I continue compiling, and got :
>>>>>
>>>>> ERROR: /home/bianchi/poky/openembedded-core/meta/recipes-core/images/
>>>> build-appliance-image_15.0.0.bb: No IMAGE_CMD defined for IMAGE_FSTYPES
>>>> entry 'wic.vmdk' - possibly invalid type name or missing support class
>>>>> ERROR: Failed to parse
>>>>> recipe: /home/bianchi/poky/openembedded-core/meta/recipes-core/images/
>>>> build-appliance-image_15.0.0.bb
>>>> would be better if you start another thread with this issue. BTW, I just
>>>> built a build-appliance without any change at local.conf and all went
>>>> fine so you may have included something that you are not referring to
>>>> (IMAGE_FILES?)
>>>>
>>>>
>>>>
>>>>> How can I fix it ?
>>>>>
>>>>> regards,
>>>>>
>>>>> Riko
>>>>>
>>>>>
>>>>>
>>>>> On 14/08/17 23:56, Christopher Larson wrote:
>>>>>
>>>>>> The openembedded-core root isn’t a layer, openembedded-core/meta is.
>>>>>>
>>>>>> On Mon, Aug 14, 2017 at 8:49 AM, Leonardo Sandoval
>>>>>> <leonardo.sandoval.gonzalez@linux.intel.com> wrote:
>>>>>>          On Mon, 2017-08-14 at 15:11 +0800, Riko wrote:
>>>>>>          > Dear Yocto Members,
>>>>>>          >
>>>>>>          > How can I find this file ?
>>>>>>
>>>>>>
>>>>>>          this is a pretty general question. are you running bitbake
>>>>>>          from the
>>>>>>          build directory? double check your conf/bblayers.conf and
>>>>>>          make sure
>>>>>>          paths there are pointing correctly.
>>>>>>
>>>>>>
>>>>>>          >
>>>>>>          > ==
>>>>>>          >
>>>>>>          > ERROR: Unable to parse
>>>>>>          > /home/bianchi/poky/openembedded-core/conf/layer.conf:
>>>>>>          [Errno 2] file
>>>>>>          > /home/bianchi/poky/openembedded-core/conf/layer.conf not
>>>>>>          found
>>>>>>          >
>>>>>>          >
>>>>>>          > Thanks,
>>>>>>          >
>>>>>>          > Riko
>>>>>>          >
>>>>>>
>>>>>>
>>>>>>          --
>>>>>>          _______________________________________________
>>>>>>          yocto mailing list
>>>>>>          yocto@yoctoproject.org
>>>>>>          https://lists.yoctoproject.org/listinfo/yocto
>>>>>>
>>>>>>
>>>>>>
>>>>>>
>>>>>>
>>>>>> --
>>>>>> Christopher Larson
>>>>>> kergoth at gmail dot com
>>>>>> Founder - BitBake, OpenEmbedded, OpenZaurus
>>>>>> Senior Software Engineer, Mentor Graphics
>>>>
>>>> --
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>
>>>


