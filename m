Return-Path: <djwelch666@gmail.com>
Received: from mail-pd0-f179.google.com (mail-pd0-f179.google.com
	[209.85.192.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B4A7E00706
	for <yocto@yoctoproject.org>; Mon,  3 Feb 2014 07:51:08 -0800 (PST)
Received: by mail-pd0-f179.google.com with SMTP id q10so7032238pdj.38
	for <yocto@yoctoproject.org>; Mon, 03 Feb 2014 07:51:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=OXOhIKjHnhqpwzede67zhc3bQQQMxWTK24tXq7PtfMQ=;
	b=DASzFT8Op3fJ37sRQMxyiqodpojvj9YHm7E+tkMQ1LH9wJYijXa50lfRm3nQSsmSeN
	G8Vf6pQFRJrzsej5BYyJ2jHutVQdA9ezLwabOgI2eR43EKRkU95LuHeatKVkUgxnopXq
	z6RakcDjCjBJCJ6yzx2W12OuITPgOOgVqAxENWkkYnuF8ZbejuVuYPrqf1buv5WdeZOM
	kRS02b3j+tAop4Z0tSPBvmQzUjYKXUtJKsPux8leaY+UkW4JvsH+eGYsbZFXNSQVqTpQ
	LamYDo3oZPJNauyp04Ffs888AaE702HjidQacTTcIP9ZFpP72TJlthFn06t7/0VrHN7Y
	8ARA==
MIME-Version: 1.0
X-Received: by 10.68.196.164 with SMTP id in4mr37852340pbc.128.1391442668212; 
	Mon, 03 Feb 2014 07:51:08 -0800 (PST)
Received: by 10.68.40.33 with HTTP; Mon, 3 Feb 2014 07:51:08 -0800 (PST)
Date: Mon, 3 Feb 2014 15:51:08 +0000
Message-ID: <CACP9YJccutcQq+j-1X0jabZK0KVvi+JJAj2ep2oicd59hJ5Xvg@mail.gmail.com>
From: David Welch <djwelch666@gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Mon, 03 Feb 2014 08:03:29 -0800
Subject: File not found when trying to run an executable not build by Yocto
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
X-List-Received-Date: Mon, 03 Feb 2014 15:51:09 -0000
Content-Type: multipart/alternative; boundary=e89a8ff1c42cf6d78f04f1827d5e

--e89a8ff1c42cf6d78f04f1827d5e
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I am building an image for an embedded system using the chiefriver and
kernel 3.12.9.  I am using Ubuntu as our base system.

The image builds and boots fine which is great but we have some binaries
built on Ubuntu which must run on the Yocto image.  When we copy these
across and try and run them we get a "File Not Found" error.

Why would this be?  Doing file on our ubuntu executables we get:

/bin/true: ELF 64-bit LSB executable, x86-64, version 1 (SYSV), dynamically
linked (uses shared libs), for GNU/Linux 2.6.24,
BuildID[sha1]=0x2b45516be4a9f45b1127d54efb0d42e5f69b1c82, stripped

The Yocto executables are the same except instead of GNU/Linux 2.6.24 it is
2.6.16.  It that a problem?

Also, on ubuntu we are running libc-2.17 but on Yocto it is libc-2.18.  Is
that a problem?

Thanks for any assistance,
Dave

--e89a8ff1c42cf6d78f04f1827d5e
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I am building an image for an embed=
ded system using the chiefriver and kernel 3.12.9. =A0I am using Ubuntu as =
our base system. =A0</div><div><br></div><div>The image builds and boots fi=
ne which is great but we have some binaries built on Ubuntu which must run =
on the Yocto image. =A0When we copy these across and try and run them we ge=
t a &quot;File Not Found&quot; error.</div>
<div><br></div><div>Why would this be? =A0Doing file on our ubuntu executab=
les we get:</div><div><br></div><div>/bin/true: ELF 64-bit LSB executable, =
x86-64, version 1 (SYSV), dynamically linked (uses shared libs), for GNU/Li=
nux 2.6.24, BuildID[sha1]=3D0x2b45516be4a9f45b1127d54efb0d42e5f69b1c82, str=
ipped<br>
</div><div><br></div><div>The Yocto executables are the same except instead=
 of GNU/Linux 2.6.24 it is 2.6.16. =A0It that a problem?</div><div><br></di=
v><div>Also, on ubuntu we are running libc-2.17 but on Yocto it is libc-2.1=
8. =A0Is that a problem?</div>
<div><br></div><div>Thanks for any assistance,</div><div>Dave</div></div>

--e89a8ff1c42cf6d78f04f1827d5e--
