Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1967FE0044A
	for <yocto@yoctoproject.org>; Tue, 12 Jun 2012 08:14:51 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so1069855pbb.35
	for <yocto@yoctoproject.org>; Tue, 12 Jun 2012 08:14:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:subject:date:message-id:to:mime-version:x-mailer;
	bh=c8oLagWslS8zEVNpakVRo9tnsaYcPCFiokQrnf6RSTs=;
	b=0FWqCy0wF835gJf0LjzGkl1bpj+k2QhFwdZbM2sc9WkogvR0dyIv35Tc/DYJSiz+bn
	oIiA1CWY6gLo7/g5sypIL/9+0/5exiKz6XGq93o7eqy4lZPD76K9ps7YWwe+N8DS78pQ
	xpXWt6Z3xsDxUUTMFZ6xCkBgUkJnYRXPCnRgrcmq2gR2LhgOjI2oosypSwIoCtDHh5kp
	Ia2eRZsczAY9zTQ+13CmwAI90HuWmEh5281r/9N+StEfDQaTD1JtPyQyAGKr0v/xx5f7
	TYptVuVapXncrXc8A0ZrY+dBdz6HtA8Men3Blheisdr4aKFexB+brsOPVOwspLSU/rCT
	izKg==
Received: by 10.68.228.130 with SMTP id si2mr23458238pbc.59.1339514090899;
	Tue, 12 Jun 2012 08:14:50 -0700 (PDT)
Received: from [192.168.1.102] ([94.205.109.242])
	by mx.google.com with ESMTPS id vp4sm2300022pbc.61.2012.06.12.08.14.48
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 12 Jun 2012 08:14:50 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Tue, 12 Jun 2012 19:14:44 +0400
Message-Id: <C53D7BB1-6029-4707-9AE7-BB1769900F98@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1278)
X-Mailer: Apple Mail (2.1278)
Subject: How to build 32-bit x86 host 32-bit powerpc target cross compiler, on a 64-bit x86 host
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
X-List-Received-Date: Tue, 12 Jun 2012 15:14:51 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_ACF905A3-FCF5-4FBB-9970-F0508A69A0B6"

--Apple-Mail=_ACF905A3-FCF5-4FBB-9970-F0508A69A0B6
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,
      I am running Ubuntu 12.04 LTS 64-bit. I have a colleague who =
doesn't have a 64-bit linux installation. What I'd like to be able to do =
is to build a 32-bit host 32-bit powerpc target cross compiler, on my =
64-bit machine.=20

How can I configure Yocto to do this?=20

At the moment, I've already generated a meta-toolchain SDK, which =
installs into :

=
/opt/poky/1.2+snapshot/sysroots/x86_64-pokysdk-linux/usr/bin/ppc440-poky-l=
inux/

How can I generate a the 32-bit hosted cross compiler on my 64-bit yocto =
build machine? I really didn't quite understand the term canadian-cross =
compiler, until now!! ;-) Now I know!!=20

Best regards,

Elvis Dowson=

--Apple-Mail=_ACF905A3-FCF5-4FBB-9970-F0508A69A0B6
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">Hi,<div>&nbsp; &nbsp; &nbsp; I am running Ubuntu 12.04 LTS 64-bit. I =
have a colleague who doesn't have a 64-bit linux installation. What I'd =
like to be able to do is to build a 32-bit host 32-bit powerpc target =
cross compiler, on my 64-bit machine.&nbsp;</div><div><br></div><div>How =
can I configure Yocto to do this?&nbsp;</div><div><br></div><div>At the =
moment, I've already generated a meta-toolchain SDK, which installs into =
:</div><div><br></div><div><div style=3D"margin-top: 0px; margin-right: =
0px; margin-bottom: 0px; margin-left: 0px; font: normal normal normal =
10px/normal Monaco; =
">/opt/poky/1.2+snapshot/sysroots/x86_64-pokysdk-linux/usr/bin/ppc440-poky=
-linux/</div></div><div style=3D"margin-top: 0px; margin-right: 0px; =
margin-bottom: 0px; margin-left: 0px; font: normal normal normal =
10px/normal Monaco; "><br></div><div style=3D"margin-top: 0px; =
margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: normal =
normal normal 10px/normal Monaco; "><span class=3D"Apple-style-span" =
style=3D"font-family: Helvetica; font-size: medium; ">How can I generate =
a the 32-bit hosted cross compiler on my 64-bit yocto build machine? I =
really didn't quite understand the term canadian-cross compiler, until =
now!! ;-) Now I know!!&nbsp;</span></div><div style=3D"margin-top: 0px; =
margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: normal =
normal normal 10px/normal Monaco; "><span class=3D"Apple-style-span" =
style=3D"font-family: Helvetica; font-size: medium; =
"><br></span></div><div style=3D"margin-top: 0px; margin-right: 0px; =
margin-bottom: 0px; margin-left: 0px; font: normal normal normal =
10px/normal Monaco; "><span class=3D"Apple-style-span" =
style=3D"font-family: Helvetica; font-size: medium; ">Best =
regards,</span></div><div style=3D"margin-top: 0px; margin-right: 0px; =
margin-bottom: 0px; margin-left: 0px; font: normal normal normal =
10px/normal Monaco; "><span class=3D"Apple-style-span" =
style=3D"font-family: Helvetica; font-size: medium; =
"><br></span></div><div style=3D"margin-top: 0px; margin-right: 0px; =
margin-bottom: 0px; margin-left: 0px; font: normal normal normal =
10px/normal Monaco; "><span class=3D"Apple-style-span" =
style=3D"font-family: Helvetica; font-size: medium; ">Elvis =
Dowson</span></div></body></html>=

--Apple-Mail=_ACF905A3-FCF5-4FBB-9970-F0508A69A0B6--
