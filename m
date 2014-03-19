Return-Path: <fbberton@gmail.com>
Received: from mail-lb0-f182.google.com (mail-lb0-f182.google.com
	[209.85.217.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E579E00B27
	for <yocto@yoctoproject.org>; Wed, 19 Mar 2014 10:29:40 -0700 (PDT)
Received: by mail-lb0-f182.google.com with SMTP id n15so6206014lbi.13
	for <yocto@yoctoproject.org>; Wed, 19 Mar 2014 10:29:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=+h/VR/73lQBtBvElRHFlTojeGOKoWtRQa1MFe2Z6bOQ=;
	b=rE0zynicRb7nbPsWUaxP607zyg/A8Kx1daPUIipK5ctXuoUqxUKo5yT32Oe00StPs1
	o9HzHTaCKUoiYp+u/L2iyik5fhgqdg2WD8lzisfn2WQ+n1HASoHaSW/tYxJljwkHXa5a
	XDAodoc4V+Hxko4owSP82dcZzL20kbFR3MzgftxwHUNXj7sh144O5IBPTjNP8DPvs1Rm
	L/s0iXuGvNKyvHhM8XrHxzyGaryBhCdKQCzDVB8CecrGnuo3cMGxhlpTUOArxyBw6mSz
	YFMvQt4BbWq5+PXMMU1HiWyrHXt5DdEhf2R+9ndBefLf6NThPZpP2mq9jGRzF4WiQGrx
	pHKw==
X-Received: by 10.152.234.130 with SMTP id ue2mr26683393lac.0.1395250178793;
	Wed, 19 Mar 2014 10:29:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.114.4.82 with HTTP; Wed, 19 Mar 2014 10:29:18 -0700 (PDT)
From: Fabio Berton <fbberton@gmail.com>
Date: Wed, 19 Mar 2014 14:29:18 -0300
Message-ID: <CAEaGWU+ag9jGMBvhiNFd9bBRL_8ha461UO9+5T-p2w7=VXg-cw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: PyQt without x11
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
X-List-Received-Date: Wed, 19 Mar 2014 17:29:46 -0000
Content-Type: multipart/alternative; boundary=001a113484bc47a7f104f4f8ff43

--001a113484bc47a7f104f4f8ff43
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I need to run PyQt on Qt Embedded system, without X11. I found a way using
xvfb, but I can't install xvfb on Yocto. I removed the --disable-xvfb from
EXTRA_OECONF on poky/meta/recipes-graphics/xorg-xserver/xserver-xorg.inc
but didn't work.
How do I install xvfb on my system? There other options to use PyQt on Qt
Embedded?
Thanks!
Fabio Berton
Engenharia de Computa=C3=A7=C3=A3o - UFSM
Estagi=C3=A1rio Chip Inside Tecnologia - ITSM

E-mail: fbberton@gmail.com
Gtalk: fbberton@gmail.com
Tel.:  (55) 9651-4405

Santa Maria - RS

--001a113484bc47a7f104f4f8ff43
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>I need to run PyQt on Qt Embedded system, withou=
t X11. I found a way using xvfb, but I can&#39;t install xvfb on Yocto. I r=
emoved the --disable-xvfb from EXTRA_OECONF on poky/meta/recipes-graphics/x=
org-xserver/xserver-xorg.inc but didn&#39;t work.<br>

</div>How do I install xvfb on my system? There other options to use PyQt o=
n Qt Embedded?<br></div>Thanks!<br clear=3D"all"><div><div><div><div><div><=
div dir=3D"ltr"><div>
<font color=3D"#666666">Fabio Berton<br></font></div><div><font color=3D"#6=
66666"><span>Engenharia de Computa=C3=A7=C3=A3o - UFSM</span></font></div><=
div><font color=3D"#666666">Estagi=C3=A1rio Chip Inside Tecnologia - ITSM</=
font></div><div>

<font color=3D"#666666"><br></font></div><div><font color=3D"#666666">E-mai=
l:=C2=A0<a href=3D"mailto:fbberton@gmail.com" target=3D"_blank">fbberton@gm=
ail.com</a></font></div><div><span style=3D"color:rgb(102,102,102)">Gtalk:=
=C2=A0<a href=3D"mailto:fbberton@gmail.com" target=3D"_blank">fbberton@gmai=
l.com</a></span></div>




<div><span style=3D"color:rgb(102,102,102)">Tel.:=C2=A0 (55) 9651-4405<br><=
/span></div><div><font color=3D"#666666"><br></font></div><div><font color=
=3D"#666666">Santa Maria - RS</font></div></div></div>
</div></div></div></div></div>

--001a113484bc47a7f104f4f8ff43--
