Return-Path: <wutengss@gmail.com>
Received: from mail-vc0-f171.google.com (mail-vc0-f171.google.com
	[209.85.220.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B769BE0044A
	for <yocto@yoctoproject.org>; Fri,  3 Jan 2014 05:11:57 -0800 (PST)
Received: by mail-vc0-f171.google.com with SMTP id ik5so7656900vcb.2
	for <yocto@yoctoproject.org>; Fri, 03 Jan 2014 05:11:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=lM15uQGBNC7oq6Q6mh3gLo0s7CJ6rSQDSd5QBkpXqoI=;
	b=pRblxSr9GUzhRz5lO/8RYeDgBr2gSOOBB276HCwNGygrOvc5e0z+fGIEHEFjZtgmkd
	6x+ulk8P+VCyUnrgS1CgvhZriZfRNIEwd3jzSUXUUszXFupCCYQpESllmXJiRHlTKfkL
	Vx3x3Xx6ZFrNT7BCvD5obSvu+SpWB5w/0S4c2QV47hVFrK8oqy4eQpNp72hnawfjix22
	9swdUfPJlnlfUHDzUyMcqX2KqIyCCiRD2fAitYrhIlwioIspHVQL3AOOTuS6REH9ydqt
	GpxUb1E4SzTGr1vOezhkyN6rFu4lB3yKlGvDaYVihlgHffFqzeJHGusaLlW1FvIFSKko
	HR9g==
MIME-Version: 1.0
X-Received: by 10.52.248.238 with SMTP id yp14mr29401vdc.81.1388754716210;
	Fri, 03 Jan 2014 05:11:56 -0800 (PST)
Received: by 10.52.37.39 with HTTP; Fri, 3 Jan 2014 05:11:56 -0800 (PST)
Date: Fri, 3 Jan 2014 15:11:56 +0200
Message-ID: <CAOJdAdVfPGaSMcvB7-8LJ=oYDKwi1j_oKRbChNXGzwGV+zfT=Q@mail.gmail.com>
From: wuteng wu <wutengss@gmail.com>
To: yocto@yoctoproject.org
Subject: CAN bus protocol error
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
X-List-Received-Date: Fri, 03 Jan 2014 13:11:58 -0000
Content-Type: multipart/alternative; boundary=089e0149bdbe8a392a04ef10a739

--089e0149bdbe8a392a04ef10a739
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I have cross compiled the canutils and installed it into the target rootfs,
but when i tried to test the CAN bus by using the candump command as below:

candump can0
interface = can0, family = 29, type = 3, proto = 1
*socket: Protocol not supported*

I got the "socket: Protocol not supported" error msg, i have searched and
found the related solution somewhere said that the 'can-raw protocol
module' need to be included into the kernel. but how should i do that in
yocto ?

the needed driver has to be loaded by executing the commands:




*modprobe canmodprobe can-devmodprobe can-raw*

but only the module can is build-in.

It might be possible that the can-dev is also necessary.

anyone have experience to share with me ?

BR,
Teng

--089e0149bdbe8a392a04ef10a739
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I have cross compiled the canutils =
and installed it into the target rootfs, but when i tried to test the CAN b=
us by using the candump command as below:<br><br>candump can0<br>interface =
=3D can0, family =3D 29, type =3D 3, proto =3D 1<br>
<b>socket: Protocol not supported</b><br><br></div><div>I got the &quot;soc=
ket: Protocol not supported&quot; error msg, i have searched and found the =
related solution somewhere said that the &#39;can-raw protocol module&#39; =
need to be included into the kernel. but how should i do that in yocto ?<br=
>
<br></div><div>the needed driver has to be loaded by executing the commands=
:<br><br><b>modprobe can<br>modprobe can-dev<br>modprobe can-raw<br></b></d=
iv><div><br></div><div>but only the module can is build-in.<br><br></div>
<div>It might be possible that the can-dev is also necessary.<br><br></div>=
<div>anyone have experience to share with me ?<br><br></div><div>BR,<br></d=
iv><div>Teng<br></div></div>

--089e0149bdbe8a392a04ef10a739--
