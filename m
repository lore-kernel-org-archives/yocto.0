Return-Path: <ticotimo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0994E00718; Sat, 10 Jun 2017 08:08:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.178 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ticotimo[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f178.google.com (mail-io0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 384A9E00349
	for <yocto@yoctoproject.org>; Sat, 10 Jun 2017 08:08:39 -0700 (PDT)
Received: by mail-io0-f178.google.com with SMTP id i7so41838833ioe.1
	for <yocto@yoctoproject.org>; Sat, 10 Jun 2017 08:08:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=dXu5pF/n9zLbBdnrVAIoC1RHUxAk1tB3AUOC+ZsPgCw=;
	b=UTinOWl7b15w5w0vdRyP80ovxqZdSkBNvZ0ZklST6ANginfvUR3t8cWV4fR2/egbtF
	KvHfPdWBj7GbZXFpNE0KzbRhZSQq5k+K3CW1qoDCVZ7ofSjTNMrJiEpC+WyMYNPgmhxW
	dg2tLj6E8fFaPLO427JoEAwq21QLnINbB+aolLjdJ8VbfE3a86Dg42G5/nC0AldhMzVv
	kVJJkArZ9xD/SULxK5waNZ+Z4KKOyZsZu/o8bX+jwjr6yrugZfA9Is5QcbZOCSHSW4Sy
	4ISX8ZEt4VV72z5WWhq9lhmRlHmsdZ9Cc/bxOz0zv6LdxPWccp9Ha0Fqvf21anEMgSo7
	vAjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=dXu5pF/n9zLbBdnrVAIoC1RHUxAk1tB3AUOC+ZsPgCw=;
	b=kvRx7jYSUgAPfLil1+jQB23xP1a0DEc5KgrJO04jamCRp+dkj0Y58zcNUnvU7c8iNp
	oRLdoDwO0aZxkQ/U6s/mgB0XQ22mOhIXvRFNXMVCEk1qgVGU4LVdnh6suefLCMcIkHeh
	l5hbhK8X+zl0JIgHZnUQ5sqPuJv0qLP9ArfHYVtwYLDGmGg/Jb/R5fH2f59wQsydVe2y
	ou4zRVUxf9YGe8fUCiCsrpyalSKkO1qaywJqTV6AabCWioZNV3CO8viOvKNb8Rbobc2x
	gr+HKHYHFfYfRLaQGaOs4M7UmB7tS/qJBoDIOY/4k9pNDx+VgIK3MhUZPaLi14hLqBxt
	j4lA==
X-Gm-Message-State: AODbwcC7x1mvtUHDKNcR5zEdXTBG1aAmxWroB0CVPFnsj6Gd7iz78KH8
	vV4CsASJXZHtRHsqAS+Smoy8UTb2fQ==
X-Received: by 10.107.19.135 with SMTP id 7mr31658604iot.81.1497107319342;
	Sat, 10 Jun 2017 08:08:39 -0700 (PDT)
MIME-Version: 1.0
References: <BN3PR03MB14620876D0329AD7256F7FB2E0F60@BN3PR03MB1462.namprd03.prod.outlook.com>
In-Reply-To: <BN3PR03MB14620876D0329AD7256F7FB2E0F60@BN3PR03MB1462.namprd03.prod.outlook.com>
From: Tim Orling <ticotimo@gmail.com>
Date: Sat, 10 Jun 2017 15:08:28 +0000
Message-ID: <CANx9H-CHLok7Lc+owgyeRQ1gA6BQJOQ8djz+BE=wbX05kMQoFg@mail.gmail.com>
To: "Brett R. Nicholas" <Brett.R.Nicholas.TH@dartmouth.edu>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Including TUN/TAP kernel drivers for openVPN
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
X-List-Received-Date: Sat, 10 Jun 2017 15:08:43 -0000
Content-Type: multipart/alternative; boundary="001a113f37fcf5cba505519c7591"

--001a113f37fcf5cba505519c7591
Content-Type: text/plain; charset="UTF-8"

Related:
https://superuser.com/questions/497245/how-to-load-tun-module-in-linux

On Sat, Jun 10, 2017 at 7:01 AM Brett R. Nicholas <
Brett.R.Nicholas.TH@dartmouth.edu> wrote:

> Hi there,
>
>
> I'm using Yocto (morty) to build a custom linux image for a Zedboard. I
> need  the image to run openVPN, which requires access to the TUN/TAP
> virtual network interface. I successfully incorporated openVPN and all its
> dependencies into my image using the meta-networking layer, but it appears
> that the necessary TUN/TAP kernel drivers are not present in the image.
>
>
> *How can I ensure that the TUN/TAP kernel drivers are included in my
> image?*
>
>
> I have the following two lines in my conf/local.conf file:
>
> IMAGE_INSTALL_append = " kernel-modules"
>
> CORE_IMAGE_EXTRA_INSTALL += "openssl openvpn docker tunctl
>
>
> I don't know how I could include them in my image. I tried adding
> kernel-module-tun to my IMAGE_INSTALL_append as mentioned here (
> https://lists.yoctoproject.org/pipermail/yocto/2014-September/021698.html)
> <https://lists.yoctoproject.org/pipermail/yocto/2014-September/021698.html>,
> but it does not appear this is a valid package provided by any of my
> layers. Maybe I am doing this part incorrectly?
>
>
> I also tried using bitbake -c menuconfig virtual/kernel to manual include
> the modules in the image, however after doing this and rerunning bitbake
> core-image-minimal I still did not see tun.ko appear in either of the two
> locations below that I would expect them to be installed to:
>
> ${BUILDDIR}/tmp/work/zedboard_zynq7-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs/lib/modules/4.6.0-xilinx-v2016.3/kernel/net/
>
>
> or
>
> ${BUILDDIR}/tmp/work/zedboard_zynq7-poky-linux-gnueabi/linux-xlnx/4.6-xilinx-v2016.3+gitAUTOINC+0e4e407149-r0/image/lib/modules/4.6.0-xilinx-v2016.3/kernel/net
>
> I should note that I'm using the meta-xilinx and meta-xilinx-tools layers
> in addition to a few custom layers of my own. None of these should affect
> this problem, AFAIK.
>
> Any help appreciated, thanks!
> - Brett
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a113f37fcf5cba505519c7591
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Related: <a href=3D"https://superuser.com/questions/497245/how-to-load-tun-=
module-in-linux">https://superuser.com/questions/497245/how-to-load-tun-mod=
ule-in-linux</a><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Sat,=
 Jun 10, 2017 at 7:01 AM Brett R. Nicholas &lt;<a href=3D"mailto:Brett.R.Ni=
cholas.TH@dartmouth.edu">Brett.R.Nicholas.TH@dartmouth.edu</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex">




<div dir=3D"ltr">
<div id=3D"m_2685863067478461300divtagdefaultwrapper" style=3D"font-size:12=
pt;color:#000000;font-family:Calibri,Arial,Helvetica,sans-serif" dir=3D"ltr=
">
<p></p>
<div class=3D"m_2685863067478461300post-text">
<p>Hi there,</p>
<p><br>
</p>
<p>I&#39;m using Yocto (morty) to build a custom linux image for a=C2=A0Zed=
board. I need=C2=A0 the image to run openVPN, which requires access to the =
TUN/TAP virtual network interface. I successfully incorporated openVPN and =
all its dependencies into my image using the meta-networking
 layer, but it appears that the necessary TUN/TAP kernel drivers are not pr=
esent in the image.</p>
<p><br>
</p>
<p><strong>How can I ensure that the TUN/TAP kernel drivers are included in=
 my image?</strong></p>
<p><strong><br>
</strong></p>
<p>I have the following two lines in my conf/local.conf file: <br>
</p>
<p><code>IMAGE_INSTALL_append =3D &quot; kernel-modules&quot; <br>
</code></p>
<p><code>CORE_IMAGE_EXTRA_INSTALL +=3D &quot;openssl openvpn docker tunctl =
<br>
</code></p>
<p><code><br>
</code></p>
<p>I don&#39;t know how I could include them in my image. I tried adding <c=
ode>kernel-module-tun</code> to my
<code>IMAGE_INSTALL_append</code> as mentioned here (<a href=3D"https://lis=
ts.yoctoproject.org/pipermail/yocto/2014-September/021698.html" class=3D"m_=
2685863067478461300OWAAutoLink" id=3D"m_2685863067478461300LPlnk927257" tar=
get=3D"_blank">https://lists.yoctoproject.org/pipermail/yocto/2014-Septembe=
r/021698.html</a>)<a href=3D"https://lists.yoctoproject.org/pipermail/yocto=
/2014-September/021698.html" rel=3D"nofollow noreferrer" target=3D"_blank">=
</a>,
 but it does not appear this is a valid package provided by any of my layer=
s. Maybe I am doing this part incorrectly?</p>
<p><br>
</p>
<p>I also tried using bitbake -c menuconfig virtual/kernel to manual includ=
e the modules in the image, however after doing this and rerunning
<span style=3D"font-family:&quot;Courier New&quot;,monospace">bitbake core-=
image-minimal</span> I still did not see tun.ko appear in either of the two=
 locations below that I would expect them to be installed to:<code><br>
</code></p>
<p><code>${BUILDDIR}/tmp/work/zedboard_zynq7-poky-linux-gnueabi/core-image-=
minimal/1.0-r0/rootfs/lib/modules/4.6.0-xilinx-v2016.3/kernel/net/
</code></p>
<p>or</p>
<code>${BUILDDIR}/tmp/work/zedboard_zynq7-poky-linux-gnueabi/linux-xlnx/4.6=
-xilinx-v2016.3+gitAUTOINC+0e4e407149-r0/image/lib/modules/4.6.0-xilinx-v20=
16.3/kernel/net<br>
<br>
</code>I should note that I&#39;m using the meta-xilinx and meta-xilinx-too=
ls layers in addition to a few custom layers of my own. None of these shoul=
d affect this problem, AFAIK.<br>
<br>
Any help appreciated, thanks!<code></code> </div>
- Brett<br>
<p></p>
</div>
</div>

--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--001a113f37fcf5cba505519c7591--
