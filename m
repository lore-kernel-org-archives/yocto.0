Return-Path: <sheerapthinath@gmail.com>
Received: from mail-ve0-f170.google.com (mail-ve0-f170.google.com
	[209.85.128.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8668BE00939
	for <yocto@yoctoproject.org>; Sat,  8 Mar 2014 06:01:25 -0800 (PST)
Received: by mail-ve0-f170.google.com with SMTP id pa12so5495070veb.29
	for <yocto@yoctoproject.org>; Sat, 08 Mar 2014 06:01:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=jCxS63q2md5Xk3IN1/utckEPYRvivaQmcETTM/FiiZs=;
	b=DhIsJ+Yq1lWU3tWK2GuesTc957BD0AI9BfArT/dbh4CjGCxghX1lAp7dOyxolpYZuf
	v6jAWxJxF9GKlvNJHjuQfyv6qWgkwNlKXmSNNcOC/rCgNnRt8frEgMKzIguuMCTvnBfC
	NGcvI9RisiTH4q64qYBhaOp5O2+VPcWkOJnbtkqZqnxjgV2aXaeOdUvBQUpn/PAHmTWt
	J5Z6XpxHuaVKVRYBOVScdbwqOCFzBV3D4eEx7feXFgYFkzI8O1OatcFOB9wpWcpB7bHG
	A04il1+fe3elKG+HRFkWgEJ1NkUZJ3iuizaZ02tjHxGEB0AEsXlDfdTnrT8bYCdABMdG
	3GjA==
MIME-Version: 1.0
X-Received: by 10.58.49.129 with SMTP id u1mr15218814ven.0.1394287285497; Sat,
	08 Mar 2014 06:01:25 -0800 (PST)
Received: by 10.58.29.169 with HTTP; Sat, 8 Mar 2014 06:01:25 -0800 (PST)
In-Reply-To: <CAJuQfSgvi8bDwg3kbUa7UyP3=dPiT-YYcjFZGDVCer+NiURGCg@mail.gmail.com>
References: <CAJuQfSgvi8bDwg3kbUa7UyP3=dPiT-YYcjFZGDVCer+NiURGCg@mail.gmail.com>
Date: Sat, 8 Mar 2014 19:31:25 +0530
Message-ID: <CAJuQfSgs-VXaAsEWnhshs9CGK2tBz0gOkH6tZtFZ13Q700hU=Q@mail.gmail.com>
From: sheerapthinath <sheerapthinath@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Autotools not configuring
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
X-List-Received-Date: Sat, 08 Mar 2014 14:01:28 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Sat, Mar 8, 2014 at 7:26 PM, sheerapthinath <sheerapthinath@gmail.com> wrote:
> Hi,
>
> I am new to yocto and trying to build a package for raspberry pi.
> I am using the BSP layer from https://github.com/djwillis/meta-raspberrypi.
>
> Am able to build the image using BSP without any problem. But when I
> added a new layer to add packages, am getting error.
>
> I tried testing with the hello world auto tooled package. When trying
> to execute that bb, am getting the error as follows,
>
> make: *** No rule to make target `install'.  Stop.
> | ERROR: oe_runmake failed
>
>
>
> --
> Regards,
> Sheerapthinath OS

My bb file is as follows,
DESCRIPTION = "Dummy"
SECTION = "package"
LICENSE = "CLOSED"
PR = "r0"
SRC_URI = "file://hello/"
inherit autotools gettext

After executing this bb file, i took a look at the logs of configure.
It says nothing to configure. This hello world is the dummy auto
tooled packed downloaded from yocto site.
Please help me with what's wrong with this process am following?


-- 
Regards,
Sheerapthinath OS

