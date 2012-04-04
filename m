Return-Path: <joaohf@gmail.com>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 568A8E0044A
	for <yocto@yoctoproject.org>; Wed,  4 Apr 2012 15:05:07 -0700 (PDT)
Received: by bkcji17 with SMTP id ji17so1103752bkc.35
	for <yocto@yoctoproject.org>; Wed, 04 Apr 2012 15:05:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=qNBnfWWQfj8W7t78UV+a5LQiB3Y4MGXctx9rlgisGPI=;
	b=OaaUyesk8O1tafDs5U5LkMsonxfZ5btSQQpJoxCZMB1NnQbrfM5cVXUoHCPgAVy81l
	jjLohtWGgUqcgnYB4t9T3VkWHmg/OKQjVLeVqCGVKFvS7qNejm0mBSUL625NcvDjjov/
	IWn4YibAj7wPFteEJiS1ikDEEklw16fCWrSm8w/KXfyPsgVO1CauWdvv5MXhhsvyIDFe
	3zQT99F5WUWKj2174UH+d9isKfp1LfFcbdjXS0Q0PMZh+R4ujsfNEHaxESqQ0MngTHl8
	5sFWA8MN+0I29GvDyvLPN2ks1p/d6GDR8ApmXCwrRHDFj7ivjcqlW4ycyRa+NvPCYSqp
	mPdQ==
MIME-Version: 1.0
Received: by 10.205.139.77 with SMTP id iv13mr32629bkc.91.1333577105794; Wed,
	04 Apr 2012 15:05:05 -0700 (PDT)
Received: by 10.205.40.4 with HTTP; Wed, 4 Apr 2012 15:05:05 -0700 (PDT)
Date: Wed, 4 Apr 2012 19:05:05 -0300
Message-ID: <CANFVK7_ahuH9aSOepVX__Zw1ppSeHNRr_SM=x5xgWMGd=APr6g@mail.gmail.com>
From: =?UTF-8?Q?Jo=C3=A3o_Henrique_Freitas?= <joaohf@gmail.com>
To: yocto@yoctoproject.org
Subject: Using vendo kernel with Yocto
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
X-List-Received-Date: Wed, 04 Apr 2012 22:05:07 -0000
Content-Type: multipart/alternative; boundary=0015174026ccabe58304bce19dba

--0015174026ccabe58304bce19dba
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I have this situation:

My vendor device provides a kernel (2.6.22.19) with a patch to its device.
The device is a arm920t. And the vendor is Mindspeed.

I want to use Yocto to build the kernel and userland. In the past the
vendor provided a very old debian-like userland.

I am trying the following:

- create a recipe to build the kernel 2.6.22.19 with patch to the device
supplied by vendor
- build a image using core-image-minimal only to boot the device
- I think that linux-libc-headers should be 2.6.22.19, but I am trying with
linux-libc-headers-yocto
- the device boots with kernel compiled with Yocto but I have some sort of
problems with boot scripts. I am investigating.

Questions:

With Yocto (1.2M3), I can use a kernel 2.6.22.19 with userland provide by
Yocto project?

What is the minimal version of the kernel supported by Yocto?

I have other way to choice like port the vendor patch to a newer kernel.
But I prefer trying these way for now.

Thanks.

--=20
-----------------------------------------------------------
Jo=C3=A3o Henrique Freitas - joaohf_at_gmail.com
Campinas-SP-Brasil
BSD051283
LPI 1
http://www.joaohfreitas.eti.br

--0015174026ccabe58304bce19dba
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<br>Hello,<br><br>I have this situation:<br><br>My vendor device provides a=
 kernel (2.6.22.19) with a patch to its device. The device is a arm920t. An=
d the vendor is Mindspeed.<br><br>I want to use Yocto to build the kernel a=
nd userland. In the past the vendor provided a very old debian-like userlan=
d.<br>
<br>I am trying the following:<br><br>- create a recipe to build the kernel=
 2.6.22.19 with patch to the device supplied by vendor<br>- build a image u=
sing core-image-minimal only to boot the device<br>- I think that linux-lib=
c-headers should be 2.6.22.19, but I am trying with linux-libc-headers-yoct=
o<br>
- the device boots with kernel compiled with Yocto but I have some sort of =
problems with boot scripts. I am investigating.<br><br>Questions:<br><br>Wi=
th Yocto (1.2M3), I can use a kernel 2.6.22.19 with userland provide by Yoc=
to project? <br>
<br>What is the minimal version of the kernel supported by Yocto?<br><br>I =
have other way to choice like port the vendor patch to a newer kernel. But =
I prefer trying these way for now.<br><br clear=3D"all">Thanks.<br><br>-- <=
br>
-----------------------------------------------------------<br>Jo=C3=A3o He=
nrique Freitas - <a href=3D"http://joaohf_at_gmail.com">joaohf_at_gmail.com=
</a><br>Campinas-SP-Brasil<br>BSD051283<br>LPI 1<br><a href=3D"http://www.j=
oaohfreitas.eti.br">http://www.joaohfreitas.eti.br</a><br>


--0015174026ccabe58304bce19dba--
