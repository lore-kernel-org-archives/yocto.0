Return-Path: <dan.florincristian@gmail.com>
Received: from mail-oa0-f51.google.com (mail-oa0-f51.google.com
	[209.85.219.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6AF6AE012F1
	for <yocto@yoctoproject.org>; Wed, 20 Mar 2013 07:57:32 -0700 (PDT)
Received: by mail-oa0-f51.google.com with SMTP id h2so1880409oag.10
	for <yocto@yoctoproject.org>; Wed, 20 Mar 2013 07:57:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=lmkaqC7vA1D63HX2e5uWekZ8EDE4XwL5juikd0jYu6k=;
	b=cGUa/094ew9rgQG267xJL6RujsVbSepgI7w/zzl2HsocrthVGfJT5czNJRAgCOJnFc
	6bu5P6IIrr2gROWjJJr51S5cAaNHd4XTpaUO+quJfKhV8tPSBjtnpz82WyzhI9xjoelL
	7oGL/oo3mFE6GvKigXdiWnJEGpLjMfEa5Uxd6+lQcNiAuF3doDySiMFZWvyQc/re86QN
	2MSzpkftlK55hueA/xzpSN9cC7zigIio8Ls1l9Qo6xlN70TPRSdU0yXGYXi6VE9Er9Rt
	yTSqpg6QT6KKnk71TqNpyxQOcqgY1X1W0pGFS3/c1PxsLpDjcPitLmbNEN9Pp1NGVaC9
	YZjw==
MIME-Version: 1.0
X-Received: by 10.60.171.102 with SMTP id at6mr4428453oec.60.1363791451843;
	Wed, 20 Mar 2013 07:57:31 -0700 (PDT)
Received: by 10.76.163.71 with HTTP; Wed, 20 Mar 2013 07:57:31 -0700 (PDT)
Date: Wed, 20 Mar 2013 16:57:31 +0200
Message-ID: <CABzOdpQdqLfg=RsjfgG2Qj5hQnVF4116a6vq=yAE2Vgbr520QQ@mail.gmail.com>
From: Florin Cristian Dan <dan.florincristian@gmail.com>
To: yocto@yoctoproject.org
Subject: core-image-sato-emenlow-sdk Boot problem
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
X-List-Received-Date: Wed, 20 Mar 2013 14:57:32 -0000
Content-Type: multipart/alternative; boundary=bcaec54ee09408f4a904d85c7140

--bcaec54ee09408f4a904d85c7140
Content-Type: text/plain; charset=ISO-8859-1

Hello everybody,
I've just finished burning my image, core-image-sato-sdk trough HOB , and
i've added the layer path to meta-intel folder and to meta-emenlow wich is
within meta-intel, after that it was just a matter of time. After 8 hours
and some....the process finished (i don't know if that is normal, i don't
run my Ubuntu on a virtual machine, i run it on a I5, 6gb Ram)
anyway...aftar the procces was completed, i've burn the .hddimg first on a
usb stick, aftter that i pluged the USB in my target machine,
surprise...the boot wouldn't start, said something about not finding the
kernel image...
After that i decided to burn again the image but this time i chosed .iso
file, after the burning proccess completed i've pluged in the USB, the boot
starts, the Yocto Project logo apears, but gets stuck when the loading bar
is realy close to the end....i've rebooted the target machine only in
terminat....i enter the login: root....after that i run startx comand and
suprise it gave me this:
xauth: error in locking autorithy file /home/root/.serverauth.1358
xauth: error in locking autorithy file /home/root/.Xautorithy
xauth: error in locking autorithy file /home/root/.Xautorithy
xauth: error in locking autorithy file /home/root/.Xautorithy
xauth: error in locking autorithy file /home/root/.Xautorithy

Fatal server error:
Could not create lock file in /tmp/.tx0-lock

Has anyoane any ideea what to do?
Thank you very much

--bcaec54ee09408f4a904d85c7140
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello everybody,=A0<div>I&#39;ve just finished burning my image, core-image=
-sato-sdk trough HOB , and i&#39;ve added the layer path to meta-intel fold=
er and to meta-emenlow wich is within meta-intel, after that it was just a =
matter of time. After 8 hours and some....the process finished (i don&#39;t=
 know if that is normal, i don&#39;t run my Ubuntu on a virtual machine, i =
run it on a I5, 6gb Ram) anyway...aftar the procces was completed, i&#39;ve=
 burn the .hddimg first on a usb stick, aftter that i pluged the USB in my =
target machine, surprise...the boot wouldn&#39;t start, said something abou=
t not finding the kernel image...</div>
<div>After that i decided to burn again the image but this time i chosed .i=
so file, after the burning proccess completed i&#39;ve pluged in the USB, t=
he boot starts, the Yocto Project logo apears, but gets stuck when the load=
ing bar is realy close to the end....i&#39;ve rebooted the target machine o=
nly in terminat....i enter the login: root....after that i run startx coman=
d and suprise it gave me this:</div>
<div>xauth: error in locking autorithy file /home/root/.serverauth.1358</di=
v><div>xauth: error in locking autorithy file /home/root/.Xautorithy</div><=
div>xauth: error in locking autorithy file /home/root/.Xautorithy</div>
<div>xauth: error in locking autorithy file /home/root/.Xautorithy</div><di=
v>xauth: error in locking autorithy file /home/root/.Xautorithy</div><div><=
br></div><div>Fatal server error:</div><div>Could not create lock file in /=
tmp/.tx0-lock</div>
<div><br></div><div>Has anyoane any ideea what to do?</div><div>Thank you v=
ery much</div>

--bcaec54ee09408f4a904d85c7140--
