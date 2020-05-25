Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.28795.1590401867290960172
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 May 2020 03:17:47 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 140.211.169.56, mailfrom: rpjday@crashcourse.ca)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 929E5E01C09; Mon, 25 May 2020 03:17:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from cpanel7.indieserve.net (cpanel7.indieserve.net [199.212.143.8])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2DAC8E01C06
	for <yocto@yoctoproject.org>; Mon, 25 May 2020 03:17:44 -0700 (PDT)
Received: from cpeac202e043973-cmac202e043970.sdns.net.rogers.com ([174.114.100.179]:48310 helo=localhost.localdomain)
	by cpanel7.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.93)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1jdAAx-008Okh-9t; Mon, 25 May 2020 06:17:43 -0400
Date: Mon, 25 May 2020 06:17:41 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Alexander Kanavin <alex.kanavin@gmail.com>
cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto] can i run an arbitrary x86_64-based image under QEMU?
In-Reply-To: <CANNYZj9viqzAdLR8ocTbB=BnrG8tSriYxNMTqcx9qc3WY2LNwg@mail.gmail.com>
Message-ID: <alpine.LFD.2.21.2005250617060.7852@localhost.localdomain>
References: <alpine.LFD.2.21.2005241138230.24040@localhost.localdomain> <CANNYZj9viqzAdLR8ocTbB=BnrG8tSriYxNMTqcx9qc3WY2LNwg@mail.gmail.com>
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel7.indieserve.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel7.indieserve.net: authenticated_id: rpjday+crashcourse.ca/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: cpanel7.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Content-Type: multipart/mixed; boundary="8323328-1033222231-1590401863=:7852"

--8323328-1033222231-1590401863=:7852
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sun, 24 May 2020, Alexander Kanavin wrote:

> To me this seems like Wind River's special sauce.
>
> The CHANGELOG in meta-intel says this:
>
> Added QEMU support.
> -------------------
> We now build several virtio drivers into the kernel by default, and
> have qemuboot.conf files for intel-corei7-64 and intel-core2-32
> targets. This allows one to do basic testing on meta-intel images
> without having to use hardware. The virtio drivers are added via
> KERNEL_FEATURES_INTEL_COMMON. This prevents them from being added to
> custom kernels by default. They can be removed by adding the
> following to a conf or kernel bbappend file:
> =C2=A0 KERNEL_FEATURES_INTEL_COMMON_remove =3D =E2=80=9Ccfg/virtio.scc=E2=
=80=9D OVMF
> firmware is also built and can be used in order to emulate a UEFI
> environment. A full runqemu command line for intel-corei7-64 could
> look like this:
> =C2=A0 runqemu core-image-minimal intel-corei7-64 wic ovmf
> =3D=3D=3D=3D=3D=3D
>
> It's probably not too difficult to make this work in YP upstream
> (given that qemu is able to run desktop Linux distribution images
> aimed at real HW), but currently this isn't documented or (most
> importantly) tested on the AB.

  i suspected it was a WR thing, thanks.

rday

--8323328-1033222231-1590401863=:7852--
