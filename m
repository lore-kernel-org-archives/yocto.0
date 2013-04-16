Return-Path: <vidal.develone@gmail.com>
Received: from mail-ee0-f46.google.com (mail-ee0-f46.google.com [74.125.83.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5856DE01469
	for <yocto@yoctoproject.org>; Tue, 16 Apr 2013 12:02:35 -0700 (PDT)
Received: by mail-ee0-f46.google.com with SMTP id d49so407630eek.33
	for <yocto@yoctoproject.org>; Tue, 16 Apr 2013 12:02:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=S4/Olw+bUsIbdwTTX9nGCodQQwb9otTI9qGJk7w/b/g=;
	b=yv4nD/lBif8zRyCYm4JzFLQJCfOlSBWR7tFJdNGUuPbtLwt8F2mvw+D+KiONM2t+hJ
	MLGPLJIpC6d+4NCx8NaKJ8I2Nbz711A0tyEDTEwMPJ2FRUb3psnYfUtV/NNVk9MH2YKL
	TcjR+prZMipFxHxX/KqHMVynjBcm1VZQ+ofbeBNbwwNw331DhPXlJ8SlvMur8aec1pTH
	gO0mD8PvmsKb91XXhqfZnPVPs+xK0busODAk6qXQqNe8XHJ54+yVV8O5dUxyjVhdRa+V
	BRl7H7Gzl9XySlFnAUrmmR5P1T6bt8rnVFWSg2/ntaNbNPxlbhkqZTr6WnVA37/58hJ4
	Gqbg==
MIME-Version: 1.0
X-Received: by 10.15.34.199 with SMTP id e47mr9271286eev.35.1366138954089;
	Tue, 16 Apr 2013 12:02:34 -0700 (PDT)
Received: by 10.223.168.6 with HTTP; Tue, 16 Apr 2013 12:02:33 -0700 (PDT)
Date: Tue, 16 Apr 2013 13:02:33 -0600
Message-ID: <CANwz6nwRC9D4KUa8BEJF3siCbu9KCf9khgpmH2kV_Rcp9esZKA@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: yocto@yoctoproject.org
Subject: Repository to upgrade images
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
X-List-Received-Date: Tue, 16 Apr 2013 19:02:35 -0000
Content-Type: multipart/alternative; boundary=089e016351a612accf04da7f0345

--089e016351a612accf04da7f0345
Content-Type: text/plain; charset=ISO-8859-1

Hello,
Are there any plans to provide a repo of pkgs where systems can be upgraded
and new pkgs installed like other distro Fedora, CentOS, and rhel?  This
would also require yum or the new software that is replacing yum.

Also  for my Fedora, CentOS, and rhel systems I use cobbler for network
installs and liveDVD.  For cobbler you need a repository and and the target
needs to be able to support PXE.  Does any of embedded boards support PXE?
I need gfortran and numy support.  I have tried modifying the files
gcc-configure-common.inc with (LANGUAGES ?= "c,c++${FORTRAN}${JAVA}" to
LANGUAGES ?= "c,c++,fortran${JAVA}"  and gcc-configure-runtime.inc with (
RUNTIMETARGET = "libssp libstdc++-v3 libgomp" to RUNTIMETARGET = "libssp
libstdc++-v3 libgomp libgfortran").  these changes both cause
core-image-sato-sdk-ex to file.

Thanks any and all help will be appreciated.

--089e016351a612accf04da7f0345
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><br></div>Hello, <br></div>Are there a=
ny plans to provide a repo of pkgs where systems can be upgraded and new pk=
gs installed like other distro Fedora, CentOS, and rhel?=A0 This would also=
 require yum or the new software that is replacing yum.<br>
<br></div>Also=A0 for my Fedora, CentOS, and rhel systems I use cobbler for=
 network installs and liveDVD.=A0 For cobbler you need a repository and and=
 the target needs to be able to support PXE.=A0 Does any of embedded boards=
 support PXE?<br>
</div><div>I need gfortran and numy support.=A0 I have tried modifying the =
files gcc-configure-common.inc with (LANGUAGES ?=3D &quot;c,c++${FORTRAN}${=
JAVA}&quot; to LANGUAGES ?=3D &quot;c,c++,fortran${JAVA}&quot;=A0 and gcc-c=
onfigure-runtime.inc with ( RUNTIMETARGET =3D &quot;libssp libstdc++-v3 lib=
gomp&quot; to RUNTIMETARGET =3D &quot;libssp libstdc++-v3 libgomp libgfortr=
an&quot;).=A0 these changes both cause core-image-sato-sdk-ex to file.<br>
<br></div>Thanks any and all help will be appreciated.<br></div>

--089e016351a612accf04da7f0345--
