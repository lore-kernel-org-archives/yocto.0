Return-Path: <vidal.develone@gmail.com>
Received: from mail-qg0-f51.google.com (mail-qg0-f51.google.com
	[209.85.192.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D691FE006EC
	for <yocto@yoctoproject.org>; Thu, 24 Apr 2014 05:26:45 -0700 (PDT)
Received: by mail-qg0-f51.google.com with SMTP id f51so2422288qge.10
	for <yocto@yoctoproject.org>; Thu, 24 Apr 2014 05:26:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=x+xPFM3sa8ZiMvEv9fJoQ+CcslOI3K+KO8vRYQ6Guvk=;
	b=E1uxnONbjBob/yLKkF0j52cPYHQ3l5MWZkvDCyh9UyKED+C5s/StmcwvT31n6TXK6s
	qwxTOmWN401FroNGjTRKg2eBGCG5s5AXSQK5tyGZd0jJ12WOdPJL4eDAIMUgm5xd32TS
	bJVYlcFgctq+qpcRo8SLgoYF40E333x7hvyQwsp7RRIppd06sNTpuNLeUCpF2vrqJ3g2
	E8jItb8W97C2JEz+YfPzNZdwOf+ZjndlCmProKEfvfDfDarlIJj5yazYFf+0oX5LmZSP
	w9sj/5dxLethL3gh9rzTic+rkqLnaWm8T9iWi/y3ioZCLya/BRpSckRcecm4kxt/q/dB
	4s0Q==
MIME-Version: 1.0
X-Received: by 10.140.41.49 with SMTP id y46mr1960674qgy.104.1398342403968;
	Thu, 24 Apr 2014 05:26:43 -0700 (PDT)
Received: by 10.140.109.246 with HTTP; Thu, 24 Apr 2014 05:26:43 -0700 (PDT)
Date: Thu, 24 Apr 2014 06:26:43 -0600
Message-ID: <CANwz6nwr9=W=63L45Z-8GsW200pO5qKOTgE3E_jQA_-FY3TNww@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: How to run c++ programs?
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
X-List-Received-Date: Thu, 24 Apr 2014 12:26:46 -0000
Content-Type: multipart/alternative; boundary=001a11c152e843863604f7c8f61c

--001a11c152e843863604f7c8f61c
Content-Type: text/plain; charset=UTF-8

Hello,
In the poky/documentation folder I execute the following:
#!/bin/bash
make DOC=adt-manual
make DOC=kernel-dev
make DOC=mega-manual
make DOC=bsp-guide
make DOC=kernel-manual
make DOC=ref-manual
make DOC=yocto-project-qs
make DOC=dev-manual
make DOC=profile-manual
find . -name *.pdf
This generates my documentation for yocto .
What you need is the adt-manual. see Chapter 4. Using the Command
Line.
You also need to build SDK with bitbake.  Then a script in images/sdk
which you installs in /opt/poky/1.xxxx
Hope this helps.  I also am using a zedboard.  I recently got sound, 2 C920
cameras, openCV, gnuplot, gsl, vlc, and gnuradio working with meta-topic
instead of meta-xilinx thanks to Mike Looijmans on the meta-xilinx mailing
list.

--001a11c152e843863604f7c8f61c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>Hello,<br></div>In the poky/docum=
entation folder I execute the following:<br>#!/bin/bash<br>make DOC=3Dadt-m=
anual=C2=A0 <br>make DOC=3Dkernel-dev=C2=A0=C2=A0=C2=A0=C2=A0 <br>make DOC=
=3Dmega-manual<br>make DOC=3Dbsp-guide=C2=A0=C2=A0 <br>
make DOC=3Dkernel-manual=C2=A0 <br>make DOC=3Dref-manual=C2=A0 <br>make DOC=
=3Dyocto-project-qs<br>make DOC=3Ddev-manual=C2=A0 <br>make DOC=3Dprofile-m=
anual=C2=A0 <br>find . -name *.pdf<br></div>This generates my documentation=
 for yocto .<br></div>What you need is the adt-manual. see Chapter 4. Using=
 the Command<br>
Line.<br></div>You also need to build SDK with bitbake.=C2=A0 Then a script=
 in images/sdk=C2=A0 which you installs in /opt/poky/1.xxxx<br></div>Hope t=
his helps.=C2=A0 I also am using a zedboard.=C2=A0 I recently got sound, 2 =
C920 cameras, openCV, gnuplot, gsl, vlc, and gnuradio working with meta-top=
ic instead of meta-xilinx thanks to Mike Looijmans on the meta-xilinx maili=
ng list.<br>
<br></div>

--001a11c152e843863604f7c8f61c--
