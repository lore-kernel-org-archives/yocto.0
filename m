Return-Path: <jeanbaptiste.reich@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF466E0049B
	for <yocto@yoctoproject.org>; Sat, 27 Oct 2012 03:50:29 -0700 (PDT)
Received: by mail-lb0-f176.google.com with SMTP id s4so2428374lbc.35
	for <yocto@yoctoproject.org>; Sat, 27 Oct 2012 03:50:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=Ae+qNIJGnmj+mgeQ0DUoTmwEg0bdwuYpJYwYtDkB/mM=;
	b=JroSBah85vgZDvon+PESVG8vzvu54Y/MgeHtSOBKywMEeioYbF94MluLBVjK2sucK7
	gO3KR9ckUVsXps5altezzJakpOnI1VzAylEgkI3v3oahiyL03HVkQwwEFysRpilekTo8
	tDZ+p3Dzk7ENbiSWOEA9SHXB1nUtiK5bxU5NefCv0iBn/B7s6QjiSnV3vBzmeaN7gceM
	EHUZgRZIdHIhrmgiP5ts+FTZ3kZASuS4NcEOuQAuUa0qEMZD2Pmhz0Endx1yqf+dU/ok
	wvl6JTtecuhlw32BpX0+2JElIuUfRT/kDCGF9MEzy1xWsM3DNVv6dn+My28EMT8T5Rz5
	OsBw==
Received: by 10.112.98.199 with SMTP id ek7mr10085910lbb.116.1351335027976;
	Sat, 27 Oct 2012 03:50:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.114.65.1 with HTTP; Sat, 27 Oct 2012 03:50:07 -0700 (PDT)
From: Jean-Baptiste Reich <jeanbaptiste.reich@gmail.com>
Date: Sat, 27 Oct 2012 12:50:07 +0200
Message-ID: <CAEiadgU210YCP9tM7ZQNJxK6=W5DUZ9H5TLhFyTctXYu+mU4NA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Busybox configuration
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
X-List-Received-Date: Sat, 27 Oct 2012 10:50:30 -0000
Content-Type: multipart/alternative; boundary=f46d0401fb1350abb104cd0834ba

--f46d0401fb1350abb104cd0834ba
Content-Type: text/plain; charset=ISO-8859-1

Hi

I'm starting to use yocto and I would like to know if there is a standard
way to modify busybox defconfig from another layer ?
In fact I am creating a separated layer to build a custom image and I would
like to have some commands from busybox which are not set by default.
Do I need to completely override the file or can I merge a modification ?

Thank you

--f46d0401fb1350abb104cd0834ba
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi<div><br></div><div>I&#39;m starting to use yocto and I would like to kno=
w if there is a standard way to modify busybox defconfig from another layer=
 ?</div><div>In fact I am creating a separated layer to build a custom imag=
e and I would like to have some commands from busybox which are not set by =
default.</div>

<div>Do I need to completely override the file or can I merge a modificatio=
n ?</div><div><br></div><div>Thank you</div>

--f46d0401fb1350abb104cd0834ba--
