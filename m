Return-Path: <mdlcameras@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8EC84E00CD2; Sat, 13 Feb 2016 06:03:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mdlcameras[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.43 listed in list.dnswl.org]
Received: from mail-lf0-f43.google.com (mail-lf0-f43.google.com
	[209.85.215.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09D80E00CD0
	for <yocto@yoctoproject.org>; Sat, 13 Feb 2016 06:03:17 -0800 (PST)
Received: by mail-lf0-f43.google.com with SMTP id l143so66845742lfe.2
	for <yocto@yoctoproject.org>; Sat, 13 Feb 2016 06:03:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=5NWwqd57X6SjRzP6l8/cTNWYwqdJGLgAoAk3d49v3Ek=;
	b=VvmcT2UDdMP6zjfgWvWNcKbXyle/ZGkFlZeEw/MsTGIGAxB0VOlyK1axnd6XB6Ewez
	5diMFo5wmWRi41C/JufyYjri1tvPJbaz9iepF8yAkTEa8/X+BRs5j1X5Kf+QW98KcgZJ
	YZGYVCUXFEixBv6CTFBvkL8128rz44aSgdwZZRwToYETMc0pRUMaziL+gCSfhClU+9U3
	PEhr5VjZqqwLZjqzbe3gI0U0IL6nK14tj2Vvt+Wiau2I1kuWO9KZtETt7jsfZoJ5oAqu
	trqPXqnphyWqm0+FjfWlcatsdBPJw7Q7a/20540AkCO3G00tBDElCYSYHVknurm2yu5G
	eP0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=5NWwqd57X6SjRzP6l8/cTNWYwqdJGLgAoAk3d49v3Ek=;
	b=Faph+XJMR8drqgJBPDifb0Ivkvu7tRICXqumSSRhu+WcLLe9LMfL3yfyCMm2bvuzWn
	sxLpKP1JnLULFQeDZgc/hWPV558/tYqfBhnAfjEPw82z2F2RQkQTeNisiVeiNoDPswQN
	eD0Xy7BLm99sKUmYlcit+0LFoLtKm4sUKChAfdDeHla57XSp4dTiyfff7b7rvMe+6d+w
	vZG8CCHTsYt1GexMNIam7778PCKWnwtaIqy14nKphUq5kp1gu6LuP29/ePYxPLxkituU
	urk4B1RwS3MFcj8pl6zujpqE8R36Oz/zQGOAxoysSr5w6rjxqOflujbB4VP6jlK4LSId
	Q5Fw==
X-Gm-Message-State: AG10YOStNPg0tIusjELXQlwGrpJbDGADXqXGUpBsU5NdHke5dWXHjk1io54arUuuzF1/bx4A7RJfKIbdCa86/g==
MIME-Version: 1.0
X-Received: by 10.25.24.68 with SMTP id o65mr2540719lfi.156.1455372195880;
	Sat, 13 Feb 2016 06:03:15 -0800 (PST)
Received: by 10.114.11.1 with HTTP; Sat, 13 Feb 2016 06:03:15 -0800 (PST)
Date: Sat, 13 Feb 2016 16:03:15 +0200
Message-ID: <CAGuQk8qVipkwpmi3TR1+4Uixf4QJ-CmYuUZvwWcTjnEFiE7bWw@mail.gmail.com>
From: Marius Liebenberg <mdlcameras@gmail.com>
To: yocto@yoctoproject.org
Subject: libzqm recipe fails
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
X-List-Received-Date: Sat, 13 Feb 2016 14:03:20 -0000
Content-Type: multipart/alternative; boundary=001a11401e28c06584052ba73e45

--001a11401e28c06584052ba73e45
Content-Type: text/plain; charset=UTF-8

I reinstalled the complete poky-jethro project. I also installed the latest
meta-qt5 as well as the openembedded recipe.

There seems to be a problem with libzqm. These are the first errors.

 arm-poky-linux-gnueabi-libtool:   error: 'src/libzmq_la-tcp_address.lo' is
not a valid libtool object
| Makefile:1800: recipe for target 'libzmq.la' failed
| make[1]: *** [libzmq.la] Error 1

Has anyone else experienced these problems or am I cooking my rubbish up
again?

Greetings
Marius

--001a11401e28c06584052ba73e45
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>I reinstalled the complete poky-jethro=
 project. I also installed the latest meta-qt5 as well as the openembedded =
recipe.<br><br></div>There seems to be a problem with libzqm. These are the=
 first errors.<br><br>=C2=A0arm-poky-linux-gnueabi-libtool:=C2=A0=C2=A0 err=
or: &#39;src/libzmq_la-tcp_address.lo&#39; is not a valid libtool object<br=
>| Makefile:1800: recipe for target &#39;<a href=3D"http://libzmq.la">libzm=
q.la</a>&#39; failed<br>| make[1]: *** [<a href=3D"http://libzmq.la">libzmq=
.la</a>] Error 1<br><br></div>Has anyone else experienced these problems or=
 am I cooking my rubbish up again?<br><br></div>Greetings<br></div>Marius<b=
r></div>

--001a11401e28c06584052ba73e45--
