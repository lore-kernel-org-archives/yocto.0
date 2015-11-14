Return-Path: <eystein@mender.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF6F4E00A4F; Fri, 13 Nov 2015 18:12:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f46.google.com (mail-pa0-f46.google.com
	[209.85.220.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B614DE008D2
	for <yocto@yoctoproject.org>; Fri, 13 Nov 2015 18:12:06 -0800 (PST)
Received: by padhx2 with SMTP id hx2so116854028pad.1
	for <yocto@yoctoproject.org>; Fri, 13 Nov 2015 18:12:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mender_io.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-type:content-transfer-encoding;
	bh=/SEeUJLh/ipre4+B8KtLgTq6a9o9KHjzl5A1PZex5Qs=;
	b=H3FsTfhae0i/CHZ5b/qx2J0bOjdpn2H9wVQ36cGOTg8l4Pb3XoHjjM8+TdhcXC2oBk
	onzcVPIcEwHHvgPxitaqqrOvgSOhqZVjkWjzAinbLFP4tuJRd3YUasOgC+sNC6csu6mQ
	pKttsp0U3Wc3d6VCU9Z7/3VcaeEMx3deha7J5mRa+0EwDZqTWIkM64QTFKKHwCB40Ks2
	8+05p7MSMKW6T0mAVNzAcw1V0PpsfqAJHhM4f1rLeAexir+Qr+5/zRCdN0fKLfCZwusU
	3n+Irn/evvop4F6tuz7yMbq0dU+IoXyScAcIIpjgOVO8EWWBQaHXkc03txpGTEwPnmNi
	WYLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-type
	:content-transfer-encoding;
	bh=/SEeUJLh/ipre4+B8KtLgTq6a9o9KHjzl5A1PZex5Qs=;
	b=lSM3w+fI/Wz2qUzAVW2TRRhxvAzwfnBadjBlCLk9dE22O+gC7cfw6SuVJQsL6oC/lX
	fZQDnnpxP5qRRGZK3ldbCA0DAxJIQ1U/4LxdP/tkIi4qOZDdSQ1h8hSCEjOPGXlLa8R7
	y7tr+khgpxSlQ7lOMTnZwL69/HDobzUL/VOYgyz6XlqK8SiAISt03RaiLm/geIKf7ZXx
	BgqwxGNAwvJg+i0R9Q1XcdhnmxjcuXjGuhWNTwS2W+cYpZ0t+IsifbLJcAtnTOaxsTN1
	p3uez8pn/iImcwp0owP4uTivQpjNrNDQMne2TV0qSlDbZ3VhxOB6h2fC1gErDoFm8ZpM
	2I5Q==
X-Gm-Message-State: ALoCoQntz2FzP5+Qki7vtgYnzraZMR8qEQb5LzNlR5YURh+FwwKzKNSHJ0DTTiK3AsPOdSAK6LYA
X-Received: by 10.68.230.103 with SMTP id sx7mr37286053pbc.146.1447467126314; 
	Fri, 13 Nov 2015 18:12:06 -0800 (PST)
Received: from ?IPv6:2600:1010:b11d:9753:bca5:1814:407:938b?
	([2600:1010:b11d:9753:bca5:1814:407:938b])
	by smtp.gmail.com with ESMTPSA id
	we9sm22860410pab.3.2015.11.13.18.12.05
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 13 Nov 2015 18:12:05 -0800 (PST)
To: "Smith, Virgil" <Virgil.Smith@flir.com>
References: <560C54B1.20307@mender.io>
	<3CF90DC1-AE76-4429-A645-72BF8D4DDA21@gmail.com>
	<5642A7DF.6000604@mender.io>
	<F14AEF751653024287138321000C846AFD6E92B7@BOS-DAG1.zone1.flir.net>
From: =?UTF-8?Q?Eystein_M=c3=a5l=c3=b8y_Stenberg?= <eystein@mender.io>
Message-ID: <56469873.9040902@mender.io>
Date: Fri, 13 Nov 2015 18:12:03 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <F14AEF751653024287138321000C846AFD6E92B7@BOS-DAG1.zone1.flir.net>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Run-time discovery of machine for image compatibility check
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
X-List-Received-Date: Sat, 14 Nov 2015 02:12:10 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

Virgil,

Thank you for pointing this out, I've updated the post to override the
variable instead!

On 11/11/15 08:50, Smith, Virgil wrote:
> The recommendations on your blog suggest modifying image-buildinfo.bbclass to change IMAGE_BUILDINFO_VARS.
> You /should/ be able to avoid this by simply adding something like
> 
> IMAGE_BUILDINFO_VARS_append = " MACHINE DEVICE_MODEL DEVICE_TYPE"
> or
> IMAGE_BUILDINFO_VARS = "DISTRO DISTRO_VERSION MACHINE DEVICE_MODEL DEVICE_TYPE"
> to local.conf.
> 
> The first version should extend the value whereas the second should completely replace it.
> This should work because image-buildinfo.bbclass used the ?= operator to set the variable.
> For the same reason you should NOT use += to extend the variable, but should use _append instead.
> 
> This should be easier to maintain when updating your 'version of yocto'.
> 
> 
> NOTE: In /extreme/ summary this would mean
> 
> Add the following to  local.conf
>    INHERIT += "image-buildinfo"
>    DEVICE_MODEL = "some-extra-identifying-details"
>    IMAGE_BUILDINFO_VARS_append = " MACHINE DEVICE_MODEL"
> 
> to get a /etc/build file in your resulting image with information similar to the build configuration summary bitbake outputs during a build.
> 
> 
> 
>> -----Original Message-----
>> From: yocto-bounces@yoctoproject.org [mailto:yocto-
>> bounces@yoctoproject.org] On Behalf Of Eystein Måløy Stenberg
>> Sent: Tuesday, November 10, 2015 8:29 PM
>> To: Khem Raj
>> Cc: yocto@yoctoproject.org
>> Subject: Re: [yocto] Run-time discovery of machine for image compatibility
>> check
>>
>> Thanks to everyone on the input on this issue. I eventually solved it by using an
>> image feature called "buildinfo".
>>
>> In case someone come across a similar need in the future I've created these two
>> blog post to advertise buildinfo it a bit more and show how to use it:
>>
>> * https://www.mender.io/blog/build-info-yocto-1
>> * https://www.mender.io/blog/build-info-yocto-2
>>
>> On 30/09/15 17:45, Khem Raj wrote:
>>>
>>>> On Sep 30, 2015, at 2:31 PM, Eystein Måløy Stenberg <eystein@mender.io>
>> wrote:
>>>>
>>>> Hi,
>>>>
>>>> Before starting a bitbake build, we input the MACHINE variable in
>>>> local.conf (e.g. MACHINE ?= beaglebone).
>>>>
>>>> Is there a way to detect this variable at run-time? I.e. if I have
>>>> built the image, written it to a device, and I'm now logged in to it.
>>>
>>> There is no standard bill of materials that you will find on images.
>>> Everyone produces it per own needs. The reason is that we do not have
>>> a one OTA mechanism recommended or preferred in OpenEmbedded or
>>> maintained by yocto project. May be this could be a thing to consider
>>> come future right now, there were other big fish to fry around workflow. OTA
>> firmware upgrade, could be big thing for next release or there after.
>>>
>>> I don’t have a better answer for you at the moment. You have to work
>>> with device firmware manufacturer and see if they have put some image info
>> into the image in some form.
>>>
>>>>
>>>> The reason I want this is that I'm working on a project to deploy
>>>> image updates (remotely), and I only want to write the image if the
>>>> device is compatible with the image file. So I need to know both the
>>>> hardware/board type and what the image target is (assuming this is
>>>> the MACHINE variable alone). Then I will only write the image if they
>>>> are the same.
>>>>
>>>> Also, do you think using the MACHINE variable is the right approach
>>>> for this problem? Maybe someone has had a similar problem?
>>>>
>>>> I'm new to Yocto, sorry if I'm asking something obvious (but I could
>>>> not find an answer in the docs).
>>>>
>>>> Thanks!
>>>>
>>>> --
>>>>
>>>> Eystein
>>>> --
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>
>> --
>>
>> Eystein
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> 
> ________________________________
> 
> Notice to recipient: This email is meant for only the intended recipient of the transmission, and may be a communication privileged by law, subject to export control restrictions or that otherwise contains proprietary information. If you receive this email by mistake, please notify us immediately by replying to this message and then destroy it and do not review, disclose, copy or distribute it. Thank you in advance for your cooperation.
> 

-- 

Eystein

