Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3FB15E0048B; Mon,  7 Mar 2016 06:40:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f179.google.com (mail-ig0-f179.google.com
	[209.85.213.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0544E003DB
	for <yocto@yoctoproject.org>; Mon,  7 Mar 2016 06:40:24 -0800 (PST)
Received: by mail-ig0-f179.google.com with SMTP id z8so40475546ige.0
	for <yocto@yoctoproject.org>; Mon, 07 Mar 2016 06:40:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=StX4l8POWnLPQaS5asd28Mzj6McFfktAKHhPf+JXieo=;
	b=2P9ar8da5Omig8vzNYA11fphvzTxBVtzYBfCH7ZvDCIa49SpUYzmXoWSA11A93oK8Z
	cMk0xnSgLhTiLNlqqotCEFfxL7LZR4MKgTc6F7jZC9ZQzoIQPwTz+lvl7Xvq+VrxWkr4
	38RH/S9UvsZEyBmjQ+B7NRFxYN6TeYsUTUBH6EugK7W95JLe70rMfBv9DVAQbU+CjZgj
	rr0ZtMCx908lwtmpEjOBtil+U6N7+Tl+upqa+8rUTHX/8fGPE7mujW4CcpldqdaNFeWO
	ZQKdKM4KDM6/tVQFTIJp8U7jcddt/lX1UXvMXTk8aw9ORmmGQ4PnPSIe+nNq2RELp6g5
	d0Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=StX4l8POWnLPQaS5asd28Mzj6McFfktAKHhPf+JXieo=;
	b=ERdvNoc0HkT4xxI7xgy3ToA5THeTJNlLCAUPJzfP6mMoxun2oYe4j4L2hsNSRnobg6
	vhW9tHrBMKfVXpa793RYcxtqGgkojWnvFwFlpAnrhs7ZVBlev95IZqVRmgAL8GKQOXLD
	9v/0GCgvJcixGD+0N4kyEoMDxgUmSVtCsRGJThjbI4rvmXXgk6d0mAS8p8s+veEMZ1Tl
	Hxwa0Lppofbgs1W2zY+UYiU+IGIq0kWoMqhgVL1mHLllyAe8FNbw0r+UgvmhSuDV3syk
	TyxGVf5pL+q7JfoX8nEiI4oz9vXvfj6WEhi+yquTbA/XcNO8p8nR+AzKXWrHC6GmDTHp
	W22Q==
X-Gm-Message-State: AD7BkJKxN8u/VOGWw98Rb4hQnwmYU2opMPLWAMtuXiZ0DaYXwphBOlAn1+rWH3RxNQuBx4c6DPlTeNf7oBB/O+6o
X-Received: by 10.50.112.101 with SMTP id ip5mr11731351igb.52.1457361623799;
	Mon, 07 Mar 2016 06:40:23 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Mon, 7 Mar 2016 06:40:04 -0800 (PST)
In-Reply-To: <77ab469bd8b94861935db88f04e9a256@FE-MBX1005.de.bosch.com>
References: <77ab469bd8b94861935db88f04e9a256@FE-MBX1005.de.bosch.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 7 Mar 2016 14:40:04 +0000
Message-ID: <CAJTo0LZKxQJLxBDLWmZeR2_uzxj-M7pUUNvKEpzoHJf75zjcrg@mail.gmail.com>
To: "Biyani Arun (CM/ESC-NA)" <Arun.Biyani@us.bosch.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Adding lxc support to image
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
X-List-Received-Date: Mon, 07 Mar 2016 14:40:28 -0000
Content-Type: multipart/alternative; boundary=047d7b3a8458e570df052d7671c4

--047d7b3a8458e570df052d7671c4
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 7 March 2016 at 13:52, Biyani Arun (CM/ESC-NA) <Arun.Biyani@us.bosch.com=
>
wrote:

> I would like to include lxc style container support in poky image. I adde=
d
> =E2=80=9Cmeta-virtualization=E2=80=9D to my
> bblayers.conf. I now get errors when running =E2=80=9Cbitbake-layers show=
-recipes=E2=80=9D.
>
> Parsing recipes..ERROR: No recipes available for:
>
> /home/fcadev/GR_Yocto/meta-virtualization/recipes-kernel/linux/linux-yoct=
o_4.4.bbappend
>
> /home/fcadev/GR_Yocto/meta-virtualization/recipes-kernel/linux/linux-yoct=
o_4.1.bbappend
>
>

Looks like you're using meta-virtualisation from git master, but an older
release of oe-core.  Always use corresponding branches, so if you're using
oe-core 2.0 (jethro) then you need the jethro branch of meta-virtualization=
.

Ross

--047d7b3a8458e570df052d7671c4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 7 March 2016 at 13:52, Biyani Arun (CM/ESC-NA) <span dir=3D"ltr">&lt;<a =
href=3D"mailto:Arun.Biyani@us.bosch.com" target=3D"_blank">Arun.Biyani@us.b=
osch.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>I w=
ould like to include lxc style container support in poky image. I added =E2=
=80=9Cmeta-virtualization=E2=80=9D to my</div>
<div>bblayers.conf. I now get errors when running =E2=80=9Cbitbake-layers s=
how-recipes=E2=80=9D.</div>
<div>=C2=A0</div>
<div><font face=3D"Calibri" size=3D"2"><span style=3D"font-size:11pt">Parsi=
ng recipes..ERROR: No recipes available for:</span></font></div>
<div><font face=3D"Calibri" size=3D"2"><span style=3D"font-size:11pt">=C2=
=A0 /home/fcadev/GR_Yocto/meta-virtualization/recipes-kernel/linux/linux-yo=
cto_4.4.bbappend</span></font></div>
<div><font face=3D"Calibri" size=3D"2"><span style=3D"font-size:11pt">=C2=
=A0 /home/fcadev/GR_Yocto/meta-virtualization/recipes-kernel/linux/linux-yo=
cto_4.1.bbappend</span></font></div>
<div><font face=3D"Calibri" size=3D"2"><span style=3D"font-size:11pt">=C2=
=A0</span></font></div></blockquote></div><br>Looks like you&#39;re using m=
eta-virtualisation from git master, but an older release of oe-core.=C2=A0 =
Always use corresponding branches, so if you&#39;re using oe-core 2.0 (jeth=
ro) then you need the jethro branch of meta-virtualization.</div><div class=
=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--047d7b3a8458e570df052d7671c4--
