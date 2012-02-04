Return-Path: <raj.khem@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0141E003E5
	for <yocto@yoctoproject.org>; Fri,  3 Feb 2012 21:03:53 -0800 (PST)
Received: by lagw12 with SMTP id w12so3034929lag.35
	for <yocto@yoctoproject.org>; Fri, 03 Feb 2012 21:03:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=Lvz7eAXkyUeglpiA9ZeUXtmhh8TXvX0/TVPcflmXA5A=;
	b=mgNzDvTNFYefW+Y++XWXFmTyyFwRb4N7e7O3vmFgMjkL5hn7ojLk4zqtBlz8wx5TGt
	ykF228OEmujyxdbNd3Ac5i1qfNA0YJwSFcJ83w+OBgJAmSmpCCM1mUNNXEktE10MhqUl
	EYivRb8nnKSIu1FskyvsJshrtPlW0+hRJ9VH8=
Received: by 10.152.112.41 with SMTP id in9mr5073743lab.27.1328331832330; Fri,
	03 Feb 2012 21:03:52 -0800 (PST)
MIME-Version: 1.0
Received: by 10.152.5.201 with HTTP; Fri, 3 Feb 2012 21:03:22 -0800 (PST)
In-Reply-To: <CAEKp-abaibKR9XZN8Ddnu4Tt6nWbCiaeJZFkNWZVFWE9ReOwjQ@mail.gmail.com>
References: <CAEKp-abaibKR9XZN8Ddnu4Tt6nWbCiaeJZFkNWZVFWE9ReOwjQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 3 Feb 2012 21:03:22 -0800
Message-ID: <CAMKF1spEvk-hdJgSyFHNX87jxC8jnipXD--K+e4i1L1yTjf_kQ@mail.gmail.com>
To: Rudolf Streif <rudolf.streif@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Task Build Issue
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
X-List-Received-Date: Sat, 04 Feb 2012 05:03:54 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 3, 2012 at 7:27 PM, Rudolf Streif <rudolf.streif@gmail.com> wro=
te:
> I created this task for test purposes:
>
> DESCRIPTION =3D "My Custom Tasks"
>
> LICENSE =3D "MIT"
> LIC_FILES_CHKSUM =3D
> "file://${COREBASE}/LICENSE;md5=3D3f40d7994397109285ec7b81fdeb3b58 \
>
> file://${COREBASE}/meta/COPYING.MIT;md5=3D3da9cfbcb788c80a0384361b4de2042=
0"
>
> PACKAGES =3D "\
> =C2=A0 =C2=A0task-mytask-apps \
> =C2=A0 =C2=A0task-mytask-apps-dbg \
> =C2=A0 =C2=A0task-mytask-apps-dev \
> =C2=A0 =C2=A0task-mytask-tools \
> =C2=A0 =C2=A0task-mytask-tools-dbg \
> =C2=A0 =C2=A0task-mytask-tools-dev \
> =C2=A0 =C2=A0"
>
> RDEPENDS_task-mytask-apps =3D "\
> =C2=A0 sqlite3 \
> =C2=A0 python \
> =C2=A0 python-sqlite3"
>
> RDEPENDS_task-mytask-tools =3D "\
> =C2=A0 sudo \
> =C2=A0 gzip \
> =C2=A0 tar"
>
> I added created a bb containing IMAGE_INSTALL =3D "task-core-boot
> task-base-extended task-mytask-apps"
>
> Bitbake builds the task without any error message. However, building
> the rootfs fails with
>
> | Processing task-mytask-apps...
> | Unable to find package task-mytask-apps (task-mytask-apps)!
>
> log.do_package_write_rpm: contains NOTE: Not creating empty RPM
> package for task-mytask-apps.
>

add ALLOW_EMPTY_ task-mytask-apps =3D "1" to your recipe

> Indeed deploy-rpms of the package is empty however, the deploy-rpms
> dirs of the dependencies contain the necessary packages.
>
> Any help is appreciated.
>
> Thanks,
> Rudi
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

