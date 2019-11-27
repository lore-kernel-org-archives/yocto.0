Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.4984.1574855835560727182
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Nov 2019 03:57:15 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: collabora.com, ip: 140.211.169.56, mailfrom: fabien.lahoudere@collabora.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 203EEE00D00; Wed, 27 Nov 2019 03:57:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS,UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [46.235.227.227 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
X-Greylist: delayed 443 seconds by postgrey-1.32 at yocto-www; Wed, 27 Nov 2019 03:57:12 PST
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 159B6E00852
	for <yocto@yoctoproject.org>; Wed, 27 Nov 2019 03:57:12 -0800 (PST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: aragua)
	with ESMTPSA id 93D9B2915B2
Message-ID: <8aaca8ba05591626cdac7dd386c3d50ba33c0dda.camel@collabora.com>
Subject: Re: [yocto] How to reduce rootfs image size?
From: "Fabien Lahoudere" <fabien.lahoudere@collabora.com>
To: JH <jupiter.hce@gmail.com>, Yocto discussion list
 <yocto@yoctoproject.org>
Date: Wed, 27 Nov 2019 12:49:45 +0100
In-Reply-To: <CAA=hcWSLMGabXY8pKZpNzoYhcZMGJU6T5awJr88_NTKP6xWaLQ@mail.gmail.com>
References: 
	<CAA=hcWSLMGabXY8pKZpNzoYhcZMGJU6T5awJr88_NTKP6xWaLQ@mail.gmail.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi

If you want to reduce the size of your root filesystem, you have to
remove software you don't need. IMAGE_ROOTFS_SIZE has no effect on the
size of your image-rootfs.tar.gz. Putting a smaller size will just lead
to a rootfs that don't fit in the expected IMAGE_ROOTFS_SIZE.

Fabien

Le mercredi 27 novembre 2019 =C3=A0 22:12 +1100, JH a =C3=A9crit :
> Hi,
>=20
> Does the Yocto rootfs image size is based on real contents included
> in
> the image-rootfs.tar.gz?
>=20
> When I build the image with very large size of applications and
> libraries such as boost, I have my image-rootfs.tr.gz about 44 MB,
> then I removed all large size of applications and libraries, I
> changed
> IMAGE_ROOTFS_SIZE to a small size IMAGE_ROOTFS_SIZE =3D 20000, I
> thought
> the image-rootfs.tar.gz should be reduced to a small size, but it is
> still 43 MB I don't believe it is that big, which variable I should
> use to reduce the image size?
>=20
> Thank you.
>=20
> Kind regards,
>=20
> - jh
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
>=20
> View/Reply Online (#47433):=20
> https://lists.yoctoproject.org/g/yocto/message/47433
> Mute This Topic: https://lists.yoctoproject.org/mt/62495609/3618224
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [fabien.la
> houdere@collabora.co.uk]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-

