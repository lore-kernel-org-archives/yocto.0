Return-Path: <andrei@gherzan.ro>
Received: from mail-gg0-f176.google.com (mail-gg0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AAC0FE0030B
	for <yocto@yoctoproject.org>; Mon, 21 May 2012 11:47:24 -0700 (PDT)
Received: by ggnk4 with SMTP id k4so5985338ggn.35
	for <yocto@yoctoproject.org>; Mon, 21 May 2012 11:47:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-originating-ip:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type:x-gm-message-state;
	bh=h25KXSRzJyne7oD5C8yLAWzJBiR+fN+5NIwwav6n+m0=;
	b=K9Hn5+0UaSt9GNOvz0DTPEC3b4h8af4jtbvsC1rfc2Sp0sZS0sT4Bk9C898k1v3w+D
	4XavT26xtD0C14R6+PKflrOCBO33FHUzBR2vMTQYmFvFBSnNpERVED4IlIPWexR1JaYF
	877o+aubfyp+tD3Fu4384qUiTy3YkSnB5PwY5ENSQc0l7rn4VYD55ALfrtTP4g4aeXdX
	ANBcCv7I28N1RZTQPrgnTUVyfQFYH/3QhNZJQiVpKQT/InRGTVR3ghRbDHWS4WvXI/Vs
	d374VmuXnNTdG2igJC2Pw/shIAslHSuWBGeiQ9b/tuNPuhQd1iQiotPkue89Cb2798mD
	cutg==
MIME-Version: 1.0
Received: by 10.50.163.37 with SMTP id yf5mr7684973igb.40.1337626043824; Mon,
	21 May 2012 11:47:23 -0700 (PDT)
Received: by 10.64.25.18 with HTTP; Mon, 21 May 2012 11:47:23 -0700 (PDT)
X-Originating-IP: [109.166.128.220]
Received: by 10.64.25.18 with HTTP; Mon, 21 May 2012 11:47:23 -0700 (PDT)
In-Reply-To: <4FBA8091.1040509@mlbassoc.com>
References: <4FBA8091.1040509@mlbassoc.com>
Date: Mon, 21 May 2012 21:47:23 +0300
Message-ID: <CAK18fxFmxGnEvwvutufoRjhfTfrZhi8qJ5JvJey0n3RS3sABSQ@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
To: Gary Thomas <gary@mlbassoc.com>
X-Gm-Message-State: ALoCoQnZweFb/AbMCt1fc0rRSo6JI9q1BAzbOGBKVdMQl1uGGFKlakgbEl1oFkgCYazG3+onzCK4
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Trouble building RasberryPi with Yocto/Poky
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 21 May 2012 18:47:24 -0000
Content-Type: multipart/alternative; boundary=e89a8f646a8b2f39cf04c09055ba

--e89a8f646a8b2f39cf04c09055ba
Content-Type: text/plain; charset=ISO-8859-1

Give some more output please.
On May 21, 2012 8:51 PM, "Gary Thomas" <gary@mlbassoc.com> wrote:

> I tried to build a simple image using just Poky+meta-raspberrypi
> Build Configuration:
> BB_VERSION        = "1.15.2"
> TARGET_ARCH       = "arm"
> TARGET_OS         = "linux-gnueabi"
> MACHINE           = "raspberrypi"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.2+snapshot-20120521"
> TUNE_FEATURES     = "armv6 vfp arm1176jzfs"
> TARGET_FPU        = "vfp"
> meta
> meta-yocto        = "master:**f24d8df3af52e2a2911233746ad69f**8899bbdf93"
> meta-raspberrypi  = "master:**d1e802561ab5c70680fd6ee70a4779**1fe78aa977"
>
> When I ran 'bitbake core-image-sato', I got this error:
>
> | make[1]: *** No rule to make target `/local/rpi_poky/tmp/work/**
> raspberrypi-poky-linux-**gnueabi/linux-raspberrypi-3.1.**9-rpi+r1+**
> git0ec4154d64ebba48ca2446cde60**a90546311defc-r1/image/lib/**firmware/./',
> needed by `/local/rpi_poky/tmp/work/**raspberrypi-poky-linux-**
> gnueabi/linux-raspberrypi-3.1.**9-rpi+r1+**git0ec4154d64ebba48ca2446cde60*
> *a90546311defc-r1/image/lib/**firmware/ti_3410.fw'.  Stop.
>
> Any ideas how to move forward?
>
> Thanks
>
> --
> ------------------------------**------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------**------------------------------
> ______________________________**_________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
>

--e89a8f646a8b2f39cf04c09055ba
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<p>Give some more output please.</p>
<div class=3D"gmail_quote">On May 21, 2012 8:51 PM, &quot;Gary Thomas&quot;=
 &lt;<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</a>&gt; wrote:<=
br type=3D"attribution"><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
I tried to build a simple image using just Poky+meta-raspberrypi<br>
Build Configuration:<br>
BB_VERSION =A0 =A0 =A0 =A0=3D &quot;1.15.2&quot;<br>
TARGET_ARCH =A0 =A0 =A0 =3D &quot;arm&quot;<br>
TARGET_OS =A0 =A0 =A0 =A0 =3D &quot;linux-gnueabi&quot;<br>
MACHINE =A0 =A0 =A0 =A0 =A0 =3D &quot;raspberrypi&quot;<br>
DISTRO =A0 =A0 =A0 =A0 =A0 =A0=3D &quot;poky&quot;<br>
DISTRO_VERSION =A0 =A0=3D &quot;1.2+snapshot-20120521&quot;<br>
TUNE_FEATURES =A0 =A0 =3D &quot;armv6 vfp arm1176jzfs&quot;<br>
TARGET_FPU =A0 =A0 =A0 =A0=3D &quot;vfp&quot;<br>
meta<br>
meta-yocto =A0 =A0 =A0 =A0=3D &quot;master:<u></u>f24d8df3af52e2a2911233746=
ad69f<u></u>8899bbdf93&quot;<br>
meta-raspberrypi =A0=3D &quot;master:<u></u>d1e802561ab5c70680fd6ee70a4779<=
u></u>1fe78aa977&quot;<br>
<br>
When I ran &#39;bitbake core-image-sato&#39;, I got this error:<br>
<br>
| make[1]: *** No rule to make target `/local/rpi_poky/tmp/work/<u></u>rasp=
berrypi-poky-linux-<u></u>gnueabi/linux-raspberrypi-3.1.<u></u>9-rpi+r1+<u>=
</u>git0ec4154d64ebba48ca2446cde60<u></u>a90546311defc-r1/image/lib/<u></u>=
firmware/./&#39;, needed by `/local/rpi_poky/tmp/work/<u></u>raspberrypi-po=
ky-linux-<u></u>gnueabi/linux-raspberrypi-3.1.<u></u>9-rpi+r1+<u></u>git0ec=
4154d64ebba48ca2446cde60<u></u>a90546311defc-r1/image/lib/<u></u>firmware/t=
i_3410.fw&#39;. =A0Stop.<br>

<br>
Any ideas how to move forward?<br>
<br>
Thanks<br>
<br>
-- <br>
------------------------------<u></u>------------------------------<br>
Gary Thomas =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0Consulting for the<br>
MLB Associates =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A0Embedded world<br>
------------------------------<u></u>------------------------------<br>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
</blockquote></div>

--e89a8f646a8b2f39cf04c09055ba--
