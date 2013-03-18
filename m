Return-Path: <hans.beckerus@gmail.com>
Received: from mail-qe0-f52.google.com (mail-qe0-f52.google.com
	[209.85.128.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38C83E01342
	for <yocto@yoctoproject.org>; Mon, 18 Mar 2013 05:13:35 -0700 (PDT)
Received: by mail-qe0-f52.google.com with SMTP id s14so3233864qeb.39
	for <yocto@yoctoproject.org>; Mon, 18 Mar 2013 05:13:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=qoOrYQKWfQriLOgf4EmYjWgwa43TaKIol6PoOa8BBMk=;
	b=CTaLA9RJZRuNmonk0RLRpboFsEAvxRBgYHC+geT4aO3NbeS6HHPhuaLmrPyAhwJ7Bt
	QPpQZS/QvMkZUsL59tpiRwa5hkM7tg+nKApGsJJLVuRvH4ZA/R8k+FJ6377DhkqtC65+
	p3d1wRtSd5hzy/amWUGkV2ujf4oNA4DzbBrCJIyJkDqBIyDQrZcs0Hjj2r/YG9gitjWK
	YdGmIMFPLFuUzmzWO0bunNS2ECeUg6eZoxLY1juDyIJ20VdXbV6LA/7Ie50NG2YuRsxK
	8hJG4x/qZZG5UromAw3bJKb5VmANP5X2tbz8A7T1J72Py+6x5UH7qKEU1HEDyNpZZDdZ
	+ahg==
MIME-Version: 1.0
X-Received: by 10.229.78.80 with SMTP id j16mr4490435qck.87.1363608814717;
	Mon, 18 Mar 2013 05:13:34 -0700 (PDT)
Received: by 10.49.67.98 with HTTP; Mon, 18 Mar 2013 05:13:34 -0700 (PDT)
Date: Mon, 18 Mar 2013 13:13:34 +0100
Message-ID: <CAFyqS9qv4Sg_7VM-5nRj--BPgRkF-8FW1tY_KvjeTGHh7CeKMg@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: yocto@yoctoproject.org
Subject: remove /usr/share/terminfo
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
X-List-Received-Date: Mon, 18 Mar 2013 12:13:35 -0000
Content-Type: multipart/alternative; boundary=002354333326039cad04d831eb6c

--002354333326039cad04d831eb6c
Content-Type: text/plain; charset=ISO-8859-1

This is a continuation of the thread handling removal of /boot/uImage and
terminfo database. The /boot/uImage is solved but I am still having issues
with trying to remove /usr/share/terminfo database. I thought it would be
as easy as just creating a ncurses .bbappend and configure the package with
OE_EXTRACONF = "--disable-database --enable-termcap". Not so. The problem
is that the ncurses.inc has some hardcode configuration options. One of
these is not compatible with "--disable-database". Specifically it is
"--with-ticlib". To me it seems like the ncurses package has not been
designed for providing the option to disable the terminfo database.

What I did as a temporary workaround was to override the entire
ncurses_config() option to overcome the conflict. But I am not very happy
with this solution, neither I am very happy with what happens to the
package when actually faulting out the terminfo support. The result of such
a configuration is that the entire ncurses library gets crippled and a lot
of packages can no longer be used, eg. htop. Also, the ncurses package
recipe does not seem to create the termcap database instead of terminfo if
such is removed. Which is completely natural since it does not support
disabling terminfo in the first place.
Maybe I could try the option to compile in the termcap database? But then I
do not know what the gain would be. What I am after is to get rid of the
database completely from the rootfs due to size constraints, but instead
link to some network mounted location. If the terminfo database is missing
ncurses will simply fallback to a dumb terminal setting which is fine on a
production board. In a test environment the network location will be
available and ncurses will be able to locate the database.

Any ideas what can be done here? If I would like to remove the physical
database from the rootfs and instead replace it by a soft link. Where would
be the best place to do this?

Hans

--002354333326039cad04d831eb6c
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

This is a continuation of the thread handling removal of /boot/uImage and t=
erminfo database. The /boot/uImage is solved but I am still having issues w=
ith trying to remove /usr/share/terminfo database. I thought it would be as=
 easy as just creating a ncurses .bbappend and configure the package with O=
E_EXTRACONF =3D &quot;--disable-database --enable-termcap&quot;. Not so. Th=
e problem is that the ncurses.inc has some hardcode configuration options. =
One of these is not compatible with &quot;--disable-database&quot;. Specifi=
cally it is &quot;--with-ticlib&quot;. To me it seems like the ncurses pack=
age has not been designed for providing the option to disable the terminfo =
database.<br>
<br>What I did as a temporary workaround was to override the entire ncurses=
_config() option to overcome the conflict. But I am not very happy with thi=
s solution, neither I am very happy with what happens to the package when a=
ctually faulting out the terminfo support. The result of such a configurati=
on is that the entire ncurses library gets crippled and a lot of packages c=
an no longer be used, eg. htop. Also, the ncurses package recipe does not s=
eem to create the termcap database instead of terminfo if such is removed. =
Which is completely natural since it does not support disabling terminfo in=
 the first place.<br>
Maybe I could try the option to compile in the termcap database? But then I=
 do not know what the gain would be. What I am after is to get rid of the d=
atabase completely from the rootfs due to size constraints, but instead lin=
k to some network mounted location. If the terminfo database is missing ncu=
rses will simply fallback to a dumb terminal setting which is fine on a pro=
duction board. In a test environment the network location will be available=
 and ncurses will be able to locate the database.<br>
<br>Any ideas what can be done here? If I would like to remove the physical=
 database from the rootfs and instead replace it by a soft link. Where woul=
d be the best place to do this? <br><br>Hans<br><br>

--002354333326039cad04d831eb6c--
