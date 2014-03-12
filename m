Return-Path: <djwelch666@gmail.com>
Received: from mail-pd0-f172.google.com (mail-pd0-f172.google.com
	[209.85.192.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1FDCE009BB
	for <yocto@yoctoproject.org>; Wed, 12 Mar 2014 02:35:39 -0700 (PDT)
Received: by mail-pd0-f172.google.com with SMTP id p10so829904pdj.17
	for <yocto@yoctoproject.org>; Wed, 12 Mar 2014 02:35:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=Uml1I7DHm0kY6+v7AnRPS/2/hUlkXbbgTRp4MRCDruM=;
	b=EyMDrhyKv5PRZXZrYBiThiuU8AxwrhH2MKL21GQ1nHZxcKMgmzzDF2hGAmMcL1EmsO
	e/rGCA2C/qdLYwBN0TPPQ0Bvw0unwt30vcsFuBXrLjgSGHhI3ayzhTG4s/T73TBzIh7v
	BrhBWsYtKSlt52S62LERN+Af8teQz25ZgKZ5dqNuCKWsC8NUCJwOhUFnW3JlH8Se/FnY
	gNBJhayYTjnis+jmJLpuxAoiIWdMSfbyp5XJmDmfbgjwh3mYdDZ8gIT3d7fpPgEtxipm
	mm28gCwEVmu6kfSns3M7Mslu0s5B7DqI3gAywKrEkWtHTwx8c0yoosd7zxDWMWf+1yLm
	UGLg==
MIME-Version: 1.0
X-Received: by 10.68.244.229 with SMTP id xj5mr3721426pbc.108.1394616938844;
	Wed, 12 Mar 2014 02:35:38 -0700 (PDT)
Received: by 10.68.230.199 with HTTP; Wed, 12 Mar 2014 02:35:38 -0700 (PDT)
Date: Wed, 12 Mar 2014 09:35:38 +0000
Message-ID: <CACP9YJdqYwOHcEDWwuwKFubt8E1-jY6hSpevpGkNHxShVSOrrA@mail.gmail.com>
From: David Welch <djwelch666@gmail.com>
To: yocto@yoctoproject.org
Subject: Creating an installer for your Yocto image.
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
X-List-Received-Date: Wed, 12 Mar 2014 09:35:39 -0000
Content-Type: multipart/alternative; boundary=047d7b2e07e33cd85f04f4658f42

--047d7b2e07e33cd85f04f4658f42
Content-Type: text/plain; charset=ISO-8859-1

Hi,

Currently we are dd'ing a yocto created image to a hd.  This works great
for having our production people create new machines in a factory.

I have a new requirement now for what happens if we want to re-image a
machine in the field.  Ideally I would like to be able to insert a USB
stick and have an unattended installation process completely re-image the
hard drive.

I was wondering if there was a Yocto/bitbake package which could create a
default standard linux installation application that could be run at boot
time to partition the hd and install the image.  Would you guys know if
there was a good way this could be achieved or is it a case of writing
something from scratch?

Thanks,
David

--047d7b2e07e33cd85f04f4658f42
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>Currently we are dd&#39;ing a yocto=
 created image to a hd. =A0This works great for having our production peopl=
e create new machines in a factory.</div><div><br></div><div>I have a new r=
equirement now for what happens if we want to re-image a machine in the fie=
ld. =A0Ideally I would like to be able to insert a USB stick and have an un=
attended installation process completely re-image the hard drive.</div>
<div><br></div><div>I was wondering if there was a Yocto/bitbake package wh=
ich could create a default standard linux installation application that cou=
ld be run at boot time to partition the hd and install the image. =A0Would =
you guys know if there was a good way this could be achieved or is it a cas=
e of writing something from scratch?</div>
<div><br></div><div>Thanks,</div><div>David</div></div>

--047d7b2e07e33cd85f04f4658f42--
