Return-Path: <stevep@korgrd.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F9BFE00C0A; Thu,  7 Nov 2019 10:42:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.161.66 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-yw1-f66.google.com (mail-yw1-f66.google.com
	[209.85.161.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF198E003E1
	for <yocto@yoctoproject.org>; Thu,  7 Nov 2019 10:42:03 -0800 (PST)
Received: by mail-yw1-f66.google.com with SMTP id g77so937621ywb.10
	for <yocto@yoctoproject.org>; Thu, 07 Nov 2019 10:42:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=korgrd-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=MQRY3fAhb7aKIDMzgpKZpozHrdobxWrDq34/HYWrPhk=;
	b=JJXSpulXnlndGfs64uIzE4gfOGSfrnLaOMK7xfShMnrsrb2CZQgb8QfbVpnDnZsSkR
	Rl8MZzU+I6jz93BXKwpo+Fwp/AreOaKnTar74r78H30LzhhfJDhfeCgCOcg9VlU5xA6E
	uKU7kiZfDjkkjLiz8O3h+H++lYlsp8jzP5qW+3wLFrdXvKFj0nTgiLDGt3D13oSFd+cp
	3SsbHJ+wyNgSrWPr4LKcSvs4vr8u9E+/oFLEnp+wuzNgW/uY/1aK7arArdf3Wm6dEbs8
	hpvhRe+i9RHktnwwUDq9Mv9pDh34RBuXVUUsEjmTIyLGk4rKs5ektLybizaB+Hn84s4o
	LmTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=MQRY3fAhb7aKIDMzgpKZpozHrdobxWrDq34/HYWrPhk=;
	b=bdt811Urw0jFpIM8OZ5WUABv8kXPGepGdPQ4hVUfaF8JJ2Yzbemw3r/f4x1n/ZEKdH
	brjc57qut7g1C362hYnGpuaaXb5Gz7xafcCd/9ujAIkhhsHDNQjH3Tvdqv3kpr9NbJ+C
	Iem62RCQaHC9YcSbX5VU8HHVVzCP2GXB0TrTrcKYK6PQcQnqLQA3E91+9eJJpJvtBBCD
	ZZVoFLSbXyzpRULWSO3eT+ZWD2mjgbutkUqadZCuNVuhRqJVivQ2EkgXkDljNdq7w510
	7UzNRyf+pvTuIHyCX6/8P03rZp8uJo97UrlvsLIwGoBO3QrTIUhquXzyL0DhILYL+/5J
	Gzuw==
X-Gm-Message-State: APjAAAXobAmhuSzgrrzSKbYmijJ7DSdsoOLjbnfHwfQALU7oeABP3UKd
	UpkKnFC4hFT3xgc2QCPLo0InvS9ch8bd6A==
X-Google-Smtp-Source: APXvYqxAgAvAwbl7J4+6/s3z+FXSc5Bjb6U6tjT8C1U/qKyiej41rNSZOGygVgtizIcSjM9jAdWkgA==
X-Received: by 2002:a81:5942:: with SMTP id n63mr3415532ywb.85.1573152122742; 
	Thu, 07 Nov 2019 10:42:02 -0800 (PST)
Received: from ?IPv6:2600:6c64:6780:170b:6592:adb1:4d8a:e7ad?
	([2600:6c64:6780:170b:6592:adb1:4d8a:e7ad])
	by smtp.gmail.com with ESMTPSA id
	r33sm1650431ywa.83.2019.11.07.10.42.01
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 07 Nov 2019 10:42:02 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
From: Steve Pavao <stevep@korgrd.com>
In-Reply-To: <86097C68-F833-4B01-8EE0-177BD9D26D76@korgrd.com>
Date: Thu, 7 Nov 2019 13:42:00 -0500
Message-Id: <E49C09B9-FF9C-42E7-BFD9-CA55D367AFF6@korgrd.com>
References: <7D6FCC3C-A8B1-4EE7-875F-E544DCC3B44A@korgrd.com>
	<d6a7e59a-cc6a-aa34-21a5-47c73062f9e1@gherzan.ro>
	<CAMKF1srHdfY1=Qbb7vURbMauc5VcPiKzH6_AGht86ChoJKvDZQ@mail.gmail.com>
	<097a8fe9-979d-aa3f-68ad-2c9e0bea6853@gherzan.ro>
	<CAMKF1sq39xefZFVEVafJ6yuRuinUtZ8odrPSJ4POiq49zevwPw@mail.gmail.com>
	<352DF122-AE8C-4549-A04B-27EEF9A73AE5@gherzan.ro>
	<20191103182512.GA28946@localhost>
	<9F6E6EE0-4FF9-4251-9B7B-37A734DA4824@korgrd.com>
	<20191104161127.GC5390@localhost>
	<3DE4E470-5A63-4B19-A587-49A771B96850@korgrd.com>
	<F621167E-B505-491A-ABD2-1ED5600129F8@korgrd.com>
	<86097C68-F833-4B01-8EE0-177BD9D26D76@korgrd.com>
To: Yocto Project <yocto@yoctoproject.org>
X-Mailer: Apple Mail (2.3445.104.11)
Subject: Re: [meta-raspberrypi] poky linux build fails if ARM erratum mfix linker switch is specified
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
X-List-Received-Date: Thu, 07 Nov 2019 18:42:05 -0000
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

> On Nov 4, 2019, at 4:26 PM, Steve Pavao <stevep@korgrd.com> wrote:
>=20
>> On Nov 4, 2019, at 11:32 AM, Steve Pavao <stevep@korgrd.com> wrote:
>>>=20
>>> On Nov 4, 2019, at 11:16 AM, Steve Pavao <stevep@korgrd.com> wrote:
>>>>=20
>>>> On Nov 4, 2019, at 11:11 AM, Adrian Bunk <bunk@stusta.de> wrote:
>>>>=20
>>>> On Mon, Nov 04, 2019 at 10:48:57AM -0500, Steve Pavao wrote:
>>>>>=20
>>>>>> On Nov 3, 2019, at 1:25 PM, Adrian Bunk <bunk@stusta.de> wrote:
>>>>>>=20
>>>>>> On Sun, Nov 03, 2019 at 05:56:45PM +0000, Andrei Gherzan wrote:
>>>>>>> On 3 November 2019 13:18:53 GMT, Khem Raj <raj.khem@gmail.com> =
wrote:
>>>>>>>> On Sun, Nov 3, 2019 at 2:46 AM Andrei Gherzan =
<andrei@gherzan.ro>
>>>>>>>> wrote:
>>>>>>>>> I was thinking about this. The erratum seems to show that this
>>>>>>>> applies
>>>>>>>>> to all revisions of a53. So it sounds like we should add it in
>>>>>>>>> `tune-cortexa53.inc`.
>>>>>>>>>=20
>>>>>>>>=20
>>>>>>>> Up to r0b4 only so maybe not all a53 implementations are =
impacted
>>>>>>>>=20
>>>>>>>=20
>>>>>>> As far as I know that is the latest revision. Do you mean that =
newer revision might come up with this fixed?=20
>>>>>>=20
>>>>>> It is fixed in some r0p4 implementations, indicated in REVIDR[8].
>>>>>=20
>>>>> I am closer to understanding why I experience an error when =
building with the ARM errata switches.
>>>>>=20
>>>>> I believe it is related to 32-bit app support in my poky Linux =
64-bit build (I add this to support vcgencmd and vcdbg 32-bit apps.)
>>>>>=20
>>>>> When I remove the 32-bit support, the build completes OK.  As of =
now, adding the following seems to work fine to acheive this:
>>>>>=20
>>>>> TARGET_CC_ARCH_append +=3D " -mfix-cortex-a53-843419 =
-mfix-cortex-a53-835769=E2=80=9D
>>>>>=20
>>>>> Something in the following block seems to be the culprit.:
>>>>>=20
>>>>> # for vcgencmd and vcdbg 32-bit executable support in the OS image =
(comment out for -c populate_sdk)
>>>>> require conf/multilib.conf
>>>>> MULTILIBS =3D "multilib:lib32"
>>>>> DEFAULTTUNE_virtclass-multilib-lib32 =3D "armv7a"
>>>>> IMAGE_INSTALL_append +=3D " vcgencmd lib32-glibc lib32-libgcc =
lib32-libstdc++ vcdbg rpi-setup \
>>>>> =E2=80=9C
>>>>>=20
>>>>> I will post again when I have localized the build problem further. =
 Maybe there=E2=80=99s some 64-bit vs. 32-bit build confusion going on, =
and the armv7a default tune switch for 32-bits is colliding with the =
errata switches.
>>>>=20
>>>> The errata switches are only valid for aarch64, not for armv7a.
>>>> There is likely some kind of "invalid option" earlier in your =
build.
>>>=20
>>> To conitnue to be able to use the 32-bit app support, perhaps I must =
do this:
>>>=20
>>> DEFAULTTUNE_virtclass-multilib-lib32 =3D =E2=80=9Carmv7a =
-mno-fix-cortex-a53-843419 -mno-fix-cortex-a53-835769=E2=80=9D
>>=20
>> This doesn=E2=80=99t work.
>>=20
>> If I wish to keep the 32-bit app support in my build, I=E2=80=99ll =
need to devise a way to make sure those ARM errata flags are only =
applied to the aarch64 portion of the compile/link for the target, not =
to the multilib 32-bit app support portion.
>=20
> Andrei and/or Khem,
>=20
> Could you advise an approach that allows to use the ARM errata =
switches for the aarch64 portion of the build for the target, but which =
will NOT specify the ARM errata switches for our supplementary 32-bit =
portion of the build for the target?  (This supplementary 32-bit portion =
of the build is to support the 32-bit vcgencmd app, and contains =
multilib and some additional 32-bit libraires.  Please see earlier post =
for the syntax we use in our local.conf.)


I've been able to rebuild 64-bit Linux code with the ARM errata =
switches, by adding the following line to the end of =
/meta/conf/machine/include/arm/arch-arm64.inc,=20

TUNE_CCARGS +=3D "${@bb.utils.contains("TUNE_FEATURES", "aarch64", " =
-mfix-cortex-a53-843419 -mfix-cortex-a53-835769", "" ,d)}=E2=80=9D

Please let me know if you have any thoughts about this approach.

Steve Pavao
Korg R&D





