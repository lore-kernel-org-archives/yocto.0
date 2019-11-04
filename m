Return-Path: <stevep@korgrd.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 801B2E00E24; Mon,  4 Nov 2019 08:17:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.219.177 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com
	[209.85.219.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE18AE0083C
	for <yocto@yoctoproject.org>; Mon,  4 Nov 2019 08:16:47 -0800 (PST)
Received: by mail-yb1-f177.google.com with SMTP id x14so2859733ybq.12
	for <yocto@yoctoproject.org>; Mon, 04 Nov 2019 08:16:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=korgrd-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:subject:from:in-reply-to:date:cc:message-id:references
	:to; bh=dhgfTCx3IVHWDXI3f1o4fNGLM8ze8w7s7TFqTY7oPNo=;
	b=pIKJFanJUVqWQURetx0oJ5DqHxrfsGPxbERaV7mq6oaSAmfWh1SsAfJjGrbsfTZNFm
	9njwCn3wkTdovZ3EpK76htRoMfVEZd3f/luEVkTU7oK+iNXBCnx2et6zimSP8QHTLACc
	92xstDtVl0tIiEnh4GY3yMZ6qwdX7Cc7zMJN8yk7JrRA1FyJcvNe7tKy/UjmJxe1hfwP
	/B2dypNsa9WTW0AdQFxgjEth/KMwhxEoUDahlW0kzT8sU/BecS4DKqASjb0oFVpAn3Ih
	bpiYuDEnd5pA05gSOHkmBnD9UPB/VA2Yh9BIoba+45que+SnxpOLKqSfiAY9gDJS5os4
	y/Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=dhgfTCx3IVHWDXI3f1o4fNGLM8ze8w7s7TFqTY7oPNo=;
	b=R4JDsgtvnPK2s9wz5bk8hVK+oIbRcW0Q63x8AykCFlaDk63/K82pzoLLAS9yNqGFZE
	z79ZWaYfWmx1uoBQHci8w3POyU5GwjtuXICjhCC0ekNbGPTfz3gg9eLBWDay3AGQN0EC
	LR3rtkyuOLA4eiz25IB5ePVtDatqnpRso7/eiq4UvZyIT81oHq0+F7cn1Fw6sejtlJfv
	tcoLSR2NToFXc3SZ6lwYCmSv69qxESkhT3vIDelStXeONibkFBiEH4QD/qwqaDmQJR7l
	G7rzxlg2QvURdUa2JV50B0qZKGaYV5nn7FtfHLdVTeFRSSekBGWG3TO4R6F2nBy6GDLi
	3LWg==
X-Gm-Message-State: APjAAAUk871zrz4WJWKFzUjIBamA0TZK4w+FDSkyaON5BTM/d6g5pOGp
	SAuzKUkoWr1pu4MlogzJX+lPA5iHLug=
X-Google-Smtp-Source: APXvYqw0UyNmcX9QOMiZRv1gUYx19LwXWdwLiZs8b5lH8T0T6SHlvpHs5pXkkrnEZNJUnYnpEZ8jpw==
X-Received: by 2002:a25:cc85:: with SMTP id
	l127mr22722978ybf.426.1572884206731; 
	Mon, 04 Nov 2019 08:16:46 -0800 (PST)
Received: from [192.168.1.2] (66-189-114-248.dhcp.oxfr.ma.charter.com.
	[66.189.114.248]) by smtp.gmail.com with ESMTPSA id
	y142sm21605723ywy.80.2019.11.04.08.16.45
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 04 Nov 2019 08:16:46 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
From: Steve Pavao <stevep@korgrd.com>
In-Reply-To: <20191104161127.GC5390@localhost>
Date: Mon, 4 Nov 2019 11:16:41 -0500
Message-Id: <3DE4E470-5A63-4B19-A587-49A771B96850@korgrd.com>
References: <7D6FCC3C-A8B1-4EE7-875F-E544DCC3B44A@korgrd.com>
	<d6a7e59a-cc6a-aa34-21a5-47c73062f9e1@gherzan.ro>
	<CAMKF1srHdfY1=Qbb7vURbMauc5VcPiKzH6_AGht86ChoJKvDZQ@mail.gmail.com>
	<097a8fe9-979d-aa3f-68ad-2c9e0bea6853@gherzan.ro>
	<CAMKF1sq39xefZFVEVafJ6yuRuinUtZ8odrPSJ4POiq49zevwPw@mail.gmail.com>
	<352DF122-AE8C-4549-A04B-27EEF9A73AE5@gherzan.ro>
	<20191103182512.GA28946@localhost>
	<9F6E6EE0-4FF9-4251-9B7B-37A734DA4824@korgrd.com>
	<20191104161127.GC5390@localhost>
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
X-List-Received-Date: Mon, 04 Nov 2019 16:17:20 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_E78A42AE-9818-4CAF-AA5C-EC33E7DB56AB"

--Apple-Mail=_E78A42AE-9818-4CAF-AA5C-EC33E7DB56AB
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Nov 4, 2019, at 11:11 AM, Adrian Bunk <bunk@stusta.de> wrote:
>=20
> On Mon, Nov 04, 2019 at 10:48:57AM -0500, Steve Pavao wrote:
>>=20
>>> On Nov 3, 2019, at 1:25 PM, Adrian Bunk <bunk@stusta.de> wrote:
>>>=20
>>> On Sun, Nov 03, 2019 at 05:56:45PM +0000, Andrei Gherzan wrote:
>>>> On 3 November 2019 13:18:53 GMT, Khem Raj <raj.khem@gmail.com> =
wrote:
>>>>> On Sun, Nov 3, 2019 at 2:46 AM Andrei Gherzan <andrei@gherzan.ro>
>>>>> wrote:
>>>>>> I was thinking about this. The erratum seems to show that this
>>>>> applies
>>>>>> to all revisions of a53. So it sounds like we should add it in
>>>>>> `tune-cortexa53.inc`.
>>>>>>=20
>>>>>=20
>>>>> Up to r0b4 only so maybe not all a53 implementations are impacted
>>>>>=20
>>>>=20
>>>> As far as I know that is the latest revision. Do you mean that =
newer revision might come up with this fixed?=20
>>>=20
>>> It is fixed in some r0p4 implementations, indicated in REVIDR[8].
>>=20
>> I am closer to understanding why I experience an error when building =
with the ARM errata switches.
>>=20
>> I believe it is related to 32-bit app support in my poky Linux 64-bit =
build (I add this to support vcgencmd and vcdbg 32-bit apps.)
>>=20
>> When I remove the 32-bit support, the build completes OK.  As of now, =
adding the following seems to work fine to acheive this:
>>=20
>> TARGET_CC_ARCH_append +=3D " -mfix-cortex-a53-843419 =
-mfix-cortex-a53-835769=E2=80=9D
>>=20
>> Something in the following block seems to be the culprit.:
>>=20
>> # for vcgencmd and vcdbg 32-bit executable support in the OS image =
(comment out for -c populate_sdk)
>> require conf/multilib.conf
>> MULTILIBS =3D "multilib:lib32"
>> DEFAULTTUNE_virtclass-multilib-lib32 =3D "armv7a"
>> IMAGE_INSTALL_append +=3D " vcgencmd lib32-glibc lib32-libgcc =
lib32-libstdc++ vcdbg rpi-setup \
>> =E2=80=9C
>>=20
>> I will post again when I have localized the build problem further.  =
Maybe there=E2=80=99s some 64-bit vs. 32-bit build confusion going on, =
and the armv7a default tune switch for 32-bits is colliding with the =
errata switches.
>=20
> The errata switches are only valid for aarch64, not for armv7a.
> There is likely some kind of "invalid option" earlier in your build.

To conitnue to be able to use the 32-bit app support, perhaps I must do =
this:

DEFAULTTUNE_virtclass-multilib-lib32 =3D =E2=80=9Carmv7a =
-mno-fix-cortex-a53-843419 -mno-fix-cortex-a53-835769=E2=80=9D

I=E2=80=99ll give it a try.

- Steve Pavao
Korg R&D



--Apple-Mail=_E78A42AE-9818-4CAF-AA5C-EC33E7DB56AB
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D""><br =
class=3D""><div><blockquote type=3D"cite" class=3D""><div class=3D"">On =
Nov 4, 2019, at 11:11 AM, Adrian Bunk &lt;<a =
href=3D"mailto:bunk@stusta.de" class=3D"">bunk@stusta.de</a>&gt; =
wrote:</div><br class=3D"Apple-interchange-newline"><div class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;" class=3D"">On Mon, Nov 04, 2019 at =
10:48:57AM -0500, Steve Pavao wrote:</span><br style=3D"caret-color: =
rgb(0, 0, 0); font-family: Helvetica; font-size: 12px; font-style: =
normal; font-variant-caps: normal; font-weight: normal; letter-spacing: =
normal; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><blockquote type=3D"cite" =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><br class=3D""><blockquote =
type=3D"cite" class=3D"">On Nov 3, 2019, at 1:25 PM, Adrian Bunk &lt;<a =
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
class=3D""></blockquote><br style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><span style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;" =
class=3D"">The errata switches are only valid for aarch64, not for =
armv7a.</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><span style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;" class=3D"">There is =
likely some kind of "invalid option" earlier in your build.</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" =
class=3D""></div></blockquote><br class=3D""></div><div>To conitnue to =
be able to use the 32-bit app support, perhaps I must do =
this:</div><div><br =
class=3D""></div><div><div>DEFAULTTUNE_virtclass-multilib-lib32 =3D =
=E2=80=9Carmv7a -mno-fix-cortex-a53-843419 =
-mno-fix-cortex-a53-835769=E2=80=9D</div><div><br =
class=3D""></div><div>I=E2=80=99ll give it a try.</div><div><br =
class=3D""></div><div>- Steve Pavao</div><div>Korg R&amp;D</div><div =
class=3D""><br class=3D""></div></div><br class=3D""></body></html>=

--Apple-Mail=_E78A42AE-9818-4CAF-AA5C-EC33E7DB56AB--
