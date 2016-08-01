Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6919DE010AF; Mon,  1 Aug 2016 06:50:59 -0700 (PDT)
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
	*      [209.85.216.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f182.google.com (mail-qt0-f182.google.com
	[209.85.216.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79780E00C8F
	for <yocto@yoctoproject.org>; Mon,  1 Aug 2016 06:50:57 -0700 (PDT)
Received: by mail-qt0-f182.google.com with SMTP id 52so104512329qtq.3
	for <yocto@yoctoproject.org>; Mon, 01 Aug 2016 06:50:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=gaIqi81I0oPMKSqvkV61kAdxiflpy8Da4wP0Bfv6fDo=;
	b=wsLuPeM9wUOOiykP/PaAhb1WWdVMWw/TvRtBPQqK5Q0ma+FXLHkoalrNTLZYNW9BVb
	1tzPmH0G2+mkuHeR/Ninf4EUoGkrk2YF453HJ6FRFxSwF6TqbYJo7GUGbWut/APB2ufq
	Ja3MNSCCAOAAuUdlhLJZn8HTobvT+fX08u3Yaspo6lFQTqJcW3+AF7ND8f0l6VaNo2zC
	b/adY/rAlc8MaDycwbHROSOCzxrrGK8wiE8lvxbQxHBIQmvFE/dLQ5GtoWaO1mGtuGvL
	iD1SEe1pqSQ20lTZjeRuHAVxAlt4fR4BAp1lRF0J8X/980oRkfLUlu2cuajPQmzXVLQa
	Ag7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=gaIqi81I0oPMKSqvkV61kAdxiflpy8Da4wP0Bfv6fDo=;
	b=CB7o/TtkhRwtjeFvSQOlRJBHkkJMEiQx1Wem823KgFJx9iM3Zq0DttE3DSsFcxx+bw
	EOVXAoO6Bmaot2GeXMls7+rk9lEglUUY2RmXejAHVW/8fTD1P7CykD7vY9DFG7FeuWi9
	PWebWeu5XERHWa2Cm/rjSgGdchDseS5OK6iw9f1+0RBsG0PdXPpFwcxq3lNtZzQN6WZF
	SEjCXdkX4C/tYifDE/LJ9aJA2SDzY9eGP2X5XZZX4LWKSO+mw6N0bvCcyvbZMCCTvGDv
	z5gPw1sU0ZWiUPSH/RVBgCU56uBuWlquLSknN7UHEakKTkFjuOYmiXG53a5wRM85R/DC
	EY7w==
X-Gm-Message-State: AEkoouvt7AhHGwiqzKBg9rXwSWmrChLkY0A9TrzfpZu6bf6GpjUqORgNVBDLuOHy9UfQFIzxOTqHQ3HzRJ7JgQ==
X-Received: by 10.237.50.35 with SMTP id y32mr89324598qtd.98.1470059456838;
	Mon, 01 Aug 2016 06:50:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.215.13 with HTTP; Mon, 1 Aug 2016 06:50:26 -0700 (PDT)
In-Reply-To: <73e7977df57b4fefb44dec4ef46e60b6@DEBEMAIL001.kostal.int>
References: <f6b417b9e59c4208bf7bc9e42b48cfbd@DEBEMAIL001.kostal.int>
	<B692FAD6-991B-491A-9B8C-F0ECECA6C1A1@gmail.com>
	<73e7977df57b4fefb44dec4ef46e60b6@DEBEMAIL001.kostal.int>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 1 Aug 2016 07:50:26 -0600
Message-ID: <CAMKF1srzYMqzHVW5_bp5QAoLGQiM6msBPex5=7AdLRg6xrycJA@mail.gmail.com>
To: "Hartwig, Guido" <g.hartwig@kostal.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Trouble with yocto sdk in collaboration with eclipse and cmake
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
X-List-Received-Date: Mon, 01 Aug 2016 13:50:59 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 1, 2016 at 12:04 AM, Hartwig, Guido <g.hartwig@kostal.com> wrot=
e:
> I have manually added the flags from CC (-march=3Darmv7-a -marm -mfpu=3Dn=
eon  -mfloat-abi=3Dhard -mcpu=3Dcortex-a8) to the OECMAKE_C_FLAGS and then =
it works. I try to find a way, where CMAKE works out of the Box with yocto-=
plugin. I think the plugin is the problem for this issue.

Please open a bug for this issue in bugzilla

>
> -----Urspr=C3=BCngliche Nachricht-----
> Von: Khem Raj [mailto:raj.khem@gmail.com]
> Gesendet: Freitag, 29. Juli 2016 20:46
> An: Hartwig, Guido <g.hartwig@kostal.com>
> Cc: yocto@yoctoproject.org
> Betreff: Re: [yocto] Trouble with yocto sdk in collaboration with eclipse=
 and cmake
>
>
>> On Jul 29, 2016, at 1:27 AM, Hartwig, Guido <g.hartwig@kostal.com> wrote=
:
>>
>> Hi,
>> I have some trouble with the yocto sdk in collaboration with eclipse and=
 yocto CMake project. I have install all necessary eclipse plugins and link=
ed my sdk with the yocto-plugin as described in the manual. When I try to b=
uild the "Hello World" yocto cmake project it fails with following message:
>>
>> ..
>> CMake Error at
>> /usr/share/cmake-2.8/Modules/CMakeTestCCompiler.cmake:61 (message): The =
C compiler "/opt/puck/1.0.0/sysroots/x86_64-pucksdk-linux/usr/bin/arm-kosta=
l-linux-gnueabi/arm-kostal-linux-gnueabi-gcc"
>>  is not able to compile a simple test program ...
>>
>> This error occurs because the compiler is called with the wrong flags.
>> The SDK environment-setup script export the following environment
>> variables export CC=3D"arm-kostal-linux-gnueabi-gcc  -march=3Darmv7-a -m=
arm -mfpu=3Dneon  -mfloat-abi=3Dhard -mcpu=3Dcortex-a8 --sysroot=3D$SDKTARG=
ETSYSROOT"
>> export CFLAGS=3D" -O2 -pipe -g -feliminate-unused-debug-types -fdebug-pr=
efix-map=3D/home/hartwig02/Workspace/build-puck/build/tmp/work/x86_64-nativ=
esdk-pucksdk-linux/meta-environment-scb/1.0-r8=3D/usr/src/debug/meta-enviro=
nment-scb/1.0-r8 -fdebug-prefix-map=3D/home/hartwig02/Workspace/build-puck/=
build/tmp/sysroots/x86_64-linux=3D -fdebug-prefix-map=3D/home/hartwig02/Wor=
kspace/build-puck/build/tmp/sysroots/x86_64-nativesdk-pucksdk-linux=3D "
>>
>> The eclipse environment (set by the yocto plugin) shows the following en=
vironment:
>> CC =3D arm-kostal-linux-gnueabi-gcc  -march=3Darmv7-a -marm -mfpu=3Dneon
>> -mfloat-abi=3Dhard -mcpu=3Dcortex-a8
>> --sysroot=3D/opt/puck/1.0.0/sysroots/cortexa8hf-neon-kostal-linux-gnueab
>> i CFLAGS =3D
>> --sysroot=3D/opt/puck/1.0.0/sysroots/cortexa8hf-neon-kostal-linux-gnueab
>> i OECMAKE_C_COMPILER =3D arm-kostal-linux-gnueabi-gcc
>> OECMAKE_C_FLAGS =3D    --sysroot=3D/opt/puck/1.0.0/sysroots/cortexa8hf-n=
eon-kostal-linux-gnueabi
>>
>> I assume that yocto cmake uses the OECMAKE* variables to build the progr=
am.
>> The error occurs because the following compiler options (Tunes) are miss=
ing "-march=3Darmv7-a -marm -mfpu=3Dneon  -mfloat-abi=3Dhard -mcpu=3Dcortex=
-a8"
>>
>> Now my questions
>> 1.    Is it right that the yocto plugin cuts off the tunes from the OECM=
AKE_C_COMPILER?
>> 2.    Is there a reason that this compiler options are not appended to t=
he CFLAGS?
>
> CFLAGS should be passed down to cmake build system. That seems to be the =
problem you are seeing. Have you tried to append CFLAGS to OECMAKE_C_FLAGS =
?
>
>>
>> Thank you for your help
>>
>>
>>
>> Mit freundlichen Gr=C3=BC=C3=9Fen / Kind regards
>>
>> KOSTAL Industrie Elektrik GmbH
>>
>> Dipl.-Ing.
>> Guido Hartwig
>> IE1 Entwicklung Elektronik
>> R & D Electronics
>>
>> Lange Eck 11, 58099 Hagen
>> Deutschland / Germany
>> Telefon: +49 2331 8040 - 688
>> Telefax: +49 2331 8040 - 4660
>> E-Mail: g.hartwig@kostal.com
>>
>> Internet: http://www.kostal.com/industrie
>>
>>
>>
>> KOSTAL Industrie Elektrik GmbH - Sitz L=C3=BCdenscheid, Registergericht
>> Iserlohn HRB 3924 - USt-Id-Nr./Vat No.: DE 813742170
>> Postanschrift: An der Bellmerei 10, D-58513 L=C3=BCdenscheid * Telefon: =
+49
>> 2351 16-0 * Telefax: +49 2351 16-2400
>> Werksanschrift: Lange Eck 11, D-58099 Hagen * Tel. +49 2331 8040-601 *
>> Fax +49 2331 8040-602
>> Gesch=C3=A4ftsf=C3=BChrung: Axel Zimmermann, Dipl.-Ing. Marwin Kinzl, Di=
pl.-Oec.
>> Andreas Kostal
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>
>

