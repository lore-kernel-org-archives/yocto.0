Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 03050E00BF8; Mon, 25 Jul 2016 14:50:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82F0FE00AAB
	for <yocto@yoctoproject.org>; Mon, 25 Jul 2016 14:50:38 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id o80so18613586wme.0
	for <yocto@yoctoproject.org>; Mon, 25 Jul 2016 14:50:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=V/Yax41PdAXxmD6AJ5wDApOKnb+xcbHENc24wARLN0w=;
	b=F54iwdQ/bYUzWnY4rBTiZnv1dh9oUifBqI9rNMUUJBCym2poSv3TKMnu0ga8ASvcoV
	GBTudbmBJPc5W1r4W6I9qVchhi/8Egr3kSnTfT9aML415N1OJZoHEtSWqwHO+vS9BcR2
	p8fXfcXVMWM407Akj6LpRikc9zcEwAK+g6cU+6AC+FLgMG7O7dk3zlP8IpV2Ge8BL6ce
	dlyBq5XpOtvKCUeuSQLGLo8CRm6YVYz8M4ST6lJR1v/YBkUZppYUx46B4n5cz9yW+2XF
	WvjFEEbn5gctT1Zt1xikmICMnE498cHv4C9OQX61McfZCGkgCn0pbAGvEI32S9296PE+
	jFkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=V/Yax41PdAXxmD6AJ5wDApOKnb+xcbHENc24wARLN0w=;
	b=hsDUjvYo1P8yu0NHZRrD/zLP3DLHvg0DDogMYJQcFH9X9qDIzimH6LyaHeTuaW7izr
	HKvyfJltK2lS2jYM/qZ1qGnGwZoAXN03F+lm0r8xm/0jTyN5WNqjU6GLcAPfF4sewuC8
	TVF22oHxluEBt8p67AR6N7HDf7x39tPqrX4k6TfY3HRLWjaBLp7QNZ20O+QaJzeEwRY9
	OWIVfT9b3k5uqu8BQ5bvtdTa2OLfnMaARSJDmTJAa8f1mXlyqT2zb3k/6ApZUkn90RgK
	mF9POrIUAHzsSzvzP8F1qNaYhOWArWKfUKkgacpejiVh/1WFpSNKm1i/s0E51R2wz9Px
	ixwA==
X-Gm-Message-State: ALyK8tLCfnOqwiSAxjr/sMUzx7+ncwRFUliioWWlSuPtBt08u7b5yLeiJQB3wm95v9kcGISHaa58h0R/LxAP6A==
X-Received: by 10.28.127.138 with SMTP id a132mr40134248wmd.72.1469483437721; 
	Mon, 25 Jul 2016 14:50:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.145.39 with HTTP; Mon, 25 Jul 2016 14:50:36 -0700 (PDT)
In-Reply-To: <CAMKF1sp4PLcSX0MBBKEQ0i_Ect4a8y55vwPjxemYsSH8+a-WeA@mail.gmail.com>
References: <CAJ58UNn4pFMngrKG8MeffP+GQGTd-qQVE3_Roc01PcWpK_FF9Q@mail.gmail.com>
	<2248630.eW0NeUEiY0@peggleto-mobl.ger.corp.intel.com>
	<CAMKF1sr4UxRWu+8Bei0H3H9epO1uU_5AJ=NCQH2FGgN4gz0OkQ@mail.gmail.com>
	<2059857.6fejhZ6HEk@peggleto-mobl.ger.corp.intel.com>
	<28035851-E0F1-4D8A-8EB2-6918D61CB11A@gmail.com>
	<CAJ86T=U29vOK+f-jGf3CYeDb1qSWMOCdUUHwoYPeph1_vopo0w@mail.gmail.com>
	<CAMKF1sp4PLcSX0MBBKEQ0i_Ect4a8y55vwPjxemYsSH8+a-WeA@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Mon, 25 Jul 2016 14:50:36 -0700
Message-ID: <CAJ86T=Ud3PGT6FQesxs_dY6nWpATQj4grnKoXHGR6n08-z3+kA@mail.gmail.com>
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
X-List-Received-Date: Mon, 25 Jul 2016 21:50:43 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 22, 2016 at 6:52 AM, Khem Raj <raj.khem@gmail.com> wrote:
> On Fri, Jul 22, 2016 at 12:09 AM, Andre McCurdy <armccurdy@gmail.com> wro=
te:
>> On Thu, Jul 21, 2016 at 8:20 PM, Khem Raj <raj.khem@gmail.com> wrote:
>>>
>>>> On Jul 21, 2016, at 6:45 PM, Paul Eggleton <paul.eggleton@linux.intel.=
com> wrote:
>>>>
>>>> On Thu, 21 Jul 2016 18:35:25 Khem Raj wrote:
>>>>> On Thu, Jul 21, 2016 at 6:32 PM, Paul Eggleton
>>>>>
>>>>> <paul.eggleton@linux.intel.com> wrote:
>>>>>> On Thu, 21 Jul 2016 18:22:32 Khem Raj wrote:
>>>>>>>> On Jul 21, 2016, at 5:20 PM, Vijayakumar Badiger
>>>>>>>> <vijayakumarmb@gmail.com>
>>>>>>>> wrote:
>>>>>>>>
>>>>>>>> The sync driver is already ported in the kernel.  I just need to g=
et
>>>>>>>> this
>>>>>>>> compilation error fixed. I tried adding below change to kernel bb =
file
>>>>>>>> but still I get that same error.
>>>>>>>>
>>>>>>>> PACKAGES =3D+ "kernel-headers"
>>>>>>>> FILES_kernel-headers =3D "${KDIR}/usr/include=E2=80=9D
>>>>>>>
>>>>>>> there is a different recipe for headers linux-libc-headers that als=
o
>>>>>>> needs
>>>>>>> to be patched and then hopefully kernel build system is exporting t=
his
>>>>>>> header for userspace automatically and you will be set.
>>>>>>
>>>>>> I thought we weren't supposed to be encouraging modifying
>>>>>> linux-libc-headers - especially as this isn't for the libc - it's fo=
r
>>>>>> other userspace code...?
>>>>>
>>>>> Yes thats correct thats why
>>>>> I am not asking for submitting this patch upstream.
>>>>
>>>> Sure, but this question comes up a lot. We ought to be telling people =
the
>>>> correct mechanism for introducing extra headers such as this if it isn=
't to
>>>> modify linux-libc-headers.
>>>
>>> Thats possible for external kernel modules. This is a kernel patch. The=
re is no other elegant way
>>> of solving this. They could write another recipe just to stage this hea=
der. but thats equally ugly.
>>
>> A new recipe isn't needed. You can add something like the following to
>> the existing kernel recipe:
>>
>>   sysroot_stage_all_append () {
>>     mkdir -p ${SYSROOT_DESTDIR}/${includedir}/linux
>>     install -m644 ${S}/include/linux/sync.h
>> ${SYSROOT_DESTDIR}/${includedir}/linux/
>>   }
>
> I wonder if this will this work with sstate

This version won't. It should be possible to fix that, but it starts
to turn into a more extensive change.

As Paul mentions, it might be better to support this kind of thing
officially (via kernel.bbclass) since allowing a machine specific
kernel to install custom header files into sysroot for use by user
space recipes is a relatively common situation.

>>
>> and then add a dependency on the kernel to the recipe which needs the he=
aders.
>>
>>
>>>>
>>>> Cheers,
>>>> Paul
>>>>
>>>> --
>>>>
>>>> Paul Eggleton
>>>> Intel Open Source Technology Centre
>>>
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>

