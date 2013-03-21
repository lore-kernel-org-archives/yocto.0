Return-Path: <navani.srivastava@gmail.com>
Received: from mail-oa0-f45.google.com (mail-oa0-f45.google.com
	[209.85.219.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78A4EE0146C
	for <yocto@yoctoproject.org>; Thu, 21 Mar 2013 07:03:53 -0700 (PDT)
Received: by mail-oa0-f45.google.com with SMTP id o6so3144356oag.32
	for <yocto@yoctoproject.org>; Thu, 21 Mar 2013 07:03:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=QleFme0Csa6TmLuc15qj7ZHckK3pNz8vTWInDqgjdzM=;
	b=TtPbNkiUQ0k8y5W2sFk+llvFELoPBTZpMm22a9o2k96OGbySe9rjoPxLeG+wKPfwYY
	5MpxJaD9Q1EPr0s4sNNXfzZ5ZQYKu2jGPryYpDeyuQNvQeJyuKE6BDLD2WgSGF/gJyC9
	DSgRqP0c/ug5k1o3rBM6nQSC9eyBtGShalPq5vAU0Yui0HrC7O5hEVRTJvD2u4oAhdEZ
	1vC0+9d9u4fxQsD5ei4fPJmvD5Je2RK7KGKAcUZms8Jy/AuI3NNEpfzbGOPW2BlvqfRu
	G4Trv1D4HNrC69SLNeJ6ihiT2/Ou2SvSshC9F3R4IenRftdo4zYarNiasW/lPNBJvqZe
	LCvQ==
MIME-Version: 1.0
X-Received: by 10.182.180.67 with SMTP id dm3mr3988761obc.78.1363874632758;
	Thu, 21 Mar 2013 07:03:52 -0700 (PDT)
Received: by 10.182.121.99 with HTTP; Thu, 21 Mar 2013 07:03:52 -0700 (PDT)
Received: by 10.182.121.99 with HTTP; Thu, 21 Mar 2013 07:03:52 -0700 (PDT)
In-Reply-To: <CA+Z6RkXxfZGQacZ2k+KXqrg6S9XPWk3Bxw6YGXehVYWY-dVnug@mail.gmail.com>
References: <9BACABF0C6B14A4D8C33B42A795119BE1B6FE1F8@POCITMSEXMB05.LntUniverse.com>
	<CA+Z6RkXxfZGQacZ2k+KXqrg6S9XPWk3Bxw6YGXehVYWY-dVnug@mail.gmail.com>
Date: Thu, 21 Mar 2013 19:33:52 +0530
Message-ID: <CA+Z6RkUag6APHa0WwFurvCcR=r__O-zvaWB5qMDyGrwg76_jfA@mail.gmail.com>
From: Navani Srivastava <navani.srivastava@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Cc: "navani.srivastava@lnties.com" <navani.srivastava@lnties.com>
Subject: Problem in inserting kernel modules at Start up
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
X-List-Received-Date: Thu, 21 Mar 2013 14:03:53 -0000
Content-Type: multipart/alternative; boundary=f46d0442876a01013a04d86fcf45

--f46d0442876a01013a04d86fcf45
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hi,

I am using poky -8.0 (danny) . I wish to insert kernel modules at start up.
Before with denzil version I was adding kernel-modules to =93IMAGE_INSTALL =
=93
in rootfs image and it used to work like a charm. Now if I am doing the
same it is giving me error as mentioned below.



=93error: Failed dependencies:

        kernel-2.6.35.3-433-g0fae922 is needed by
kernel-module-firmware-class-2.6.35.3-r0.iboard

        kernel-2.6.35.3-433-g0fae922 is needed by
kernel-module-usbhid-2.6.35.3-r0.iboard

        kernel-2.6.35.3-433-g0fae922 is needed by
kernel-module-mousedev-2.6.35.3-r0.iboard

        kernel-2.6.35.3-433-g0fae922 is needed by
kernel-module-usbtouchscreen-2.6.35.3-r0.iboard

        kernel-2.6.35.3-433-g0fae922 is needed by
kernel-module-ks8851-2.6.35.3-r0.iboard

        kernel-2.6.35.3-433-g0fae922 is needed by
kernel-module-scsi-wait-scan-2.6.35.3-r0.iboard

        kernel-2.6.35.3-433-g0fae922 is needed by
kernel-module-hid-2.6.35.3-r0.iboard=94



I am doing =93bitbake =96v kmod-native=94 before running rootfs image. Any
suggestions are appreciated.

Thanks and Regards
Navani Kamal Srivastava

--f46d0442876a01013a04d86fcf45
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<p>Hi,<br>
=A0<br>
I am using poky -8.0 (danny) . I wish to insert kernel modules at start up.=
 Before with denzil version I was adding kernel-modules to =93IMAGE_INSTALL=
 =93 in rootfs image and it used to work like a charm. Now if I am doing th=
e same it is giving me error as mentioned below.</p>

<p>=A0</p>
<p>=93error: Failed dependencies:</p>
<p>=A0=A0=A0=A0=A0=A0=A0 kernel-2.6.35.3-433-g0fae922 is needed by kernel-m=
odule-firmware-class-2.6.35.3-r0.iboard</p>
<p>=A0=A0=A0=A0=A0=A0=A0 kernel-2.6.35.3-433-g0fae922 is needed by kernel-m=
odule-usbhid-2.6.35.3-r0.iboard</p>
<p>=A0=A0=A0=A0=A0=A0=A0 kernel-2.6.35.3-433-g0fae922 is needed by kernel-m=
odule-mousedev-2.6.35.3-r0.iboard</p>
<p>=A0=A0=A0=A0=A0=A0=A0 kernel-2.6.35.3-433-g0fae922 is needed by kernel-m=
odule-usbtouchscreen-2.6.35.3-r0.iboard</p>
<p>=A0=A0=A0=A0=A0=A0=A0 kernel-2.6.35.3-433-g0fae922 is needed by kernel-m=
odule-ks8851-2.6.35.3-r0.iboard</p>
<p>=A0=A0=A0=A0=A0=A0=A0 kernel-2.6.35.3-433-g0fae922 is needed by kernel-m=
odule-scsi-wait-scan-2.6.35.3-r0.iboard</p>
<p>=A0=A0=A0=A0=A0=A0=A0 kernel-2.6.35.3-433-g0fae922 is needed by kernel-m=
odule-hid-2.6.35.3-r0.iboard=94</p>
<p>=A0</p>
<p>I am doing =93bitbake =96v kmod-native=94 before running rootfs image. A=
ny suggestions are appreciated.</p>
<p>Thanks and Regards<br>
Navani Kamal Srivastava<br>
</p>

--f46d0442876a01013a04d86fcf45--
