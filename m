Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00F7CE00F42; Fri, 22 Jul 2016 06:53:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f195.google.com (mail-qt0-f195.google.com
	[209.85.216.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3FD8EE00F38
	for <yocto@yoctoproject.org>; Fri, 22 Jul 2016 06:53:27 -0700 (PDT)
Received: by mail-qt0-f195.google.com with SMTP id q11so5236988qtb.2
	for <yocto@yoctoproject.org>; Fri, 22 Jul 2016 06:53:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=WOizuCU8TxG91Njr7lluymXm7ENiNcrrJ2bhTiS3llM=;
	b=hmj3Z88r030AQaltHghe4j9zF6oGP24fhwU1cZzZTHIy0NEDNpq3DAxkklKvf2tsn4
	x8YLzAbRYo6M+k0kgGEzCtASzb0Bb76JcNKZkLub6U9rxNY9mi0nd3nzWMuIFTWimTo1
	6vIKvVBsfRQoqANCSNqlFKwSpR0Kn49cwXngZNeBmMXi6cWBlgJo4j8fluP8HHjIi7xX
	9RsnadHZAbD27nOUVishhe6fOrr8IweC4WfGY/TGGg5KLG680nAhmaZhHlRe5iwfXSBL
	9rU5tbD7BRKZeSiugrDunEOw+Gzr5BZXK+RfyqIHvv2WaUAMJbraJ8DcZST8Fhe5tNfG
	JorQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=WOizuCU8TxG91Njr7lluymXm7ENiNcrrJ2bhTiS3llM=;
	b=jBypRNjcF4qel9+J40uZLHHitNcHvr3cMUMtNzy0/ywh48ggduzdYzAeH/w0tGrqZI
	xXrtAoEx3CRE7YWrTe7gRwe4lkvOqsZjQQdmlMGK+2GM7phtLs1+AXB5+32F6PIAeQox
	nfk9wFZi7HBIs9li5WJvMhoc3ddfRoyV9aCkrdAxObGqYrl7z8p3o/8WD28m9qOQi5kg
	JhvfqsYhpnCK57omiiaqR/f2OzBjFs2rfkQDumTTjqo2pPRqvsnj6aedqvC3fWyxwFEY
	tw0yQjk/jd9JDmrZAKaZFbDN407ZNXR9+DnkwgRHh+EJuKFKKqGqSB7eeizzEIa2e70U
	/FhQ==
X-Gm-Message-State: AEkoouvYF99EEMy7EmY5ofnXYogiJRSwIz3F8mVYvn6XwMjuAiivRKndKyy4AAjcl5U+LMx2pvx5klzpGBZt8g==
X-Received: by 10.237.43.164 with SMTP id e33mr6334630qtd.55.1469195607129;
	Fri, 22 Jul 2016 06:53:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.214.83 with HTTP; Fri, 22 Jul 2016 06:52:57 -0700 (PDT)
In-Reply-To: <CAJ86T=U29vOK+f-jGf3CYeDb1qSWMOCdUUHwoYPeph1_vopo0w@mail.gmail.com>
References: <CAJ58UNn4pFMngrKG8MeffP+GQGTd-qQVE3_Roc01PcWpK_FF9Q@mail.gmail.com>
	<2248630.eW0NeUEiY0@peggleto-mobl.ger.corp.intel.com>
	<CAMKF1sr4UxRWu+8Bei0H3H9epO1uU_5AJ=NCQH2FGgN4gz0OkQ@mail.gmail.com>
	<2059857.6fejhZ6HEk@peggleto-mobl.ger.corp.intel.com>
	<28035851-E0F1-4D8A-8EB2-6918D61CB11A@gmail.com>
	<CAJ86T=U29vOK+f-jGf3CYeDb1qSWMOCdUUHwoYPeph1_vopo0w@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 22 Jul 2016 06:52:57 -0700
Message-ID: <CAMKF1sp4PLcSX0MBBKEQ0i_Ect4a8y55vwPjxemYsSH8+a-WeA@mail.gmail.com>
To: Andre McCurdy <armccurdy@gmail.com>
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
X-List-Received-Date: Fri, 22 Jul 2016 13:53:31 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 22, 2016 at 12:09 AM, Andre McCurdy <armccurdy@gmail.com> wrote=
:
> On Thu, Jul 21, 2016 at 8:20 PM, Khem Raj <raj.khem@gmail.com> wrote:
>>
>>> On Jul 21, 2016, at 6:45 PM, Paul Eggleton <paul.eggleton@linux.intel.c=
om> wrote:
>>>
>>> On Thu, 21 Jul 2016 18:35:25 Khem Raj wrote:
>>>> On Thu, Jul 21, 2016 at 6:32 PM, Paul Eggleton
>>>>
>>>> <paul.eggleton@linux.intel.com> wrote:
>>>>> On Thu, 21 Jul 2016 18:22:32 Khem Raj wrote:
>>>>>>> On Jul 21, 2016, at 5:20 PM, Vijayakumar Badiger
>>>>>>> <vijayakumarmb@gmail.com>
>>>>>>> wrote:
>>>>>>>
>>>>>>> The sync driver is already ported in the kernel.  I just need to ge=
t
>>>>>>> this
>>>>>>> compilation error fixed. I tried adding below change to kernel bb f=
ile
>>>>>>> but still I get that same error.
>>>>>>>
>>>>>>> PACKAGES =3D+ "kernel-headers"
>>>>>>> FILES_kernel-headers =3D "${KDIR}/usr/include=E2=80=9D
>>>>>>
>>>>>> there is a different recipe for headers linux-libc-headers that also
>>>>>> needs
>>>>>> to be patched and then hopefully kernel build system is exporting th=
is
>>>>>> header for userspace automatically and you will be set.
>>>>>
>>>>> I thought we weren't supposed to be encouraging modifying
>>>>> linux-libc-headers - especially as this isn't for the libc - it's for
>>>>> other userspace code...?
>>>>
>>>> Yes thats correct thats why
>>>> I am not asking for submitting this patch upstream.
>>>
>>> Sure, but this question comes up a lot. We ought to be telling people t=
he
>>> correct mechanism for introducing extra headers such as this if it isn'=
t to
>>> modify linux-libc-headers.
>>
>> Thats possible for external kernel modules. This is a kernel patch. Ther=
e is no other elegant way
>> of solving this. They could write another recipe just to stage this head=
er. but thats equally ugly.
>
> A new recipe isn't needed. You can add something like the following to
> the existing kernel recipe:
>
>   sysroot_stage_all_append () {
>     mkdir -p ${SYSROOT_DESTDIR}/${includedir}/linux
>     install -m644 ${S}/include/linux/sync.h
> ${SYSROOT_DESTDIR}/${includedir}/linux/
>   }

I wonder if this will this work with sstate

>
> and then add a dependency on the kernel to the recipe which needs the hea=
ders.
>
>
>>>
>>> Cheers,
>>> Paul
>>>
>>> --
>>>
>>> Paul Eggleton
>>> Intel Open Source Technology Centre
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>

