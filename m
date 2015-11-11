Return-Path: <eystein@mender.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E101FE009C3; Tue, 10 Nov 2015 18:28:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f41.google.com (mail-pa0-f41.google.com
	[209.85.220.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84349E008D2
	for <yocto@yoctoproject.org>; Tue, 10 Nov 2015 18:28:49 -0800 (PST)
Received: by pacdm15 with SMTP id dm15so15969631pac.3
	for <yocto@yoctoproject.org>; Tue, 10 Nov 2015 18:28:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mender_io.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-type:content-transfer-encoding;
	bh=I0xE/PPBcEUfsR7vtL2Wux/AKfs7skV5rUoXIKWzukA=;
	b=PV78vrpomu5rDB3QWu48Ic2LyZ4NU20OdCFg45J7ijn0yV2MclmrIsY8bVwLTGPOfu
	ofgQIfvuccfWX+M8hKUzAMVPOIlSWAu1Ejwm8qFlwkaZLh4icqS89h41y18DaQdvdog6
	EbfF4l/wJgQKkXfxpc7rZTnVA/ZPgX5RI6Bbej1A6Zopayr8Lf2Wsk/vSvtgwwGZC2Wb
	856kiWNw2J3r0As5beJV2Kp710O5HRepRawvB5THEoTzXPWRsg7QiLqoR4LzivQrXPCZ
	DcnRlM3bUeZ7WWjACs63YWXCR3FQWJ5LRD67cSd5PebmqZmrYAhYCQdIWmlWEE3JHcjS
	2ITQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-type
	:content-transfer-encoding;
	bh=I0xE/PPBcEUfsR7vtL2Wux/AKfs7skV5rUoXIKWzukA=;
	b=Dfv7NunpkFuKRK6lbOYzX7kttwmEPDN76rjLoNkZdWXxLBMHUGHNbdqi8zPgdEcbRC
	bdk3hfjZy0WRPA5kHylLmUTzH0negUoR+spDRQMrpT1gBP0mzq5UxqkOa74enfSEHQxX
	a3vm13DgffIiPfkVa70RDio6VmC53FzrLE1lD0VKTBcn5eEQ2y2FPpi0RUmI12jKT0y/
	5wk2PY3Ap6xHbKY0nLsThzvGq9dOGQBsu6MOQxYp79JydSefacCVgeUzysSs1E1Fdm2M
	OVHcWy2JDwLh8+IzzKTwzSNn2IksXy3wmRO5+xYvJBZDjffKDF6MEFh4lVH16n9kLJhW
	z6GA==
X-Gm-Message-State: ALoCoQlZtMI8NSKWDFxjHTvYZxhlrIvc4o9ENo+JsygOqZmH27v3vmmUzdrN5NmnziRqxa/2EaL3
X-Received: by 10.68.201.73 with SMTP id jy9mr10619867pbc.102.1447208929320;
	Tue, 10 Nov 2015 18:28:49 -0800 (PST)
Received: from [10.10.13.206] ([184.23.178.130])
	by smtp.gmail.com with ESMTPSA id
	fn4sm6624709pab.46.2015.11.10.18.28.48
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 10 Nov 2015 18:28:48 -0800 (PST)
To: Khem Raj <raj.khem@gmail.com>
References: <560C54B1.20307@mender.io>
	<3CF90DC1-AE76-4429-A645-72BF8D4DDA21@gmail.com>
From: =?UTF-8?Q?Eystein_M=c3=a5l=c3=b8y_Stenberg?= <eystein@mender.io>
Message-ID: <5642A7DF.6000604@mender.io>
Date: Tue, 10 Nov 2015 18:28:47 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <3CF90DC1-AE76-4429-A645-72BF8D4DDA21@gmail.com>
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Wed, 11 Nov 2015 02:28:52 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

Thanks to everyone on the input on this issue. I eventually solved it by
using an image feature called "buildinfo".

In case someone come across a similar need in the future I've created
these two blog post to advertise buildinfo it a bit more and show how to
use it:

* https://www.mender.io/blog/build-info-yocto-1
* https://www.mender.io/blog/build-info-yocto-2

On 30/09/15 17:45, Khem Raj wrote:
> 
>> On Sep 30, 2015, at 2:31 PM, Eystein Måløy Stenberg <eystein@mender.io> wrote:
>>
>> Hi,
>>
>> Before starting a bitbake build, we input the MACHINE variable in
>> local.conf (e.g. MACHINE ?= beaglebone).
>>
>> Is there a way to detect this variable at run-time? I.e. if I have built
>> the image, written it to a device, and I'm now logged in to it.
> 
> There is no standard bill of materials that you will find on images. Everyone produces it
> per own needs. The reason is that we do not have a one OTA mechanism recommended or preferred
> in OpenEmbedded or maintained by yocto project. May be this could be a thing to consider come future
> right now, there were other big fish to fry around workflow. OTA firmware upgrade, could be big thing for next release
> or there after.
> 
> I don’t have a better answer for you at the moment. You have to work with device firmware manufacturer
> and see if they have put some image info into the image in some form.
> 
>>
>> The reason I want this is that I'm working on a project to deploy image
>> updates (remotely), and I only want to write the image if the device is
>> compatible with the image file. So I need to know both the
>> hardware/board type and what the image target is (assuming this is the
>> MACHINE variable alone). Then I will only write the image if they are
>> the same.
>>
>> Also, do you think using the MACHINE variable is the right approach for
>> this problem? Maybe someone has had a similar problem?
>>
>> I'm new to Yocto, sorry if I'm asking something obvious (but I could not
>> find an answer in the docs).
>>
>> Thanks!
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

-- 

Eystein

