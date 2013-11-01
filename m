Return-Path: <amittomer25@gmail.com>
Received: from mail-wg0-f44.google.com (mail-wg0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ECA52E01706
	for <yocto@yoctoproject.org>; Fri,  1 Nov 2013 13:19:36 -0700 (PDT)
Received: by mail-wg0-f44.google.com with SMTP id n12so10401wgh.35
	for <yocto@yoctoproject.org>; Fri, 01 Nov 2013 13:19:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=sVweDpQ/v63Ias+vJW/6QV41ZT5aoSGNNQL7sB6Fyj0=;
	b=JCVp0cmdQRErT7cX1MxmoFJkZyeXcZHoc7YiScpL8AREyETL2ocwTP6Ydd+gaZEcV/
	LBM9Bdy3hjX2WsUTk7t8NVslucf31YNzPJVkgokk5mh6ad26nI6tAQfE2V5ex6ZoVAom
	qFqVyN0NxTTxQVm1K1YZfIKEY3iWq0EsBCUVIuMfIcRZHpxYUTKP0CgvtP+Ue5BlBa5M
	L4tG2jOigq10i2LNM2IpfLpbuhThUpGU8sCqa6PMn6Ij2TS7bN+6hVoz/ie6hHmtI92R
	Cq8BXpZgJ/Ps/iN2byQBiQWjF8R3shdcXIUEEk3inl2xLCfKbjHaY3l1XlIGqFt+wLZJ
	7Phg==
MIME-Version: 1.0
X-Received: by 10.194.23.73 with SMTP id k9mr3889598wjf.24.1383337174623; Fri,
	01 Nov 2013 13:19:34 -0700 (PDT)
Received: by 10.227.197.69 with HTTP; Fri, 1 Nov 2013 13:19:34 -0700 (PDT)
In-Reply-To: <5273F871.9090206@windriver.com>
References: <CABHD4K9q7=RK_3B2HUPR9J0RoLZPBQ5-qwY3qjYeRLajs-gnhQ@mail.gmail.com>
	<5273F871.9090206@windriver.com>
Date: Sat, 2 Nov 2013 01:49:34 +0530
Message-ID: <CABHD4K_Y7yg69Ep-TLwNAd4n0chG+m6_FiW7QdL_Qo36XTftDA@mail.gmail.com>
From: Amit Tomer <amittomer25@gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to Set up Perf tool
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
X-List-Received-Date: Fri, 01 Nov 2013 20:19:37 -0000
Content-Type: text/plain; charset=ISO-8859-1

Thanks Brauce

We worked it out and Perf recipe as you said perf.bb is there in
poky/meta/recipe-kernel.
Also,we installed it our rootfs and it working good.

Thanks
Amit


On Sat, Nov 2, 2013 at 12:22 AM, Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:
> On 13-11-01 12:40 PM, Amit Tomer wrote:
>>
>> We have a requirement here to set up the perf tool through our Yocto
>> frame work.
>>
>> As Perf source comes with linux kernel under tools/perf ,so it should be
>> compiled with kernel recipe itself.
>>
>> But after bitbake of our kernel recipe,we couldn't find any binary
>> related to perf.
>> we made sure that below variable should be set in kernel config file
>>
>> CONFIG_HAVE_PERF_EVENTS=y
>> CONFIG_PERF_EVENTS=y
>>
>> Do we need to make any change to our kernel recipe file as well??
>>
>> Can anyone let us know how we should set Perf tool.
>
>
> It depends on the version of the the project and the kernel you are
> using, but there's a separate perf recipe, and has been for quite a
> while.
>
> That perf builds out of the staged kernel source, which is put
> in place as part of the kernel build.
>
> Try an old fashioned: bitbake perf
>
> And see what you get. If you want it to be built and installed into
> your rootfs, you'll need to arrange to get it into your image's
> installed package list.
>
> Bruce
>
>
>>
>> Thanks
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>

