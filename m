Return-Path: <vidal.develone@gmail.com>
Received: from mail-vb0-f41.google.com (mail-vb0-f41.google.com
	[209.85.212.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E86FE0051D
	for <yocto@yoctoproject.org>; Thu,  4 Apr 2013 10:28:45 -0700 (PDT)
Received: by mail-vb0-f41.google.com with SMTP id f13so1524397vbg.0
	for <yocto@yoctoproject.org>; Thu, 04 Apr 2013 10:28:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=AnVx8Vi7dR79jtRTItdDtWihs8zrfJc+3rMlrYiMukI=;
	b=wDjk1wZCNWjSi2Euh7wl6vR3VitC46ChJqpVYabFFs52NdJquGNWEsA4PoKPui9Vc9
	8VVSQYpJAkdgqOgsSpO5umqEIxLh99RJeJ2mCeF+T9rmmD0kSvfxin7v7kT4rUo8/MJx
	4HX1eTLeElDiOcM0tw+aO2JGgPkMh3wNXNt3JwbYLxEscUNnsHUdYkMVLesHdmkDay1N
	mK3nW2GTKDM15sDVq5SjD+nOEzd1tLVeSlhrLpbn9e759ss31//gGFjSxJz2C96EjWI4
	ILMrkPDJtCNoAb4A4yELAG17FwvsCFqO6gtpBwxZyWrq2O82qillQF1kF0mKrrZIGYP4
	9Edg==
MIME-Version: 1.0
X-Received: by 10.52.233.225 with SMTP id tz1mr4807054vdc.54.1365096524618;
	Thu, 04 Apr 2013 10:28:44 -0700 (PDT)
Received: by 10.52.159.163 with HTTP; Thu, 4 Apr 2013 10:28:44 -0700 (PDT)
Date: Thu, 4 Apr 2013 11:28:44 -0600
Message-ID: <CANwz6nxsxvzY7w=VGjqBEbi1Eh2A4QaMKdrQLCDHFosBvtS+cA@mail.gmail.com>
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
X-List-Received-Date: Thu, 04 Apr 2013 17:28:45 -0000
Content-Type: multipart/alternative; boundary=089e0111bbe66f216d04d98c4db1

--089e0111bbe66f216d04d98c4db1
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
Any and all help will be appreciated.
Thanks

--089e0111bbe66f216d04d98c4db1
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div>Hello,<br></div>I want to ad=
d support for FORTRAN in my image.<br></div>On target gcc -v shows --enable=
-languages=3Dc,c++<br></div>This needs to --enable-languages=3Dc,c++,fortra=
n.based on my host system.<br>
</div>How does the variable FORTRAN in /home/vidal/POKY/build032813_panda/p=
oky/meta/recipes-devtools/gcc/gcc-configure-common.inc get set?=A0 Can this=
 be done in the local.conf file?<br></div><div>Does the FORTRAN ?=3D &quot;=
,f77&quot; this need to be FORTRAN ?=3D &quot;,fortran&quot; since we are b=
uilding gcc4.7?<br>
</div>Any and all help will be appreciated.<br></div>Thanks<br><div><div><d=
iv><br></div></div></div></div>

--089e0111bbe66f216d04d98c4db1--
