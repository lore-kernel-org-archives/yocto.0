Return-Path: <raj.khem@gmail.com>
Received: from mail-pv0-f176.google.com (mail-pv0-f176.google.com
	[74.125.83.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9987D4C80FB6
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2011 16:35:18 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pve37 with SMTP id 37so2314253pve.35
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2011 14:35:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=voyyYq1VMnBnj+g9oNwwPX8o/LZMWkMPGss/I19NXaM=;
	b=lxQJwchx4nhtjyCwDBIg0Lt3yBi14UL6bZSmIdoFp7XvXb55a+0Yz/LjfGMUS5Nljw
	Q+SbAiNPJPNlvuN67UA1lGIS5ra2zS6A5/oEqQaIoL7voY0JxFN6q/u1jMgvAugbP8bA
	syG4sne10Tr7A3BNdLXvZhxaEVFsIqthkJvZI=
Received: by 10.68.9.165 with SMTP id a5mr5021291pbb.412.1310765718045; Fri,
	15 Jul 2011 14:35:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.68.62.36 with HTTP; Fri, 15 Jul 2011 14:34:48 -0700 (PDT)
In-Reply-To: <AC4E5BFF-54F0-4FDB-8F7F-BC8D519C12CF@kernel.crashing.org>
References: <04B51588-62E1-4D77-8BB4-5EF0FB3DC73D@kernel.crashing.org>
	<CAMKF1sp701jBJ3zX-bGURsdf0=wOJw3+rjw8sEEM3Gs5NfERUg@mail.gmail.com>
	<AC4E5BFF-54F0-4FDB-8F7F-BC8D519C12CF@kernel.crashing.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 15 Jul 2011 14:34:48 -0700
Message-ID: <CAMKF1sreKE8KtzOObh-8HjooX7aX31jD4UwanYPE2i4fCrqVew@mail.gmail.com>
To: Kumar Gala <galak@kernel.crashing.org>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: toolchain queries
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
X-List-Received-Date: Fri, 15 Jul 2011 21:35:19 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 15, 2011 at 2:13 PM, Kumar Gala <galak@kernel.crashing.org> wro=
te:
>
> On Jul 15, 2011, at 2:28 PM, Khem Raj wrote:
>
>> On Thu, Jul 14, 2011 at 7:36 PM, Kumar Gala <galak@kernel.crashing.org> =
wrote:
>>> Where is the best place to ask questions and try and get support for ad=
ding some toolchain variations in?
>>>
>>> I'm wanting to add support in for a few different flavors of PPC that a=
re not currently supported:
>>>
>>> * e500v2 (gcc needs --enable-e500_double, eglibc
>>
>> this means ABI change especially due to double formats. This should be
>> doable in machine.conf
>> files or tune files.
>
> how so? =C2=A0What can I set in there that would actually get passed into=
 gcc's configure (not really seeing anything). =C2=A0Also what exactly do y=
ou mean by a machine.conf

Well as I see not so easily which is since we share toolchain for
architectures and if
we let machines add ABI conflicting options then we will be in trouble
think of using
I could have suggested using something like GLIBC_EXTRA_OECONF but I
would not encourage that

So one way to go about this is that we use -gnuspe in target triplet
which will differentiate
SPE targets from classic ppc and then in gcc recipe include files

you can do something like

EXTRA_OECONF_append_linux-gnuspe =3D " --enable-e500_double "

>
>>> * e5500 (64-bit embedded ppc)
>>
>> this is new I guess. Its like adding a new arch to OE. See around
>> http://lists.linuxtogo.org/pipermail/openembedded-devel/2010-September/0=
24661.html
>> is roughly what can be helpful in getting ppc64 going
>
> Thanks, will take a look at that.
>
> - k

