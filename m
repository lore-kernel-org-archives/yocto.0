Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BAF84E00815; Tue, 27 Jan 2015 11:50:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.50 listed in list.dnswl.org]
Received: from mail-qg0-f50.google.com (mail-qg0-f50.google.com
	[209.85.192.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79D28E00753
	for <yocto@yoctoproject.org>; Tue, 27 Jan 2015 11:49:50 -0800 (PST)
Received: by mail-qg0-f50.google.com with SMTP id f51so13407745qge.9
	for <yocto@yoctoproject.org>; Tue, 27 Jan 2015 11:49:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=qGUDCv5aCB37tC8Iav4l6and3ZFWc4CHEPyaJs5JyDY=;
	b=bvoMfIV/wf4hNphGnzPsNsbakVuCdEEtysvFSEBWSLHkt0SgnjgcCSg2D5tIdZ9Zsu
	D5wvOa+vu87baQTxF2oBzyZUXqHe++ZJRM82IeAJW160q0jGlQBTCRwM058DLlt9lJ0S
	gyQACq/AfFBNZaGy3imQoUEOKn2CSNmq+V+f5/ByyVF8LbK88YggwbCEZb91FUjZnxHo
	R66zPHl/RYJkXRghMoNgw3F26wAgdGAf+tOUaFXYRhBVp6jRB+pGQTEJcV4TXkiRDhZO
	D2LupfSwj9mQmjuIA5JLd/EWfO0gxcqsf7+aSspk3IB7Etcn+ZQrM9DCbC7bEyXSLmDw
	8IaQ==
X-Gm-Message-State: ALoCoQlRfh43ix6ArDJrvpWA2t14KgDFgDfh2AhRHVDwjQoleH4ZmU8Z+sTV4kdw/eRWHFtHs2LX
X-Received: by 10.224.12.19 with SMTP id v19mr5235472qav.22.1422388189610;
	Tue, 27 Jan 2015 11:49:49 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.96.166 with HTTP; Tue, 27 Jan 2015 11:49:29 -0800 (PST)
In-Reply-To: <E690085A-252E-472B-8683-4E4590CDB2AA@gmail.com>
References: <23F077AC-43FF-472B-B9D0-A30785E7557A@gmail.com>
	<CAJTo0LbHT2Pksxog-aaHravsy9sqyK1pdqz+rhsDWUGkX_7FTQ@mail.gmail.com>
	<E690085A-252E-472B-8683-4E4590CDB2AA@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 27 Jan 2015 19:49:29 +0000
Message-ID: <CAJTo0LaoE+8LS4DJgaULMdOze8gr3D+5Tn4jhPS-ctFyMKXbKA@mail.gmail.com>
To: Timo Pulkkinen <timo.j.pulkkinen@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Google Chrome recipe and systemd => how to satisfy runtime requirement for libudev.so.0?
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
X-List-Received-Date: Tue, 27 Jan 2015 19:50:03 -0000
Content-Type: multipart/alternative; boundary=089e0149cadcc65a5a050da78ee6

--089e0149cadcc65a5a050da78ee6
Content-Type: text/plain; charset=UTF-8

On 27 January 2015 at 19:19, Timo Pulkkinen <timo.j.pulkkinen@gmail.com>
wrote:

> tried this (I wasn't sure if I had done -ccleanstate for google-chrome
> before together after removing the tmp), but it doesn't help. Sysroot
> correctly contains /lib/libudev.so.1 (libudev.so.1.6.0, systemd).
> tmp/deploy/rpm/ contains udev rpms also - is this a problem, or do they
> just get built before systemd preference takes over?
>
> I looked more closely on my google-chrome recipe build (bitbake -v) and it
> warns about missing library already on (i think) qa task:
> NOTE: Couldn't find shared library provider for libudev.so.0, used by
> files:
> /.../poky/nuc/tmp/work/x86_64-poky-linux/google-chrome/40.0.2214.91-1-r0/packages-split/google-chrome/opt/google/chrome/chrome
>
> Is there really a provider for libudev.so.0 when using systemd?
>

There really isn't - systemd has a newer udev that had an ABI change, so
the version was increased.

There's no way that your tmp/deploy/rpms can contain both systemd and udev
packages (specifically, libudev1 and libudev0) unless you don't delete it
when enabling the systemd DISTRO_FEATURE.  The systemd and udev packages
conflict with each other and they both can't be built at the same time.

A copy of the cooker log for the image would be useful after you've deleted
tmp and -ccleansstate's google-chrome if you are certain that this is what
has happened.

Ross

--089e0149cadcc65a5a050da78ee6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 27 January 2015 at 19:19, Timo Pulkkinen <span dir=3D"ltr">&lt;<a href=
=3D"mailto:timo.j.pulkkinen@gmail.com" target=3D"_blank">timo.j.pulkkinen@g=
mail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=
=3D":2a0" class=3D"a3s" style=3D"overflow:hidden">tried this (I wasn&#39;t =
sure if I had done -ccleanstate for google-chrome before together after rem=
oving the tmp), but it doesn&#39;t help. Sysroot correctly contains /lib/li=
budev.so.1 (libudev.so.1.6.0, systemd).<br>
tmp/deploy/rpm/ contains udev rpms also - is this a problem, or do they jus=
t get built before systemd preference takes over?<br>
<br>
I looked more closely on my google-chrome recipe build (bitbake -v) and it =
warns about missing library already on (i think) qa task:<br>
NOTE: Couldn&#39;t find shared library provider for libudev.so.0, used by f=
iles: /.../poky/nuc/tmp/work/x86_64-poky-linux/google-chrome/40.0.2214.91-1=
-r0/packages-split/google-chrome/opt/google/chrome/chrome<br>
<br>
Is there really a provider for libudev.so.0 when using systemd?</div></bloc=
kquote><div><br></div><div>There really isn&#39;t - systemd has a newer ude=
v that had an ABI change, so the version was increased.</div><div><br></div=
><div>There&#39;s no way that your tmp/deploy/rpms can contain both systemd=
 and udev packages (specifically, libudev1 and libudev0) unless you don&#39=
;t delete it when enabling the systemd DISTRO_FEATURE.=C2=A0 The systemd an=
d udev packages conflict with each other and they both can&#39;t be built a=
t the same time.</div><div><br></div><div>A copy of the cooker log for the =
image would be useful after you&#39;ve deleted tmp and -ccleansstate&#39;s =
google-chrome if you are certain that this is what has happened.</div><div>=
<br></div><div>Ross</div></div></div></div>

--089e0149cadcc65a5a050da78ee6--
