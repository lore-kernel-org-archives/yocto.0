Return-Path: <hans.beckerus@gmail.com>
Received: from mail-ob0-f182.google.com (mail-ob0-f182.google.com
	[209.85.214.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50215E01206
	for <yocto@yoctoproject.org>; Wed,  4 Sep 2013 02:24:13 -0700 (PDT)
Received: by mail-ob0-f182.google.com with SMTP id wo10so49929obc.13
	for <yocto@yoctoproject.org>; Wed, 04 Sep 2013 02:24:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type:content-transfer-encoding;
	bh=Eh+7iBVCsrrE8eqmzq0D2YS/YeTr6lLxA3cuA+aBkEI=;
	b=tUZ/MYD8vZE/99E3QBjSf4gZTo0+xSJXCo7FNYd8e2VigWpgwW8h7db8guwFz5dIRh
	CSkLsOwRfAMBHwMeUG0Eg9Z8Lw/KWwplPvRPatmDKFi+7qcRjzx9qnI55PTTove27quR
	67dR7op+Sg/ieAPPSch5bnhrDM0A4YQtMNW/VD4qtGuF7Wl8aesVvAo/ay3Vg9lF/MZM
	Vl5iVKtzwCzwJYNGVK77TaJPNj01I67jO03th/11pc2ULyDboXOBmVH6lrKx5OunTWcK
	3SfETlgiSBImV9KRtk5GIoqlaFIoFW+UVoewi3WQMnpc/5CcRaVkW1fuOg2a6RPnRIGw
	sPLQ==
MIME-Version: 1.0
X-Received: by 10.182.130.131 with SMTP id oe3mr1433903obb.34.1378286653127;
	Wed, 04 Sep 2013 02:24:13 -0700 (PDT)
Received: by 10.182.44.8 with HTTP; Wed, 4 Sep 2013 02:24:13 -0700 (PDT)
In-Reply-To: <CAFyqS9ph4qdURC517N7cDr_05KS3kQJMgoQ-tMV+vLUXwMd70A@mail.gmail.com>
References: <CAFyqS9ph4qdURC517N7cDr_05KS3kQJMgoQ-tMV+vLUXwMd70A@mail.gmail.com>
Date: Wed, 4 Sep 2013 11:24:13 +0200
Message-ID: <CAFyqS9qZAsFnXn2CF7-K6fWK3yEMLAZbDTkx_a81=s+Nj=ugUw@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: libtool problem?
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
X-List-Received-Date: Wed, 04 Sep 2013 09:24:16 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 4, 2013 at 9:53 AM, Hans Beck=E9rus <hans.beckerus@gmail.com> w=
rote:
> Hi. I recently discovered that our populated SDK can not properly
> build much at all :(
> libtool complains about .la files that have been moved and not being
> able to find dito.
> The rootfs builds fine however. What I did noticed was that in our .la
> files we get lines like this:
>
> dependency_libs=3D' =3D/usr/lib/libxcb.la =3D/usr/lib/libXau.la =3D/usr/l=
ib/libXdmcp.la'
>
> Is that '=3D'-sign really supposed to be there? Is that why many builds
> fails to properly locate the .la files?
>
The '=3D'-sign is still a mystery to me. But it does not seem to matter muc=
h.
If I configure my packages (built from the SDK toolchain) using
'--with-libtool-sysroot=3D/home/toolchain/sysroots/cortexa9-vfp-poky-linux-=
gnueabi/'
it works! But should that really be needed? Is the path to be used by
libtool not supposed to be automatically resolved to point at the
toolchain sysroot in cross-compilation environment?

> Thanks.
> Hans

