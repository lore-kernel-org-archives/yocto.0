Return-Path: <katutxakurra@gmail.com>
Received: from mail-ie0-f195.google.com (mail-ie0-f195.google.com
	[209.85.223.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E40D1E01515
	for <yocto@yoctoproject.org>; Wed, 29 May 2013 06:01:11 -0700 (PDT)
Received: by mail-ie0-f195.google.com with SMTP id s9so1052545iec.2
	for <yocto@yoctoproject.org>; Wed, 29 May 2013 06:01:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=wPkdKsliFYfvnooDNm1SglSyJ5N1dvmzu/kEYL8eNxA=;
	b=hnAB3aRjjFB5tjWTsIO7CuOFJdKURE9e5XaeD5cJO4l9qbzO+fn0a8wUptKfCUJ0AN
	Q/FoQ5WhrGXqdh3dA7Qoua/KTnKUsGoz7v+8zdnnwkCHV8cUbcTYFNPYDPCTvu8fU3fB
	W+E6hJ6t7oee7bJeoXEdg8obdyGMQXPyr1l/2ilTZwRPautytZNciOUQR8sjbvrOawwu
	vpiw1x3MF3B/spblHpmLeP/PGp7kBl2g0ycReK6+5AP2FB8QuketeD4L2JqpSAX3Xklu
	hs/VzcuuaX/k7RQ6ZtXfn5YOkesd1vQO9LTCPT338rs7g5CBnXf+JeNyqKTLDkZwF3K/
	kFMw==
MIME-Version: 1.0
X-Received: by 10.50.134.136 with SMTP id pk8mr1159591igb.32.1369832471364;
	Wed, 29 May 2013 06:01:11 -0700 (PDT)
Received: by 10.50.34.163 with HTTP; Wed, 29 May 2013 06:01:11 -0700 (PDT)
Date: Wed, 29 May 2013 14:01:11 +0100
Message-ID: <CAM1ZcoV_9+XL=Xef62zSo8y7LTLtfYj9DyRhy5dqpcW84=sy_g@mail.gmail.com>
From: Katu Txakur <katutxakurra@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: using module_autoload
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
X-List-Received-Date: Wed, 29 May 2013 13:01:12 -0000
Content-Type: multipart/alternative; boundary=047d7b3a9c16dba36d04dddaf928

--047d7b3a9c16dba36d04dddaf928
Content-Type: text/plain; charset=ISO-8859-1

Hi,
I'm failing to load a kernel module named spike doing this:
1) add the recipe (inherit module), based in a Makefile with
modules_install:
$(MAKE) INSTALL_MOD_DIR=kernel/drivers/spike -C $(KERNEL_SRC) M=$(SRC)
modules_install
2) Add the package to the image with IMAGE_INSTALL += "spike" in the
local.conf file
3) In the machine/mymachine.conf I've added
        MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += "spike"
        module_autoload_spike = "spike"

The driver gets added to the image and I can load it with insmod spike,
however, I would like to load it at boot time.
A workaround is to create a file with the name spike.conf and write spike
inside. Copying that file to /etc/modules-load.d/spike.conf
loads the driver correctly, but I need to do it from a recipe.

Can anyone spot what am I doing wrong?

Thanks a lot,
Katu

--047d7b3a9c16dba36d04dddaf928
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div style>I&#39;m failing to load a kernel module name=
d spike doing this:</div><div style>1) add the recipe (inherit module), bas=
ed in a Makefile with</div><div style><div>modules_install:</div><div><span=
 class=3D"" style=3D"white-space:pre">	</span>$(MAKE) INSTALL_MOD_DIR=3Dker=
nel/drivers/spike -C $(KERNEL_SRC) M=3D$(SRC) modules_install</div>
<div style>2) Add the package to the image with=A0IMAGE_INSTALL +=3D &quot;=
spike&quot; in the local.conf file</div><div style>3) In the machine/mymach=
ine.conf I&#39;ve added</div><div style>=A0 =A0 =A0 =A0 MACHINE_ESSENTIAL_E=
XTRA_RRECOMMENDS +=3D &quot;spike&quot;</div>
<div>=A0 =A0 =A0 =A0 module_autoload_spike =3D &quot;spike&quot;</div><div>=
<br></div><div style>The driver gets added to the image and I can load it w=
ith insmod spike, however, I would like to load it at boot time.</div><div =
style>
A workaround is to create a file with the name spike.conf and write spike i=
nside. Copying that file to /etc/modules-load.d/spike.conf</div><div style>=
loads the driver correctly, but I need to do it from a recipe.</div><div st=
yle>
<br></div><div style>Can anyone spot what am I doing wrong?</div><div style=
><br></div><div style>Thanks a lot,</div><div style>Katu</div><div style><b=
r></div></div></div>

--047d7b3a9c16dba36d04dddaf928--
