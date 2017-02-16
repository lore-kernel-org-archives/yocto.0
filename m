Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4859E00A0C; Wed, 15 Feb 2017 23:37:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,HTML_OBFUSCATE_05_10,RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.171 listed in dnsbl.sorbs.net]
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.171 listed in list.dnswl.org]
Received: from mail-qk0-f171.google.com (mail-qk0-f171.google.com
	[209.85.220.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69A32E009CF
	for <yocto@yoctoproject.org>; Wed, 15 Feb 2017 23:37:45 -0800 (PST)
Received: by mail-qk0-f171.google.com with SMTP id p22so8309199qka.0
	for <yocto@yoctoproject.org>; Wed, 15 Feb 2017 23:37:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=hUMyZh16EZns24q/CFSToVvZgJ52TXCyx56CoHM7IRQ=;
	b=PJ+ebqT1zgymBOqA6fxbHMSjjI7GE7J2UUiaHVJPi8fW/S8D+pmiwcmeIHDLCKZ6L7
	D3CNb2EKHcNRTxy6LdHhRBfCpDwBftfADg8UIxypiMXj7RAorg3i1H/uUtBWrrzvaHr2
	d8Ph9qTUq2tyo6utgMFcshOuzgrlBUPnh+EMn2vTnDDtu+1YauAQxWF1ekfy6fMc1hxY
	rrghPAg1g/5tm92+X3nt6wgnab6C/IS95n2JgvDKrf4ZGS6B+8Blq71Wj2VmC6XlmUEF
	Xnju+lE2fYnMtoNKlZF17Jv3DBz0LpN/KXjKHipCjRS6jCTpzBq0vbdjjCcg+YuqpNDk
	qL0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=hUMyZh16EZns24q/CFSToVvZgJ52TXCyx56CoHM7IRQ=;
	b=RFdZ6k6gVAYgNPm4S3kVGJGNdgFJW/ULTOZC29sX30bcjauHRbiJxPz6HQ2lrYznlp
	MYQ2bE2U+RZe31Ac+B5m7YQcCchNYx1HtEb10+BaruSmgZ3X70n3uxSS78g+POMl+W0N
	BvVqqRWLeyQ1WkbF1bL0uaJCHQdjkEzuVR0T+v1KogXSfJoEprQSDiwdYm9GR4kR1zii
	Ywd1WbIdVYU2GYIJdB4Dn9LbtKbK24Tlqn1FC95jSlNTzvXYa4t2Vs8Hc8fXxhJRypgA
	0S2KB6IwNMKVcjROipS1vSVowzTp5lL0MF83GlFt2AYWVk0zFlQjVRm1kd0K+sq/nI3c
	mNGw==
X-Gm-Message-State: AMke39lgTXuawMDBsNnrs5ujFyjkbQdHYFnDyCHPhfIokiAnrstJsOneWNH2ga5YmEBSm1bv83FKGyyiStvR1ERm
X-Received: by 10.233.221.6 with SMTP id r6mr848341qkf.80.1487230665364; Wed,
	15 Feb 2017 23:37:45 -0800 (PST)
MIME-Version: 1.0
Received: by 10.237.34.86 with HTTP; Wed, 15 Feb 2017 23:37:15 -0800 (PST)
In-Reply-To: <196f4d87-086c-3ff0-2cd6-4595d87de9b8@mlbassoc.com>
References: <1486913148-23185-1-git-send-email-mickey.happygolucky@gmail.com>
	<20170216014544.GD31588@carbonA>
	<196f4d87-086c-3ff0-2cd6-4595d87de9b8@mlbassoc.com>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Thu, 16 Feb 2017 09:37:15 +0200
Message-ID: <CAHiDW_G3e69veAX4ZUxSG6QMCOLJWB_cH6upd0Muwbn7EQqUTg@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] rpi-base.inc: Add xf86-input-evdev to XSERVER
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
X-List-Received-Date: Thu, 16 Feb 2017 07:37:49 -0000
Content-Type: multipart/alternative; boundary=94eb2c0454e2822d1a0548a0df54

--94eb2c0454e2822d1a0548a0df54
Content-Type: text/plain; charset=UTF-8

On 16 February 2017 at 04:14, Gary Thomas <gary@mlbassoc.com> wrote:

> On 2017-02-16 02:45, Andrei Gherzan wrote:
>
>> On Mon, Feb 13, 2017 at 12:25:48AM +0900, Yusuke Mitsuki wrote:
>>
>>> In order to fix problem that mouse does not work.
>>>
>>> This is removed c40558173ffd96c499d101155f6c4c2be85d9f0f.
>>> However mouse does not worked from this.
>>> ---
>>>  conf/machine/include/rpi-base.inc | 1 +
>>>  1 file changed, 1 insertion(+)
>>>
>>> diff --git a/conf/machine/include/rpi-base.inc
>>> b/conf/machine/include/rpi-base.inc
>>> index e069e70..051c717 100644
>>> --- a/conf/machine/include/rpi-base.inc
>>> +++ b/conf/machine/include/rpi-base.inc
>>> @@ -11,6 +11,7 @@ XSERVER = " \
>>>      xserver-xorg \
>>>      ${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics",
>>> "xserver-xorg-extension-glx", "", d)} \
>>>      ${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics",
>>> "xf86-video-modesetting", "xf86-video-fbdev", d)} \
>>> +    xf86-input-evdev \
>>>      "
>>>
>>>  KERNEL_DEVICETREE ?= " \
>>> --
>>> 2.7.4
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>
>> CC-ing schnitzeltony@googlemail.com as he might have an opinion about
>> this. I personally don't really hold on any of the options.
>>
>
> I think it's the right thing to do, in fact, I was preparing a
> similar patch myself.  The change that removed this argued that
> it was not the responsibility of the BSP layer, but if you look
> around at other BSP layers, almost all of them do include this
> driver as part of their X server setup.  It also lets X work
> again on the RaspberryPi "out of the box" with the simplest
> configuration - HDMI display + USB keyboard & mouse.
>
> +1


Out of interest: Why is xf86-input-libinput not appropriate for these
setups? I honestly did not know of a use case where -evdev would work but
-libinput would not...

Jussi

--94eb2c0454e2822d1a0548a0df54
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On 1=
6 February 2017 at 04:14, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"mail=
to:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span> wr=
ote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"=
h5">On 2017-02-16 02:45, Andrei Gherzan wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
On Mon, Feb 13, 2017 at 12:25:48AM +0900, Yusuke Mitsuki wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
In order to fix problem that mouse does not work.<br>
<br>
This is removed c40558173ffd96c499d101155f6c4c<wbr>2be85d9f0f.<br>
However mouse does not worked from this.<br>
---<br>
=C2=A0conf/machine/include/rpi-<wbr>base.inc | 1 +<br>
=C2=A01 file changed, 1 insertion(+)<br>
<br>
diff --git a/conf/machine/include/rpi-bas<wbr>e.inc b/conf/machine/include/=
rpi-bas<wbr>e.inc<br>
index e069e70..051c717 100644<br>
--- a/conf/machine/include/rpi-bas<wbr>e.inc<br>
+++ b/conf/machine/include/rpi-bas<wbr>e.inc<br>
@@ -11,6 +11,7 @@ XSERVER =3D &quot; \<br>
=C2=A0 =C2=A0 =C2=A0xserver-xorg \<br>
=C2=A0 =C2=A0 =C2=A0${@bb.utils.contains(&quot;<wbr>MACHINE_FEATURES&quot;,=
 &quot;vc4graphics&quot;, &quot;xserver-xorg-extension-glx&quot;, &quot;&qu=
ot;, d)} \<br>
=C2=A0 =C2=A0 =C2=A0${@bb.utils.contains(&quot;<wbr>MACHINE_FEATURES&quot;,=
 &quot;vc4graphics&quot;, &quot;xf86-video-modesetting&quot;, &quot;xf86-vi=
deo-fbdev&quot;, d)} \<br>
+=C2=A0 =C2=A0 xf86-input-evdev \<br>
=C2=A0 =C2=A0 =C2=A0&quot;<br>
<br>
=C2=A0KERNEL_DEVICETREE ?=3D &quot; \<br>
--<br>
2.7.4<br>
<br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
</blockquote>
<br>
CC-ing <a href=3D"mailto:schnitzeltony@googlemail.com" target=3D"_blank">sc=
hnitzeltony@googlemail.com</a> as he might have an opinion about<br>
this. I personally don&#39;t really hold on any of the options.<br>
</blockquote>
<br></div></div>
I think it&#39;s the right thing to do, in fact, I was preparing a<br>
similar patch myself.=C2=A0 The change that removed this argued that<br>
it was not the responsibility of the BSP layer, but if you look<br>
around at other BSP layers, almost all of them do include this<br>
driver as part of their X server setup.=C2=A0 It also lets X work<br>
again on the RaspberryPi &quot;out of the box&quot; with the simplest<br>
configuration - HDMI display + USB keyboard &amp; mouse.<br>
<br>
+1</blockquote><div><br></div><div>Out of interest: Why is xf86-input-libin=
put not appropriate for these setups? I honestly did not know of a use case=
 where -evdev would work but -libinput would not...</div><div><br></div><di=
v>Jussi</div><div><br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=3D"HO=
EnZb"></div></blockquote></div></div></div>

--94eb2c0454e2822d1a0548a0df54--
