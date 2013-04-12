Return-Path: <liljegren.mats2@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09D6DE014D4
	for <yocto@yoctoproject.org>; Fri, 12 Apr 2013 06:58:07 -0700 (PDT)
Received: by mail-ee0-f48.google.com with SMTP id b15so1310372eek.21
	for <yocto@yoctoproject.org>; Fri, 12 Apr 2013 06:58:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:sender:date:x-google-sender-auth:message-id
	:subject:from:to:content-type;
	bh=8J0J6RoZtOJtBC8aLA+UL+/JYTMz4UNmr8fO9j1g7ac=;
	b=EyE6XK67Osa2lwAP2pEIwPf//QOwoWcma1ENmKqzO21zEuzx3UxyZHEbMJj+0YsBKN
	iSn2SVS0heBNhQbXUX4+PFAFQDOm30a62nsDHGEeQUrtq5F+jaS2NbZbkKNvrF4x2yWN
	s5mWxRlXvv8D9I2uCujXlwHIPIoOrQvOjJAryDUZhPpI9uqjw+wQ1zpmBgFL3FPrXVXO
	XOTuc3J0G25h/NHSa7ze2C5matsT7+w918pupVThY7AYGWSOMDqQ7Ri0bop49rYsaPIk
	e5U5FxInDKk3lBagvcYzJ2XUTYnEdzRjIQq3Gl2a08tlAYEqNRSgZLoKmfC6PAj5bowQ
	tQYQ==
MIME-Version: 1.0
X-Received: by 10.15.43.73 with SMTP id w49mr28823072eev.12.1365775081339;
	Fri, 12 Apr 2013 06:58:01 -0700 (PDT)
Sender: liljegren.mats2@gmail.com
Received: by 10.14.142.17 with HTTP; Fri, 12 Apr 2013 06:58:01 -0700 (PDT)
Date: Fri, 12 Apr 2013 15:58:01 +0200
X-Google-Sender-Auth: haFxRIz6lDyiai1m8HK2WHahmdw
Message-ID: <CA+xJJ19kDS-444AsV1esV_QRbqf+GRwsVgf+E498CQVNxxYAGA@mail.gmail.com>
From: Mats Liljegren <mats.liljegren@enea.com>
To: yocto@yoctoproject.org
Subject: How to archive source for a single package
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
X-List-Received-Date: Fri, 12 Apr 2013 13:58:08 -0000
Content-Type: multipart/alternative; boundary=089e01681310912a7604da2a4a9e

--089e01681310912a7604da2a4a9e
Content-Type: text/plain; charset=UTF-8

I need to archive source for virtual/kernel when building. This is needed
for other builds that uses the bitbake build result.

I saw that there is archive-patched-source class, which seems to do what I
want plus a lot more. The problem with it is that it seems to be intended
for other use case than mine, which means that it does a lot more work than
I need.

Is there a way to either tame archive-patched-source to only be applicable
for virtual/kernel, or is there other ways of accomplishing what I want?

Regards
  Mats

--089e01681310912a7604da2a4a9e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>I need to archive source for virtual/k=
ernel when building. This is needed for other builds that uses the bitbake =
build result.<br><br></div>I saw that there is archive-patched-source class=
, which seems to do what I want plus a lot more. The problem with it is tha=
t it seems to be intended for other use case than mine, which means that it=
 does a lot more work than I need.<br>
<br></div>Is there a way to either tame archive-patched-source to only be a=
pplicable for virtual/kernel, or is there other ways of accomplishing what =
I want?<br><br></div>Regards<br></div>=C2=A0 Mats<br><br></div>

--089e01681310912a7604da2a4a9e--
