Return-Path: <coldnew.tw@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88714E009EC; Sun, 21 Dec 2014 20:24:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (coldnew.tw[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.48 listed in list.dnswl.org]
Received: from mail-la0-f48.google.com (mail-la0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3039BE00947
	for <yocto@yoctoproject.org>; Sun, 21 Dec 2014 20:24:13 -0800 (PST)
Received: by mail-la0-f48.google.com with SMTP id gf13so3429992lab.35
	for <yocto@yoctoproject.org>; Sun, 21 Dec 2014 20:24:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=RpcTpp9oYsZ3wQ8V/UCY+sieJbE2ZQV+mMZijc3WmuI=;
	b=a87NSVY9XMBPQLzS+L9scnOAhHMGdr7Uh0DJdcQLIRQJpEO6aMihSb/4EJipUE1dLS
	EEo60BR82SMVxGIT5sBUC2rxQQEibOBa6pPvzbjtjbKn4jLK9KNYyOT6oCv9stuz5SqW
	jQAFxj17NIFbybxMHc9fvsKFc3Mz8ncc5DVDYZDaToBVSmrBeEq39UjYNENTm774rH9J
	vDbz46T9syddkUtB09oJh69rgDkTrucMRDA6krMyqfGdbUSSO+zHSjOuNXeHOtnqmvER
	joDIbWKgsFHy6bUvec9E0iQCyYsNDmv/tmnlfGmIztt6gaMcjWNCTmyKUESr/NB9nbjP
	ThLw==
MIME-Version: 1.0
X-Received: by 10.112.139.196 with SMTP id ra4mr20071888lbb.95.1419222252092; 
	Sun, 21 Dec 2014 20:24:12 -0800 (PST)
Received: by 10.25.133.3 with HTTP; Sun, 21 Dec 2014 20:24:12 -0800 (PST)
In-Reply-To: <54975065.1070704@gmail.com>
References: <8F90F944E50427428C60E12A34A309D239F6DB0EE8@carmd-exchmb01.sierrawireless.local>
	<CAAQYJAsgCWS+yoL7CusmKpPeVH5paAevOY8Jbo0JzzNgapFGJA@mail.gmail.com>
	<54975065.1070704@gmail.com>
Date: Mon, 22 Dec 2014 12:24:12 +0800
Message-ID: <CAF6djU_uxz8j=xW1HD+sFacvY8QaO9gFDqfOnMEoo6Wj_AcPRg@mail.gmail.com>
From: =?UTF-8?B?5b2l55G+?= <coldnew.tw@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Microcontroller Cross Compiler
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
X-List-Received-Date: Mon, 22 Dec 2014 04:24:18 -0000
Content-Type: multipart/alternative; boundary=001a11c33fcc318285050ac66e32

--001a11c33fcc318285050ac66e32
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Though it's not the same case, but I use yocto to build the android-system
with the prebuilt bionic toolchain shipped with android manifest.

So generally speaking, you can use prebuilt toolchain with customize
makefile to make building MCU's binary in yocto.

But if you want to use yocto to build the embedded toolchain, there maybe
lots to work.

the recipes I build android-system is here:

https://github.com/aosp-hybris/meta-aosp-hybris/blob/master/recipes-android=
/android-system/android-system.inc

2014-12-22 6:57 GMT+08:00 Jo=C3=A3o Henrique Ferreira de Freitas <
joaohf@gmail.com>:

>
> Hi,
>
> I have the same requirement.
>
> I will try it. But in my case I need to use this
> https://launchpad.net/gcc-arm-embedded.
>
> There are some way to yocto creates the gcc-arm-embedded SDK? Instead of
> use the gcc-arm-embedded packages. Is it feasibly?
>
> Thanks.
>
>
>
> On 19/12/2014 11:21, Andrea Adami wrote:
>
>> On Thu, Dec 18, 2014 at 8:09 PM, Darcy Watkins
>> <dwatkins@sierrawireless.com> wrote:
>>
>>> Hello,
>>>
>>> In my target system I have a microcontroller (MCU) that handles some
>>> I/O, power supplies and system boot up to the point of taking the main =
CPU
>>> out of reset.  At present, we build the MCU firmware from source and th=
en
>>> the binary file is packaged to be used as payload with an MCU firmware
>>> update utility.
>>>
>>> Now my main question...  does anyone have suggestions (or is there a
>>> 'yocto' way) to build such a cross compiler for the MCU so that it can =
be
>>> invoked to build MCU firmware from source as part of the bitbake build =
for
>>> the Linux target's image.  The idea would be to build MCU firmware imag=
e
>>> from source using the MCU cross compiler, but obviously to build driver=
s
>>> and utilities that run on the main CPU using the normal cross-compiler
>>> toolchains built under yocto.  Then I could package the payload firmwar=
e
>>> image along with utilities all as part of the same RPM package.
>>>
>>> The MCU cross compiler we use was originally generated using
>>> crosstool-ng, and is essentially a gcc cross compiler for 'bare metal' =
MCU
>>> target.
>>>
>>> Does anyone who has gone down this road have suggestions?
>>>
>>> Thanks in advance!
>>>
>>>
>>> Regards,
>>>
>>> Darcy
>>>
>>> Darcy Watkins ::  Staff Engineer, Firmware
>>>
>>> SIERRA WIRELESS
>>> Direct  +1 604 233 7989   ::  Fax  +1 604 231 1109  ::  Main  +1 604
>>> 231 1100
>>> 13811 Wireless Way  :: Richmond, BC Canada V6V 3A4
>>> [P2]
>>> dwatkins@sierrawireless.com :: www.sierrawireless.com ::
>>> www.inmotiontechnology.com
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>> Hi Darcy,
>>
>> if I understand correctly you use the standard toolchain for the
>> target image and a custom $CC to build one custom binary.
>>
>> We use klcc for a couple of klibc-static-recipes thus we created a
>> .bbclass to be inherited.
>> See http://cgit.openembedded.org/meta-openembedded/tree/meta-
>> initramfs/classes/klibc.bbclass
>>
>> Regards
>>
>> Andrea
>>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a11c33fcc318285050ac66e32
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><br></div>Though it&#39;s not the same case, but=
 I use yocto to build the android-system with the prebuilt bionic toolchain=
 shipped with android manifest.<br><br></div><div>So generally speaking, yo=
u can use prebuilt toolchain with customize makefile to make building MCU&#=
39;s binary in yocto.<br><br></div><div>But if you want to use yocto to bui=
ld the embedded toolchain, there maybe lots to work.<br></div><div><br>the =
recipes I build android-system is here:<br><div><br><a href=3D"https://gith=
ub.com/aosp-hybris/meta-aosp-hybris/blob/master/recipes-android/android-sys=
tem/android-system.inc">https://github.com/aosp-hybris/meta-aosp-hybris/blo=
b/master/recipes-android/android-system/android-system.inc</a><br></div></d=
iv></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">2014-12-=
22 6:57 GMT+08:00 Jo=C3=A3o Henrique Ferreira de Freitas <span dir=3D"ltr">=
&lt;<a href=3D"mailto:joaohf@gmail.com" target=3D"_blank">joaohf@gmail.com<=
/a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><br>
Hi,<br>
<br>
I have the same requirement.<br>
<br>
I will try it. But in my case I need to use this <a href=3D"https://launchp=
ad.net/gcc-arm-embedded" target=3D"_blank">https://launchpad.net/gcc-arm-<u=
></u>embedded</a>.<br>
<br>
There are some way to yocto creates the gcc-arm-embedded SDK? Instead of us=
e the gcc-arm-embedded packages. Is it feasibly?<br>
<br>
Thanks.<div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
<br>
On 19/12/2014 11:21, Andrea Adami wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
On Thu, Dec 18, 2014 at 8:09 PM, Darcy Watkins<br>
&lt;<a href=3D"mailto:dwatkins@sierrawireless.com" target=3D"_blank">dwatki=
ns@sierrawireless.com</a>&gt; wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Hello,<br>
<br>
In my target system I have a microcontroller (MCU) that handles some I/O, p=
ower supplies and system boot up to the point of taking the main CPU out of=
 reset.=C2=A0 At present, we build the MCU firmware from source and then th=
e binary file is packaged to be used as payload with an MCU firmware update=
 utility.<br>
<br>
Now my main question...=C2=A0 does anyone have suggestions (or is there a &=
#39;yocto&#39; way) to build such a cross compiler for the MCU so that it c=
an be invoked to build MCU firmware from source as part of the bitbake buil=
d for the Linux target&#39;s image.=C2=A0 The idea would be to build MCU fi=
rmware image from source using the MCU cross compiler, but obviously to bui=
ld drivers and utilities that run on the main CPU using the normal cross-co=
mpiler toolchains built under yocto.=C2=A0 Then I could package the payload=
 firmware image along with utilities all as part of the same RPM package.<b=
r>
<br>
The MCU cross compiler we use was originally generated using crosstool-ng, =
and is essentially a gcc cross compiler for &#39;bare metal&#39; MCU target=
.<br>
<br>
Does anyone who has gone down this road have suggestions?<br>
<br>
Thanks in advance!<br>
<br>
<br>
Regards,<br>
<br>
Darcy<br>
<br>
Darcy Watkins ::=C2=A0 Staff Engineer, Firmware<br>
<br>
SIERRA WIRELESS<br>
Direct=C2=A0 <a href=3D"tel:%2B1%20604%20233%207989" value=3D"+16042337989"=
 target=3D"_blank">+1 604 233 7989</a>=C2=A0 =C2=A0::=C2=A0 Fax=C2=A0 <a hr=
ef=3D"tel:%2B1%20604%20231%201109" value=3D"+16042311109" target=3D"_blank"=
>+1 604 231 1109</a>=C2=A0 ::=C2=A0 Main=C2=A0 <a href=3D"tel:%2B1%20604%20=
231%201100" value=3D"+16042311100" target=3D"_blank">+1 604 231 1100</a><br=
>
13811 Wireless Way=C2=A0 :: Richmond, BC Canada V6V 3A4<br>
[P2]<br>
<a href=3D"mailto:dwatkins@sierrawireless.com" target=3D"_blank">dwatkins@s=
ierrawireless.com</a> :: <a href=3D"http://www.sierrawireless.com" target=
=3D"_blank">www.sierrawireless.com</a> :: <a href=3D"http://www.inmotiontec=
hnology.com" target=3D"_blank">www.inmotiontechnology.com</a><br>
<br>
--<br>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
</blockquote>
Hi Darcy,<br>
<br>
if I understand correctly you use the standard toolchain for the<br>
target image and a custom $CC to build one custom binary.<br>
<br>
We use klcc for a couple of klibc-static-recipes thus we created a<br>
.bbclass to be inherited.<br>
See <a href=3D"http://cgit.openembedded.org/meta-openembedded/tree/meta-ini=
tramfs/classes/klibc.bbclass" target=3D"_blank">http://cgit.openembedded.or=
g/<u></u>meta-openembedded/tree/meta-<u></u>initramfs/classes/klibc.<u></u>=
bbclass</a><br>
<br>
Regards<br>
<br>
Andrea<br>
</blockquote>
<br>
-- <br>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
</div></div></blockquote></div><br></div>

--001a11c33fcc318285050ac66e32--
