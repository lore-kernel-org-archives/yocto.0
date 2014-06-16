Return-Path: <k4230r6@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91870E00B4C; Mon, 16 Jun 2014 04:43:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (k4230r6[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.179 listed in list.dnswl.org]
Received: from mail-ig0-f179.google.com (mail-ig0-f179.google.com
	[209.85.213.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F6CDE00AEE
	for <yocto@yoctoproject.org>; Mon, 16 Jun 2014 04:43:10 -0700 (PDT)
Received: by mail-ig0-f179.google.com with SMTP id r2so2810041igi.12
	for <yocto@yoctoproject.org>; Mon, 16 Jun 2014 04:43:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=jccqjpMixcqF5WKDMqkMfwj/G+H/DHIGmzaGEvTgMYc=;
	b=ipnbHPF6tfWgiEs9sCbRgyD130QMa+9RZH5ykdWbsp51zTkWz9O0WPRy0scDbcHgNX
	/c/oa7nDmmC/jrQKTg1J7xhbjurvXYzFD7ZQoeNLyDgiVFNobm6Y3kJZmaOTEZwmHOjS
	kSGLNXzokGEwkIAdamVFRiOPbrD4On7U3R51CIWamY8sS8e2K/j8q+yENcR3L2AnA4eE
	iWsiqM18SRJgVsnQS+XIxHuuSrOW59J3eER1e4m/0NF0FgTHGn9SerYAQu1+ZYAQlFAL
	h8hLhii9kga+FxUOeQk6UFBv4VwHgf63KJKv5Wg+Q6rHCVZlbaaUkGeFVlsMCBJ//+qt
	j3/w==
MIME-Version: 1.0
X-Received: by 10.50.29.9 with SMTP id f9mr24922542igh.39.1402918989422; Mon,
	16 Jun 2014 04:43:09 -0700 (PDT)
Received: by 10.64.252.166 with HTTP; Mon, 16 Jun 2014 04:43:09 -0700 (PDT)
Received: by 10.64.252.166 with HTTP; Mon, 16 Jun 2014 04:43:09 -0700 (PDT)
In-Reply-To: <EA5D4AA0E56AAB499D0E3B654C889FBFBC15EF@ex-mbx1-8.cloud.local>
References: <EA5D4AA0E56AAB499D0E3B654C889FBFBC15EF@ex-mbx1-8.cloud.local>
Date: Mon, 16 Jun 2014 13:43:09 +0200
Message-ID: <CAALGJZYm4Jwdw1BH_z4kgUDoYsDY2p_Tj8CYzXSWyXn1oqzkGA@mail.gmail.com>
From: Christian Ege <k4230r6@gmail.com>
To: Joshua Collins <joshua.collins@arcontia.se>
Cc: yocto@yoctoproject.org
Subject: Re: FTDI support in yocto on CGTQMX6
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
X-List-Received-Date: Mon, 16 Jun 2014 11:43:14 -0000
Content-Type: multipart/alternative; boundary=047d7bd755d603682904fbf28884

--047d7bd755d603682904fbf28884
Content-Type: text/plain; charset=UTF-8

Am 16.06.2014 13:23 schrieb "Joshua Collins" <joshua.collins@arcontia.se>:
>
> Hi,
>
>
>
> I have successfully built the 'fsl-image-gui' image and installed it on
my cqtqmx6. I require FTDI drivers to be installed to detect a usb device
as a serial port. I am unsure how to go about adding these drivers. I have
tried modifying my local.conf file with the following line:
>
The ftdi drivers are part of the kernel, you have to enable it by adding
them in your kernel config. This can be done by bbappend.

http://www.yoctoproject.org/docs/1.6/kernel-dev/kernel-dev.html

I you need libftdi, you may have to add a recipe to support it.

>
> PACKAGECONFIG_append_pn = " libftdi"
>
>
>
> which didn't seem to do anything. I also tried:
>
>
>
> IMAGE_INSTALL_append = " libftdi"
>
>
>
> Which caused bitbake to fail with the error: "ERROR: QA Issue: libftdi:
The compile log indicates that host include and/or library paths were used."
>
>
>
> I don't have a great understanding of knowing how to add more features to
my yocto image, and would appreciate any help with enabling FTDI support.
>
>
Regards,
Christian
>
> Cheers,
>
> Josh
>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--047d7bd755d603682904fbf28884
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"><br>
Am 16.06.2014 13:23 schrieb &quot;Joshua Collins&quot; &lt;<a href=3D"mailt=
o:joshua.collins@arcontia.se">joshua.collins@arcontia.se</a>&gt;:<br>
&gt;<br>
&gt; Hi,<br>
&gt;<br>
&gt; =C2=A0<br>
&gt;<br>
&gt; I have successfully built the &#39;fsl-image-gui&#39; image and instal=
led it on my cqtqmx6. I require FTDI drivers to be installed to detect a us=
b device as a serial port. I am unsure how to go about adding these drivers=
. I have tried modifying my local.conf file with the following line:<br>

&gt;<br>
The ftdi drivers are part of the kernel, you have to enable it by adding th=
em in your kernel config. This can be done by bbappend.</p>
<p dir=3D"ltr"><a href=3D"http://www.yoctoproject.org/docs/1.6/kernel-dev/k=
ernel-dev.html">http://www.yoctoproject.org/docs/1.6/kernel-dev/kernel-dev.=
html</a></p>
<p dir=3D"ltr">I you need libftdi, you may have to add a recipe to support =
it.</p>
<p dir=3D"ltr">&gt;<br>
&gt; PACKAGECONFIG_append_pn =3D &quot; libftdi&quot;<br>
&gt;<br>
&gt; =C2=A0<br>
&gt;<br>
&gt; which didn&#39;t seem to do anything. I also tried:<br>
&gt;<br>
&gt; =C2=A0<br>
&gt;<br>
&gt; IMAGE_INSTALL_append =3D &quot; libftdi&quot;<br>
&gt;<br>
&gt; =C2=A0<br>
&gt;<br>
&gt; Which caused bitbake to fail with the error: &quot;ERROR: QA Issue: li=
bftdi: The compile log indicates that host include and/or library paths wer=
e used.&quot;<br>
&gt;<br>
&gt; =C2=A0<br>
&gt;<br>
&gt; I don&#39;t have a great understanding of knowing how to add more feat=
ures to my yocto image, and would appreciate any help with enabling FTDI su=
pport.<br>
&gt;<br>
&gt; =C2=A0<br>
Regards,<br>
Christian<br>
&gt;<br>
&gt; Cheers,<br>
&gt;<br>
&gt; Josh<br>
&gt;<br>
&gt; =C2=A0<br>
&gt;<br>
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

--047d7bd755d603682904fbf28884--
