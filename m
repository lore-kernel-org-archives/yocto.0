Return-Path: <vidal.develone@gmail.com>
Received: from mail-vc0-f175.google.com (mail-vc0-f175.google.com
	[209.85.220.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F38F4E01506
	for <yocto@yoctoproject.org>; Fri,  5 Apr 2013 08:51:26 -0700 (PDT)
Received: by mail-vc0-f175.google.com with SMTP id hf12so3359967vcb.34
	for <yocto@yoctoproject.org>; Fri, 05 Apr 2013 08:51:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=jsnwLy4usmzLpJ1HoOcXwCnXTJC+Wo2UFMANXfnqj6k=;
	b=hdWiHJWGzSywaTdgYkIc+1eIgQiWlA/N8C8TDOTrHXHssCeLOi/kT1yQxhl5sw+pCZ
	I6rvjOPVgDUrHc0I9nBk8F2J5EXRlBp/hRfC6zr3SbqukXrVmW+W410XDGxjwnrW5QVd
	4yG3wkPDaK6wuUgXp9sVk7ROB67s/mR3Y4hMMx7ciLIgK3S36+NLDMiHfE1P/NUfLlt2
	Ur6beDFq8v4dHcU0fE3/SgATTq+xFY3H5DfcidFpBjI81GiL5KpIb+eUNnoWRoFS57s4
	6B+LsQ/+OEXSCI5p5pJSPBQV8DJjNC+XV6SjuyiKTli372SxEFxGi8QvdAnZVJdc+bbA
	igjw==
MIME-Version: 1.0
X-Received: by 10.52.97.131 with SMTP id ea3mr3518488vdb.71.1365177086248;
	Fri, 05 Apr 2013 08:51:26 -0700 (PDT)
Received: by 10.52.159.163 with HTTP; Fri, 5 Apr 2013 08:51:26 -0700 (PDT)
Date: Fri, 5 Apr 2013 09:51:26 -0600
Message-ID: <CANwz6nzAr3m8rebqwzY_KkU-JFNZUTh=Ks4HW048ugg=Q13wYA@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: yocto@yoctoproject.org
Subject: gcc enable-languages
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
X-List-Received-Date: Fri, 05 Apr 2013 15:51:27 -0000
Content-Type: multipart/alternative; boundary=20cf307cfc7e480e0404d99f0f2d

--20cf307cfc7e480e0404d99f0f2d
Content-Type: text/plain; charset=ISO-8859-1

Hello,
I want to add support for FORTRAN in my image.
On target gcc -v shows --enable-languages=c,c++
This needs to --enable-languages=c,c++,fortran.based on my host system.
How does the variable FORTRAN in
/home/vidal/POKY/build032813_panda/poky/meta/recipes-devtools/gcc/gcc-configure-common.inc
get set?  Can this be done in the local.conf file?
Does the FORTRAN ?= ",f77" this need to be FORTRAN ?= ",fortran" since we
are building gcc4.7?
/home/vidal/POKY/build032713_panda/poky/meta/recipes-devtools/gcc/gcc-configure-common.inc
I changed the following

< LANGUAGES ?= "c,c++,fortran${JAVA}"

---

> LANGUAGES ?= "c,c++${FORTRAN}${JAVA}"
I am currently testing on a build for the  beagleboard and beaglebone
Any and all help will be appreciated.

--20cf307cfc7e480e0404d99f0f2d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>Hello,<br></div>I want to add sup=
port for FORTRAN in my image.<br></div>On target gcc -v shows --enable-lang=
uages=3Dc,c++<br></div>This needs to --enable-languages=3Dc,c++,fortran.bas=
ed on my host system.<br>

</div>How does the variable FORTRAN in /home/vidal/POKY/build032813_panda/p=
oky/meta/recipes-devtools/gcc/gcc-configure-common.inc get set?=A0 Can this=
 be done in the local.conf file?<br></div><div>Does the FORTRAN ?=3D &quot;=
,f77&quot; this need to be FORTRAN ?=3D &quot;,fortran&quot; since we are b=
uilding gcc4.7?<br>
/home/vidal/POKY/build032713_panda/poky/meta/recipes-devtools/gcc/gcc-confi=
gure-common.inc<br></div><div>I changed the following <br>


=09
=09
=09
	<style type=3D"text/css">P { margin-bottom: 0.08in; direction: ltr; color:=
 rgb(0, 0, 0); }P.western { font-family: "Liberation Serif","Times New Roma=
n",serif; font-size: 12pt; }P.cjk { font-family: "WenQuanYi Zen Hei Sharp";=
 font-size: 12pt; }P.ctl { font-family: "DejaVu Sans"; font-size: 12pt; }A:=
link {  }</style>


<p class=3D"" style=3D"margin-bottom:0in">&lt; LANGUAGES ?=3D
&quot;c,c++,fortran${JAVA}&quot;
</p>
<p class=3D"" style=3D"margin-bottom:0in">---
</p>
<p class=3D"" style=3D"margin-bottom:0in">&gt; LANGUAGES ?=3D
&quot;c,c++${FORTRAN}${JAVA}&quot;
</p>

I am currently testing on a build for the=A0 beagleboard and beaglebone<br>
</div>Any and all help will be appreciated.</div>

--20cf307cfc7e480e0404d99f0f2d--
