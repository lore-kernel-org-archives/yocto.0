Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19DC1E00A9B; Tue, 11 Apr 2017 09:32:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.45 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
Received: from mail-wm0-f45.google.com (mail-wm0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A31F2E009C2
	for <yocto@yoctoproject.org>; Tue, 11 Apr 2017 09:32:06 -0700 (PDT)
Received: by mail-wm0-f45.google.com with SMTP id u2so5146174wmu.0
	for <yocto@yoctoproject.org>; Tue, 11 Apr 2017 09:32:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=l8XtQn4I3t1XwoPYQ2VZ8Y+2+Jm9zlcI4XoMJXPrjEg=;
	b=N7T4vmJWrhSY1i502kuyDeibRfIZarafT7woaExnbjPN0qldkp2AngTaAPzAVD0Ol2
	ZwXYZxx4d647Fd/jKkGaWIzkFXcRwRhI+LOYKjTh5W3xaYk/ZADpvMap0mCwAioDc7rw
	Wy+bZbPaNEGfevukta/gtTYC+tnk4KOlnA3Zyzkx/1rvLmHRXZotnTnZLfFSmv1NHCQC
	jqTaFfxEZtryI79jTnt/7cItyvDY4/kAjV/QcrKQ7MH0mhvAU3Hzpq1cQa3HkPGBe5Qz
	EocryYrZG4jFJdLHtIokMTNdRgzv0OJTRLB8PUQKJdoe3Duwa0t1lblR924YxUnc8P2r
	REFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=l8XtQn4I3t1XwoPYQ2VZ8Y+2+Jm9zlcI4XoMJXPrjEg=;
	b=sCwaAcfBlewejgvDI7U9awPkvqf2CE7zUAowKTToM4a9E1s2nSHCyIAhoCyu5UYg+P
	uQhH8wfLdqKQW8UUnY0LXqfyFXdWJfUUGePM7JCirtn1rcAZlXIHHWaANARXEXqH0Rj4
	okbkNqL4G5ERSpM9+bhUIu43IdsnQN/nOorQlNOevhyFbUrWrwEjM8Aeift/L2GO7B5m
	5lz0fvGUMdY3P6BF2LFj4Kp8OQJW16239K/Mk/ye3bwVnCM85jTVJgledgMuBx+wlyxZ
	DQcxPl9DuSBid675E0TRHcHhO0+biNrkxz6A40bsAZ/2JTz/ugPF+0on6FPcklxHPQpj
	d/Lg==
X-Gm-Message-State: AN3rC/5ti3wySBOqzmJOGhB5rTjga+BW/kYKE80fj0SjAESqyNQijpQtO1zg5CxzZKurY0kY/yuqtyMqQJy5mg==
X-Received: by 10.28.206.195 with SMTP id e186mr10470059wmg.37.1491928324796; 
	Tue, 11 Apr 2017 09:32:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.180.141 with HTTP; Tue, 11 Apr 2017 09:31:34 -0700 (PDT)
In-Reply-To: <6b8d75eafe704438b03324c35d2ce6ef@FE-MBX1014.de.bosch.com>
References: <6b8d75eafe704438b03324c35d2ce6ef@FE-MBX1014.de.bosch.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 11 Apr 2017 09:31:34 -0700
Message-ID: <CAMKF1sqPX7mfRPng8f_3khPn-=FzjfB837rR4DAMpRQvCL6t8w@mail.gmail.com>
To: "Eswaran Vinothkumar (BEG/PJ-IOT-EL)" <Vinothkumar.Eswaran@de.bosch.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Porting a middleware to Yocto
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
X-List-Received-Date: Tue, 11 Apr 2017 16:32:13 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 10, 2017 at 11:20 PM, Eswaran Vinothkumar (BEG/PJ-IOT-EL)
<Vinothkumar.Eswaran@de.bosch.com> wrote:
> Hallo,
>
>
>
> For our new project we are planning to use Yocto as a build system to bui=
ld
> customized Linux distribution. I have already created a BSP for our
> customized hardware with Linux kernel, U-boot and UBIFS rootfs image.
>
>
>
> We are internally using a middleware which acts as an abstraction to
> underlying operating system and provides APIs to application layers. Now =
the
> task is to port the middleware to Yocto. The middleware contains lot of m=
ake
> files and folders which are interdependent and I am at lost on how to sta=
rt.
>
> I have some 20 directories which contains makefiles and autotool
> configure.ac files to generate lib files.
>
>
>
> As of now I have planned to create a new Yocto layer called meta-middlewa=
re
> and a recipe file for individual folders. I then create a package group
> which will include all these recipes and can include this package group a=
s
> dependency in the recipes of meta-application layer. I am facing a proble=
m
> like I have to include headers from other recipes. In this case to includ=
e
> the headers , is it enough to add =E2=80=9CDEPENDS =3D recipename=E2=80=
=9D ?
>
> I know my question is relatively vague, but anybody who ported middleware
> from another build systems like ptxdist would have faced similar issues. =
Any
> input on how you planned to port these source files to Yocto would be
> helpful.
>

This is a common usecase I have faced multiple times, where people are
coming from monolithic build systems. So
task 1:
segregate this monolith into components which have their own life or
you can treat the whole monolith as one component. Choice is yours.

task 2: if you want to componentize it then choose a component build
system e.g. autoconf, cmake or if nothing just plain make and convert
your components to be able to ask for external dependencies for other
components without needing to cross reference them. E.g. let it expect
a given lib or header is coming from standard sysroot

Task3: Let a component be able to generate .so or binaries using its
own component build system. It should also be able to stage the
headers and libs for APIs its exposing for other components to
interact with it.

Task4: Write recipes and express the dependencies as you might have
then well known by now.

Task5: Write logical package groups

Task6: Expose the middleware via SDKs for application developers.

>
>
>
>
> Mit freundlichen Gr=C3=BC=C3=9Fen / Best regards
>
> Vinothkumar Eswaran
> BEG-PT/PJ-IOT1
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

