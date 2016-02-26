Return-Path: <xerofoify@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1619BE00D7D; Fri, 26 Feb 2016 06:26:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (xerofoify[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io0-f172.google.com (mail-io0-f172.google.com
	[209.85.223.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5F16E00911
	for <yocto@yoctoproject.org>; Fri, 26 Feb 2016 06:26:46 -0800 (PST)
Received: by mail-io0-f172.google.com with SMTP id 9so118670884iom.1
	for <yocto@yoctoproject.org>; Fri, 26 Feb 2016 06:26:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding;
	bh=qftO0BtJWxHnWJ70lZOXnxm93p5IKJJz3bS81/fY9+4=;
	b=jD9sOMFSwZ0PuAkjekkiYIBPMODPOu+wmDvKctw8+jzUEmPAXhqlQb20qDdbmshjRe
	e/HoMuhH9vVtt1QhHvLbhqmBL0jlcCxOaTz+f9Ivy8QGVMCG1Hq8bQ7j4upL4KCXr9jL
	ptuZsifd1+s7i1UR0RzUU1yCVkUnJ+2EtlCfhcf8n08fscJDGqncaxJ2zjoruHbC4C7f
	gcVMqM/z4VYRodnW/3sSC/q+4eomfw6UQcXo/4/YWY6Wn9895PPTIDWJ7F+ENOGcx8O3
	alNEh8l8BYL68HSdob4/0SN/ToSbmpX2+hP37CTqaE4jpTNp5E0pN6XsbNw/KeKmdHtL
	/rWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=qftO0BtJWxHnWJ70lZOXnxm93p5IKJJz3bS81/fY9+4=;
	b=LrUV8TTv3OLAyeCI7qrrIDdW+/kUtJqqYeTNzLGLPB7dCWOWZYKNHi6ClQq0k5LRBI
	lw5i4BEh2pwYY4hX3hDQOIDnmWjrn+r6wwCyUDSROF3Xb7ddUPIe3OsA/iz9DqXz75Es
	snv7XHXBEFN98qfjnqH0LAxfcOQG3UZumrII31S+TWEPix4uS0dAzj5vnPowUouLzoNj
	ejzJpbtCuBmCscm67o9C+NhcnLv6Vtt2JrQk2LvoypmfjgtHxJ3WCwKV2qmYA772/M0o
	PtjR5cZ+eQaLrbKZVNDMlsbfudzgl39giKtIxhf+IHDwWjqNqjRxEDdXhuioPGX9JvGo
	bSiA==
X-Gm-Message-State: AG10YOQRhsXWhMc2zdh7RHhrOrA0SM4wAcQd4pT7OsgZ7/H6/67ZcWFHZWAiLxqv9hI2EA==
X-Received: by 10.107.14.66 with SMTP id 63mr8921565ioo.150.1456496805728;
	Fri, 26 Feb 2016 06:26:45 -0800 (PST)
Received: from [192.168.0.11]
	(CPEbc4dfb2691f3-CMbc4dfb2691f0.cpe.net.cable.rogers.com.
	[99.231.110.121]) by smtp.googlemail.com with ESMTPSA id
	t16sm5353151ioe.36.2016.02.26.06.26.44
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 26 Feb 2016 06:26:44 -0800 (PST)
To: Philip Balister <philip@balister.org>,
	Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org, 
	openembedded-architecture@lists.openembedded.org
References: <2956615.y8hyrZheM7@peggleto-mobl.ger.corp.intel.com>
	<56D05536.3090904@balister.org>
From: nick <xerofoify@gmail.com>
Message-ID: <56D060A3.6040309@gmail.com>
Date: Fri, 26 Feb 2016 09:26:43 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <56D05536.3090904@balister.org>
Cc: Brian Avery <brian.avery@intel.com>
Subject: Re: [Openembedded-architecture] Removing Hob for 2.1
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
X-List-Received-Date: Fri, 26 Feb 2016 14:26:47 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 2016-02-26 08:37 AM, Philip Balister wrote:
> On 02/25/2016 09:49 PM, Paul Eggleton wrote:
>> Hi folks,
>>
>> So we've been gearing up the Toaster web UI to replace the Hob (GTK+ based) UI 
>> for some time now; Hob has basically been on life support for the past few 
>> releases. As of late last month in master, Toaster has the capability to 
> 
> Please remove Hob.
> 
> I've heard that the Linux Foundation training still mentions Hob, I'll
> double check that this content is removed and shifted to Toaster.
> 
> Philip
> 
>> select the packages in an image, removing the last thing that Hob could do 
>> that Toaster couldn't. This means it's about time we looked at removing Hob - 
>> particularly if we want to do so for the upcoming 2.1 release as we should 
>> really do so within the M3 development timeframe which is almost over.
>>
>> To recap, the reasons why Hob ought to be removed include:
>>
>> - The code is tightly woven into BitBake, making it fragile. This means it 
>> needs significant QA and maintenance on an ongoing basis.
>>
>> - Some of the implementation is not ideal; we'll be able to remove some cruft 
>> from BitBake and OE-Core at the same time.
>>
>> - It's GTK+ 2 based, not the current GTK+ 3.
>>
>> - Toaster is now a much more capable UI and is being actively maintained
>>
>> I'm maintaining a list of things we would drop together with Hob, so I could 
>> probably come up with a patchset - I just wanted to give people a heads up and 
>> double check that this is something we indeed want to do in 2.1. Any comments?
>>
I haven't been using the last few versions of Yocto, last I used was 1.8 I believe unless
we just jumped to 2.0/2.1. I was wondering for people somewhat used to using HOB for easier
distribution build tuning how big is the learning curve(I assume it isn't much). Further more
can Toaster be configured to make iso/vmware images as I find this very useful plus from what
I known Toaster needs to be run with a browser can it be made to run as a non browser based
service similar to Hob if not already done so.
Just my thoughts,
Nick
>> Cheers,
>> Paul
>>

