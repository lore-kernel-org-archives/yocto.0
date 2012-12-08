Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 101D4E00559
	for <yocto@yoctoproject.org>; Sat,  8 Dec 2012 10:41:47 -0800 (PST)
Received: by mail-pb0-f48.google.com with SMTP id rq13so1029193pbb.35
	for <yocto@yoctoproject.org>; Sat, 08 Dec 2012 10:41:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=FKkHNG7t863dwtYOZPFX5c8nPL1j3CUkK+/v+XUiiUk=;
	b=tENwPp8nX9FrZ5RmU1LV6Db/ZqBd9XQ6h5Ok9sbgglXjkygxOJ0W2b86oqqx+nezi0
	+C3f3je7kemkfXzhCbVj5ZVSz36cztojeXTh3tLl7WVEKYZcUjUdz+QEp6XWIIPSXGgB
	SXkZCE/D9NCL+6HA39thd8iTUgt/2wSAog7m7p7gAIPkawyUFqeMEB5/bgwo8r0l5R+i
	U9UGgz4UEcr0QJnSRUB49Hc1daF6+ba831SFrNZQIFFEb45hC7v7IUlbolJXXaseyFq3
	Sf1XSM4OqfYcVPKFvpaBBWkw7ZI7VDQJnvL9ezLlaVrM61TRpybrbEqivbGpPoT9/90/
	VS6Q==
Received: by 10.66.77.196 with SMTP id u4mr22425679paw.84.1354992106881;
	Sat, 08 Dec 2012 10:41:46 -0800 (PST)
Received: from [192.168.1.100] ([94.205.107.244])
	by mx.google.com with ESMTPS id nw9sm2991705pbb.42.2012.12.08.10.41.44
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 08 Dec 2012 10:41:46 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 6.2 \(1499\))
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <5AACF581-BEC6-4F1C-88D6-EF1B8FE74F32@gmail.com>
Date: Sat, 8 Dec 2012 22:41:41 +0400
Message-Id: <1ECD0A95-387D-45C3-9816-02D0747BD34A@gmail.com>
References: <31099774-8FED-4465-BFC3-67C718BC4AF6@gmail.com>
	<50C3647F.4050900@mlbassoc.com>
	<5AACF581-BEC6-4F1C-88D6-EF1B8FE74F32@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
X-Mailer: Apple Mail (2.1499)
Subject: Re: How to check if systemd is correctly setup
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 08 Dec 2012 18:41:47 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,

>=20
> On Dec 8, 2012, at 8:02 PM, Gary Thomas <gary@mlbassoc.com> wrote:
>>=20
>> First thing, make sure that your kernel has this in the config:
>> CONFIG_DEVTMPFS=3Dy
>> CONFIG_DEVTMPFS_MOUNT=3Dy
>> The latest udev (rev 182) has to have this to work.
>=20

In my kernel boot message,=20

devtmpfs: mounted
Freeing unused kernel memory : 168k freed
_

I am able to ping to the board from a terminal console on the host, and =
I get a reply.

However, I don't see a console prompt, even though on my bootargs i have =
set init=3D/bin/sh

Best regards,

Elvis Dowson=

