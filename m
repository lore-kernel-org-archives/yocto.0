Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F3D01E00C55; Fri, 16 Sep 2016 01:03:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.180 listed in dnsbl.sorbs.net]
Received: from mail-io0-f180.google.com (mail-io0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD429E00A21
	for <yocto@yoctoproject.org>; Fri, 16 Sep 2016 01:03:22 -0700 (PDT)
Received: by mail-io0-f180.google.com with SMTP id q92so17802388ioi.1
	for <yocto@yoctoproject.org>; Fri, 16 Sep 2016 01:03:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=IZw8DrnN9yWiaD8Ja72+X0LsmTd+iGNBTaLRWRh+H7g=;
	b=B8jksruIazH/0z5bmLwqTzuwp0bQdBl9TNPX/LIt6ZL+btfTmPkq13ZEfNrEdd0r55
	aAbRc7kmGOZDZa3F2cWdANmIeVto8HBlZkBosx+LNgjRqpmmCUDnbZmfwMFTDH3kSWJe
	8h0/4m0XY+gY9fyAOnj6w5nIijz/NNIzMb7SKICBa1sJ8J8qKHyEcc/GJCm649X6z9eM
	n3J4EBRSW0IxGYBg8TTBMrWe5IUM8x+QeISiaFa2ikJc5h/dZ/9HaER0xD6ssJRmszqI
	PGAehA/5YWkaOvxtWo5rQ2GD3ClhZ1qwQ9eEeCE7Ii8xBgGwVhadxMuBpl2KKpX8hALJ
	W3fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=IZw8DrnN9yWiaD8Ja72+X0LsmTd+iGNBTaLRWRh+H7g=;
	b=FQx0zKBMFilAEXYTuaL9xyFpraBgbTvFihh2OF0B3BxBvHvGkU/CHcLd4n0/tWKpPr
	t90GVJuHTiEjraIBTIiN1z4qmvrURD+YqPyRBTuYtNTAW01PSZGiDADLWixDfNEyGEu9
	VSAG4jsFmSJxEh1vTzhwTkEZ8BrxVvPwGpW9c9YR1s5CCI1h46QzAHbY6+RXeRLFjDSP
	kZ4qHTFVJRx11qVxwdojNL6jks0hhtuRn/yzBhqXbEChv07ZJ81Ov0hDJNBTwfKDFeWz
	WVL580iAWn1jl0NsVE5PcSEyR2enrRwBpZeeWASjKe6rzPZM57CLG+Nx7LwFbfe7QYPg
	kA1w==
X-Gm-Message-State: AE9vXwO4f8+vhW7MvvH/wl5ZAH5AIC6tvNF7IEtjWXLZ8SIsPD6Qxmv/Ulomo1Nn/TWez1Spii/eF4B+9M+o/JSR
X-Received: by 10.107.47.227 with SMTP id v96mr23778593iov.172.1474013001875; 
	Fri, 16 Sep 2016 01:03:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.135.27 with HTTP; Fri, 16 Sep 2016 01:03:01 -0700 (PDT)
In-Reply-To: <CAKS7W1q_uWwcoo69j6MYC0VNSxtY9fc9hQ7jEB7o+4Mq4qB7wQ@mail.gmail.com>
References: <CAKS7W1q_uWwcoo69j6MYC0VNSxtY9fc9hQ7jEB7o+4Mq4qB7wQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 16 Sep 2016 09:03:01 +0100
Message-ID: <CAJTo0Laa-kWmQDt2F57orXCQoazuxzV5pqLH+oae5u8wurB1xQ@mail.gmail.com>
To: Martin Bachmann <bachmmar@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to compile and install a recipe natively
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
X-List-Received-Date: Fri, 16 Sep 2016 08:03:27 -0000
Content-Type: multipart/alternative; boundary=001a11c168fa5f248d053c9b6553

--001a11c168fa5f248d053c9b6553
Content-Type: text/plain; charset=UTF-8

On 16 September 2016 at 06:49, Martin Bachmann <bachmmar@gmail.com> wrote:

> In my recipe I've added RDEPENDS += "opencv " and yocto installs the
> libraries in the target rootfs. But now i'd like the libraries compiled
> natively and installed to x86_x64-linux rootfs. This would allow me to
> unittest my application on the host.
>

If you've added BBCLASSEXTEND=native then bitbake opencv-native will build
the native form.

Ross

--001a11c168fa5f248d053c9b6553
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 16 September 2016 at 06:49, Martin Bachmann <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:bachmmar@gmail.com" target=3D"_blank">bachmmar@gmail.com</a>&gt=
;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><div>In my recipe I&#39;v=
e added RDEPENDS=C2=A0+=3D &quot;opencv &quot; and yocto installs the libra=
ries in the target rootfs. But now i&#39;d like the libraries compiled nati=
vely and installed to x86_x64-linux rootfs. This would allow me to unittest=
 my application on the host.</div><div></div></blockquote></div><br>If you&=
#39;ve added BBCLASSEXTEND=3Dnative then bitbake opencv-native will build t=
he native form.</div><div class=3D"gmail_extra"><br></div><div class=3D"gma=
il_extra">Ross</div></div>

--001a11c168fa5f248d053c9b6553--
