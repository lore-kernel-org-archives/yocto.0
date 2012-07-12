Return-Path: <navani.srivastava@gmail.com>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C56E1E00344
	for <yocto@yoctoproject.org>; Thu, 12 Jul 2012 00:21:05 -0700 (PDT)
Received: by bkty5 with SMTP id y5so1853078bkt.35
	for <yocto@yoctoproject.org>; Thu, 12 Jul 2012 00:21:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:cc:content-type;
	bh=QHyMa86ivzDhwK2rkOWYwTGqdgq7VtziTmosecGsN8o=;
	b=0sgr8qON1pyoTPlFFMcUKzPJ6f7EYnpyf9cwU7ZgdaFn5fuTQJ8OLpnZoKS+hWlmA3
	oxtfy+5X5vA86ZDLvWAsIgM7B2pPieEqHFurwdrFqjWlp6sPuNeIoU1mumj6ZG+HyJre
	eAnis2OmISt0nLfTsF49t59iTmUqIj7yRN1tGVZwtjn+gFqe3CFtlv1T14IhHbDVXrBf
	drw+IM5Y7KMzBZ2AfIOBx6BiwbuCcheyck8/09XbSmMeYJUxs4RicWCc7QGXrUvG19LP
	JO1DGZiLOZ0kwWBmgHtJnCA4qc4N/BZdHmYisyChO89L7y6H8lbFpzNE2FfQ30OP38mL
	g+Yw==
Received: by 10.205.119.208 with SMTP id fv16mr11071764bkc.100.1342077664366; 
	Thu, 12 Jul 2012 00:21:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.205.34.4 with HTTP; Thu, 12 Jul 2012 00:20:44 -0700 (PDT)
From: Navani Srivastava <navani.srivastava@gmail.com>
Date: Thu, 12 Jul 2012 12:50:44 +0530
Message-ID: <CA+Z6RkW9JGtQoORJWdxRt73FQxz20WxkAheWGz+DqE_NvvyQhA@mail.gmail.com>
To: yocto@yoctoproject.org
Cc: navani.srivastava@lnties.com
Subject: Not able to include dhcp package
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
X-List-Received-Date: Thu, 12 Jul 2012 07:21:06 -0000
Content-Type: multipart/alternative; boundary=00151759355c720f7704c49cce9e

--00151759355c720f7704c49cce9e
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hi,



I am using denzil-7.0 and I am trying to include dhcp package in my rootfs.
I appended following option for dhcp (bitbake =96e dhcp | grep =96e
=93^PACKAGES=3D=94 ) in rootfs .bb file-



IMAGE_INSTALL +=3D =93dhcp-dbg dhcp-staticdev dhcp-doc dhcp-dev dhcp-server
 dhcp-server-config dhcp-client dhcp-relay dhcp-omshell"



But it ended up with following error-



Processing task-core-boot...

| Processing dhcp-omshell...

| Processing colorado...

| Processing dhcp-relay...

| Processing dhcp-staticdev...

| Processing dhcp-server...

| Processing dhcp-client...

| Processing dhcp-doc...

| Processing dhcp-dbg...

| Processing dhcp-server-config...

| error: Failed dependencies:

|       dhcp =3D 4.2.3+P2-r0 is needed by dhcp-dev-4.2.3+P2-r0.armv6

NOTE: package poky-image-1.0-r0: task do_rootfs: Failed

ERROR: Task 8 (/home/navani/Poky-7.0/meta-EB/recipes-EB/images/poky-image.b=
b,
do_rootfs) failed with exit code '1'

NOTE: Tasks Summary: Attempted 1184 tasks of which 1172 didn't need to be
rerun and 1 failed.



Any help is appreciated.



Thanks and Regards

Navani Kamal Srivastava

--00151759355c720f7704c49cce9e
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<br><div class=3D"gmail_quote">




<div link=3D"blue" vlink=3D"purple" lang=3D"EN-US">
<div>
<p class=3D"MsoNormal">Hi,</p>
<p class=3D"MsoNormal">=A0</p>
<p class=3D"MsoNormal">I am using denzil-7.0 and I am trying to include dhc=
p package in my rootfs. I appended following option for dhcp (bitbake =96e =
dhcp | grep =96e =93^PACKAGES=3D=94 ) in rootfs .bb file-</p>
<p class=3D"MsoNormal">=A0</p>
<p class=3D"MsoNormal">IMAGE_INSTALL +=3D =93dhcp-dbg dhcp-staticdev dhcp-d=
oc dhcp-dev dhcp-server =A0dhcp-server-config dhcp-client dhcp-relay dhcp-o=
mshell&quot;</p>
<p class=3D"MsoNormal">=A0</p>
<p class=3D"MsoNormal">But it ended up with following error-</p>
<p class=3D"MsoNormal">=A0</p>
<p class=3D"MsoNormal">Processing task-core-boot...</p>
<p class=3D"MsoNormal">| Processing dhcp-omshell...</p>
<p class=3D"MsoNormal">| Processing colorado...</p>
<p class=3D"MsoNormal">| Processing dhcp-relay...</p>
<p class=3D"MsoNormal">| Processing dhcp-staticdev...</p>
<p class=3D"MsoNormal">| Processing dhcp-server...</p>
<p class=3D"MsoNormal">| Processing dhcp-client...</p>
<p class=3D"MsoNormal">| Processing dhcp-doc...</p>
<p class=3D"MsoNormal">| Processing dhcp-dbg...</p>
<p class=3D"MsoNormal">| Processing dhcp-server-config...</p>
<p class=3D"MsoNormal">| error: Failed dependencies:</p>
<p class=3D"MsoNormal">|=A0=A0=A0=A0=A0=A0 dhcp =3D 4.2.3+P2-r0 is needed b=
y dhcp-dev-4.2.3+P2-r0.armv6</p>
<p class=3D"MsoNormal">NOTE: package poky-image-1.0-r0: task do_rootfs: Fai=
led</p>
<p class=3D"MsoNormal">ERROR: Task 8 (/home/navani/Poky-7.0/meta-EB/recipes=
-EB/images/<a href=3D"http://poky-image.bb" target=3D"_blank">poky-image.bb=
</a>, do_rootfs) failed with exit code &#39;1&#39;</p>
<p class=3D"MsoNormal">NOTE: Tasks Summary: Attempted 1184 tasks of which 1=
172 didn&#39;t need to be rerun and 1 failed.</p>
<p class=3D"MsoNormal">=A0</p>
<p class=3D"MsoNormal">Any help is appreciated.</p>
<p class=3D"MsoNormal">=A0</p>
<p class=3D"MsoNormal">Thanks and Regards</p>
<p class=3D"MsoNormal">Navani Kamal Srivastava</p>
</div></div></div>

--00151759355c720f7704c49cce9e--
