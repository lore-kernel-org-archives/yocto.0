Return-Path: <maciej.borzecki@rndity.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09303E00CDC; Thu,  1 Sep 2016 02:02:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.176 listed in list.dnswl.org]
Received: from mail-ua0-f176.google.com (mail-ua0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD312E00C51
	for <yocto@yoctoproject.org>; Thu,  1 Sep 2016 02:02:33 -0700 (PDT)
Received: by mail-ua0-f176.google.com with SMTP id i32so133934064uai.2
	for <yocto@yoctoproject.org>; Thu, 01 Sep 2016 02:02:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=rndity-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=1RIqTl0IJVMupRi3JLy0ebVcNxfwbH402dTVHqeMSes=;
	b=hRDWe1BK2Bi7izt+X5mwI15sRq5ZU8vOHQ4k1oqMmWa40RBMKu53Mr+xmATpI5d21V
	KnJI4DfdpIi0AZKass6V6c43FZGKXnZlaI7a5cpmVph+df8LlMB3cnGKc75gfkZutql/
	4i3IseCCrvWcOCKE0IwQUg01sNR67PDJ1rc3MUXU2XkRpU3fhy1j8FZ2VEfv8JGzc9E/
	hWKHZhmdKiIbos1sqe8BOWE/RIHwKr9gNIH1nuNmW1ketea54q2/AlBVyv9Z9xUxeWB9
	9WIgXgdk1U/m+DY9SHff7EjE3Y3CZPhv7U6Jl419cJIyVwXlZkw2sI1XeRArYuV9iu2j
	i9ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=1RIqTl0IJVMupRi3JLy0ebVcNxfwbH402dTVHqeMSes=;
	b=UBWVYikRskI4kJ2DZ36dAhEeD7Wd2MWlLZ5o4tiVfmTDlhhlnzPuUX6a5mzDSGK+3Q
	t5CIBKZ04NOjyquS+EM7YqvkvGT+zG4/yKf42CgKxcBFC0YZQ7JrOliK2qr75DKAC3Z3
	FVByvaK7zMmZwr0pDk9zfaaP5s9phfnuuyS7peW5Rpr6yyp5STJ5Dg6+s7qzULCWyHwD
	SmDOi/mMHO5kYap6G4CesjCBFOod5y8cSk5Xo4YwDRHGFB8zIQ6DkDoqRS4AJbYDcslZ
	j39pqS0XD29EYyGWcrnxivAaQhOzwQDu+aVONEUCmyQjStwNMzNQNIjGuP4SGteGfmNX
	ZxCg==
X-Gm-Message-State: AE9vXwMm2l2RMFB80ule8HGhxiegEm5s6+8zo5mZfqMxZUac8hFgT3QBbOARPlz0h0ToTiO6ITZDsteVoJuRHg==
X-Received: by 10.176.1.183 with SMTP id 52mr7426515ual.3.1472720551328; Thu,
	01 Sep 2016 02:02:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.73.23 with HTTP; Thu, 1 Sep 2016 02:02:10 -0700 (PDT)
In-Reply-To: <87k2ewau7z.fsf@posteo.net>
References: <87poooc2ha.fsf@posteo.net>
	<CAD4b0_JqqWmkL5egXgbSVvq5xpb-ck2-sj9rr3hBbcOeEB5-VQ@mail.gmail.com>
	<87k2ewau7z.fsf@posteo.net>
From: =?UTF-8?Q?Maciej_Borz=C4=99cki?= <maciej.borzecki@rndity.com>
Date: Thu, 1 Sep 2016 11:02:10 +0200
Message-ID: <CAD4b0_JE1iN8WgT9k=VtjPLtKvSNs1B0=zZBeAsUaXJWcC8zEw@mail.gmail.com>
To: Pietro <pulsarpietro@posteo.net>
Cc: yocto@yoctoproject.org
Subject: Re: Yocto and Google protobuffer
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
X-List-Received-Date: Thu, 01 Sep 2016 09:02:41 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 1, 2016 at 10:40 AM, Pietro <pulsarpietro@posteo.net> wrote:
> Maciej Borz=C4=99cki
> <maciej.borzecki@rndity.com> writes:
>
>> On Wed, Aug 31, 2016 at 6:44 PM, Pietro <pulsarpietro@posteo.net> wrote:
>>> Hi all,
>>>
>>> I am new to the Yocto building system and I could be talking nonsense. =
I
>>> used to work with buildroot time ago and I remember there is an area
>>> where compiled software/packages/tools previously built are "staged" an=
d
>>> used when building other packages.
>>>
>>> Is there something like that available with Yocto ? Specifically I woul=
d
>>> like to add a package which uses the Google Protocol Buffer, I do not h=
ave
>>> administrator rights on the machine and I can't install the packages I
>>> need system wise.
>>>
>>> Is it possible to add recipes and use them at building time without
>>> including them in the image being generated ?
>>>
>>> A good example for that would be the protoc, the protocol buffer descri=
ption
>>> file compiler.
>>>
>>
>> There is a recipe for protobuf in meta-oe (2.6.1). All you need to do,
>> is include meta-oe in your layers (bblayers.conf) and have
>> protobuf-native listed in DEPENDS inside your package recipe.
>>
>> The protoc compiler will be available in the PATH when package is
>> being built, so autotools checks like AC_CHECK_PROG/AC_PATH_PROG
>> should be able to find it.
>>
>> Cheers,
>> --
>> Maciej Borzecki
>> RnDity
> Thanks a lot.
>
> I have added the DEPENDS line and it indeed downloads and build the some
> protobuf related stuff, where did you get the dependency name from ?
> I can't see the protobuf-native as a recipe in the meta-oe website :
>
> https://layers.openembedded.org/layerindex/branch/master/layer/meta-oe/

It's just a mechanism that allows for building the native (i.e. for
the host) packages, and these are autmatically named ${PN}-native.
There should a BBCLASSEXTEND =3D "..native.." stanza inside the protobuf
recipe that enables this feature.

>
> I have just realised that GRPC (http://www.grpc.io/) is needed for my
> project, it is a library which uses the protobuffers, is there a
> recipe/package which provides them around or do I need to create my own
> recipe ?

You can try searching for a recipe at http://layers.openembedded.org
If there's none, try to write your own. This might be a good changes
to get yourself acquainted with `devtool` tool that will help you in
the process.

>
> I would like to check the root filesystem being generated as part of the
> build process, where is it ?
>

${TMPDIR}/<machine>_<distro?>/<imagename>/../rootfs

for instance, for my current build:

tmp/work/vexpress_qemu-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs

--=20
Maciej Borzecki
RnDity

