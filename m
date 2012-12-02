Return-Path: <errordeveloper@gmail.com>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB815E01455
	for <yocto@yoctoproject.org>; Sun,  2 Dec 2012 04:37:31 -0800 (PST)
Received: by mail-bk0-f48.google.com with SMTP id jc3so737575bkc.35
	for <yocto@yoctoproject.org>; Sun, 02 Dec 2012 04:37:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=EBA8ustxaglEiYJfRdzWd/T/4LOOJtxBmqZg1Tru7sw=;
	b=JDXBSAx5DhoT0916kJn0h96blJo2WTH36ufVRo7QER57Rua82PHxttVq6oLyS/9/mw
	OaSoibG+mBZ69Axa+mbyfCx33+8LDfzCMv400jS5njzt1LNof2fEamXp9dur831rG8ph
	uHioiFSWnSBf1SkKMeMxcfN3g2tUkvKp4bny4snjcXGHxoq/6QMw2egfXFwPhCMYbBlR
	ChuMPlaNzBME6lTqePkHb1XZ5VQyfQ0ZEbIRV6TTyF8G1TGloR1ywzYJ+gz3NVriJsGu
	Zdh6WGizwS43+NyERa6gFLo+yby+e6sBqvHS18EZo8UBQpDInAXuLgOhoBy8x2oC8kRe
	Z4Mw==
MIME-Version: 1.0
Received: by 10.204.149.85 with SMTP id s21mr1929688bkv.37.1354451849892; Sun,
	02 Dec 2012 04:37:29 -0800 (PST)
Received: by 10.204.50.83 with HTTP; Sun, 2 Dec 2012 04:37:29 -0800 (PST)
Date: Sun, 2 Dec 2012 12:37:29 +0000
Message-ID: <CAPhDKbGz2yX_b5h91q83qHT8fxhj-LPywxiQDsSL81m45bhccg@mail.gmail.com>
From: Ilya Dmitrichenko <errordeveloper@gmail.com>
To: yocto@yoctoproject.org
Subject: Failing to load native libs
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
X-List-Received-Date: Sun, 02 Dec 2012 12:37:32 -0000
Content-Type: multipart/alternative; boundary=0015175cae1260d2e504cfdde5dc

--0015175cae1260d2e504cfdde5dc
Content-Type: text/plain; charset=ISO-8859-1

I'm having a slightly odd issue, looks like LD_*_PATH is not being set or
something like that. I've worked around it by adding
/etc/ld.so.conf.d/poky.conf, but i still needed to do `sudo ldconfig` every
now and again when it fails to run say bzip2 with error that it cannot load
damn libbz2.so. It's an ugly hack of course, but I'm not so sure how to fix
this otherwise. I wonder if this could possibly be to do with the distro i
happend to be using as a host - it's ubuntu 10.04. That's kindda old, but I
doubt that it's to do with that.

Cheers,
-- 
Ilya

--0015175cae1260d2e504cfdde5dc
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div>I&#39;m having a slightly odd issue, looks like LD_*_PATH is not being=
 set or something like that.=A0I&#39;ve worked around it by adding /etc/ld.=
so.conf.d/poky.conf,=A0but i still needed to do `sudo ldconfig` every now a=
nd again when it fails to run say bzip2 with error=A0that it cannot load da=
mn libbz2.so.=A0It&#39;s an ugly hack of course, but I&#39;m not so sure ho=
w to fix this otherwise.=A0I wonder if this could possibly be to do with th=
e distro i happend to be using as a host - it&#39;s=A0ubuntu 10.04. That&#3=
9;s kindda old,=A0but I doubt that it&#39;s to do with that.</div>
<div><br></div><div>Cheers,</div><div>--=A0</div><div>Ilya=A0</div>

--0015175cae1260d2e504cfdde5dc--
