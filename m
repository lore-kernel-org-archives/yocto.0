Return-Path: <miketsukerman@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A634E006BD
	for <yocto@yoctoproject.org>; Tue, 15 Nov 2011 20:19:18 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pzk32 with SMTP id 32so19152602pzk.7
	for <yocto@yoctoproject.org>; Tue, 15 Nov 2011 20:19:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=31ZNIE5CfbBkV8dn/ckgXUlBYX85v2DRMuG+6L9Owfs=;
	b=a/hbrhTQsr5AsTHCSLe2jajncKu8JL49+uLkUeeowR2CF1CMXOjV8JxPYFfSQCDiSu
	QjZFUpz+gyN1Zf3py7GXvp42c0WEOD5OrCBBp5m/Lksmo923mj6d3uc3yiJDSJ9KQJvp
	rutsmw4Dvoo/DMwAvlEmWQLFT/UD+FK4Aop9Y=
MIME-Version: 1.0
Received: by 10.68.7.132 with SMTP id j4mr4943687pba.79.1321417157584; Tue, 15
	Nov 2011 20:19:17 -0800 (PST)
Received: by 10.68.47.97 with HTTP; Tue, 15 Nov 2011 20:19:17 -0800 (PST)
Date: Wed, 16 Nov 2011 08:19:17 +0400
Message-ID: <CALs2vteGvK75Kwu8B4sxL+gPyrgN1SwOKTC97Bd=Xh_bdC==Lg@mail.gmail.com>
From: Mike Tsukerman <miketsukerman@gmail.com>
To: yocto@yoctoproject.org
Subject: /usr/bin/env dependencies
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
X-List-Received-Date: Wed, 16 Nov 2011 04:19:18 -0000
Content-Type: multipart/alternative; boundary=bcaec5215c4d4728cd04b1d2683c

--bcaec5215c4d4728cd04b1d2683c
Content-Type: text/plain; charset=ISO-8859-1

Hello,

I'm trying to build my own image for my own machine configuration ( based
on beagleboard )
and get some errors. Please tell me what package is missing?

error: Failed dependencies:
| /usr/bin/env is needed by automake-1.11.1-r4.armv7ahf
| /usr/bin/env is needed by slang-2.2.4-r6.armv7ahf
| /usr/bin/env is needed by mc-4.7.5.2-r2.armv7ahf
| /usr/bin/env is needed by autoconf-2.68-r3.armv7ahf
| /usr/bin/env is needed by intltool-0.40.6-r5.armv7ahf
| /usr/bin/env is needed by python-core-2.7.2-r0.0.armv7ahf
| /usr/bin/env is needed by gnu-config-0.1+cvs20080123-r4.armv7ahf


-- 
Best regards, Mike Tsukerman

jabber: miketsukerman@gmail.com
jabber: warzon@jabnet.org
skype: w_a_r_z_o_n

--bcaec5215c4d4728cd04b1d2683c
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello,<div><br></div><div>I&#39;m trying to build my own image for my own m=
achine configuration ( based on beagleboard )=A0</div><div>and get some err=
ors. Please tell me what package is missing?=A0</div><div><br></div><div><d=
iv>
error: Failed dependencies:</div><div>| <span class=3D"Apple-tab-span" styl=
e=3D"white-space:pre">	</span>/usr/bin/env is needed by automake-1.11.1-r4.=
armv7ahf</div><div>| <span class=3D"Apple-tab-span" style=3D"white-space:pr=
e">	</span>/usr/bin/env is needed by slang-2.2.4-r6.armv7ahf</div>
<div>| <span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>/us=
r/bin/env is needed by mc-4.7.5.2-r2.armv7ahf</div><div>| <span class=3D"Ap=
ple-tab-span" style=3D"white-space:pre">	</span>/usr/bin/env is needed by a=
utoconf-2.68-r3.armv7ahf</div>
<div>| <span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>/us=
r/bin/env is needed by intltool-0.40.6-r5.armv7ahf</div><div>| <span class=
=3D"Apple-tab-span" style=3D"white-space:pre">	</span>/usr/bin/env is neede=
d by python-core-2.7.2-r0.0.armv7ahf</div>
<div>| <span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>/us=
r/bin/env is needed by gnu-config-0.1+cvs20080123-r4.armv7ahf</div><div><br=
></div><div><br></div>-- <br><font style=3D"color:rgb(51, 51, 51)" size=3D"=
2">Best regards, Mike Tsukerman<br>
<br><span style=3D"color:rgb(0, 0, 0)">jabber</span>: <a href=3D"mailto:mik=
etsukerman@gmail.com" target=3D"_blank">miketsukerman@gmail.com</a><br><spa=
n style=3D"color:rgb(0, 0, 0)">jabber</span>: <a href=3D"mailto:warzon@jabn=
et.org" target=3D"_blank">warzon@jabnet.org</a><br>
<span style=3D"color:rgb(0, 0, 0)">skype</span>: w_a_r_z_o_n</font><br><br>
</div>

--bcaec5215c4d4728cd04b1d2683c--
