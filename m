Return-Path: <jfabernathy@gmail.com>
Received: from mail-gx0-f176.google.com (mail-gx0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88651E005BB
	for <yocto@yoctoproject.org>; Tue,  1 Nov 2011 11:37:16 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by ggnr1 with SMTP id r1so9727629ggn.35
	for <yocto@yoctoproject.org>; Tue, 01 Nov 2011 11:37:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=XI/XYJDOPPk9BX5HSjSDUyM6S6gT7OCzLdzHfhHhWwE=;
	b=daJrI3M7XayTl7cjWuewVybYq3jjTBwIBlZ9gHQNKe0Ppm+ZiVAbolLsX6a4sTk6t4
	Z7Ma1R9TzeA4wR5GZ5Y1mDMd0o0GIYpo1S4erD9TgrSnfNbi+PKBoZoq4Sc9cdfiyHR/
	4ehLlvhyNk2mky+9QLi++hFYWG0HgOR4VWTuE=
MIME-Version: 1.0
Received: by 10.236.155.74 with SMTP id i50mr1464679yhk.23.1320172635703; Tue,
	01 Nov 2011 11:37:15 -0700 (PDT)
Received: by 10.236.109.134 with HTTP; Tue, 1 Nov 2011 11:37:15 -0700 (PDT)
Date: Tue, 1 Nov 2011 14:37:15 -0400
Message-ID: <CANFv2EkrNFQw57X=tV5Wz+a5F-cqp_GQHsOpLhOh7pXeTSnpXg@mail.gmail.com>
From: James Abernathy <jfabernathy@gmail.com>
To: yocto@yoctoproject.org
Subject: Build error while following Appendix A. Yocto Project Development manual
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
X-List-Received-Date: Tue, 01 Nov 2011 18:37:17 -0000
Content-Type: multipart/alternative; boundary=20cf303b4239fe494704b0b0a43e

--20cf303b4239fe494704b0b0a43e
Content-Type: text/plain; charset=ISO-8859-1

I tried to duplicate the Yocto Project Decelopment Manual Appendix A build
of a Crownbay NOEMGD image,  no changes just dulicate the instructions.
This is using the latest Yocto 1.1.  I did get a long way down the line,
but had a fatal error in the last 2 steps.


The only change I had to make was related to A.5.2.4.  The commit string
for the SRCREV_meta_pn was different on the
git.yoctoproject.org/cgit/cgifor the Meta commit so I used what I
found online.  The first section of
126 task completed without error. The next section of 4394 tasks failed on
4393.  Not sure if the error is obvious, but I wanted to run it by someone.
Console error log below:

 NOTE: package core-image-sato-1.0-r0: task do_bootimg: Started
ERROR: Function 'build_boot_bin' failed (see
/home/jim/poky/yocto-build/tmp/work/mymachine-poky-linux/core-image-sato-1.0-r0/temp/log.do_bootimg.31418
for further information)
ERROR: Logfile of failure stored in:
/home/jim/poky/yocto-build/tmp/work/mymachine-poky-linux/core-image-sato-1.0-r0/temp/log.do_bootimg.31418
Log data follows:
| install: cannot stat
`/home/jim/poky/yocto-build/tmp/sysroots/mymachine/kernel/bzImage': No such
file or directory
| ERROR: Function 'build_boot_bin' failed (see
/home/jim/poky/yocto-build/tmp/work/mymachine-poky-linux/core-image-sato-1.0-r0/temp/log.do_bootimg.31418
for further information)
NOTE: package core-image-sato-1.0-r0: task do_bootimg: Failed
ERROR: Task 9 (/home/jim/poky/meta/recipes-sato/images/core-image-sato.bb,
do_bootimg) failed with exit code '1'
ERROR: '/home/jim/poky/meta/recipes-sato/images/core-image-sato.bb' failed
jim@jim-ubuntu-10:~/poky/yocto-build$

--20cf303b4239fe494704b0b0a43e
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div style=3D"MARGIN: 0in 0in 0pt" class=3D"MsoNormal"><span style=3D"FONT-=
FAMILY: &#39;Calibri&#39;,&#39;sans-serif&#39;; COLOR: #1f497d; FONT-SIZE: =
11pt">I tried to duplicate the Yocto Project Decelopment Manual Appendix A =
build of a Crownbay NOEMGD image,=A0 no changes=A0just dulicate the instruc=
tions.=A0 This is using the latest Yocto 1.1. =A0I did get a long way down =
the line, but had a fatal error in the last 2 steps.</span></div>

<div style=3D"MARGIN: 0in 0in 0pt" class=3D"MsoNormal"><span style=3D"FONT-=
FAMILY: &#39;Calibri&#39;,&#39;sans-serif&#39;; COLOR: #1f497d; FONT-SIZE: =
11pt"></span>=A0</div>
<p style=3D"MARGIN: 0in 0in 12pt" class=3D"MsoNormal"><span style=3D"COLOR:=
 #1f497d"><font size=3D"3"><font face=3D"Times New Roman">The only change I=
=A0had to make was related to A.5.2.4.=A0 The commit string for the SRCREV_=
meta_pn was different on the <a href=3D"http://git.yoctoproject.org/cgit/cg=
i">git.yoctoproject.org/cgit/cgi</a> for the Meta commit so I used what I f=
ound online.=A0 The first section of 126 task completed without error. The =
next section of 4394 tasks failed on 4393.=A0 Not sure if the error is obvi=
ous, but I wanted to run it by someone. Console error log below:</font></fo=
nt></span></p>

<p style=3D"MARGIN: 0in 0in 0pt" class=3D"MsoNormal"><span style=3D"FONT-FA=
MILY: &#39;Calibri&#39;,&#39;sans-serif&#39;; COLOR: #1f497d; FONT-SIZE: 11=
pt">=A0</span><font size=3D"3" face=3D"Times New Roman">NOTE: package core-=
image-sato-1.0-r0: task do_bootimg: Started<br>
ERROR: Function &#39;build_boot_bin&#39; failed (see /home/jim/poky/yocto-b=
uild/tmp/work/mymachine-poky-linux/core-image-sato-1.0-r0/temp/log.do_booti=
mg.31418 for further information)<br>ERROR: Logfile of failure stored in: /=
home/jim/poky/yocto-build/tmp/work/mymachine-poky-linux/core-image-sato-1.0=
-r0/temp/log.do_bootimg.31418<br>
Log data follows:<br>| install: cannot stat `/home/jim/poky/yocto-build/tmp=
/sysroots/mymachine/kernel/bzImage&#39;: No such file or directory<br>| ERR=
OR: Function &#39;build_boot_bin&#39; failed (see /home/jim/poky/yocto-buil=
d/tmp/work/mymachine-poky-linux/core-image-sato-1.0-r0/temp/log.do_bootimg.=
31418 for further information)<br>
NOTE: package core-image-sato-1.0-r0: task do_bootimg: Failed<br>ERROR: Tas=
k 9 (/home/jim/poky/meta/recipes-sato/images/</font><a href=3D"http://core-=
image-sato.bb/"><font color=3D"#0000ff" size=3D"3" face=3D"Times New Roman"=
>core-image-sato.bb</font></a><font size=3D"3" face=3D"Times New Roman">, d=
o_bootimg) failed with exit code &#39;1&#39;<br>
ERROR: &#39;/home/jim/poky/meta/recipes-sato/images/</font><a href=3D"http:=
//core-image-sato.bb/"><font color=3D"#0000ff" size=3D"3" face=3D"Times New=
 Roman">core-image-sato.bb</font></a><font size=3D"3"><font face=3D"Times N=
ew Roman">&#39; failed<br>
jim@jim-ubuntu-10:~/poky/yocto-build$ </font></font></p>

--20cf303b4239fe494704b0b0a43e--
