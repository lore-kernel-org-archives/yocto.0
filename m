Return-Path: <usmanhaider89@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B74DAE00A3B; Thu,  9 Feb 2017 08:44:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (usmanhaider89[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.182 listed in dnsbl.sorbs.net]
Received: from mail-ot0-f182.google.com (mail-ot0-f182.google.com
	[74.125.82.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C56E9E0094C
	for <yocto@yoctoproject.org>; Thu,  9 Feb 2017 08:44:57 -0800 (PST)
Received: by mail-ot0-f182.google.com with SMTP id 73so7391740otj.0
	for <yocto@yoctoproject.org>; Thu, 09 Feb 2017 08:44:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=8muRQAAOmbnGZtMcqCA1jc5CwumX1a8ZHqe935G8Cvw=;
	b=Tvm0TgqSXuaAym8MWhxBTpuYK2xv0FhiKZPr6RYjCtRbvLaCNy+uuNRdRrJn7yF0OI
	h3HKtnCz15RfbWTzmhvw2fNy6sdUL3q9WHLVJjTlQgWLYMiVDbB0aMPvdEylV8+j3RFZ
	R6WdeJBkj7bVFPpgN4/8A95VX5dDFPKhnQgjTExpnnLZqJx+N4Tr0GYt9plwIRg9TByZ
	h84daMd9z3rQ51TvIKmzDhz0Ugq0cPb7Hi23zWWvhsVyuv4EdHJosZ+KitXofQ6LY3pl
	PBidBWhs5jtZbTIsV3ePHzEPnYREBH/0NxrZBBveSn/Y0EdspgQrjCHRn+rV5wGasK+O
	aenw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=8muRQAAOmbnGZtMcqCA1jc5CwumX1a8ZHqe935G8Cvw=;
	b=aSYHlMZnN872wwSJwrPvSRh6TjKA4jYMAnT9jJkpY7/2AEmFbIYTMVdRM313fiarST
	Vv3y+g0ATMQ3VDgb8CYQ1ndISDNIFlIfk2JWVJxs7YP52+RXRajCkkQMqdhzoZVIbe5H
	i7ozjMIeLvFbihixU5DXHQwSglPmcs+H+Hs9gCEgrFdqX7KC9SQ07zTer9wtfdB81KHO
	cRJQPtMSgTk08XZmvCuzBkvTVvdA37Fm47BtpCXFAcKy6tRzcANx5IzGi6hTupi6KxUH
	h+PsAZ6jSm5IDH0XeH/yhONtXaS9NBwVTR8C5npYimUJIApthuAC2ADYdn3y6A9vGHkt
	KMtg==
X-Gm-Message-State: AMke39mgfK0wsljm2Seg0h9+m2r0ZUnw5b0vDUjU+Gc+nc7R8H7w1Fv1L4O0xBlIq+gG+9RhZs0NpG4Ko3/jQw==
X-Received: by 10.157.39.14 with SMTP id r14mr2021578ota.45.1486658696736;
	Thu, 09 Feb 2017 08:44:56 -0800 (PST)
MIME-Version: 1.0
Received: by 10.182.7.100 with HTTP; Thu, 9 Feb 2017 08:44:56 -0800 (PST)
In-Reply-To: <a8fd94f0-0fa5-95bf-67b8-637e8c6413ca@mlbassoc.com>
References: <CANxWOTYfkUDguyFogHHA2HH77McT06-4+z96S7pJupfRKHhm+g@mail.gmail.com>
	<a1f5e2a1-62cc-9141-0f4e-9aeec971453e@gmail.com>
	<a8fd94f0-0fa5-95bf-67b8-637e8c6413ca@mlbassoc.com>
From: Usman Haider <usmanhaider89@gmail.com>
Date: Thu, 9 Feb 2017 21:44:56 +0500
Message-ID: <CANxWOTYiC-smHBpTErpyhvvJCnSa-Xyzq4RiGo1nJrO9wR=Z9Q@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: yocto@yoctoproject.org
Subject: Re: meta-raspberrypi issue
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
X-List-Received-Date: Thu, 09 Feb 2017 16:44:59 -0000
Content-Type: multipart/alternative; boundary=001a113ac9b4857a5b05481bb317

--001a113ac9b4857a5b05481bb317
Content-Type: text/plain; charset=UTF-8

Thanks,

I'll definitely move to morty. I was following I guide that uses daisy.

--
Usman

On Wed, Feb 8, 2017 at 5:09 PM, Gary Thomas <gary@mlbassoc.com> wrote:

> On 2017-02-01 18:24, Khem Raj wrote:
>
>>
>>
>> On 2/1/17 8:08 AM, Usman Haider wrote:
>>
>>> Hi,
>>>
>>> I am new to yocto and just started working on it. I am having issue
>>> with meta-raspberrypi. I did inside poky
>>>
>>> $ git checkout -b work_branch -t origin/daisy
>>>
>>> $ git clone git://git.yoctoproject.org/meta-raspberrypi
>>> <http://git.yoctoproject.org/meta-raspberrypi>
>>>
>>>
>> you need to checkout daisy branch of meta-raspberrypi as well.
>>
>
> That said, daisy is REALLY OLD.  You'd probably be much better off with
> something recent, e.g. morty.
>
>
>
>> $ source oe-init-build-env rpi-build
>>>
>>> updated the local.conf and bblayer.conf files inside rpi-build
>>>
>>> In local.conf
>>>
>>> BB_NUMBER_THREADS ?= "${@oe.utils.cpu_count()}"
>>> PARALLEL_MAKE ?= "-j ${@oe.utils.cpu_count()}"
>>> MACHINE ?= "raspberrypi"
>>>
>>> In bblayer.conf
>>> # LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
>>> # changes incompatibly
>>> LCONF_VERSION = "6"
>>>
>>> BBPATH = "${TOPDIR}"
>>> BBFILES ?= ""
>>>
>>> BBLAYERS ?= " \
>>>   /home/vm/poky/meta \
>>>   /home/vm/poky/meta-yocto \
>>>   /home/vm/poky/meta-yocto-bsp \
>>>   /home/vm/poky/meta-raspberrypi \
>>>   "
>>> BBLAYERS_NON_REMOVABLE ?= " \
>>>   /home/vm/poky/meta \
>>>   /home/vm/poky/meta-yocto \
>>>   "
>>>
>>> When I run bitbake rpi-basic-image, I get following
>>>
>>>
>>> *********************************
>>>
>>> vm@sdr-vm:~/poky/rpi-build$ bitbake rpi-basic-image
>>> WARNING: Host distribution "Ubuntu-16.04" has not been validated with
>>> this version of the build system; you may possibly experience unexpected
>>> failures. It is recommended that you use a tested distribution.
>>> Parsing recipes: 100% |#########################################| Time:
>>> 00:02:37
>>> Parsing of 882 .bb files complete (0 cached, 882 parsed). 1241 targets,
>>> 63 skipped, 0 masked, 0 errors.
>>> ERROR: No recipes available for:
>>>
>>> /home/vm/poky/meta-raspberrypi/recipes-multimedia/gstreamer/
>>> gstreamer1.0-omx_1.10%.bbappend
>>>
>>> /home/vm/poky/meta-raspberrypi/recipes-multimedia/gstreamer/
>>> gstreamer1.0-omx_1.2.0.bbappend
>>> ERROR: Command execution failed: Exited with 1
>>>
>>> *************************************
>>>
>>> What could be the issue?
>>>
>>> --
>>> Usman
>>>
>>>
>>>
>
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a113ac9b4857a5b05481bb317
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks,<div><br></div><div>I&#39;ll definitely move to mor=
ty. I was following I guide that uses daisy.=C2=A0</div><div><br></div><div=
>--</div><div>Usman<br><div class=3D"gmail_extra"><br><div class=3D"gmail_q=
uote">On Wed, Feb 8, 2017 at 5:09 PM, Gary Thomas <span dir=3D"ltr">&lt;<a =
href=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&g=
t;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On 2017=
-02-01 18:24, Khem Raj wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
<br>
On 2/1/17 8:08 AM, Usman Haider wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Hi,<br>
<br>
I am new to yocto and just started working on it. I am having issue<br>
with meta-raspberrypi. I did inside poky<br>
<br>
$ git checkout -b work_branch -t origin/daisy<br>
<br>
$ git clone git://<a href=3D"http://git.yoctoproject.org/meta-raspberrypi" =
rel=3D"noreferrer" target=3D"_blank">git.yoctoproject.org/met<wbr>a-raspber=
rypi</a><br>
&lt;<a href=3D"http://git.yoctoproject.org/meta-raspberrypi" rel=3D"norefer=
rer" target=3D"_blank">http://git.yoctoproject.org/m<wbr>eta-raspberrypi</a=
>&gt;<br>
<br>
</blockquote>
<br>
you need to checkout daisy branch of meta-raspberrypi as well.<br>
</blockquote>
<br></span>
That said, daisy is REALLY OLD.=C2=A0 You&#39;d probably be much better off=
 with<br>
something recent, e.g. morty.<div><div class=3D"h5"><br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
$ source oe-init-build-env rpi-build<br>
<br>
updated the local.conf and bblayer.conf files inside rpi-build<br>
<br>
In local.conf<br>
<br>
BB_NUMBER_THREADS ?=3D &quot;${@oe.utils.cpu_count()}&quot;<br>
PARALLEL_MAKE ?=3D &quot;-j ${@oe.utils.cpu_count()}&quot;<br>
MACHINE ?=3D &quot;raspberrypi&quot;<br>
<br>
In bblayer.conf<br>
# LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf<br>
# changes incompatibly<br>
LCONF_VERSION =3D &quot;6&quot;<br>
<br>
BBPATH =3D &quot;${TOPDIR}&quot;<br>
BBFILES ?=3D &quot;&quot;<br>
<br>
BBLAYERS ?=3D &quot; \<br>
=C2=A0 /home/vm/poky/meta \<br>
=C2=A0 /home/vm/poky/meta-yocto \<br>
=C2=A0 /home/vm/poky/meta-yocto-bsp \<br>
=C2=A0 /home/vm/poky/meta-raspberrypi \<br>
=C2=A0 &quot;<br>
BBLAYERS_NON_REMOVABLE ?=3D &quot; \<br>
=C2=A0 /home/vm/poky/meta \<br>
=C2=A0 /home/vm/poky/meta-yocto \<br>
=C2=A0 &quot;<br>
<br>
When I run bitbake rpi-basic-image, I get following<br>
<br>
<br>
******************************<wbr>***<br>
<br>
vm@sdr-vm:~/poky/rpi-build$ bitbake rpi-basic-image<br>
WARNING: Host distribution &quot;Ubuntu-16.04&quot; has not been validated =
with<br>
this version of the build system; you may possibly experience unexpected<br=
>
failures. It is recommended that you use a tested distribution.<br>
Parsing recipes: 100% |#############################<wbr>############| Time=
:<br>
00:02:37<br>
Parsing of 882 .bb files complete (0 cached, 882 parsed). 1241 targets,<br>
63 skipped, 0 masked, 0 errors.<br>
ERROR: No recipes available for:<br>
<br>
/home/vm/poky/meta-raspberrypi<wbr>/recipes-multimedia/gstreamer/<wbr>gstre=
amer1.0-omx_1.10%.bbappen<wbr>d<br>
<br>
/home/vm/poky/meta-raspberrypi<wbr>/recipes-multimedia/gstreamer/<wbr>gstre=
amer1.0-omx_1.2.0.bbappen<wbr>d<br>
ERROR: Command execution failed: Exited with 1<br>
<br>
******************************<wbr>*******<br>
<br>
What could be the issue?<br>
<br>
--<br>
Usman<br>
<br>
<br>
</blockquote></blockquote>
<br>
<br>
-- <br></div></div>
------------------------------<wbr>------------------------------<br>
Gary Thomas=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=
=C2=A0 Consulting for the<br>
MLB Associates=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=
=A0 Embedded world<br>
------------------------------<wbr>------------------------------<div class=
=3D"HOEnZb"><div class=3D"h5"><br>
-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
</div></div></blockquote></div><br></div></div></div>

--001a113ac9b4857a5b05481bb317--
