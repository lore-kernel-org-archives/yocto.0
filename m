Return-Path: <008dilip@gmail.com>
Received: from mail-ob0-f169.google.com (mail-ob0-f169.google.com
	[209.85.214.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E80FBE01676
	for <yocto@yoctoproject.org>; Tue, 15 Oct 2013 23:40:49 -0700 (PDT)
Received: by mail-ob0-f169.google.com with SMTP id wp4so244234obc.0
	for <yocto@yoctoproject.org>; Tue, 15 Oct 2013 23:40:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=cUTar4x4G+fBpEC6WRsbT7KS85W7zLBSaSSa54kyDeM=;
	b=UYGXOkTGxyLS7dLz9DO8PcqicY8knViKU63UThVZF6O36rsB+43I1fHdPzL3HXpXjU
	liUrf4ljDLGRxfAGKwqrvTPo9p/qhBOqCgKooCiEbY0SF9iIkhqM8ZXNr5x8S/qvmKs2
	PGc/mbigpN4WY6PNi32tVbxzcDY/Zr2TgZkcPyDWLh8EvKhi/e0dG6AvKsP8g47YwFaU
	ftttaQdE580vxJrTa0vMisg0Q/tbP9X0lg/yhPwxoTn2nvAnNiTbcHpgeIG22jd9qRCX
	HCgLjvzuL3wG5rPlo4Ac+y3RyAiozJcDs3nPbjFRGP2ftk6YjiaRL5idSsdXwGZtI/Z4
	O5vA==
MIME-Version: 1.0
X-Received: by 10.182.22.5 with SMTP id z5mr1029501obe.42.1381905648705; Tue,
	15 Oct 2013 23:40:48 -0700 (PDT)
Received: by 10.76.177.34 with HTTP; Tue, 15 Oct 2013 23:40:48 -0700 (PDT)
Received: by 10.76.177.34 with HTTP; Tue, 15 Oct 2013 23:40:48 -0700 (PDT)
Date: Wed, 16 Oct 2013 12:10:48 +0530
Message-ID: <CABmxB3MQHFmQ=RRUCYyLULPwTZ_EFWrtYMKL+fWisVWnsFQbiw@mail.gmail.com>
From: Dilip Kumar <008dilip@gmail.com>
To: yocto@yoctoproject.org
Subject: Adding external kernel module to qemuarm architecture
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
X-List-Received-Date: Wed, 16 Oct 2013 06:40:51 -0000
Content-Type: multipart/alternative; boundary=001a1133232e4dea6404e8d5fb45

--001a1133232e4dea6404e8d5fb45
Content-Type: text/plain; charset=ISO-8859-1

Dear all,

I was able to build external kernel for qemux86 successfully. Then I
changed the architecture to qemuarm in local.conf and added qemuarm bsp
layer in bblayers.conf. if I try to build now it's showing install error in
makefile. I m using hello-mod example for this. Please help me out.

regards
dilip kumar b

--001a1133232e4dea6404e8d5fb45
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Dear all,</p>
<p dir=3D"ltr"> I was able to build external kernel for qemux86 successfull=
y. Then I changed the architecture to qemuarm in local.conf and added qemua=
rm bsp layer in bblayers.conf. if I try to build now it&#39;s showing insta=
ll error in makefile. I m using hello-mod example for this. Please help me =
out.<br>
</p>
<p dir=3D"ltr">regards <br>
dilip kumar b</p>

--001a1133232e4dea6404e8d5fb45--
