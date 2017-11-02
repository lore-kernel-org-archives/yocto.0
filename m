Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E69FE00D01; Thu,  2 Nov 2017 04:51:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,HTML_OBFUSCATE_05_10,RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.169 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.169 listed in list.dnswl.org]
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f169.google.com (mail-io0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5605BE00D07
	for <yocto@yoctoproject.org>; Thu,  2 Nov 2017 04:50:57 -0700 (PDT)
Received: by mail-io0-f169.google.com with SMTP id h70so13291297ioi.4
	for <yocto@yoctoproject.org>; Thu, 02 Nov 2017 04:50:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=uQ8bZANWI9Kvi+aDHsuhd5fSEwjK4rM6KeSLURuPx5c=;
	b=yGlQiLlRNrLA47iJ3k7Sk69+32Up0f02AzoWoxxRkiGVP1mNwFHsdI7On79ZtXqVht
	bKulX+eS65WP8RL/XG49LDOwBtNozqiYSWvsu6hLPOwBOAPkImAYNyEQA3sjMcvdAOR5
	UEookdqayUIcwjXtCHjKyXzMzkasiQS+Y7ikyeBWJWD9hZJVCxza0idrXndzc/QFM8lL
	RvKOD6DBI9Cdc670S0FrdqYCSHcDTOGiNVKcrQrNsdzMqAg+7o33Egn7GB6yeYlYCCBi
	vSTx1ca8HsohGyy9bHo0qOUZKoZTM/Nn3ybtdz6gbsCr8HTxpYNp2B03tVzb8yk/u8Y9
	dppw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=uQ8bZANWI9Kvi+aDHsuhd5fSEwjK4rM6KeSLURuPx5c=;
	b=s/WPr1v2RP7j0RjoqKBc2LAokzBfF+29XtokEt9AWHKj9026aQ8yBoBphsZ+PxbE/7
	K60c6LtarCLEyl6uYxvgmCvQjPqkrb5eQAUbBf11sWvx19/ycDt9O7JzjJImRgM4D1wI
	HLowxnE4chXsEux67BB9LMIo74cNZMZq+7hY8EThLVHPnWoNOBY/EFBtOW/SFMgKjJD4
	psNJkdju9a/ERyeTZp9ofpCqjtBZi5Ppg9ItU72pw+bDP3Au0dXoqmXaKKgW7GGgQb+p
	+Pw2l3R9+lwRXDyXP4dmsKAzEabAT7mNKVp/4IHhPDj8EKqTQqgV+FQillfWcq4LyU30
	caVw==
X-Gm-Message-State: AJaThX40+qG9N5otedH1wrUPbhTGmA2Pi/6s8U1ZTrZMFTstiCL46Ryh
	HBRTJ/MIxf2sg5/oe4Id0cTwuhFl5KGNVFhmIor1GQ==
X-Google-Smtp-Source: ABhQp+St4SZWX6ABDXGsgfxqdDFowYHySsmnQLcRylNfGuYZKjCE2S9u3D3J10a6t2UBOVsVGWXMQWjPZ8cKTcY392o=
X-Received: by 10.107.18.67 with SMTP id a64mr4184239ioj.165.1509623457188;
	Thu, 02 Nov 2017 04:50:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.176.10 with HTTP; Thu, 2 Nov 2017 04:50:36 -0700 (PDT)
In-Reply-To: <CAOT_U5bvt5FfWMowG2YcknTy2=t0hJG8XO90OyqyypNa94BLbw@mail.gmail.com>
References: <CAOT_U5ZYFa_5Ua0swNRGyxG+hV9xNtTzGuEe5yGzYG4rDxsdNQ@mail.gmail.com>
	<CAGxhq2aHU7xgimpRhavOp6AqL4ALf9SBDk6Wti6BFPtftGC99Q@mail.gmail.com>
	<CAOT_U5ZsGM5WHnkX+eQ3KeeAFwR=mzaBgqqW-698jd9euXxoCg@mail.gmail.com>
	<CAJTo0LbY+nCmSA3o_hbaTm69okMA9z9V_V_CULY3e6rMNKV6xQ@mail.gmail.com>
	<CAOT_U5bvt5FfWMowG2YcknTy2=t0hJG8XO90OyqyypNa94BLbw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 2 Nov 2017 11:50:36 +0000
Message-ID: <CAJTo0LaPLuDMi=vQf+EvXnftzm11OqPPbEAiJmNh0XPdDtz7sQ@mail.gmail.com>
To: Alan Martinovic <alan.martinovic@senic.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Debugging a build issue in an isolated enviroment
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
X-List-Received-Date: Thu, 02 Nov 2017 11:51:20 -0000
Content-Type: multipart/alternative; boundary="001a113ee9b2e92557055cfe9979"

--001a113ee9b2e92557055cfe9979
Content-Type: text/plain; charset="UTF-8"

What do you mean by patches not being applied correctly?  temp/log.do_patch
has the output from patch so that might show that you've a patch that
applies with lots of fuzz and is applied incorrectly.

Ross

On 2 November 2017 at 11:46, Alan Martinovic <alan.martinovic@senic.com>
wrote:

> I see, so I can't use the devshell to debug why the patch hasn't been
> correctly applied.
>
> The answer you gave help for debugging actual build and configure problems.
> Debugging patching seems to be out scope for this thread.
> Will start a new one.
>
>
> On Thu, Nov 2, 2017 at 12:13 PM, Burton, Ross <ross.burton@intel.com>
> wrote:
>
>> The patching is done by a bbclass (patch.bbclass) and helper modules
>> (meta/oe/lib/patch.py), so you can't execute it like a shell task (such as
>> do_compile).
>>
>> Ross
>>
>> On 2 November 2017 at 11:05, Alan Martinovic <alan.martinovic@senic.com>
>> wrote:
>>
>>> Thanks for the suggestions
>>> Am currently implementing both of them and am trying to understand how
>>> the patching is done.
>>>
>>> In the temp directory I can see all the tasks.
>>> For some reasons the patch wasn't applied correctly and I'm debugging
>>> why.
>>>
>>> I have patches from before which are being correctly applied, one of
>>> them being "0001-sun8i-configs-Add-CONFIG_BOOTCOUNT_LIMIT-ENV-for-men.p
>>> atch".
>>> Am using that one just as a reference for this example.
>>> I want to see the steps done to apply the patch so I do:
>>>
>>>     temp$ grep -r 0001-sun8i-configs *
>>>     temp$ grep -r quilt *
>>>
>>> I am expecting to see some commands related to the patching process in
>>> one of the run scripts.
>>> For example,  "quilt" followed by some arguments or
>>> "0001-sun8i-configs-Add-CONFIG_BOOTCOUNT_LIMIT-ENV-for-men.patch" being
>>> applied
>>> by some other tool instead of quilt.
>>>
>>> I only end up with some findings in the log files (log.do_fetch,
>>> log.do_unpack which don't tell me much).
>>>
>>>
>>> Where are the steps that apply the patches located?
>>>
>>> Be Well :)
>>> Alan
>>>
>>>
>>>
>>>
>>> I've gotten to the
>>>
>>> On Wed, Nov 1, 2017 at 8:05 PM, Alex Kiernan <alex.kiernan@hivehome.com>
>>> wrote:
>>>
>>>> On 1 November 2017 at 17:38, Alan Martinovic <alan.martinovic@senic.com
>>>> > wrote:
>>>>
>>>>> I'm just upgrading to pyro and have some issues with u-boot-fw-utils.
>>>>>
>>>>> The error fails at do_compile stage which looks like this:
>>>>>
>>>>>     do_compile () {
>>>>>             oe_runmake ${UBOOT_MACHINE}
>>>>>             oe_runmake env
>>>>>     }
>>>>>
>>>>>
>>>>> The error is:
>>>>>
>>>>> Log data follows:
>>>>> | DEBUG: Executing shell function do_compile
>>>>> | NOTE: make -j 16 CROSS_COMPILE=arm-senic-linux-gnueabi-
>>>>> CC=arm-senic-linux-gnueabi-       gcc  -march=armv7ve -mfpu=neon-vfpv4
>>>>>  -mfloat-abi=hard -mcpu=cortex-a7
>>>>> --sysroot=/home/alan/senic-os-update/build/tmp-glibc/work/se
>>>>> nic_hub_beta-senic-linux-gnueabi/u-boot-fw-utils-senic/v2017
>>>>> .03+gitAUTOINC+5233f17333-r0/recipe-sysroot
>>>>>  -O2 -pipe -g -feliminate-unused-debug-types
>>>>> -fdebug-prefix-map=/home/alan/senic-os-update/build/tmp-glib
>>>>> c/work/senic_hub_beta-senic-linux-gnueabi/u-boot-fw-utils-se
>>>>> nic/v2017.03+gitAUTOINC+5233f17333-r0=/usr/src/debug/u-boot-
>>>>> fw-utils-senic/v2017.03+gitAUTOINC+5233f17333-r0
>>>>> -fdebug-prefix-map=/home/alan/senic-os-update/build/tmp-glib
>>>>> c/work/senic_hub_beta-senic-linux-gnueabi/u-boot-fw-utils-se
>>>>> nic/v2017.03+gitAUTOINC+5233f17333-r0/recipe-sysroot-native=
>>>>> -fdebug-prefix-map=/home/alan/senic-os-update/build/tmp-glib
>>>>> c/work/senic_hub_beta-senic-linux-gnueabi/u-boot-fw-utils-se
>>>>> nic/v2017.03+gitAUTOINC+5233f17333-r0/recipe-sysroot=
>>>>>  -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed V=1
>>>>> | ERROR: oe_runmake failed
>>>>> | make -f ./Makefile silentoldconfig
>>>>> | make -f ./scripts/Makefile.build obj=scripts/basic
>>>>> |   cc -Wp,-MD,scripts/basic/.fixdep.d -Wall -Wstrict-prototypes -O2
>>>>> -fomit-frame-pointer      -o scripts/basic/fixdep
>>>>> scripts/basic/fixdep.c
>>>>> | /bin/sh: 1: cc: not found
>>>>>
>>>>>
>>>>> I would assume this is a to specific error to ask help about. It seems
>>>>> that the compiler isn't being called correctly (it's called as cc,
>>>>> which isn't the full compiler name).
>>>>> Suggestions are welcome but that isn't the reason for my post.
>>>>>
>>>>>
>>>> Guessing... apply this in your recipe:
>>>>
>>>> http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/rec
>>>> ipes-bsp/u-boot/files/default-gcc.patch?h=pyro
>>>>
>>>> --
>>>> Alex Kiernan
>>>> Senior Engineering Manager
>>>>
>>>> hivehome.com <http://www.hivehome.com>
>>>>
>>>>
>>>>
>>>> Hive | London | Cambridge | Houston | Toronto
>>>> The information contained in or attached to this email is confidential
>>>> and intended only for the use of the individual(s) to which it is
>>>> addressed. It may contain information which is confidential and/or covered
>>>> by legal professional or other privilege. The views expressed in this email
>>>> are not necessarily the views of Centrica plc, and the company, its
>>>> directors, officers or employees make no representation or accept any
>>>> liability for their accuracy or completeness unless expressly stated to the
>>>> contrary.
>>>> Centrica Connected Home Limited (company no: 5782908), registered in
>>>> England and Wales with its registered office at Millstream, Maidenhead
>>>> Road, Windsor, Berkshire SL4 5GD.
>>>>
>>>
>>>
>>
>

--001a113ee9b2e92557055cfe9979
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">What do you mean by patches not being applied correctly? =
=C2=A0temp/log.do_patch has the output from patch so that might show that y=
ou&#39;ve a patch that applies with lots of fuzz and is applied incorrectly=
.<div><br></div><div>Ross</div></div><div class=3D"gmail_extra"><br><div cl=
ass=3D"gmail_quote">On 2 November 2017 at 11:46, Alan Martinovic <span dir=
=3D"ltr">&lt;<a href=3D"mailto:alan.martinovic@senic.com" target=3D"_blank"=
>alan.martinovic@senic.com</a>&gt;</span> wrote:<br><blockquote class=3D"gm=
ail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-le=
ft:1ex"><div dir=3D"ltr">I see, so I can&#39;t use the devshell to debug wh=
y the patch hasn&#39;t been correctly applied.=C2=A0=C2=A0<div><br></div><d=
iv>The answer you gave help for debugging actual build and configure proble=
ms.<br></div><div>Debugging patching seems to be out scope for this thread.=
<br>Will start a new one.</div><div><div class=3D"h5"><div><div><span style=
=3D"font-size:12.8px"><br></span></div><div class=3D"gmail_extra"><br><div =
class=3D"gmail_quote">On Thu, Nov 2, 2017 at 12:13 PM, Burton, Ross <span d=
ir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">r=
oss.burton@intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
"><div dir=3D"ltr">The patching is done by a bbclass (patch.bbclass) and he=
lper modules (meta/oe/lib/patch.py), so you can&#39;t execute it like a she=
ll task (such as do_compile).<span class=3D"m_-1619227811431477559m_-906681=
8731552652358HOEnZb"><font color=3D"#888888"><div><br></div><div>Ross</div>=
</font></span></div><div class=3D"m_-1619227811431477559m_-9066818731552652=
358HOEnZb"><div class=3D"m_-1619227811431477559m_-9066818731552652358h5"><d=
iv class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 2 November 2017 =
at 11:05, Alan Martinovic <span dir=3D"ltr">&lt;<a href=3D"mailto:alan.mart=
inovic@senic.com" target=3D"_blank">alan.martinovic@senic.com</a>&gt;</span=
> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Thanks for the =
suggestions<div>Am currently implementing both of them and am trying to und=
erstand how the patching is done.</div><div><br></div><div>In the temp dire=
ctory I can see all the tasks.=C2=A0</div><div>For some reasons the patch w=
asn&#39;t applied correctly and I&#39;m debugging why.</div><div><br></div>=
<div>I have patches from before which are being correctly applied, one of t=
hem being &quot;0001-sun8i-configs-Add-CONFIG<wbr>_BOOTCOUNT_LIMIT-ENV-for-=
men.p<wbr>atch&quot;.</div><div>Am using that one just as a reference for t=
his example.</div><div>I want to see the steps done to apply the patch so I=
 do:</div><div><br></div><div>=C2=A0 =C2=A0 temp$ grep -r 0001-sun8i-config=
s *<br></div><div>=C2=A0 =C2=A0 temp$ grep -r=C2=A0quilt *</div><div><br></=
div><div>I am expecting to see some commands related to the patching proces=
s in one of the run scripts.</div><div>For example,=C2=A0 &quot;quilt&quot;=
 followed by some arguments or &quot;0001-sun8i-configs-Add-CONFIG<wbr>_BOO=
TCOUNT_LIMIT-ENV-for-men.p<wbr>atch&quot; being applied=C2=A0</div><div>by =
some other tool instead of quilt.=C2=A0</div><div><br></div><div>I only end=
 up with some findings in the log files (log.do_fetch, log.do_unpack which =
don&#39;t tell me much).=C2=A0</div><div><br></div><div><br></div><div>Wher=
e are the steps that apply the patches located?=C2=A0<br></div><div><br></d=
iv><div>Be Well :)</div><div>Alan</div><div><br></div><div><br></div><div><=
br><div><br></div><div>I&#39;ve gotten to the=C2=A0</div></div></div><div c=
lass=3D"m_-1619227811431477559m_-9066818731552652358m_-1287795589794992332H=
OEnZb"><div class=3D"m_-1619227811431477559m_-9066818731552652358m_-1287795=
589794992332h5"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">O=
n Wed, Nov 1, 2017 at 8:05 PM, Alex Kiernan <span dir=3D"ltr">&lt;<a href=
=3D"mailto:alex.kiernan@hivehome.com" target=3D"_blank">alex.kiernan@hiveho=
me.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"=
ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote"><span>On 1 Novem=
ber 2017 at 17:38, Alan Martinovic <span dir=3D"ltr">&lt;<a href=3D"mailto:=
alan.martinovic@senic.com" target=3D"_blank">alan.martinovic@senic.com</a>&=
gt;</span> wrote:<br></span><div><div class=3D"m_-1619227811431477559m_-906=
6818731552652358m_-1287795589794992332m_-6888141748760329520h5"><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex">I&#39;m just upgrading to pyro and h=
ave some issues with u-boot-fw-utils.<br>
<br>
The error fails at do_compile stage which looks like this:<br>
<br>
=C2=A0 =C2=A0 do_compile () {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 oe_runmake ${UBOOT_MACHINE}<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 oe_runmake env<br>
=C2=A0 =C2=A0 }<br>
<br>
<br>
The error is:<br>
<br>
Log data follows:<br>
| DEBUG: Executing shell function do_compile<br>
| NOTE: make -j 16 CROSS_COMPILE=3Darm-senic-linux-<wbr>gnueabi-<br>
CC=3Darm-senic-linux-gnueabi-=C2=A0 =C2=A0 =C2=A0 =C2=A0gcc=C2=A0 -march=3D=
armv7ve -mfpu=3Dneon-vfpv4<br>
=C2=A0-mfloat-abi=3Dhard -mcpu=3Dcortex-a7<br>
--sysroot=3D/home/alan/senic-os-<wbr>update/build/tmp-glibc/work/se<wbr>nic=
_hub_beta-senic-linux-gnuea<wbr>bi/u-boot-fw-utils-senic/v2017<wbr>.03+gitA=
UTOINC+5233f17333-r0/r<wbr>ecipe-sysroot<br>
=C2=A0-O2 -pipe -g -feliminate-unused-debug-types<br>
-fdebug-prefix-map=3D/home/alan/<wbr>senic-os-update/build/tmp-glib<wbr>c/w=
ork/senic_hub_beta-senic-li<wbr>nux-gnueabi/u-boot-fw-utils-se<wbr>nic/v201=
7.03+gitAUTOINC+5233f1<wbr>7333-r0=3D/usr/src/debug/u-boot-<wbr>fw-utils-se=
nic/v2017.03+gitAUT<wbr>OINC+5233f17333-r0<br>
-fdebug-prefix-map=3D/home/alan/<wbr>senic-os-update/build/tmp-glib<wbr>c/w=
ork/senic_hub_beta-senic-li<wbr>nux-gnueabi/u-boot-fw-utils-se<wbr>nic/v201=
7.03+gitAUTOINC+5233f1<wbr>7333-r0/recipe-sysroot-native=3D<br>
-fdebug-prefix-map=3D/home/alan/<wbr>senic-os-update/build/tmp-glib<wbr>c/w=
ork/senic_hub_beta-senic-li<wbr>nux-gnueabi/u-boot-fw-utils-se<wbr>nic/v201=
7.03+gitAUTOINC+5233f1<wbr>7333-r0/recipe-sysroot=3D<br>
=C2=A0-Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed V=3D1<br>
| ERROR: oe_runmake failed<br>
| make -f ./Makefile silentoldconfig<br>
| make -f ./scripts/Makefile.build obj=3Dscripts/basic<br>
|=C2=A0 =C2=A0cc -Wp,-MD,scripts/basic/.fixdep.<wbr>d -Wall -Wstrict-protot=
ypes -O2<br>
-fomit-frame-pointer=C2=A0 =C2=A0 =C2=A0 -o scripts/basic/fixdep<br>
scripts/basic/fixdep.c<br>
| /bin/sh: 1: cc: not found<br>
<br>
<br>
I would assume this is a to specific error to ask help about. It seems<br>
that the compiler isn&#39;t being called correctly (it&#39;s called as cc,<=
br>
which isn&#39;t the full compiler name).<br>
Suggestions are welcome but that isn&#39;t the reason for my post.<br>
<br></blockquote><div><br></div></div></div><div>Guessing... apply this in =
your recipe:</div><div><br></div><div><a href=3D"http://git.yoctoproject.or=
g/cgit/cgit.cgi/poky/tree/meta/recipes-bsp/u-boot/files/default-gcc.patch?h=
=3Dpyro" target=3D"_blank">http://git.yoctoproject.org/cg<wbr>it/cgit.cgi/p=
oky/tree/meta/rec<wbr>ipes-bsp/u-boot/files/default-<wbr>gcc.patch?h=3Dpyro=
</a></div><span class=3D"m_-1619227811431477559m_-9066818731552652358m_-128=
7795589794992332m_-6888141748760329520HOEnZb"><font color=3D"#888888"><div>=
<div><div class=3D"m_-1619227811431477559m_-9066818731552652358m_-128779558=
9794992332m_-6888141748760329520m_2972955679539863485gmail_signature"><div =
dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><span style=3D"font-size:12.8=
px;font-family:arial,helvetica,sans-serif"><br></span></div><div dir=3D"ltr=
"><span style=3D"font-size:12.8px;font-family:arial,helvetica,sans-serif">-=
-=C2=A0</span></div><div dir=3D"ltr"><span style=3D"font-size:12.8px;font-f=
amily:arial,helvetica,sans-serif">Alex Kiernan</span><div><span style=3D"fo=
nt-size:12.8px;font-family:arial,helvetica,sans-serif;color:rgb(255,122,0)"=
>Senior Engineering Manager</span><br style=3D"font-size:12.8px;font-family=
:arial,helvetica,sans-serif"></div></div></div></div></div></div></div></fo=
nt></span></div></div></div><span class=3D"m_-1619227811431477559m_-9066818=
731552652358m_-1287795589794992332m_-6888141748760329520HOEnZb"><font color=
=3D"#888888">

<br>
<a href=3D"http://www.hivehome.com" target=3D"_blank">hivehome.com</a><div>=
<div><br></div><div><img src=3D"https://s3-eu-west-1.amazonaws.com/81023081=
2/HiveSig.png"></div><div><br></div><div><br></div><div><div style=3D"font-=
size:12px;background-color:rgb(255,255,255);margin:0cm 0cm 0.0001pt;font-fa=
mily:Arial,sans-serif"><font size=3D"1" color=3D"#b7b7b7">Hive | London | C=
ambridge | Houston | Toronto<u></u><u></u></font></div><div style=3D"font-s=
ize:12px;background-color:rgb(255,255,255);margin:0cm 0cm 0.0001pt;font-fam=
ily:Arial,sans-serif"><font size=3D"1" color=3D"#b7b7b7">The information co=
ntained in or attached to this email is confidential and intended only for =
the use of the individual(s) to which it is addressed. It may contain infor=
mation which is confidential and/or covered by legal professional or other =
privilege. The views expressed in this email are not necessarily the views =
of Centrica plc, and the company, its directors, officers or employees make=
 no representation or accept any liability for their accuracy or completene=
ss unless expressly stated to the contrary.=C2=A0<u></u><u></u></font></div=
><div style=3D"font-size:12px;background-color:rgb(255,255,255);margin:0cm =
0cm 0.0001pt;font-family:Arial,sans-serif"><font size=3D"1" color=3D"#b7b7b=
7">Centrica Connected Home Limited (company no: 5782908), registered in Eng=
land and Wales with its registered office at Millstream, Maidenhead Road, W=
indsor, Berkshire SL4 5GD.</font></div></div></div></font></span></blockquo=
te></div><br></div>
</div></div></blockquote></div><br></div>
</div></div></blockquote></div><br></div></div></div></div></div>
</blockquote></div><br></div>

--001a113ee9b2e92557055cfe9979--
