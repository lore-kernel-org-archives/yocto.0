Return-Path: <atamayoarbide@gmail.com>
Received: from mail-ie0-f195.google.com (mail-ie0-f195.google.com
	[209.85.223.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2734E0073F
	for <yocto@yoctoproject.org>; Fri, 30 Aug 2013 03:34:25 -0700 (PDT)
Received: by mail-ie0-f195.google.com with SMTP id f4so590681iea.2
	for <yocto@yoctoproject.org>; Fri, 30 Aug 2013 03:34:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=POXspewKdq8aoKshrZlsNkpwgavQvr+Q6Q3wZw8ph7c=;
	b=SvJL3wAzlHBXkIcphqI7+R+zzSmcyWHEkgw23uHGERNjv7CeeRQGZNw1PiDrqDeEwv
	GtHVunOLVdqFtCEH4w8zRrCgDK5sAssJ1ZFYp5zr/S+YWLHDLwPwKbaoaIVNUdZLAwHr
	tPDlfbbIqljKeck3Ogt6i31WVXE6twpU936mQLHz0zL1IRceCJtBrd83Ot9LWM6uWVQp
	iKLGsR6snf6/qRVU7uwhBM/5I0k6yI44Lo88nankO3d3S+gt9e1yLZsuF0xOJOiXFuH8
	+pmZVN+IEj2PrRUH0Anj3gww1bYAtm5VBhq5soG0dkvGnBaFD0xidQYJE0bcNT+pOF+/
	6oog==
MIME-Version: 1.0
X-Received: by 10.42.113.197 with SMTP id d5mr3899053icq.46.1377858864632;
	Fri, 30 Aug 2013 03:34:24 -0700 (PDT)
Received: by 10.50.85.76 with HTTP; Fri, 30 Aug 2013 03:34:24 -0700 (PDT)
Date: Fri, 30 Aug 2013 12:34:24 +0200
Message-ID: <CAMZj-5MD+kLf3JVS7Mmyq-JfREKPdcoam0NFCTrqsFw4bnrx4A@mail.gmail.com>
From: Asier <atamayoarbide@gmail.com>
To: yocto@yoctoproject.org
Subject: Embedded Linux with Xenomai support
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
X-List-Received-Date: Fri, 30 Aug 2013 10:34:27 -0000
Content-Type: multipart/alternative; boundary=001a11c3522c2d58ba04e527c402

--001a11c3522c2d58ba04e527c402
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hello all,

I've just started studying the Yocto project, so I beg your pardon if this
question has been already solved or it's just too easy (RT*M).

I've got a working embedded system running Xenomai v2.5.5. The user
interface has been developed with Qt Embedded. The kernel has been compiled
using the ELinOS Embedded Linux distribution.

Now, I want to change that interface to X11 so that I can use a desktop
manager as well as some other X11 applications. The ELinOS distribution has
an XServer, but it lacks a way of easily adding any desktop manager. Thus,
I=92m thinking about using another Linux distribution.

That is how I have found the Yocto project. I think this can be the best
solution for my new system.

Is there any Linux distribution based on the Yocto project that lets me
configure my embedded kernel with Xenomai? If not, has anybody got any
experinece in adding Xenomai to the Yocto project?

I'm using an Atom N270 chipset.

Thanks in advance, best regards,

Asier

--001a11c3522c2d58ba04e527c402
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>Hello all,<br><br></div>I&#39;ve =
just started studying the Yocto project, so I beg your pardon if this quest=
ion has been already solved or it&#39;s just too easy (RT*M).<br><br></div>
I&#39;ve got a working embedded system running Xenomai v2.5.5. The user=20
interface has been developed with Qt Embedded. The kernel has been=20
compiled using the ELinOS Embedded Linux distribution.<br><br>Now, I want t=
o change that interface to X11 so that I can use a desktop=20
manager as well as some other X11 applications. The ELinOS distribution has=
 an
 XServer, but it lacks a way of easily adding any desktop manager. Thus,
 I=92m thinking about using another Linux distribution.<br><br></div>That i=
s how I have found the Yocto project. I think this can be the best solution=
 for my new system.<br><br></div>Is there any Linux distribution based on t=
he Yocto project that lets me configure my embedded kernel with Xenomai? If=
 not, has anybody got any experinece in adding Xenomai to the Yocto project=
? <br>
<br></div><div>I&#39;m using an Atom N270 chipset.<br><div><div><div><br><d=
iv>Thanks in advance, best regards,<br><br></div><div>Asier<br></div><div><=
br></div></div></div></div></div></div>

--001a11c3522c2d58ba04e527c402--
