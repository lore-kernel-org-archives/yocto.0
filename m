Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38694E00C3B; Tue,  1 Mar 2016 10:10:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f45.google.com (mail-wm0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF86AE00C11
	for <yocto@yoctoproject.org>; Tue,  1 Mar 2016 10:10:00 -0800 (PST)
Received: by mail-wm0-f45.google.com with SMTP id p65so45257145wmp.0
	for <yocto@yoctoproject.org>; Tue, 01 Mar 2016 10:10:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=H3g0rNvZxbaoltuFtfiQCtQ7nRge/FD1XaOpczR5jt4=;
	b=hoirSRiih/vUWwiDgosVRMFq4iPjf0NOdjqLMzcneEX91LuGjm7SG9Cjnj1diwYBwo
	T6o8QX9gc3/mhVhKmJJHB/2EMulBI5oTFFoZojMIJGJfap5ygEwT/DB6XCdp0Eo1Q+QN
	SBPJwe8myTaqwVKV/6drF3HHIy6qTjKz07R0z9J0uK91/n6/DSa0+o7iwJ64qrmsIcvy
	uDOiYRSIBP7s9/yuE4vMZaky+jsHNOXVZgKq6WfFZ7Ei4C38shth+YqbGkAIDuNi4zrg
	5s9JMKlOXg+JvlpsVLLoyDA0/FcEcuAbBY4n9mSwzsVEWfzyc+RCeozwkSV6LAB2R0C8
	pleg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=H3g0rNvZxbaoltuFtfiQCtQ7nRge/FD1XaOpczR5jt4=;
	b=V3dyZs+XR4RbhCYq5hRWfF2bbsgGSiLbdgCt3FO7V1Vg7JKufhHiMmkh3EqZwBxLg7
	djiYdtwYuEV/lw3Idyh9vB980S2LrXsK3zB/7JmRnkm1l25KfNr1ep6+598aGLJxTXUP
	NpeKFLipdYwkH5meq2qeX2Ezm5DDnweq+xqylL/7+nRtdAMptcQLK7WY9m0hSibiQOS0
	ae9W+IExBa/9MOu/f7ibVSMXIk89bPEzMCMi2UFCqkYHssyjnSh70sEn9U8t3Ny5D6if
	DGaKm/JaRC4IR+f23Nhhshy+TUWLrdXOBfpjKaFTQjpqLcChzLYt8AWJjlXsWJoKLxFR
	EU4g==
X-Gm-Message-State: AD7BkJKz5xkk+6DkgzFGTSUBguYZyLe0XOJTUemfUHhMcpCn59FTvjVDdarxn9kpSput435vWlvG0HeokcnbeA==
MIME-Version: 1.0
X-Received: by 10.194.22.68 with SMTP id b4mr21311706wjf.158.1456855799674;
	Tue, 01 Mar 2016 10:09:59 -0800 (PST)
Received: by 10.28.126.135 with HTTP; Tue, 1 Mar 2016 10:09:59 -0800 (PST)
X-Originating-IP: [185.46.137.52]
Received: by 10.28.126.135 with HTTP; Tue, 1 Mar 2016 10:09:59 -0800 (PST)
In-Reply-To: <1455985559-6341-1-git-send-email-valentin.lebescond@gmail.com>
References: <1455985559-6341-1-git-send-email-valentin.lebescond@gmail.com>
Date: Tue, 1 Mar 2016 19:09:59 +0100
Message-ID: <CAK18fxEBbzQvFz4q7cy6XvghJzafDG5+b3sa0NCrB=zs8bOKNQ@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
To: Valentin Le bescond <valentin.lebescond@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-chip][PATCH] added md5 for ntc's modified u-boot Licences/README file.
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
X-List-Received-Date: Tue, 01 Mar 2016 18:10:08 -0000
Content-Type: multipart/alternative; boundary=047d7b5d392a6dd6b8052d00ac8c

--047d7b5d392a6dd6b8052d00ac8c
Content-Type: text/plain; charset=UTF-8

Hi Valentin,

Would you be able to repush with a commit title as stated in the commit
guidelines link from Readme?
http://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines

Thanks a lot.

On 20 Feb 2016 5:26 pm, "Valentin LE BESCOND" <valentin.lebescond@gmail.com>
wrote:
>
> From: Nitnelav <valentin.lebescond@gmail.com>
>
> Signed-off-by: Nitnelav <valentin.lebescond@gmail.com>
> ---
>  recipes-bsp/u-boot/u-boot-chip_git.bb | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/recipes-bsp/u-boot/u-boot-chip_git.bb b/recipes-bsp/u-boot/
u-boot-chip_git.bb
> index 2342478..0b9032f 100644
> --- a/recipes-bsp/u-boot/u-boot-chip_git.bb
> +++ b/recipes-bsp/u-boot/u-boot-chip_git.bb
> @@ -8,6 +8,8 @@ PROVIDES += "u-boot"
>  UBOOT_VERSION ?= "2015.07"
>  PV = "${UBOOT_VERSION}+git${SRCPV}"
>
> +LIC_FILES_CHKSUM =
"file://Licenses/README;md5=0507cd7da8e7ad6d6701926ec9b84c95"
> +
>  SRCREV ?= "854d5fcc641d8d8914c03a69d7172815d5b81a99"
>  BRANCH ?= "chip/stable"
>  SRC_URI = "git://github.com/NextThingCo/CHIP-u-boot.git;branch=${BRANCH}"
> --
> 1.9.1
>

--047d7b5d392a6dd6b8052d00ac8c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Hi Valentin,</p>
<p dir=3D"ltr">Would you be able to repush with a commit title as stated in=
 the commit guidelines link from Readme? <br>
<a href=3D"http://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines=
">http://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines</a></p>
<p dir=3D"ltr">Thanks a lot.</p>
<p dir=3D"ltr">On 20 Feb 2016 5:26 pm, &quot;Valentin LE BESCOND&quot; &lt;=
<a href=3D"mailto:valentin.lebescond@gmail.com">valentin.lebescond@gmail.co=
m</a>&gt; wrote:<br>
&gt;<br>
&gt; From: Nitnelav &lt;<a href=3D"mailto:valentin.lebescond@gmail.com">val=
entin.lebescond@gmail.com</a>&gt;<br>
&gt;<br>
&gt; Signed-off-by: Nitnelav &lt;<a href=3D"mailto:valentin.lebescond@gmail=
.com">valentin.lebescond@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt; =C2=A0recipes-bsp/u-boot/<a href=3D"http://u-boot-chip_git.bb">u-boot-=
chip_git.bb</a> | 2 ++<br>
&gt; =C2=A01 file changed, 2 insertions(+)<br>
&gt;<br>
&gt; diff --git a/recipes-bsp/u-boot/<a href=3D"http://u-boot-chip_git.bb">=
u-boot-chip_git.bb</a> b/recipes-bsp/u-boot/<a href=3D"http://u-boot-chip_g=
it.bb">u-boot-chip_git.bb</a><br>
&gt; index 2342478..0b9032f 100644<br>
&gt; --- a/recipes-bsp/u-boot/<a href=3D"http://u-boot-chip_git.bb">u-boot-=
chip_git.bb</a><br>
&gt; +++ b/recipes-bsp/u-boot/<a href=3D"http://u-boot-chip_git.bb">u-boot-=
chip_git.bb</a><br>
&gt; @@ -8,6 +8,8 @@ PROVIDES +=3D &quot;u-boot&quot;<br>
&gt; =C2=A0UBOOT_VERSION ?=3D &quot;2015.07&quot;<br>
&gt; =C2=A0PV =3D &quot;${UBOOT_VERSION}+git${SRCPV}&quot;<br>
&gt;<br>
&gt; +LIC_FILES_CHKSUM =3D &quot;file://Licenses/README;md5=3D0507cd7da8e7a=
d6d6701926ec9b84c95&quot;<br>
&gt; +<br>
&gt; =C2=A0SRCREV ?=3D &quot;854d5fcc641d8d8914c03a69d7172815d5b81a99&quot;=
<br>
&gt; =C2=A0BRANCH ?=3D &quot;chip/stable&quot;<br>
&gt; =C2=A0SRC_URI =3D &quot;git://<a href=3D"http://github.com/NextThingCo=
/CHIP-u-boot.git;branch=3D${BRANCH}">github.com/NextThingCo/CHIP-u-boot.git=
;branch=3D${BRANCH}</a>&quot;<br>
&gt; --<br>
&gt; 1.9.1<br>
&gt;<br>
</p>

--047d7b5d392a6dd6b8052d00ac8c--
