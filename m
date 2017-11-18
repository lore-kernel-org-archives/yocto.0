Return-Path: <mgloff@emacinc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 54982E00D42; Fri, 17 Nov 2017 17:35:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.196 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.196 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f196.google.com (mail-qk0-f196.google.com
	[209.85.220.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3FD2DE00CF1
	for <yocto@yoctoproject.org>; Fri, 17 Nov 2017 17:35:25 -0800 (PST)
Received: by mail-qk0-f196.google.com with SMTP id a194so1569165qkc.9
	for <yocto@yoctoproject.org>; Fri, 17 Nov 2017 17:35:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=emacinc-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=jmCVErPqwuh8IAWqrDoPbI1WoIL3Iax0MiE890KYlC4=;
	b=eFnvuIzEqbGXUY9O1n8lfPH9GyP+JzJbMKGeLj67T2agrh95TLpSsCttoeoPMCVdpZ
	/ACxRmshGaIN/EBKZauhHqeAB1XrLEck5sMqG02RMDcVAx1AMCbRVya1xOA/nYlR3fMl
	LNbkwsw0LeaXvarizXvkxjuoRLJ0LvFhl9Pi+grA8O5+o+ZwnJzlK6G+M2l0Lic+asJt
	wzoUTcp7RaeXU8qbZy5ctgUxztySS692SIEDCATl/HVoVAKSIKdupNfvwKtzFB5qgmma
	fBaWpncXYHqTPSZRdtCazJ2to/bM/PCSNQkiCSxQ3vyBMnQcxvlJ3niAFmzechrogYi5
	yAyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=jmCVErPqwuh8IAWqrDoPbI1WoIL3Iax0MiE890KYlC4=;
	b=PVWVH5dQomwicjoxDrMnFn+CcjXgHDav7hLuOyPuLM+KOuG+5zip3ZtobMIpWhTNvf
	2tzPjFKeFhuoWhU3p0xk0JQdszIv0rDPs4u3K8i0lhgA5IfVO+8X7s3Fv/3HxWW869U8
	0qDr5Q/WkZC3LalXbC6EjRyfJSb9evHdIKgs0SNvTas3lV1drH+6HhKTcHdJ2/OR7qMN
	ogDcJt216T3ZiaWLFYINX6vSdUNKVKOwS9Q8gKQRcezswk1nvJcNIeINatbYynxpdWO2
	XAFa4/v2CF3YWwbPgqRKsfuMAc7OhNhulX2kYqYlSL1umsDDiMQY8ne5ZsYOYFWJ37iB
	LNBg==
X-Gm-Message-State: AJaThX7vHb7Zh3o/LE48aG7k4QsmMmvMuBcS8QRD9WO65UqlRzzsujvj
	i51OP4+5ZuFTzoXyJt7NUbbi/hjS1mP4xVTEafJ1FQ==
X-Google-Smtp-Source: AGs4zMY01RwWrvIFjqoBjYQK7+nhbPqUvjSbobh5eu7w/hTMifv99HzMzr5AyrN6WJ46FeKRgbg667nVd0JTEL/CYIg=
X-Received: by 10.55.135.199 with SMTP id j190mr11205448qkd.188.1510968925121; 
	Fri, 17 Nov 2017 17:35:25 -0800 (PST)
MIME-Version: 1.0
Received: by 10.200.42.220 with HTTP; Fri, 17 Nov 2017 17:34:44 -0800 (PST)
In-Reply-To: <CAPb0b+PxnaZk5YugbYmf4xT0iFxRYAFzS0Lp_hTd7VtRRpHG6g@mail.gmail.com>
References: <CAPb0b+PxnaZk5YugbYmf4xT0iFxRYAFzS0Lp_hTd7VtRRpHG6g@mail.gmail.com>
From: Michael Gloff <mgloff@emacinc.com>
Date: Fri, 17 Nov 2017 19:34:44 -0600
Message-ID: <CALXw4G7YnNn=2ZmCAbUUNrvrvcii0_7tqB4-DAix+meh_SxFyQ@mail.gmail.com>
To: Sherif Omran <sherifomran2000@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: tiny-linux distribution with raspberrypi error
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
X-List-Received-Date: Sat, 18 Nov 2017 01:35:27 -0000
Content-Type: multipart/alternative; boundary="94eb2c05d3bc0c81d6055e37de63"

--94eb2c05d3bc0c81d6055e37de63
Content-Type: text/plain; charset="UTF-8"

This looks to be because poky-tiny.conf does not allow overriding of the
kernel provider. You could try the below patch to use a different kernel.

Michael Gloff

diff --git a/meta-poky/conf/distro/poky-tiny.conf
b/meta-poky/conf/distro/poky-tiny.conf
index 2032bfde32..acafd9fef4 100644
--- a/meta-poky/conf/distro/poky-tiny.conf
+++ b/meta-poky/conf/distro/poky-tiny.conf
@@ -37,7 +37,7 @@ TCLIBC = "musl"

 # Distro config is evaluated after the machine config, so we have to
explicitly
 # set the kernel provider to override a machine config.
-PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-tiny"
+PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto-tiny"
 PREFERRED_VERSION_linux-yocto-tiny ?= "4.12%"

 # We can use packagegroup-core-boot, but in the future we may need a new
packagegroup-core-tiny


On Thu, Nov 16, 2017 at 7:05 PM, Sherif Omran <sherifomran2000@gmail.com>
wrote:

> hi
>
> i am trying to compile the yocto-tiny for raspberry pi by adding the
> distro to my local.conf
>
> DISTRO = "poky-tiny"  and i  get the following
>
>
> ERROR: nothing provides 'virtual/kernel'
> ERROR: linux-yocto-tiny Provides virtual/kernel but was skipped:
> incompatible with machine raspberrypi0-wifi (not in compatible_machine)
> ERROR: linux-yocto-rt Provides virtual/kernel but was skipped:
> incompatible with machine raspberrypi0-wifi (not in compatible_machine)
> ERROR: linux-yocto Provides virtual/kernel but was skipped: incompatible
> with machine raspberrypi0-wifi (not in compatible_machine)
> ERROR: linux-yocto-dev Provides virtual/kernel but was skipped:
> incompatible with machine raspberrypi0-wifi (not in compatible_machine)
> ERROR: required build target 'rpi-basic-image' has no buildable providers.
> Missing or unbuildable depency chain was: 'rpi-basic-image',
> 'virtual/kernel'
>
>
> any body has a clue to solve it?
>
> thanks
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--94eb2c05d3bc0c81d6055e37de63
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>This looks to be because poky-tiny.conf does not=
 allow overriding of the kernel provider. You could try the below patch to =
use a different kernel.<br><br></div>Michael Gloff<br></div><div><div><br>d=
iff --git a/meta-poky/conf/distro/poky-tiny.conf b/meta-poky/conf/distro/po=
ky-tiny.conf<br>index 2032bfde32..acafd9fef4 100644<br>--- a/meta-poky/conf=
/distro/poky-tiny.conf<br>+++ b/meta-poky/conf/distro/poky-tiny.conf<br>@@ =
-37,7 +37,7 @@ TCLIBC =3D &quot;musl&quot;<br><br>=C2=A0# Distro config is =
evaluated after the machine config, so we have to explicitly<br>=C2=A0# set=
 the kernel provider to override a machine config.<br>-PREFERRED_PROVIDER_v=
irtual/kernel =3D &quot;linux-yocto-tiny&quot;<br>+PREFERRED_PROVIDER_virtu=
al/kernel ?=3D &quot;linux-yocto-tiny&quot;<br>=C2=A0PREFERRED_VERSION_linu=
x-yocto-tiny ?=3D &quot;4.12%&quot;<br><br>=C2=A0# We can use packagegroup-=
core-boot, but in the future we may need a new packagegroup-core-tiny<br><b=
r></div></div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quot=
e">On Thu, Nov 16, 2017 at 7:05 PM, Sherif Omran <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:sherifomran2000@gmail.com" target=3D"_blank">sherifomran2000@=
gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=
=3D"ltr"><div><div><div><div><div><div><div><div><div>hi<br></div><br>i am =
trying to compile the yocto-tiny for raspberry pi by adding the distro to m=
y local.conf<br><br>DISTRO =3D &quot;poky-tiny&quot;=C2=A0 and i=C2=A0 get =
the following<br><br><br></div>ERROR: nothing provides &#39;virtual/kernel&=
#39;<br></div>ERROR:
 linux-yocto-tiny Provides virtual/kernel but was skipped: incompatible=20
with machine raspberrypi0-wifi (not in compatible_machine)<br></div>ERROR:
 linux-yocto-rt Provides virtual/kernel but was skipped: incompatible=20
with machine raspberrypi0-wifi (not in compatible_machine)<br></div>ERROR:
 linux-yocto Provides virtual/kernel but was skipped: incompatible with=20
machine raspberrypi0-wifi (not in compatible_machine)<br></div>ERROR:=20
linux-yocto-dev Provides virtual/kernel but was skipped: incompatible=20
with machine raspberrypi0-wifi (not in compatible_machine)<br></div>ERROR: =
required build target &#39;rpi-basic-image&#39; has no buildable providers.=
<br></div>Missing or unbuildable depency chain was: &#39;rpi-basic-image&#3=
9;, &#39;virtual/kernel&#39;<br><br><br></div><div>any body has a clue to s=
olve it?<br><br></div>thanks</div>
<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--94eb2c05d3bc0c81d6055e37de63--
