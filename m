Return-Path: <stevep@korgrd.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 456A9E00D99; Mon,  4 Nov 2019 08:32:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.161.44 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-yw1-f44.google.com (mail-yw1-f44.google.com
	[209.85.161.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DA08E00D8F
	for <yocto@yoctoproject.org>; Mon,  4 Nov 2019 08:32:21 -0800 (PST)
Received: by mail-yw1-f44.google.com with SMTP id i2so7148148ywg.13
	for <yocto@yoctoproject.org>; Mon, 04 Nov 2019 08:32:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=korgrd-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:subject:from:in-reply-to:date:cc:message-id:references
	:to; bh=UASvQxtxilA36Fw9SRQFPDLblZcYdtXb2B9gRTHKvpc=;
	b=WnhHqCDXgRAFuo6PgYmlYTypLD7VVdHZ624j99wCzQ1c6nT8TJHus5aZefaA/yPUWB
	BAg/UweZYkAlTtBJ3+yrxpdkX6bb05rdXH6Paj0NlcM1o1mMK7QWlLvGfa7XBapSBH58
	bsAc/Dr4j8nlMT31Ng5r7FnxkGw519XA7vBZBoXMtTcn2f5zhYtK3+SmcvAFKYc7Lise
	v1AstmIDHjRnHqQ67qblYciyWTU/J26LFs2IPGKMlcAcL8XAIHbUnomIntg0ZKkvpPyh
	Wf13nSCm2O71q6X8a+AJ/RHsyQXKU078qyiWbF7HOXC9OZuq5mzMx76VXTxRYb80IyhL
	lFgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=UASvQxtxilA36Fw9SRQFPDLblZcYdtXb2B9gRTHKvpc=;
	b=LwHKS8QiTpCu7XkBZ2LGsiCGVSzIvZUWxQWcbsjbdZFPv95Azm8BmIVc52KeZQdZRt
	jMEzBgId3nSCSTZc6uAxqJpAFfCee++KsyL1dwGXLA25AaSdAfl54nGC+gyJKQuS3ZRo
	ykUmQ7dx5ZSuOKzVFo5E9RL6qifR5pgKWIVRrA6giu0yA3ddeID2JpnoWrUesoU7nU8p
	7YaQHpsF5cUPjCEGopCmBHH4ilVsp0vybkleNAkx+s5fNeA4F7kozwCzAI1f8/U08VZm
	meQSRI5cEHJ+kfivG8R0UeELzwjWi/WBk1p3DHuBy1fyAkt/rHP4SvHVcTVUBeXrAYUA
	1uSg==
X-Gm-Message-State: APjAAAVvNWHh1i7/f3pp8PnuMo9DXPrm7978G3jJjipphDTbbG3FWCHD
	pNfYzvEAccsRT787kPcpiUny9Q==
X-Google-Smtp-Source: APXvYqxaD9KROoOQS11HICZWdA59hmk01JQ8+Undyl/9XvFZww9dOyf+0BB/pFC3/JPL4OapSMuqQA==
X-Received: by 2002:a0d:e0c1:: with SMTP id
	j184mr20400823ywe.144.1572885140275; 
	Mon, 04 Nov 2019 08:32:20 -0800 (PST)
Received: from ?IPv6:2600:6c64:6780:170b:a4c5:e905:53b0:1bba?
	([2600:6c64:6780:170b:a4c5:e905:53b0:1bba])
	by smtp.gmail.com with ESMTPSA id
	l68sm4529945ywf.95.2019.11.04.08.32.18
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 04 Nov 2019 08:32:19 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
From: Steve Pavao <stevep@korgrd.com>
In-Reply-To: <3DE4E470-5A63-4B19-A587-49A771B96850@korgrd.com>
Date: Mon, 4 Nov 2019 11:32:17 -0500
Message-Id: <F621167E-B505-491A-ABD2-1ED5600129F8@korgrd.com>
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
To: Adrian Bunk <bunk@stusta.de>
X-Mailer: Apple Mail (2.3445.104.11)
Cc: Yocto Project <yocto@yoctoproject.org>
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
X-List-Received-Date: Mon, 04 Nov 2019 16:32:22 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_A7C8558F-4C08-4FCB-9314-5C3618CBFBC8"

--Apple-Mail=_A7C8558F-4C08-4FCB-9314-5C3618CBFBC8
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Nov 4, 2019, at 11:16 AM, Steve Pavao <stevep@korgrd.com> wrote:
>=20
>>=20
>> On Nov 4, 2019, at 11:11 AM, Adrian Bunk <bunk@stusta.de =
<mailto:bunk@stusta.de>> wrote:
>>=20
>> On Mon, Nov 04, 2019 at 10:48:57AM -0500, Steve Pavao wrote:
>>>=20
>>>> On Nov 3, 2019, at 1:25 PM, Adrian Bunk <bunk@stusta.de =
<mailto:bunk@stusta.de>> wrote:
>>>>=20
>>>> On Sun, Nov 03, 2019 at 05:56:45PM +0000, Andrei Gherzan wrote:
>>>>> On 3 November 2019 13:18:53 GMT, Khem Raj <raj.khem@gmail.com =
<mailto:raj.khem@gmail.com>> wrote:
>>>>>> On Sun, Nov 3, 2019 at 2:46 AM Andrei Gherzan <andrei@gherzan.ro =
<mailto:andrei@gherzan.ro>>
>>>>>> wrote:
>>>>>>> I was thinking about this. The erratum seems to show that this
>>>>>> applies
>>>>>>> to all revisions of a53. So it sounds like we should add it in
>>>>>>> `tune-cortexa53.inc`.
>>>>>>>=20
>>>>>>=20
>>>>>> Up to r0b4 only so maybe not all a53 implementations are impacted
>>>>>>=20
>>>>>=20
>>>>> As far as I know that is the latest revision. Do you mean that =
newer revision might come up with this fixed?=20
>>>>=20
>>>> It is fixed in some r0p4 implementations, indicated in REVIDR[8].
>>>=20
>>> I am closer to understanding why I experience an error when building =
with the ARM errata switches.
>>>=20
>>> I believe it is related to 32-bit app support in my poky Linux =
64-bit build (I add this to support vcgencmd and vcdbg 32-bit apps.)
>>>=20
>>> When I remove the 32-bit support, the build completes OK.  As of =
now, adding the following seems to work fine to acheive this:
>>>=20
>>> TARGET_CC_ARCH_append +=3D " -mfix-cortex-a53-843419 =
-mfix-cortex-a53-835769=E2=80=9D
>>>=20
>>> Something in the following block seems to be the culprit.:
>>>=20
>>> # for vcgencmd and vcdbg 32-bit executable support in the OS image =
(comment out for -c populate_sdk)
>>> require conf/multilib.conf
>>> MULTILIBS =3D "multilib:lib32"
>>> DEFAULTTUNE_virtclass-multilib-lib32 =3D "armv7a"
>>> IMAGE_INSTALL_append +=3D " vcgencmd lib32-glibc lib32-libgcc =
lib32-libstdc++ vcdbg rpi-setup \
>>> =E2=80=9C
>>>=20
>>> I will post again when I have localized the build problem further.  =
Maybe there=E2=80=99s some 64-bit vs. 32-bit build confusion going on, =
and the armv7a default tune switch for 32-bits is colliding with the =
errata switches.
>>=20
>> The errata switches are only valid for aarch64, not for armv7a.
>> There is likely some kind of "invalid option" earlier in your build.
>=20
> To conitnue to be able to use the 32-bit app support, perhaps I must =
do this:
>=20
> DEFAULTTUNE_virtclass-multilib-lib32 =3D =E2=80=9Carmv7a =
-mno-fix-cortex-a53-843419 -mno-fix-cortex-a53-835769=E2=80=9D

This doesn=E2=80=99t work.

If I wish to keep the 32-bit app support in my build, I=E2=80=99ll need =
to devise a way to make sure those ARM errata flags are only applied to =
the aarch64 portion of the compile/link for the target, not to the =
multilib 32-bit app support portion.

Thanks to all of you for your thoughts so far.

Steve Pavao
Korg R&D


--Apple-Mail=_A7C8558F-4C08-4FCB-9314-5C3618CBFBC8
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D""><br =
class=3D""><div><blockquote type=3D"cite" class=3D""><div class=3D"">On =
Nov 4, 2019, at 11:16 AM, Steve Pavao &lt;<a =
href=3D"mailto:stevep@korgrd.com" class=3D"">stevep@korgrd.com</a>&gt; =
wrote:</div><br class=3D"Apple-interchange-newline"><div class=3D""><div =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D""><br =
class=3D"Apple-interchange-newline">On Nov 4, 2019, at 11:11 AM, Adrian =
Bunk &lt;<a href=3D"mailto:bunk@stusta.de" =
class=3D"">bunk@stusta.de</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><span class=3D"" =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;">On Mon, Nov 04, 2019 at 10:48:57AM -0500, =
Steve Pavao wrote:</span><br class=3D"" style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;"><blockquote type=3D"cite" class=3D"" =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;"><br class=3D""><blockquote type=3D"cite" =
class=3D"">On Nov 3, 2019, at 1:25 PM, Adrian Bunk &lt;<a =
href=3D"mailto:bunk@stusta.de" class=3D"">bunk@stusta.de</a>&gt; =
wrote:<br class=3D""><br class=3D"">On Sun, Nov 03, 2019 at 05:56:45PM =
+0000, Andrei Gherzan wrote:<br class=3D""><blockquote type=3D"cite" =
class=3D"">On 3 November 2019 13:18:53 GMT, Khem Raj &lt;<a =
href=3D"mailto:raj.khem@gmail.com" class=3D"">raj.khem@gmail.com</a>&gt; =
wrote:<br class=3D""><blockquote type=3D"cite" class=3D"">On Sun, Nov 3, =
2019 at 2:46 AM Andrei Gherzan &lt;<a href=3D"mailto:andrei@gherzan.ro" =
class=3D"">andrei@gherzan.ro</a>&gt;<br class=3D"">wrote:<br =
class=3D""><blockquote type=3D"cite" class=3D"">I was thinking about =
this. The erratum seems to show that this<br =
class=3D""></blockquote>applies<br class=3D""><blockquote type=3D"cite" =
class=3D"">to all revisions of a53. So it sounds like we should add it =
in<br class=3D"">`tune-cortexa53.inc`.<br class=3D""><br =
class=3D""></blockquote><br class=3D"">Up to r0b4 only so maybe not all =
a53 implementations are impacted<br class=3D""><br =
class=3D""></blockquote><br class=3D"">As far as I know that is the =
latest revision. Do you mean that newer revision might come up with this =
fixed?<span class=3D"Apple-converted-space">&nbsp;</span><br =
class=3D""></blockquote><br class=3D"">It is fixed in some r0p4 =
implementations, indicated in REVIDR[8].<br class=3D""></blockquote><br =
class=3D"">I am closer to understanding why I experience an error when =
building with the ARM errata switches.<br class=3D""><br class=3D"">I =
believe it is related to 32-bit app support in my poky Linux 64-bit =
build (I add this to support vcgencmd and vcdbg 32-bit apps.)<br =
class=3D""><br class=3D"">When I remove the 32-bit support, the build =
completes OK. &nbsp;As of now, adding the following seems to work fine =
to acheive this:<br class=3D""><br class=3D"">TARGET_CC_ARCH_append +=3D =
" -mfix-cortex-a53-843419 -mfix-cortex-a53-835769=E2=80=9D<br =
class=3D""><br class=3D"">Something in the following block seems to be =
the culprit.:<br class=3D""><br class=3D""># for vcgencmd and vcdbg =
32-bit executable support in the OS image (comment out for -c =
populate_sdk)<br class=3D"">require conf/multilib.conf<br =
class=3D"">MULTILIBS =3D "multilib:lib32"<br =
class=3D"">DEFAULTTUNE_virtclass-multilib-lib32 =3D "armv7a"<br =
class=3D"">IMAGE_INSTALL_append +=3D " vcgencmd lib32-glibc lib32-libgcc =
lib32-libstdc++ vcdbg rpi-setup \<br class=3D"">=E2=80=9C<br =
class=3D""><br class=3D"">I will post again when I have localized the =
build problem further. &nbsp;Maybe there=E2=80=99s some 64-bit vs. =
32-bit build confusion going on, and the armv7a default tune switch for =
32-bits is colliding with the errata switches.<br =
class=3D""></blockquote><br class=3D"" style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;"><span class=3D"" style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;">The =
errata switches are only valid for aarch64, not for armv7a.</span><br =
class=3D"" style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; =
font-size: 12px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;"><span class=3D"" style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;">There is likely some =
kind of "invalid option" earlier in your build.</span><br class=3D"" =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: =
none;"></div></blockquote><br class=3D""></div><div style=3D"caret-color: =
rgb(0, 0, 0); font-family: Helvetica; font-size: 12px; font-style: =
normal; font-variant-caps: normal; font-weight: normal; letter-spacing: =
normal; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D"">To conitnue to be able to use the =
32-bit app support, perhaps I must do this:</div><div =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><br =
class=3D""></div><div style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><div class=3D"">DEFAULTTUNE_virtclass-multilib-lib32 =3D=
 =E2=80=9Carmv7a -mno-fix-cortex-a53-843419 =
-mno-fix-cortex-a53-835769=E2=80=9D</div></div></div></blockquote><br =
class=3D""></div><div>This doesn=E2=80=99t work.</div><div><br =
class=3D""></div><div>If I wish to keep the 32-bit app support in my =
build, I=E2=80=99ll need to devise a way to make sure those ARM errata =
flags are only applied to the aarch64 portion of the compile/link for =
the target, not to the multilib 32-bit app support =
portion.</div><div><br class=3D""></div><div>Thanks to all of you for =
your thoughts so far.</div><div><br class=3D""></div><div>Steve =
Pavao</div><div>Korg R&amp;D</div><br class=3D""></body></html>=

--Apple-Mail=_A7C8558F-4C08-4FCB-9314-5C3618CBFBC8--
