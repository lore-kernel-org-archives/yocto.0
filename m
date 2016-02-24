Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 64169E00B3A; Wed, 24 Feb 2016 13:44:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f47.google.com (mail-qg0-f47.google.com
	[209.85.192.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 036CEE00A92
	for <yocto@yoctoproject.org>; Wed, 24 Feb 2016 13:44:49 -0800 (PST)
Received: by mail-qg0-f47.google.com with SMTP id b35so25594696qge.0
	for <yocto@yoctoproject.org>; Wed, 24 Feb 2016 13:44:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=+gDCi6Ch7XIuc2ZT9bOomRgUJX4znLXf4ESW5UxcB00=;
	b=z3fmxYsBsHyTJtWFrG6YbsCrRvmb3asuyvEzeO1ul+Gn3kvnjtTL3U7TD9PNbVJmZo
	eg5ag5nWDFyQLsMw3oIEyCTLMYt7cIe8/1LVpoPqU7nlpy//M8LOjipjfKNVARce4OBX
	rZd16fsN1QMPAClkWHFDAWVJ8rp3r7y+UVH5XSuCQndjEJGwWeJ8GQwax7pupCGvdHro
	/+DI8WlTFrETHMdp012sfnqEDkiCw8HY+jJU1LQlLETPFWt1bewAy0ArtwKDNJRwzj7P
	a+BaYTFFk7ErGCIHOkcZ4tEGx5q/93mB2Z9T02hJt6D/eg9BE98isetx85oLKM4IbJma
	J85Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:content-type;
	bh=+gDCi6Ch7XIuc2ZT9bOomRgUJX4znLXf4ESW5UxcB00=;
	b=mzlXtNugQAsvFxgqIzJp4dTdkbuIGn14hBkFYUCEezXjjZ29zOJ1UQkKbH+45HGABH
	VHNdZPgw9vL6d0usEIRzwQmvaiRuDkO9j8rDfyskzbydl1qQyL1ERx4GFOF8F0tMPO7m
	txmOFqPUqk5uy38K690cClRDfSjZpkP2DgaQifK/MaJBM4UdeHnKTFyG//0m0W5zalge
	raiJJjkWuZZHLSH6X1AOnPPvr8rIEcQA3Jp50ZF/DL/Xk6gJgarB2Qu5X0UKNONP3dmu
	k5Ppn1ZOPihXGOg5N9fYqKDVlu5X4e/l+xlLVVr9z+154PZBZEe5QPzBl9vHzWL0OLph
	6+UA==
X-Gm-Message-State: AG10YOTWLnttYXdOIoNVG6nNgbQWxNjaNPWnoXscGwZ7ExwVR9K9ZPUKMQguObhH+erPuNr9bl3+AjxDgrpXFA==
MIME-Version: 1.0
X-Received: by 10.140.104.234 with SMTP id a97mr4227145qgf.57.1456350288918;
	Wed, 24 Feb 2016 13:44:48 -0800 (PST)
Received: by 10.55.130.196 with HTTP; Wed, 24 Feb 2016 13:44:48 -0800 (PST)
Received: by 10.55.130.196 with HTTP; Wed, 24 Feb 2016 13:44:48 -0800 (PST)
In-Reply-To: <20160224202824.GA5109@ad.chargestorm.se>
References: <1454173548-5806-1-git-send-email-raj.khem@gmail.com>
	<20160223210251.GC10598@ad.chargestorm.se>
	<CALbNGRSLRGvmdTNg6hF8YwGXRPza5Xn8sLLjrcgOrT+B1--+yA@mail.gmail.com>
	<20160224202824.GA5109@ad.chargestorm.se>
Date: Wed, 24 Feb 2016 16:44:48 -0500
Message-ID: <CAMKF1soW-j3CztWY2gYy=hCGz0O9pV6iLqveAQTbvREvOj=0DQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] linux-raspberrypi: Adjust for libexecdir changes
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
X-List-Received-Date: Wed, 24 Feb 2016 21:44:51 -0000
Content-Type: multipart/alternative; boundary=001a11352ee2a3c2f2052c8af999

--001a11352ee2a3c2f2052c8af999
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Feb 24, 2016 1:30 PM, "Anders Darander" <anders@chargestorm.se> wrote:
>
> * Andreas M=C3=BCller <schnitzeltony@googlemail.com> [160223 22:38]:
> > > * Khem Raj <raj.khem@gmail.com> [160130 18:07]:
> > >
> > >> diff --git a/recipes-kernel/linux/linux-raspberrypi.inc
b/recipes-kernel/linux/linux-raspberrypi.inc
> > >> index 70e8bfe..0798788 100644
> > >> --- a/recipes-kernel/linux/linux-raspberrypi.inc
> > >> +++ b/recipes-kernel/linux/linux-raspberrypi.inc
> > >> @@ -60,7 +60,7 @@ do_rpiboot_mkimage() {
> > >>      if test "x${KERNEL_IMAGETYPE}" !=3D "xuImage" ; then
> > >>          if test -n "${KERNEL_DEVICETREE}"; then
> > >>              # Add RPi bootloader trailer to kernel image to enable
DeviceTree support
> > >> -            ${STAGING_DIR_NATIVE}/usr/lib/rpi-mkimage/mkknlimg
--dtok ${KERNEL_OUTPUT} ${KERNEL_OUTPUT}
> > >> +            ${STAGING_DIR_NATIVE}${libexecdir}/mkknlimg --dtok
${KERNEL_OUTPUT} ${KERNEL_OUTPUT}
> > >>          fi
> > >>      fi
> > >>  }
> > This patch is mandatory but there was a serial with additional fixes
> > send by Maciej Borzecki on Feb 2nd. I think this is worth taken into
> > account.
> >
>
> Yes, that's right.
>
> If the rest of the patches in that series is non-controversial, could we
> have them applied? Otherwise, could we have Khem's patch applied, and
> the other series rebased upon that?
>

This will also make layer incompatible with jethro and older releases. So
before applying this patch jethro has to branch out

> We've had the master branch non-building for quite a while now...
>
> I'm just keen to get either of those patches applied to
> meta-raspberrypi. I'd like to avoid having to use a local fork as much
> as possible...
>
> Cheers,
> Anders
>
> --
> Anders Darander, Senior System Architect
> ChargeStorm AB / eStorm AB
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--001a11352ee2a3c2f2052c8af999
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"><br>
On Feb 24, 2016 1:30 PM, &quot;Anders Darander&quot; &lt;<a href=3D"mailto:=
anders@chargestorm.se">anders@chargestorm.se</a>&gt; wrote:<br>
&gt;<br>
&gt; * Andreas M=C3=BCller &lt;<a href=3D"mailto:schnitzeltony@googlemail.c=
om">schnitzeltony@googlemail.com</a>&gt; [160223 22:38]:<br>
&gt; &gt; &gt; * Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khe=
m@gmail.com</a>&gt; [160130 18:07]:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;&gt; diff --git a/recipes-kernel/linux/linux-raspberrypi.inc =
b/recipes-kernel/linux/linux-raspberrypi.inc<br>
&gt; &gt; &gt;&gt; index 70e8bfe..0798788 100644<br>
&gt; &gt; &gt;&gt; --- a/recipes-kernel/linux/linux-raspberrypi.inc<br>
&gt; &gt; &gt;&gt; +++ b/recipes-kernel/linux/linux-raspberrypi.inc<br>
&gt; &gt; &gt;&gt; @@ -60,7 +60,7 @@ do_rpiboot_mkimage() {<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 if test &quot;x${KERNEL_IMAGETYPE}&q=
uot; !=3D &quot;xuImage&quot; ; then<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if test -n &quot;${KER=
NEL_DEVICETREE}&quot;; then<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Add RP=
i bootloader trailer to kernel image to enable DeviceTree support<br>
&gt; &gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${STAGING_DIR=
_NATIVE}/usr/lib/rpi-mkimage/mkknlimg --dtok ${KERNEL_OUTPUT} ${KERNEL_OUTP=
UT}<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${STAGING_DIR=
_NATIVE}${libexecdir}/mkknlimg --dtok ${KERNEL_OUTPUT} ${KERNEL_OUTPUT}<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 fi<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 fi<br>
&gt; &gt; &gt;&gt;=C2=A0 }<br>
&gt; &gt; This patch is mandatory but there was a serial with additional fi=
xes<br>
&gt; &gt; send by Maciej Borzecki on Feb 2nd. I think this is worth taken i=
nto<br>
&gt; &gt; account.<br>
&gt; &gt;<br>
&gt;<br>
&gt; Yes, that&#39;s right.<br>
&gt;<br>
&gt; If the rest of the patches in that series is non-controversial, could =
we<br>
&gt; have them applied? Otherwise, could we have Khem&#39;s patch applied, =
and<br>
&gt; the other series rebased upon that?<br>
&gt;</p>
<p dir=3D"ltr">This will also make layer incompatible with jethro and older=
 releases. So before applying this patch jethro has to branch out</p>
<p dir=3D"ltr">&gt; We&#39;ve had the master branch non-building for quite =
a while now...<br>
&gt;<br>
&gt; I&#39;m just keen to get either of those patches applied to<br>
&gt; meta-raspberrypi. I&#39;d like to avoid having to use a local fork as =
much<br>
&gt; as possible...<br>
&gt;<br>
&gt; Cheers,<br>
&gt; Anders<br>
&gt;<br>
&gt; --<br>
&gt; Anders Darander, Senior System Architect<br>
&gt; ChargeStorm AB / eStorm AB<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://list=
s.yoctoproject.org/listinfo/yocto</a><br>
</p>

--001a11352ee2a3c2f2052c8af999--
