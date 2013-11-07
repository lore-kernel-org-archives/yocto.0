Return-Path: <hans.beckerus@gmail.com>
Received: from mail-ob0-f170.google.com (mail-ob0-f170.google.com
	[209.85.214.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 495EEE0180D
	for <yocto@yoctoproject.org>; Thu,  7 Nov 2013 06:11:31 -0800 (PST)
Received: by mail-ob0-f170.google.com with SMTP id gq1so74730obb.29
	for <yocto@yoctoproject.org>; Thu, 07 Nov 2013 06:11:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=+K0l2cwjl0x17Ag9bPPbBfYy+EMgMhB85k2vXwPGPUY=;
	b=kxuR4GeADHN14993k7AiBt9ZvDraylbVfw5yx1nuM/3XgfzMRZzGcqD+PGgIvp+fGR
	IabLHzv8usd3dg7D+q4CYBueSxpcjELRqql8DJjs/7F//1Grj+EspoZptMtvkEpYXmUZ
	vo6uNIapq+7SoYOsG2sOTMksFHpE5FFD08u9QHjSBJmr2eLRHnpbS52soFbhE4dq1BQd
	r746W03CPcwPNXZtxQCwpm/6BdFpaC6qPTuWetXPU09Et6IM7rw22hbIYc7Xc+H7drMC
	kseo7Ek84/vmvKlzFPEm1hje1FhRYJWbEWJfy0naKQwEoH2CTTO1VU59+IWjTHSKNJhN
	k2bA==
MIME-Version: 1.0
X-Received: by 10.60.84.165 with SMTP id a5mr28759oez.83.1383833490880; Thu,
	07 Nov 2013 06:11:30 -0800 (PST)
Received: by 10.182.44.8 with HTTP; Thu, 7 Nov 2013 06:11:30 -0800 (PST)
In-Reply-To: <1383832879.6271.252.camel@ted>
References: <CAFyqS9q-SbkFD2t=1dRfLqv3KzNiGTGQUAkbRa9=tmrxuHZM-g@mail.gmail.com>
	<CAFyqS9rjGZ82fxov1BFux6zUv4Z+Ub+Bahinqdew9ZxTTsMV-w@mail.gmail.com>
	<1835654.lzj3BL3FA0@helios>
	<CAFyqS9pLdipL_p3=9NzCYHbiTx8DuiuA=_cU=YWfFOCvtb+rLg@mail.gmail.com>
	<1383832879.6271.252.camel@ted>
Date: Thu, 7 Nov 2013 15:11:30 +0100
Message-ID: <CAFyqS9oLigyuexK4Fe_cmS3ZRXVxpjP2W7JA7xzWMM_BSugnYA@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 07 Nov 2013 14:11:32 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 7, 2013 at 3:01 PM, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> On Thu, 2013-11-07 at 12:15 +0100, Hans Beck=E9rus wrote:
>> On Thu, Nov 7, 2013 at 12:00 PM, Paul Eggleton
>> <paul.eggleton@linux.intel.com> wrote:
>> > Hi Hans,
>> >
>> > On Thursday 07 November 2013 10:56:17 Hans Beck=E9rus wrote:
>> >> On Wed, Nov 6, 2013 at 12:32 PM, Hans Beck=E9rus <hans.beckerus@gmail=
.com>
>> >> wrote:
>> >> > Hi, I am getting the below error when populating the sdk for our Yo=
cto
>> >> > 1.5 based image.
>> >> >
>> >> > WARNING: QA Issue: gcc-cross-canadian-arm: found library in wrong
>> >> > location:
>> >> > /opt/poky/1.5/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-li=
nux-gn
>> >> > ueabi/gcc/arm-poky-linux-gnueabi/4.8.1/liblto_plugin.so.0.0.0
>> >> > gcc-cross-canadian-arm: found library in wrong location:
>> >> > /opt/poky/1.5/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-li=
nux-gnu
>> >> > eabi/gcc/arm-poky-linux-gnueabi/4.8.1/liblto_plugin.so.0
>> >> > gcc-cross-canadian-arm: found library in wrong location:
>> >> > /opt/poky/1.5/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-li=
nux-gnu
>> >> > eabi/gcc/arm-poky-linux-gnueabi/4.8.1/liblto_plugin.so
>> >> >
>> >> > Never got this on Yocto 1.4. I am not even planning of installing
>> >> > anything in /opt so this really came out of nowhere. There is nothi=
ng
>> >> > installed in /opt at the moment.
>> >> > Did it actually expect to find something in /opt? And in that case,
>> >> > how can it? It can not know where the toolchain will be installed!?
>> >> > Somebody that can shed some light on this one? Can we safely ignore=
 it?
>> >>
>> >> Ok, I started to look some more into this but unfortunately my
>> >> knowledge about how bitbake is picking up recipes etc. is way too
>> >> limited to explain why this is happening. I searched for
>> >> gcc-cross-canadian in our layers and it can be found here:
>> >>
>> >> meta/recipes-devtools/gcc/gcc-cross-canadian.inc
>> >> meta/recipes-devtools/gcc/gcc-cross-canadian_4.7.bb
>> >> meta/recipes-devtools/gcc/gcc-cross-canadian_4.8.bb
>> >> meta-openembedded/toolchain-layer/recipes-devtools/gcc/gcc-cross-cana=
dian_4.
>> >> 6.bb
>> >>
>> >> So, my question now is: why does it pickup gcc 4.6 from
>> >> meta-openembedded when there are better alternatives in oe-core?
>> >
>> > What makes you think it is picking up the one in toolchain-layer? I do=
n't see
>> > references to 4.6 in the QA error. If you haven't added meta-
>> > openembedded/toolchain-layer to your bblayers.conf specifically it won=
't be
>> > being seen by bitbake at all.
>> >
>>
>> Hi Paul.
>>
>> True. It was a false statement. The reason behind why I thought it
>> picked up the wrong recipe was due to other reasons.
>> I now see that it seems to pick up the 4.8 version in oe-core.
>>
>> > It's more than likely that this QA error is bogus. The "found library =
in wrong
>> > location" QA check was broken originally; I "fixed" it but I think it =
has
>> > always been a little over-zealous since then.
>> >
>> I see. Funny though that this was not seen on Yocto 1.4? But it
>> probably has a good explanation too.
>> The most important thing is that we can now conclude that it is safe
>> to ignore it. I guess it might have something to do with providing
>> references to ${SDKPATH} in EXTRA_OECONF_PATHS. But it is most likely
>> not worth the effort trying to fix it.
>>
>
> There were some changes in the cross-canadian recipes in 1.5 which
> triggered this warning. We do need to figure out why its happening and
> fix it. It does seem to be intermittent though and when I have time to
> debug it, I can't see to reproduce it :/
>
Hi Richard.
If you wish, I can get try to reproduce it again. Only seen it once,
but also only tried it once.
So currently in our setup it is 100% reproducible ;)

> It is relatively harmless but would be good to resolve it.
>
> Cheers,
>
> Richard
>

