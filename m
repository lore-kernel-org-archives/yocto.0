Return-Path: <hans.beckerus@gmail.com>
Received: from mail-oa0-f50.google.com (mail-oa0-f50.google.com
	[209.85.219.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B49B5E017FC
	for <yocto@yoctoproject.org>; Thu,  7 Nov 2013 03:15:56 -0800 (PST)
Received: by mail-oa0-f50.google.com with SMTP id j17so703664oag.9
	for <yocto@yoctoproject.org>; Thu, 07 Nov 2013 03:15:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=RQcSiTC2+K50hb+I3lUL94Tl9ovqt9KvVMu45jtjNIw=;
	b=RbKMWlQ+AWISv+/CXFmC3au5Q5IoP1sRKC36smi2uyHGF9/samSKLz3I/1sKgMKEFN
	f1c89B3T1o4/CoF/9MXqqdSjAq+oDFT1vdMmcLOhNZJbxxyMOaAkIjk5zJE02qBTiuRC
	D65Y3TRbx8w0okdjPcmHYh7iwXVCgYUTzlMoGHehXGGxPXwvoXTrYgJWg45w2vSPNtM/
	N70/VXko/V9VfM4nRet4EaG1O7F+tMclaG2CiTY5wKJe39on0rxM+SZXHMsP8jtLcoAd
	zRu4GQsEcoeGZ4xYK6XzITiYLbCgFoU3OX+4OLUIsjWJUnnbCUmUPA4ct3pob1NmucPQ
	q8BA==
MIME-Version: 1.0
X-Received: by 10.182.80.196 with SMTP id t4mr6287285obx.1.1383822955339; Thu,
	07 Nov 2013 03:15:55 -0800 (PST)
Received: by 10.182.44.8 with HTTP; Thu, 7 Nov 2013 03:15:55 -0800 (PST)
In-Reply-To: <1835654.lzj3BL3FA0@helios>
References: <CAFyqS9q-SbkFD2t=1dRfLqv3KzNiGTGQUAkbRa9=tmrxuHZM-g@mail.gmail.com>
	<CAFyqS9rjGZ82fxov1BFux6zUv4Z+Ub+Bahinqdew9ZxTTsMV-w@mail.gmail.com>
	<1835654.lzj3BL3FA0@helios>
Date: Thu, 7 Nov 2013 12:15:55 +0100
Message-ID: <CAFyqS9pLdipL_p3=9NzCYHbiTx8DuiuA=_cU=YWfFOCvtb+rLg@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: gcc-cross-canadian-arm: found library in wrong location
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
X-List-Received-Date: Thu, 07 Nov 2013 11:15:56 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 7, 2013 at 12:00 PM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> Hi Hans,
>
> On Thursday 07 November 2013 10:56:17 Hans Beck=E9rus wrote:
>> On Wed, Nov 6, 2013 at 12:32 PM, Hans Beck=E9rus <hans.beckerus@gmail.co=
m>
>> wrote:
>> > Hi, I am getting the below error when populating the sdk for our Yocto
>> > 1.5 based image.
>> >
>> > WARNING: QA Issue: gcc-cross-canadian-arm: found library in wrong
>> > location:
>> > /opt/poky/1.5/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-linux=
-gn
>> > ueabi/gcc/arm-poky-linux-gnueabi/4.8.1/liblto_plugin.so.0.0.0
>> > gcc-cross-canadian-arm: found library in wrong location:
>> > /opt/poky/1.5/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-linux=
-gnu
>> > eabi/gcc/arm-poky-linux-gnueabi/4.8.1/liblto_plugin.so.0
>> > gcc-cross-canadian-arm: found library in wrong location:
>> > /opt/poky/1.5/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-linux=
-gnu
>> > eabi/gcc/arm-poky-linux-gnueabi/4.8.1/liblto_plugin.so
>> >
>> > Never got this on Yocto 1.4. I am not even planning of installing
>> > anything in /opt so this really came out of nowhere. There is nothing
>> > installed in /opt at the moment.
>> > Did it actually expect to find something in /opt? And in that case,
>> > how can it? It can not know where the toolchain will be installed!?
>> > Somebody that can shed some light on this one? Can we safely ignore it=
?
>>
>> Ok, I started to look some more into this but unfortunately my
>> knowledge about how bitbake is picking up recipes etc. is way too
>> limited to explain why this is happening. I searched for
>> gcc-cross-canadian in our layers and it can be found here:
>>
>> meta/recipes-devtools/gcc/gcc-cross-canadian.inc
>> meta/recipes-devtools/gcc/gcc-cross-canadian_4.7.bb
>> meta/recipes-devtools/gcc/gcc-cross-canadian_4.8.bb
>> meta-openembedded/toolchain-layer/recipes-devtools/gcc/gcc-cross-canadia=
n_4.
>> 6.bb
>>
>> So, my question now is: why does it pickup gcc 4.6 from
>> meta-openembedded when there are better alternatives in oe-core?
>
> What makes you think it is picking up the one in toolchain-layer? I don't=
 see
> references to 4.6 in the QA error. If you haven't added meta-
> openembedded/toolchain-layer to your bblayers.conf specifically it won't =
be
> being seen by bitbake at all.
>

Hi Paul.

True. It was a false statement. The reason behind why I thought it
picked up the wrong recipe was due to other reasons.
I now see that it seems to pick up the 4.8 version in oe-core.

> It's more than likely that this QA error is bogus. The "found library in =
wrong
> location" QA check was broken originally; I "fixed" it but I think it has
> always been a little over-zealous since then.
>
I see. Funny though that this was not seen on Yocto 1.4? But it
probably has a good explanation too.
The most important thing is that we can now conclude that it is safe
to ignore it. I guess it might have something to do with providing
references to ${SDKPATH} in EXTRA_OECONF_PATHS. But it is most likely
not worth the effort trying to fix it.


> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre

