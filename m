Return-Path: <wpdster@gmail.com>
Received: from mail-pa0-f52.google.com (mail-pa0-f52.google.com
	[209.85.220.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08427E00C73
	for <yocto@yoctoproject.org>; Thu, 10 Apr 2014 11:05:47 -0700 (PDT)
Received: by mail-pa0-f52.google.com with SMTP id rd3so4324501pab.11
	for <yocto@yoctoproject.org>; Thu, 10 Apr 2014 11:05:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=ju4aC4fr2GDgosQ13VzAF5hg2ZDKIhvmpBEX3Wfsnlo=;
	b=S3diqOm0JJz4VcvCRorEVPAqP4ZV6W96VRysyncUL26vmwt4qfYa3mN/YsOl5dEzAf
	ImQ6hMgDlkWwLsI+z5krWBARbHOneJLY9cv0UFCYL6OWkic108B5+OgoRZRMNzqEQP8Y
	Pw/ZK+DbLYmw5iZ1VZ0ky0TgTPwnujGTOx4DHRVM16t1IK5BGKW7IVFuWxxHGovggf5n
	NWfq2+zcM6k9krcdICbTs9m/tAIiPJA2/gfgF0uqIzjHq1zcvpBO3+F9b964eaFzvkNB
	nR5wTnGMpDs4noxjv6X7XS1AiVLZ7z6UruWO4ZdI4GyiIEw+64yK3hPDrzIqJ2Nl57gG
	w+Bg==
X-Received: by 10.68.102.34 with SMTP id fl2mr21391671pbb.2.1397153147470;
	Thu, 10 Apr 2014 11:05:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.70.32.161 with HTTP; Thu, 10 Apr 2014 11:05:17 -0700 (PDT)
In-Reply-To: <5346BA37.3010501@windriver.com>
References: <CAF_dkJD45hZOEwqb4giAKmdO-22WK3KTf-Bz0RWZvKTHD9-qFQ@mail.gmail.com>
	<5346BA37.3010501@windriver.com>
From: Patrick Doyle <wpdster@gmail.com>
Date: Thu, 10 Apr 2014 14:05:17 -0400
Message-ID: <CAF_dkJBtoweCRLzC95mJxZqwDHGR719cjYD0nedhJRsXHcqb0Q@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to include kernel module without including the kernel in the rootfs?
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
X-List-Received-Date: Thu, 10 Apr 2014 18:05:52 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi Bruce,
Thank you very much.  That did the trick.

--wpd


On Thu, Apr 10, 2014 at 11:35 AM, Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:
> On 14-04-10 11:32 AM, Patrick Doyle wrote:
>>
>> I just added a custom kernel module to my build, and now my rootfs
>> includes a copy of my kernel (thus making it too large to fit in my
>> pinhole sized root partition).
>>
>> Is there any way to prevent the kernel from being included in the
>> rootfs?  Do modutils require a kernel image in order to function
>> properly?
>
>
> Clear this in your kernel recipe:
>
> # Allow machines to override this dependency if kernel image files are
> # not wanted in images as standard
> RDEPENDS_kernel-base ?= "kernel-image"
>
> and you'll get no kernel image, and yes, modules will work.
>
> Bruce
>
>
>>
>> My recipe contains
>>
>> inherit module
>>
>> So I'm expecting that the module class does magic that results in the
>> kernel getting installed.
>>
>> Is there a flag I can set to say "Don't do that?".
>>
>> Thanks.
>>
>> --wpd
>>
>

