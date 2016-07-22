Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8A516E00EF7; Fri, 22 Jul 2016 00:09:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3FE4E00E21
	for <yocto@yoctoproject.org>; Fri, 22 Jul 2016 00:09:53 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id x83so4812036wma.3
	for <yocto@yoctoproject.org>; Fri, 22 Jul 2016 00:09:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=hxegjBZoeFMYFGDRHvDJBxInNAMNsZ8ZqcDTQnkOA34=;
	b=Jd/c9mve7rC7SBYkPzkhB6uAcpLqv9vDpYF54zYQxvvdiP5CZuDFXtjyHAHnSwNbrk
	E2ZSdzrvERujahaDUIBwFZ5+u4vnTMrw+uPO7Wneg3i/8Ft0WHhUxEYf4xHERv/gFKQe
	GySlmuooPbN++rbfPtNivR9/HdwIZ3hrzPEYZfKk5Q7rupkxV16Nxg1WC2BrhPe3ofR+
	GgpuuDh++PuR3jV2oclnCCyyiIQx4lVS2zH6NCECCOXn3A62l1rs15NSAmL2gq0eLdI0
	rgSfCfGdni2bV85IBcUGv6KbglxM9jb8mdXCkTzUGTA/RWKhmO5gMPlyxEM1ZeUQMgK8
	oMEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=hxegjBZoeFMYFGDRHvDJBxInNAMNsZ8ZqcDTQnkOA34=;
	b=WzEMlhJle2UnBAruLyW9ZNZlXTvpC54vkaqBSdb+ZU7e2gYWp9LDHAv0MIj/5sZk6t
	2VJorSD4f78yrNz6KudtZJcCZiZyilI8HNA+vFJjxekOczRtGS/EItDF1gcCI7vxsiWx
	6bLIzu2xuv8m0nXjaAkVf6mTeBD/KyNPyDKveb7+ogjzNqc9V8rMjTpUHZaXrhCfosRt
	etQADezvHA9s4Mkg6H9WYX5GKmXaICWZIEpHiC/fNIWQbR8lVY47cgUoxi5G0odaj5X8
	09MbmIBZfQfAMYi5QBgVgM47FK18CQWeWWarc4tB08ymVvZKNBGmiNDkqI1n3SvrPYl8
	+PpQ==
X-Gm-Message-State: AEkoouuPQ1jFwbyOSfqGclCFDcVoLpaKFpIrVJyEo+dOR1jvFcVaMWmgZAv7mOgqFDIMmxtKOWVDeRje0b8xFQ==
X-Received: by 10.28.221.8 with SMTP id u8mr3298152wmg.61.1469171392089; Fri,
	22 Jul 2016 00:09:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.145.39 with HTTP; Fri, 22 Jul 2016 00:09:51 -0700 (PDT)
In-Reply-To: <28035851-E0F1-4D8A-8EB2-6918D61CB11A@gmail.com>
References: <CAJ58UNn4pFMngrKG8MeffP+GQGTd-qQVE3_Roc01PcWpK_FF9Q@mail.gmail.com>
	<2248630.eW0NeUEiY0@peggleto-mobl.ger.corp.intel.com>
	<CAMKF1sr4UxRWu+8Bei0H3H9epO1uU_5AJ=NCQH2FGgN4gz0OkQ@mail.gmail.com>
	<2059857.6fejhZ6HEk@peggleto-mobl.ger.corp.intel.com>
	<28035851-E0F1-4D8A-8EB2-6918D61CB11A@gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Fri, 22 Jul 2016 00:09:51 -0700
Message-ID: <CAJ86T=U29vOK+f-jGf3CYeDb1qSWMOCdUUHwoYPeph1_vopo0w@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Error during adding a new recipe.
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
X-List-Received-Date: Fri, 22 Jul 2016 07:09:56 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 21, 2016 at 8:20 PM, Khem Raj <raj.khem@gmail.com> wrote:
>
>> On Jul 21, 2016, at 6:45 PM, Paul Eggleton <paul.eggleton@linux.intel.co=
m> wrote:
>>
>> On Thu, 21 Jul 2016 18:35:25 Khem Raj wrote:
>>> On Thu, Jul 21, 2016 at 6:32 PM, Paul Eggleton
>>>
>>> <paul.eggleton@linux.intel.com> wrote:
>>>> On Thu, 21 Jul 2016 18:22:32 Khem Raj wrote:
>>>>>> On Jul 21, 2016, at 5:20 PM, Vijayakumar Badiger
>>>>>> <vijayakumarmb@gmail.com>
>>>>>> wrote:
>>>>>>
>>>>>> The sync driver is already ported in the kernel.  I just need to get
>>>>>> this
>>>>>> compilation error fixed. I tried adding below change to kernel bb fi=
le
>>>>>> but still I get that same error.
>>>>>>
>>>>>> PACKAGES =3D+ "kernel-headers"
>>>>>> FILES_kernel-headers =3D "${KDIR}/usr/include=E2=80=9D
>>>>>
>>>>> there is a different recipe for headers linux-libc-headers that also
>>>>> needs
>>>>> to be patched and then hopefully kernel build system is exporting thi=
s
>>>>> header for userspace automatically and you will be set.
>>>>
>>>> I thought we weren't supposed to be encouraging modifying
>>>> linux-libc-headers - especially as this isn't for the libc - it's for
>>>> other userspace code...?
>>>
>>> Yes thats correct thats why
>>> I am not asking for submitting this patch upstream.
>>
>> Sure, but this question comes up a lot. We ought to be telling people th=
e
>> correct mechanism for introducing extra headers such as this if it isn't=
 to
>> modify linux-libc-headers.
>
> Thats possible for external kernel modules. This is a kernel patch. There=
 is no other elegant way
> of solving this. They could write another recipe just to stage this heade=
r. but thats equally ugly.

A new recipe isn't needed. You can add something like the following to
the existing kernel recipe:

  sysroot_stage_all_append () {
    mkdir -p ${SYSROOT_DESTDIR}/${includedir}/linux
    install -m644 ${S}/include/linux/sync.h
${SYSROOT_DESTDIR}/${includedir}/linux/
  }

and then add a dependency on the kernel to the recipe which needs the heade=
rs.


>>
>> Cheers,
>> Paul
>>
>> --
>>
>> Paul Eggleton
>> Intel Open Source Technology Centre
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

