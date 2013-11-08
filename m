Return-Path: <hans.beckerus@gmail.com>
Received: from mail-ie0-f178.google.com (mail-ie0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8715FE01798
	for <yocto@yoctoproject.org>; Fri,  8 Nov 2013 00:23:42 -0800 (PST)
Received: by mail-ie0-f178.google.com with SMTP id to1so995248ieb.9
	for <yocto@yoctoproject.org>; Fri, 08 Nov 2013 00:23:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=cqcfiV+Om+A+TCDBSZESLuKJ9lfo9vO0NEy0LBbY6ww=;
	b=JuUYPoPfRwLRTnJay/4H5ckZWaUcNMv+oh5VPoEGQ562XEIUAVcjQUCyh9moht78o1
	iz9iV7kaxvBawZ+oa6bQdp8e3ufcDbgwGykV0MyuWpy0Wp+wtCdhKzYgwBxvqh2X7F92
	ONU3dcOhAC2EEViPQUCsD2OaawE7N+hXeCGPZ/2J21U8dZDMGO6r38w1WCFq4cqIUaDR
	yp3tUffccTcMwU9EymWDa4TMpOooRL4+W+uy0zYy+6dYUgHn4BSyxd0JaaLKMCXbkQRf
	gQds/f2sAs01BOgU7vaDTa8gj3q3ZMrF4ZbvEP/NZ7b6TXat4Qc5TE24Tj7ZvkBfvx1f
	KlwQ==
MIME-Version: 1.0
X-Received: by 10.42.190.142 with SMTP id di14mr3621867icb.45.1383899022305;
	Fri, 08 Nov 2013 00:23:42 -0800 (PST)
Received: by 10.182.44.8 with HTTP; Fri, 8 Nov 2013 00:23:41 -0800 (PST)
In-Reply-To: <CAFyqS9oLigyuexK4Fe_cmS3ZRXVxpjP2W7JA7xzWMM_BSugnYA@mail.gmail.com>
References: <CAFyqS9q-SbkFD2t=1dRfLqv3KzNiGTGQUAkbRa9=tmrxuHZM-g@mail.gmail.com>
	<CAFyqS9rjGZ82fxov1BFux6zUv4Z+Ub+Bahinqdew9ZxTTsMV-w@mail.gmail.com>
	<1835654.lzj3BL3FA0@helios>
	<CAFyqS9pLdipL_p3=9NzCYHbiTx8DuiuA=_cU=YWfFOCvtb+rLg@mail.gmail.com>
	<1383832879.6271.252.camel@ted>
	<CAFyqS9oLigyuexK4Fe_cmS3ZRXVxpjP2W7JA7xzWMM_BSugnYA@mail.gmail.com>
Date: Fri, 8 Nov 2013 09:23:41 +0100
Message-ID: <CAFyqS9prDm-n=9EbFCDneXj7aKK5nH9uJtsD8HZfQk6B+MndTw@mail.gmail.com>
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
X-List-Received-Date: Fri, 08 Nov 2013 08:23:43 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 7, 2013 at 3:11 PM, Hans Beck=E9rus <hans.beckerus@gmail.com> w=
rote:
> On Thu, Nov 7, 2013 at 3:01 PM, Richard Purdie
> <richard.purdie@linuxfoundation.org> wrote:
>> On Thu, 2013-11-07 at 12:15 +0100, Hans Beck=E9rus wrote:
>>> On Thu, Nov 7, 2013 at 12:00 PM, Paul Eggleton
>>> <paul.eggleton@linux.intel.com> wrote:
>>> > Hi Hans,
>>> >
>>> > On Thursday 07 November 2013 10:56:17 Hans Beck=E9rus wrote:
>>> >> On Wed, Nov 6, 2013 at 12:32 PM, Hans Beck=E9rus <hans.beckerus@gmai=
l.com>
>>> >> wrote:
>>> >> > Hi, I am getting the below error when populating the sdk for our Y=
octo
>>> >> > 1.5 based image.
>>> >> >
>>> >> > WARNING: QA Issue: gcc-cross-canadian-arm: found library in wrong
>>> >> > location:
>>> >> > /opt/poky/1.5/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-l=
inux-gn
>>> >> > ueabi/gcc/arm-poky-linux-gnueabi/4.8.1/liblto_plugin.so.0.0.0
>>> >> > gcc-cross-canadian-arm: found library in wrong location:
>>> >> > /opt/poky/1.5/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-l=
inux-gnu
>>> >> > eabi/gcc/arm-poky-linux-gnueabi/4.8.1/liblto_plugin.so.0
>>> >> > gcc-cross-canadian-arm: found library in wrong location:
>>> >> > /opt/poky/1.5/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-l=
inux-gnu
>>> >> > eabi/gcc/arm-poky-linux-gnueabi/4.8.1/liblto_plugin.so
>>> >> >
>>> >> > Never got this on Yocto 1.4. I am not even planning of installing
>>> >> > anything in /opt so this really came out of nowhere. There is noth=
ing
>>> >> > installed in /opt at the moment.
>>> >> > Did it actually expect to find something in /opt? And in that case=
,
>>> >> > how can it? It can not know where the toolchain will be installed!=
?
>>> >> > Somebody that can shed some light on this one? Can we safely ignor=
e it?
>>> >>
>>> >> Ok, I started to look some more into this but unfortunately my
>>> >> knowledge about how bitbake is picking up recipes etc. is way too
>>> >> limited to explain why this is happening. I searched for
>>> >> gcc-cross-canadian in our layers and it can be found here:
>>> >>
>>> >> meta/recipes-devtools/gcc/gcc-cross-canadian.inc
>>> >> meta/recipes-devtools/gcc/gcc-cross-canadian_4.7.bb
>>> >> meta/recipes-devtools/gcc/gcc-cross-canadian_4.8.bb
>>> >> meta-openembedded/toolchain-layer/recipes-devtools/gcc/gcc-cross-can=
adian_4.
>>> >> 6.bb
>>> >>
>>> >> So, my question now is: why does it pickup gcc 4.6 from
>>> >> meta-openembedded when there are better alternatives in oe-core?
>>> >
>>> > What makes you think it is picking up the one in toolchain-layer? I d=
on't see
>>> > references to 4.6 in the QA error. If you haven't added meta-
>>> > openembedded/toolchain-layer to your bblayers.conf specifically it wo=
n't be
>>> > being seen by bitbake at all.
>>> >
>>>
>>> Hi Paul.
>>>
>>> True. It was a false statement. The reason behind why I thought it
>>> picked up the wrong recipe was due to other reasons.
>>> I now see that it seems to pick up the 4.8 version in oe-core.
>>>
>>> > It's more than likely that this QA error is bogus. The "found library=
 in wrong
>>> > location" QA check was broken originally; I "fixed" it but I think it=
 has
>>> > always been a little over-zealous since then.
>>> >
>>> I see. Funny though that this was not seen on Yocto 1.4? But it
>>> probably has a good explanation too.
>>> The most important thing is that we can now conclude that it is safe
>>> to ignore it. I guess it might have something to do with providing
>>> references to ${SDKPATH} in EXTRA_OECONF_PATHS. But it is most likely
>>> not worth the effort trying to fix it.
>>>
>>
>> There were some changes in the cross-canadian recipes in 1.5 which
>> triggered this warning. We do need to figure out why its happening and
>> fix it. It does seem to be intermittent though and when I have time to
>> debug it, I can't see to reproduce it :/
>>
> Hi Richard.
> If you wish, I can get try to reproduce it again. Only seen it once,
> but also only tried it once.
> So currently in our setup it is 100% reproducible ;)
>

It seems we get it every time in our setup.
All that is needed is:
# bitbake -c cleanall gcc-cross-canadian-arm
# bitbake gcc-cross-canadian-arm

Thanks.
Hans

>> It is relatively harmless but would be good to resolve it.
>>
>> Cheers,
>>
>> Richard
>>

