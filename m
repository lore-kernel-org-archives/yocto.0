Return-Path: <aranzazumuelas@gmail.com>
Received: from mail-qc0-f178.google.com (mail-qc0-f178.google.com
	[209.85.216.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF43EE00779
	for <yocto@yoctoproject.org>; Wed,  4 Dec 2013 07:50:47 -0800 (PST)
Received: by mail-qc0-f178.google.com with SMTP id i17so3702060qcy.9
	for <yocto@yoctoproject.org>; Wed, 04 Dec 2013 07:50:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=FFKhfLZ8nSI0wKNg7k9Y7e4ZDSLzkpLaxYoEu5ypcOE=;
	b=d9cu0yGBDVDksWhQYrYtxrzg7ky4OfawQEFbBUsXUIyNoO7JZ9RMThJiRzQNfAStUH
	lsfeIBygMzxHrsQaINWJe9++lLVKZHRcZkDmIdARtl5UcYsFpZVew7489uKw3beuVhOn
	QHbCL1p42vJm56agFJCqkaWnJ5/bfd3Cj9MX9GmqFjzV5sYeF0Egt54AHrBKtvhrCmfF
	T5S/4O02lrLAileRZEekTpRSBW19tGDNr0HUqCGd3lblohl5MAQi4tLHYVB9XiAfOkIl
	i0ull8wzgn5/85+DrrsOHpP6BtoEDBKkPecvK/i4yWHq+PB1d1Zs8zSQd4KQSy+r+sJK
	rtAQ==
MIME-Version: 1.0
X-Received: by 10.49.2.132 with SMTP id 4mr92644036qeu.15.1386172247011; Wed,
	04 Dec 2013 07:50:47 -0800 (PST)
Received: by 10.229.138.69 with HTTP; Wed, 4 Dec 2013 07:50:46 -0800 (PST)
Date: Wed, 4 Dec 2013 16:50:46 +0100
Message-ID: <CAKVO3PXf2a4fPPhvbz5zLaNQ5tPuw=h+LzUpFd-9fX93v_J2Ng@mail.gmail.com>
From: Arancha Muelas Ruiz <aranzazumuelas@gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Mon, 09 Dec 2013 08:09:18 -0800
Subject: FxOS on Rpi
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
X-List-Received-Date: Wed, 04 Dec 2013 15:50:50 -0000
Content-Type: multipart/alternative; boundary=047d7b6d99b061a19004ecb76007

--047d7b6d99b061a19004ecb76007
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello;
I=B4m tryingo to port FxOS on Raspberry pi with that manual:
http://www.philipp-wagner.com/ffos-for-rpi/manual/

>>>src/poky/rpi-build$ bitbake -v rpi-b2g-image

ERROR: 'debug-tools' in IMAGE_FEATURES is not a valid image feature. Valid
features: dbg-pkgs debug-tweaks dev-pkgs doc-pkgs eclipse-debug hwcodecs
nfs-server package-management package-management ptest-pkgs qt4-pkgs
read-only-rootfs splash ssh-server-dropbear ssh-server-openssh
staticdev-pkgs tools-debug tools-profile tools-sdk tools-testapps x11
x11-base x11-sato
ERROR: Unable to parse /media/9697426f-bc6f-437d-
bb62-4272fef1d0a0/src/poky/meta-b2g/recipes-core/images/rpi-b2g-image.bb:
Exited with "1"
ERROR: 'debug-tools' in IMAGE_FEATURES is not a valid image feature. Valid
features: dbg-pkgs debug-tweaks dev-pkgs doc-pkgs eclipse-debug hwcodecs
nfs-server package-management package-management ptest-pkgs qt4-pkgs
read-only-rootfs splash ssh-server-dropbear ssh-server-openssh
staticdev-pkgs tools-debug tools-profile tools-sdk tools-testapps x11
x11-base x11-sato

Summary: There were 3 ERROR messages shown, returning a non-zero exit code.

I dont know what happen :-(

Any help? please.

Best,A.

--047d7b6d99b061a19004ecb76007
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello;<br>I=B4m tryingo to port FxOS on Raspberry pi =
with that manual: <br><a href=3D"http://www.philipp-wagner.com/ffos-for-rpi=
/manual/" target=3D"_blank">http://www.philipp-wagner.com/ffos-for-rpi/manu=
al/</a><br>
<br>&gt;&gt;&gt;src/poky/rpi-build$ bitbake -v rpi-b2g-image<br><br>
ERROR: &#39;debug-tools&#39; in IMAGE_FEATURES is not a valid image feature=
.=20
Valid features: dbg-pkgs debug-tweaks dev-pkgs doc-pkgs eclipse-debug=20
hwcodecs nfs-server package-management package-management ptest-pkgs=20
qt4-pkgs read-only-rootfs splash ssh-server-dropbear ssh-server-openssh=20
staticdev-pkgs tools-debug tools-profile tools-sdk tools-testapps x11=20
x11-base x11-sato<br>
ERROR: Unable to parse /media/9697426f-bc6f-437d-<div>bb62-4272fef1d0a0/src=
/poky/meta-b2g/recipes-core/images/<a href=3D"http://rpi-b2g-image.bb" targ=
et=3D"_blank">rpi-b2g-image.bb</a>: Exited with &quot;1&quot;<br>ERROR:
 &#39;debug-tools&#39; in IMAGE_FEATURES is not a valid image feature. Vali=
d=20
features: dbg-pkgs debug-tweaks dev-pkgs doc-pkgs eclipse-debug hwcodecs
 nfs-server package-management package-management ptest-pkgs qt4-pkgs=20
read-only-rootfs splash ssh-server-dropbear ssh-server-openssh=20
staticdev-pkgs tools-debug tools-profile tools-sdk tools-testapps x11=20
x11-base x11-sato<br>
<br>Summary: There were 3 ERROR messages shown, returning a non-zero exit c=
ode.<br><br></div>I dont know what happen :-(<br><br></div>Any help? please=
.<br><div><br>Best,A.<div class=3D""><div id=3D":1qo" class=3D"" tabindex=
=3D"0">
<img class=3D"" src=3D"https://mail.google.com/mail/u/0/images/cleardot.gif=
"></div></div></div></div>

--047d7b6d99b061a19004ecb76007--
