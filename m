Return-Path: <tomalex333@gmail.com>
Received: from mail-qe0-f43.google.com (mail-qe0-f43.google.com
	[209.85.128.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D5DDE007A4
	for <yocto@yoctoproject.org>; Mon, 23 Dec 2013 04:09:18 -0800 (PST)
Received: by mail-qe0-f43.google.com with SMTP id jy17so4964262qeb.2
	for <yocto@yoctoproject.org>; Mon, 23 Dec 2013 04:09:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=ULu3wJGzcxrdkHYui28KxPWwCkLakxzOt25sZMsuwMQ=;
	b=JujY3RcXdPO13olFDCmCpGMi5j66ulq5qIL6H9kXHHXfweOCvv9tGdMwZrf0KFII8c
	q37xMNlTJmGc1rUa9aWV6vO3TdFflYUSwsv/7cTEmCAgT01dWTPX8qMAmiX4euniIkMV
	v0/vijwFqTgJUmz6PWget4scxZUnpGziPBVE7x4kPgiPOiCBmhJDVFdKwO1mcsgemQdF
	n53Y+BNtYSnlWaJRFGU3/yl+9FqgGTjq/r0WWFS4we5uC+e/EIz2quO0pdvvjqVleVp7
	+meUuNlPwFaHU9n+vJ2GKDmnCCPfDmDSrD6dVs1bwQwp3Nz3Zmglo7E6HYfAemC1eZ7l
	f25A==
MIME-Version: 1.0
X-Received: by 10.49.131.164 with SMTP id on4mr41992818qeb.16.1387800557722;
	Mon, 23 Dec 2013 04:09:17 -0800 (PST)
Received: by 10.96.55.200 with HTTP; Mon, 23 Dec 2013 04:09:17 -0800 (PST)
Date: Mon, 23 Dec 2013 17:39:17 +0530
Message-ID: <CAOMiE0k4kQ+=-bT84z9zpx11zy9UeqbZdALFVgvqkSNxf=UHXg@mail.gmail.com>
From: tom alex <tomalex333@gmail.com>
To: yocto@yoctoproject.org
Subject: adding gcc and gdb in image
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
X-List-Received-Date: Mon, 23 Dec 2013 12:09:19 -0000
Content-Type: multipart/alternative; boundary=047d7bd7513243252904ee327f0d

--047d7bd7513243252904ee327f0d
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I am new to meta-ivi and yocto. I am trying to build the meta-ivi.
After creating the image am not able to get the gcc and gdb packages in the
generated gemini-image.

*Is it possible to add those package in the image, so that I can build and
debug the applications in target machine ?*

I have added this line to local.config file
EXTRA_IMAGE_FEATURES += "debug-tweaks dbg-pkgs dev-pkgs tools-sdk
ssh-server-openssh tools-debug"
still am not able to get debug or development packages.

Thanks
Tom

--047d7bd7513243252904ee327f0d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi,<br><br>I am new to meta-ivi and yocto. I am =
trying to build the meta-ivi.<br>After creating the image am not able to ge=
t the gcc and gdb packages in the generated gemini-image. <br><br><b>Is it =
possible to add those package in the image, so that I can build and debug t=
he applications in target machine ?</b><br>
<br>I have added this line to local.config file<br>EXTRA_IMAGE_FEATURES +=
=3D &quot;debug-tweaks dbg-pkgs dev-pkgs tools-sdk ssh-server-openssh tools=
-debug&quot;<br>still am not able to get debug or development packages.<br>
<br></div>Thanks<br></div>Tom<br></div>

--047d7bd7513243252904ee327f0d--
