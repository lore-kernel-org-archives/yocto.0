Return-Path: <pervivek@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D4A0CE00BC1; Wed, 13 Jan 2016 22:34:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pervivek[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0002]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E478E00B99
	for <yocto@yoctoproject.org>; Wed, 13 Jan 2016 22:34:43 -0800 (PST)
Received: by mail-io0-f174.google.com with SMTP id q21so443354445iod.0
	for <yocto@yoctoproject.org>; Wed, 13 Jan 2016 22:34:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=+8ON5tPW3NindtHookgY1lohKaTXGJ5eQkRgIigjNEI=;
	b=TqMz0ucZCtF1ifRLTq+RZj8WTlcBUBNk62gQeu8oDCTgJJuHDiXSEXOlhy4jhyEZBv
	gdK+YIMm5yFdhuEREz0sSytTlliEd2tKNzeqYcSBbTpp0ktE2QTdLwPwtZ4xuH4oOvcu
	nHfjwbmlvOkSzWyJfcHEZSeOB+T9AjlUv5j77Y655AVh2YFWK4b94w8N6S6E6J4asWT5
	judsTymQumy3kbEBUoK4YgXJ+bIn/cM7JqhGEBZ5yUvvM0rYUlBDav7K2Kz8Dakn7OnR
	2fda9XMRLC1YHTQrfmp/S/prOApsEWmjPJnwIIbFMI1aLncafbuuvF7+BNj+LdttK1og
	hTWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=+8ON5tPW3NindtHookgY1lohKaTXGJ5eQkRgIigjNEI=;
	b=g1u3sWyiyPdq3J9sa2QMCnvm6kRM4rDv5cV5maLkDcLTJlH81U44p3oObnAroGF4al
	6SMrrIpEq5BmcO7/3kukrWfufEEXs7h7n1anygvXW9j4uwRq1GA2BSiTIKHJwuSZoygo
	in8t/l/3JcUThDS+95iwm8+8HEcQYnQM3V55nfTUQyrqhDPFppuTKPaVzPKpuWJfDZOx
	kBGsLymlb4OPJG9E2zN2+ZJQuBX+cdVRbN/JKb+Zy3VMMNqXUJ7+NrsCRrJLwJNpD2we
	MrqwkWSULhvHaTO91F3QIlhmU4HocoErbAPb79rMCaay+c3ed2dHWq7N3DYO54JJRTAv
	j3Mw==
X-Gm-Message-State: ALoCoQnZixsRbMw16Jyic3qw5RdfPcskLkOhOiPIRZRK21kdP9+oLtJaIPWbq/Pnz0e5D343hxmVSxG14cBYi4ApO9Ym/soT6Q==
MIME-Version: 1.0
X-Received: by 10.107.13.4 with SMTP id 4mr3416142ion.124.1452753282988; Wed,
	13 Jan 2016 22:34:42 -0800 (PST)
Received: by 10.107.129.213 with HTTP; Wed, 13 Jan 2016 22:34:42 -0800 (PST)
Date: Thu, 14 Jan 2016 12:04:42 +0530
Message-ID: <CALLyC8S6svSwo3rGcs7BnD1xJ5=vFx6myWOyuTSJ=P9Xd+yeuA@mail.gmail.com>
From: Vivek Per <pervivek@gmail.com>
To: Yocto <yocto@yoctoproject.org>
Subject: findutils_4.4.2.bb is having rev-6 and findutils_4.4.2.bbappend has having rev-6.5 , which findutils will it include in image recipe
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
X-List-Received-Date: Thu, 14 Jan 2016 06:34:49 -0000
Content-Type: multipart/alternative; boundary=001a1149433e60ff750529457b0c

--001a1149433e60ff750529457b0c
Content-Type: text/plain; charset=UTF-8

hi,
    I want to include findutility recipe in the rootfs.
 there in  findutils_4.4.2.bb recipe in poky-1.7/meta layer and   PR = "r6"
 there is findutils_4.4.2.bbappend in meta-selinux layer   it has PR .= ".5"

when i build findutils
   In *tmp/work/core###/findutils*/                //   there are two
 folders with two revisions one is 6 and another is 6.5.


Now when i add the findutils in image recipe using IMAGE_INSTALL.  Which
revision  will it include in my image

--001a1149433e60ff750529457b0c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">hi,<div>=C2=A0 =C2=A0 I want to include findutility recipe=
 in the rootfs.</div><div>=C2=A0there in =C2=A0<a href=3D"http://findutils_=
4.4.2.bb">findutils_4.4.2.bb</a> recipe in poky-1.7/meta layer and =C2=A0 P=
R =3D &quot;r6&quot;=C2=A0</div><div>=C2=A0there is findutils_4.4.2.bbappen=
d in meta-selinux layer =C2=A0 it has PR .=3D &quot;.5&quot;</div><div><br>=
</div><div>when i build findutils=C2=A0<br><div>=C2=A0 =C2=A0In <b><i>tmp/w=
ork/core###/findutils</i></b>/ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0// =C2=A0 there are two =C2=A0folders with two revisions one i=
s 6 and another is 6.5.</div></div><div><br></div><div><br></div><div>Now w=
hen i add the findutils in image recipe using IMAGE_INSTALL.=C2=A0 Which re=
vision =C2=A0will it include in my image</div></div>

--001a1149433e60ff750529457b0c--
