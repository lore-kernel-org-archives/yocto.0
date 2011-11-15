Return-Path: <miketsukerman@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8588E00305
	for <yocto@yoctoproject.org>; Tue, 15 Nov 2011 04:02:57 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pzk32 with SMTP id 32so16757142pzk.7
	for <yocto@yoctoproject.org>; Tue, 15 Nov 2011 04:02:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=g7GiMOLSHqOsLHpSNikqcPGq5Y5Avn+WZA1I7JzmuMQ=;
	b=VJuUt/Fr2bbP6yZ9i62zn/juWLFmZZYgtEnymJWbcYHyd5jzneU4Qay47lhIaHa1sM
	DSSwPQgCczXyyPmli5sSx2MESWnV78hriqPfJ0RcKYiPiodksg5g1Z8ZhL/ua0snz8ok
	epYr3itsHcXcUAmC1MKND+V3trX7YemFqe5HY=
MIME-Version: 1.0
Received: by 10.68.120.230 with SMTP id lf6mr22156190pbb.96.1321358577561;
	Tue, 15 Nov 2011 04:02:57 -0800 (PST)
Received: by 10.68.47.97 with HTTP; Tue, 15 Nov 2011 04:02:57 -0800 (PST)
Date: Tue, 15 Nov 2011 15:02:57 +0300
Message-ID: <CALs2vtfm6ErrYJYwq_mCgSzRLyg-xHXW=nYDT62JkKVv90tLrQ@mail.gmail.com>
From: Mike Tsukerman <miketsukerman@gmail.com>
To: yocto@yoctoproject.org
Subject: libtool problems
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
X-List-Received-Date: Tue, 15 Nov 2011 12:02:58 -0000
Content-Type: multipart/alternative; boundary=f46d04479697a2ef9c04b1c4c41f

--f46d04479697a2ef9c04b1c4c41f
Content-Type: text/plain; charset=ISO-8859-1

Hello,

I've found some problems with toolchain on target rootfs.
It does not depends on what architecture i've building for.

For example i want to build something on target rootfs.
Downloading tar archive with sources and building it. Sometimes
libtool says about old versions of package files. Upgrade of these files
with

libtoolize --copy --force and aclocal

does not always solve problems.
Sometimes it says that libXXX.la files have wrong format.

I'll be very pleased if you help me solve this problems.

-- 
Best regards, Mike Tsukerman

jabber: miketsukerman@gmail.com
jabber: warzon@jabnet.org
skype: w_a_r_z_o_n

--f46d04479697a2ef9c04b1c4c41f
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div>Hello,<br clear=3D"all"></div><div><br></div><div>I&#39;ve found some =
problems with toolchain on target rootfs.=A0</div><div>It does not depends =
on what architecture i&#39;ve building for.=A0</div><div><br></div><div>For=
 example i want to build something on target rootfs.</div>
<div>Downloading tar archive with sources and building it. Sometimes=A0</di=
v><div>libtool says about old versions of package files. Upgrade of these f=
iles with</div><div><br></div><div>libtoolize --copy --force and aclocal=A0=
</div>
<div><br></div><div>does not always solve problems.=A0</div><div>Sometimes =
it says that libXXX.la files have wrong format.=A0</div><div><br></div><div=
>I&#39;ll be very pleased if you help me solve this problems.</div><br>-- <=
br>
<font style=3D"color:rgb(51, 51, 51)" size=3D"2">Best regards, Mike Tsukerm=
an<br><br><span style=3D"color:rgb(0, 0, 0)">jabber</span>: <a href=3D"mail=
to:miketsukerman@gmail.com" target=3D"_blank">miketsukerman@gmail.com</a><b=
r><span style=3D"color:rgb(0, 0, 0)">jabber</span>: <a href=3D"mailto:warzo=
n@jabnet.org" target=3D"_blank">warzon@jabnet.org</a><br>
<span style=3D"color:rgb(0, 0, 0)">skype</span>: w_a_r_z_o_n</font><br><br>

--f46d04479697a2ef9c04b1c4c41f--
