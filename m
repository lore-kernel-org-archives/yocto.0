Return-Path: <autif.mlist@gmail.com>
Received: from mail-lb0-f173.google.com (mail-lb0-f173.google.com
	[209.85.217.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84FB5E01490
	for <yocto@yoctoproject.org>; Wed, 16 Jan 2013 06:13:53 -0800 (PST)
Received: by mail-lb0-f173.google.com with SMTP id gf7so198219lbb.4
	for <yocto@yoctoproject.org>; Wed, 16 Jan 2013 06:13:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=6ymA6EJb2P3VDN9wLKglc+U3T/38BDfpnonbIe+1zAQ=;
	b=drOqR+R6wEyy9Rsoe/8cn3b9aFVW1R8kBuTidK11yvZP9IVRbup0GOrBQC/lPxxJmP
	pVMjmxOvVXtnIFkFL+hhrrtvUQ6IeP4KKVDQsyAB3/9KfbLRNfqO8rTOub8dO3XWW4JG
	pMLO0ppU+e2ejJIQTmrsX5C8I8Ak9PukY4eSTo/Y1cUObXE/dL5Pds9j1K0gd4r2w2Wr
	kHJSqtsbLqHLaH6gmvE0UtGeA5Awmn0f8NYT2sptjEt3qA8r77bIKVaYOOXFj4YrVC31
	gBjNylwHf0Tt62OEYiXiSKVUo6SvJ0MdEHvEEUftgAdHIYlwqwPxkhy20B0yHiHAWsbQ
	1gLg==
MIME-Version: 1.0
X-Received: by 10.112.16.106 with SMTP id f10mr728056lbd.1.1358345631976; Wed,
	16 Jan 2013 06:13:51 -0800 (PST)
Received: by 10.112.61.74 with HTTP; Wed, 16 Jan 2013 06:13:51 -0800 (PST)
In-Reply-To: <50F5ECE7.2090503@bsmucker.eu.org>
References: <7E680CB2A76BB8438D08CF13C09FC53A5989BCAB@ORSMSX101.amr.corp.intel.com>
	<50F5C999.2020307@bsmucker.eu.org>
	<CA+gsK-o81MjUVKjGBbbat0EGOm_Z+2ow+1rMvZ8Jdik9g++3JA@mail.gmail.com>
	<50F5ECE7.2090503@bsmucker.eu.org>
Date: Wed, 16 Jan 2013 09:13:51 -0500
Message-ID: <CADzUK1+AqHq0PfVa6GwyefBSAjP=iaB=NAKLB9LwSkXT9RHhEQ@mail.gmail.com>
From: Autif Khan <autif.mlist@gmail.com>
To: Brian Smucker <bds@bsmucker.eu.org>
Cc: yocto@yoctoproject.org
Subject: Re: Busybox still old version: Still looking for a clear understanding of an old mystery.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 16 Jan 2013 14:13:54 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Jan 15, 2013 at 6:57 PM, Brian Smucker <bds@bsmucker.eu.org> wrote:
> Hi Rudolf,
>
>
> On 1/15/2013 3:28 PM, Rudolf Streif wrote:
>>
>>
>> Brian,
>>
>> What are you exactly referring to as "new version"? The package version
>> that bitbake builds is defined by the recipe, through the version
>> designation in the recipe's file name or through explicitly setting PV.
>>
>> I think what you are trying to do is to modify the busybox configuration
>> and then recompile and package. Bitbake will not automatically recompile
>> after menuconfig. Menuconfig does not invslidate the shared state cache. Try
>> this:
>>
>> bitbake -c menuconfig busybox
>> bitbake -c -f compile busybox
>> bitbake busybox
>>
>>
> So I have done the above.  That is not the question.  Busybox compiles fine
> and the new unstripped busybox is in the
> .../yocto/tmp/work/armv4t-poky-linux-gnueabi/busybox-1.20.2-r2/busybox-1.20.2/

What is the new version of busybox?

What is the full filename of the new recipe that you created to
compile a new version of busybox? For example the old one is
busybox_1.20.2.bb (in meta/recipes-core/busybox)

Also, can you please paste the .bb file in the email

> My question is that after compiling busybox, I do
>
> bitbake -c cleansstate core-image-minimal
> bitbake core-image-minimal
>
> expecting that the core image generated will contain the new busybox.  It
> does not, it contains a busybox copy that was compiled days ago, not the
> custom one I just compiled.
>
> Why is this?  How can I force the bitbake to include the newly-compiled
> busybox into my minimal image?
>
>
> Thanks,
>
> Brian
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

