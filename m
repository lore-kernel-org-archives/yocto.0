Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3964EE00AE4; Sun,  2 Jul 2017 06:53:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FREEMAIL_REPLY,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-wm0-f48.google.com (mail-wm0-f48.google.com [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75156E00349
	for <yocto@yoctoproject.org>; Sun,  2 Jul 2017 06:53:47 -0700 (PDT)
Received: by mail-wm0-f48.google.com with SMTP id i127so85206714wma.0
	for <yocto@yoctoproject.org>; Sun, 02 Jul 2017 06:53:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=XojidovuCPaNUoeu0BXCT+YX6pmNan0Ble3UV14bSg0=;
	b=brVAiO9HBr+DftFXoSI0rKyrxKFMPu8xBDRuNHXNBbPwObCDIwI1Ke+BQSGl6jefdh
	5eloztMykDRZsxPoA74adRifHhaoJrAsMw+HvYX/dVv11Pu9w4fHXAreQIj2lVHThK98
	rv1UUVGrG5l2o8bXjIj2Oj3GBuz8Lm+fp2AZG8LS0CiATf4dUW+PJ3gwbLUwKRjYYudz
	o3qDJKEQu3PaqG8JXKMef7MaOJWrlLVZm4nZZepgvSTCf+R8aYSP8kYbTwl7/LI2fi9n
	sUYVZdReejEXp349qs6+/0ZJJV9YOqUj1xYLUr/aUFwlcIhgl0JVEYMR7xeDbakUcC9g
	L1XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=XojidovuCPaNUoeu0BXCT+YX6pmNan0Ble3UV14bSg0=;
	b=jeg6WR7kGmK9Q3D32OJG1wfjufeA/8wBnf7QACQKqTE9NAueUfFnxxNf5B8YmdHzzz
	kOTlCrwx0gGmasOTcUcVS47SV9FPyS6a0s1kXpwWMrJemvgXES/YC3coxXcVFSAfUIOV
	qBNArlSdDjs/iTvvqvw1ROP05972ML3I5/3ctnZMAQ6KJXtrsUBytOPZk9oYKLjQ5gUH
	MeU80Mb5NDDG23KOpjNiAqhl6+IalG8t1bVXaVRbQVr3Vn2O+5tdbNjLoifEsf0dqf91
	iH0bVrsIoSMIt4wkrehggVXupwYCNo04FhS0Ra4rj3ZD0TCGomDJnE6+dBz7vkcsK3yq
	x3eg==
X-Gm-Message-State: AKS2vOwKjS1wbg3qIgEtVEl5cPGLqVbWKBlZpm7ruJfnYr/a2xF44Gt/
	SmtYsIlOH8NVdVwIcW1OMCIrE3/p9w==
X-Received: by 10.80.140.204 with SMTP id r12mr11944753edr.123.1499003627138; 
	Sun, 02 Jul 2017 06:53:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.165.198 with HTTP; Sun, 2 Jul 2017 06:53:16 -0700 (PDT)
In-Reply-To: <753516A24CD045AAB7E6E2F13BD1C99D@PAULD>
References: <FF02D819682A44949D09718D69202477@PAULD>
	<CAC+thW12U7RCZsSS7tuSVWis+bycbDo6t-oFiOpePoQ9nJ3qSA@mail.gmail.com>
	<753516A24CD045AAB7E6E2F13BD1C99D@PAULD>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 2 Jul 2017 06:53:16 -0700
Message-ID: <CAMKF1sp108Tc+vYqss9Tw14AsooWCYoZD5dOzEjvgrueApzviw@mail.gmail.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: RPi app built with SDK won't load
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
X-List-Received-Date: Sun, 02 Jul 2017 13:53:50 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Jul 1, 2017 at 6:07 PM, Paul D. DeRocco <pderocco@ix.netcom.com> wr=
ote:
>> From: Andrea Galbusera [mailto:gizero@gmail.com]
>>
>> Could you please post the exact source code of your test
>> program and the steps you take to (a) build the SDK and (b)
>> build your test executable? Is your running image a pretty
>> standard one (core-image-minimal, rpi-test-image or so) or do
>> your own with custom features?
>
> It did have some custom features, so I did a plain build of core-image-mi=
nimal using raspberrypi3 as the MACHINE. I also did a populate_sdk for it, =
and installed the SDK in /opt/poky/2.2.1-a32 by running the install script.
>
> The test program test.c is just "int main(void) { return 0; }". I normall=
y use Eclipse CDT to compile native programs, so I set up a cross project u=
sing the SDK, which involves a few manual settings, including telling it th=
e tools are in /opt/poky/2.2.1-a32/sysroots/x86_64-pokysdk-linux/usr/bin/ar=
m-poky-linux, and adding a --sysroot to the command lines. The compiler com=
mand line came out as:
>
> arm-poky-linux-gcc --sysroot=3D/opt/poky/2.2.1-a32/sysroots/cortexa7hf-ne=
on-vfpv4-poky-linux-gnueabi -O3 -Wall -c -mfloat-abi=3Dhard -MMD -MP -MF"te=
st.d" -MT"test.o" -o "test.o" "../test.c"
>
> (without the line breaks). I had to add "-mfloat-abi-hard" to get it to l=
ink. The link command line was:
>
> arm-poky-linux-gcc --sysroot=3D/opt/poky/2.2.1-a32/sysroots/cortexa7hf-ne=
on-vfpv4-poky-linux-gnueabi -s -o "test" ./test.o
>
> (again, without the line breaks). After dd-ing the image to my SD card, I=
 mounted it and manually copied the "test" program into its rootfs. When I =
stuck it in the RPi3 and ran it, I got
>
>     -sh: ./test: not found
>

pick a program that runs fine on target say /sbin/init and your test progra=
m
then find the unstripped binaries of both on your build system.  run

 arm-poky-linux-gcc -A init and
 arm-poky-linux-gcc -A test

send the output of both cmds.

> The shell in this case is busybox, so the error message is slightly diffe=
rent from bash.
>
> I rechecked everything I had described before, analyzing the executable a=
nd comparing it to some working executable from the rootfs. There must be S=
OMETHING in my executable that the loader is barfing on, after it's success=
fully opened the file but before it starts looking for libraries. But it's =
an awfully small executable, so it's hard to imaging where that something i=
s hiding.
>
> --
>
> Ciao,               Paul D. DeRocco
> Paul                mailto:pderocco@ix.netcom.com
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

