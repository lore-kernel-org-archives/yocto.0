Return-Path: <k4230r6@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4A19E004F6; Thu,  7 May 2015 10:30:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.52 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (k4230r6[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-la0-f52.google.com (mail-la0-f52.google.com
	[209.85.215.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D3C5E00306
	for <yocto@yoctoproject.org>; Thu,  7 May 2015 10:30:11 -0700 (PDT)
Received: by layy10 with SMTP id y10so35882965lay.0
	for <yocto@yoctoproject.org>; Thu, 07 May 2015 10:30:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=IHYBOf7JUuVKu8FISgvkz1tnP/ijmF/g/4j6TUz17sY=;
	b=cx9MM28GMYcuJvYQJ54AeRNJSJxQGcEhc795j+hoP2H2rQEhSTmpu1xn7cQRWdOHfP
	o93EzhLAlktYZCKGBOAIah9TSW1Ry6cPgd4hSR74cB1JmpNG4/yXN9x+gzryGr7sTJyE
	NIx8MZHsCFr3v64naHBFdAgROElqcSX6m/zeGqNbedROUa2HPzTgrJiA4q96JsvmRII8
	ulkAEEG2kuHu9nCcQWMVGTIrysrfI6mPzmk/9Zb+jBp47nrNVxdNGRcg87YhrsXiCvWD
	RM0HkNPSkKu8RsP57AhdJ4nIG13QgrheESf79dYO8bIvBrWmFi/QQgfRHtOJFh2ek3CN
	2/tw==
MIME-Version: 1.0
X-Received: by 10.112.35.230 with SMTP id l6mr3904022lbj.5.1431019809640; Thu,
	07 May 2015 10:30:09 -0700 (PDT)
Received: by 10.25.82.65 with HTTP; Thu, 7 May 2015 10:30:09 -0700 (PDT)
Received: by 10.25.82.65 with HTTP; Thu, 7 May 2015 10:30:09 -0700 (PDT)
In-Reply-To: <CAE5gGPCz=u+XGGi0DkZLhi+NX7X21crzt0NcYDp_UFdpoN=tKg@mail.gmail.com>
References: <CAE5gGPCz=u+XGGi0DkZLhi+NX7X21crzt0NcYDp_UFdpoN=tKg@mail.gmail.com>
Date: Thu, 7 May 2015 19:30:09 +0200
Message-ID: <CAALGJZYfA9R272QGKiCC89uJtsX4P+NLVfWWfOxs=O_Ds+AAVA@mail.gmail.com>
From: Christian Ege <k4230r6@gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Newb looking for where to start on unsupported hardware?
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
X-List-Received-Date: Thu, 07 May 2015 17:30:20 -0000
Content-Type: multipart/alternative; boundary=001a11c378766b98160515814396

--001a11c378766b98160515814396
Content-Type: text/plain; charset=UTF-8

Hi,
Am 07.05.2015 7:18 nachm. schrieb "daryl kuchay" <daryl.kuchay@gmail.com>:
>
> Hello,
>
> I'm about 3 weeks in to light reading in documentation on Yocto. I found
the project when searching for Open Embedded.
>
> My challenge is that I have ancient hardware. A Geode based tablet with
serial touchscreen and other niche items that will require me to build a
custom kernel for proper support. Also worthy of mention is that syslinux
is no longer supporting the hardware. Its not too far from an olpc but its
more proprietary. Made by DT Research. WebDT366 GX1 is the model.
>
Okay, as far as I remember geode is x86 architecture. So at-least
architecture is supported.

> While documentation does provide a great deal of information on what to
do once you get to the stage of building I am just not sure where to start.
I downloaded the build appliance but it only seems to build stock images
that allow for some scripted modification.
>
You have to create a new BSP layer for your board. Here is some
documentation

http://www.yoctoproject.org/docs/current/bsp-guide/bsp-guide.html

> Without a great deal of knowledge on bitbake or what would be needed in
the form of scripts I am not sure that this is the right path to take.
>
> Whats lacking in the documentation is an if/then scenario. Like if you
need to build a custom kernel start "here", then move to "here" and so on.
>
There is also a document on kernel development.
https://www.yoctoproject.org/training/kernel-lab

I learned a much from studying existing BSP layers. My source was the
raspberry pi layer.

> While I can find old mentions of OE-Classic build recipes for Geode I
cant seem to find out weather or not these are supported by Yocto.  The
docs seem to assume a level of knowledge that I do not have on open
embedded or a work flow within. Laying down that many bsp commands with no
knowledge of how to use is daunting.
>

Start with a known board and learn how to build the image and flash it and
boot. Or use a qemu machine as target to play with.

> Can someone help a newb out with where to start if one needed to config a
kernel, add a lot of software from inputattach to evdev, acpid,
xinput-calibrator and others? And how to move to the next step? My hope is
to make a .img that can be dd'd to the target with full hardware support.
>
Here as-well the RPI is a good source of information

http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/tree/classes/sdcard_image-rpi.bbclass?h=fido

> Thank you in advance
> Daryl

Regards,
Christian
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a11c378766b98160515814396
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Hi,<br>
Am 07.05.2015 7:18 nachm. schrieb &quot;daryl kuchay&quot; &lt;<a href=3D"m=
ailto:daryl.kuchay@gmail.com">daryl.kuchay@gmail.com</a>&gt;:<br>
&gt;<br>
&gt; Hello,<br>
&gt;<br>
&gt; I&#39;m about 3 weeks in to light reading in documentation on Yocto. I=
 found the project when searching for Open Embedded.=C2=A0<br>
&gt;<br>
&gt; My challenge is that I have ancient hardware. A Geode based tablet wit=
h serial touchscreen and other niche items that will require me to build a =
custom kernel for proper support. Also worthy of mention is that syslinux i=
s no longer supporting the hardware. Its not too far from an olpc but its m=
ore proprietary. Made by DT Research. WebDT366 GX1 is the model.=C2=A0<br>
&gt;<br>
Okay, as far as I remember geode is x86 architecture. So at-least architect=
ure is supported.</p>
<p dir=3D"ltr">&gt; While documentation does provide a great deal of inform=
ation on what to do once you get to the stage of building I am just not sur=
e where to start. I downloaded the build appliance but it only seems to bui=
ld stock images that allow for some scripted modification.<br>
&gt;<br>
You have to create a new BSP layer for your board. Here is some documentati=
on</p>
<p dir=3D"ltr"><a href=3D"http://www.yoctoproject.org/docs/current/bsp-guid=
e/bsp-guide.html">http://www.yoctoproject.org/docs/current/bsp-guide/bsp-gu=
ide.html</a></p>
<p dir=3D"ltr">&gt; Without a great deal of knowledge on bitbake or what wo=
uld be needed in the form of scripts I am not sure that this is the right p=
ath to take.=C2=A0<br>
&gt;<br>
&gt; Whats lacking in the documentation is an if/then scenario. Like if you=
 need to build a custom kernel start &quot;here&quot;, then move to &quot;h=
ere&quot; and so on.=C2=A0<br>
&gt;<br>
There is also a document on kernel development.<br>
<a href=3D"https://www.yoctoproject.org/training/kernel-lab">https://www.yo=
ctoproject.org/training/kernel-lab</a></p>
<p dir=3D"ltr">I learned a much from studying existing BSP layers. My sourc=
e was the raspberry pi layer.<br></p>
<p dir=3D"ltr">&gt; While I can find old mentions of OE-Classic build recip=
es for Geode I cant seem to find out weather or not these are supported by =
Yocto.=C2=A0 The docs seem to assume a level of knowledge that I do not hav=
e on open embedded or a work flow within. Laying down that many bsp command=
s with no knowledge of how to use is daunting.=C2=A0<br>
&gt;</p>
<p dir=3D"ltr">Start with a known board and learn how to build the image an=
d flash it and boot. Or use a qemu machine as target to play with.</p>
<p dir=3D"ltr">&gt; Can someone help a newb out with where to start if one =
needed to config a kernel, add a lot of software from inputattach to evdev,=
 acpid, xinput-calibrator and others? And how to move to the next step? My =
hope is to make a .img that can be dd&#39;d to the target with full hardwar=
e support.=C2=A0<br>
&gt;<br>
Here as-well the RPI is a good source of information </p>
<p dir=3D"ltr"><a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/meta-ra=
spberrypi/tree/classes/sdcard_image-rpi.bbclass?h=3Dfido">http://git.yoctop=
roject.org/cgit/cgit.cgi/meta-raspberrypi/tree/classes/sdcard_image-rpi.bbc=
lass?h=3Dfido</a></p>
<p dir=3D"ltr">&gt; Thank you in advance<br>
&gt; Daryl</p>
<p dir=3D"ltr">Regards,<br>
Christian<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://list=
s.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
</p>

--001a11c378766b98160515814396--
