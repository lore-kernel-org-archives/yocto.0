Return-Path: <wpdster@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76788E009E7; Thu, 12 Jun 2014 05:28:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (wpdster[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.177 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vc0-f177.google.com (mail-vc0-f177.google.com
	[209.85.220.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6FDEE0070F
	for <yocto@yoctoproject.org>; Thu, 12 Jun 2014 05:28:04 -0700 (PDT)
Received: by mail-vc0-f177.google.com with SMTP id ij19so694707vcb.22
	for <yocto@yoctoproject.org>; Thu, 12 Jun 2014 05:28:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=wapnxJul5fixwaKqYudDRoxeGyMOWSvnJKZGum0F1rk=;
	b=UpUPaFm1vPHIXHkVQZVR2Ctx8UiEZmN1yhNHiyHFgHxW95GsHC5QvvKE58uOLk3MP3
	QEj6O4KBmahp72dyWOmorLT8yYgh56gX3yHpreNJELTl1BGFupSQRkkYCPM4c6y/SQom
	qP+mNdXqyakmlIzkLfkRI15Rlz1ZaR504dz3LxUAW0gYM+0MVzgHvKIyGPABpv3dQPiM
	m+dVsYxdDB2cJuyUyX5y1VlEnt1zxxGoVUxYU1zU2zxM0ChDmMP5OKfJWI0Ya6t+35wU
	bk6hQDloOphMbbGDhCm9w5lBwR/qxbtXaIiEZWdfy1h+6fX8fVTFtp8Xxe1y58KfgXUL
	OxpA==
X-Received: by 10.58.123.71 with SMTP id ly7mr44868266veb.11.1402576082806;
	Thu, 12 Jun 2014 05:28:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.32.74 with HTTP; Thu, 12 Jun 2014 05:27:32 -0700 (PDT)
In-Reply-To: <53999502.1050802@gmail.com>
References: <53999502.1050802@gmail.com>
From: Patrick Doyle <wpdster@gmail.com>
Date: Thu, 12 Jun 2014 08:27:32 -0400
Message-ID: <CAF_dkJBngJcx3qPYfS6d+Nupntkg-fqeT3fh8piQCsEAH8GDUA@mail.gmail.com>
To: Daniel Hilst Selli <danielhilst@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Conditional patches on kernel depending on board, how to maintain?
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
X-List-Received-Date: Thu, 12 Jun 2014 12:28:14 -0000
Content-Type: text/plain; charset=UTF-8

Can you compile the different device drivers as modules and load them
at runtime?
Can you compile the different device drivers statically and probe them
based on a devicetree file?

--wpd


On Thu, Jun 12, 2014 at 7:54 AM, Daniel Hilst Selli
<danielhilst@gmail.com> wrote:
> I have a SoM which will be used on several boards, this SoM has a base
> kernel for it, with its board-*.c file. In each board I may have different
> peripherals, so I have to patch the same board-*.c file depending on my
> target board, and that patches may be conflicting one each other. For
> example, I could have a RF on first SPI bus on one board, and on another
> board a SD card on same first SPI bus.
>
> So basically I will have a different kernel(uImage) and rootfs (with kernel
> modules) for each board.
>
> I think to create a layer for each target board, with the linux-SoM.bbappend
> including the patches for that board..., so I enable the layer depending on
> target board I'm creating, but is too much file editions, or have a build
> directory for each target board, enabling the right layer on each
> local.conf, but this means mantaining build directories, or at last
> local.conf, which doesn't seem a good idea for me...
>
> Would be possible to do this relying only new layers and its configurations?
>
> Thanks in advance
> Cheers!
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

