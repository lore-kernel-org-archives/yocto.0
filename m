Return-Path: <akki.sahota@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDE34E014A1
	for <yocto@yoctoproject.org>; Tue,  4 Jun 2013 04:58:16 -0700 (PDT)
Received: by mail-lb0-f176.google.com with SMTP id z5so547101lbh.35
	for <yocto@yoctoproject.org>; Tue, 04 Jun 2013 04:58:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=KwQEMpbd4aDXZjhwnpdK+BUUWlvxhFCMdqpZHzPtvZQ=;
	b=iwqMs0xqat/t0OsutVQlt9lPHPfsQKtb1JHQhgTpnJgP7g6Z1L9rhvhSKXFR9/cWam
	nlyxvQaA5n0twcxdywyBE4a1RIr6hKeQDF3VLEDYECo+94wmiSAdcYsf6KORMUCQ0vAe
	0S65YEhecZW3bBub21QL4GyySPGOVmIX0OS2ki9R36oospa0g0EW5WbIsiGo7QhNzFxS
	zxRkX8GS4C6uOrYYrocvJlr93xS4FI/P7csFwjb9ZBEqD+kIgRzJ/D4SVJuUuOMaiZqW
	sZLhzE1ksm6FJ284aVZz6OtrEIhCRyc58mJrLPJLeJye7U+B/OQKK49lrLIbkZNiTPKg
	bkqQ==
MIME-Version: 1.0
X-Received: by 10.112.136.132 with SMTP id qa4mr13046868lbb.34.1370347095698; 
	Tue, 04 Jun 2013 04:58:15 -0700 (PDT)
Received: by 10.152.134.75 with HTTP; Tue, 4 Jun 2013 04:58:15 -0700 (PDT)
Date: Tue, 4 Jun 2013 17:28:15 +0530
Message-ID: <CAMUsWmAFGwTq=K1MzCUFZLfKCfQBBs7=AHTTcZWuAy4+fq8H+g@mail.gmail.com>
From: Akshay Sahota <akki.sahota@gmail.com>
To: yocto@yoctoproject.org
Subject: yocto with meta-ti
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
X-List-Received-Date: Tue, 04 Jun 2013 11:58:17 -0000
Content-Type: multipart/alternative; boundary=089e01177183dbb0ee04de52cb17

--089e01177183dbb0ee04de52cb17
Content-Type: text/plain; charset=ISO-8859-1

Hi all,

We are trying to get 2.6.32 kernel up and running, for the beagle board's
camera drivers to work, meta-ti provides the 2.6.32 kernel. Beagle board's
camera drivers are available for 2.6.32 kernel.

I followed instructions on this (
http://www.reliableembeddedsystems.com/wiki/index.php?title=Yocto_%2B_meta-ti)
page and finally I am getting this error:

$ bitbake -k core-image-minimal
Pseudo is not present but is required, building this first before the main
build
WARNING: Host distribution "Ubuntu 12.04.2 LTS" has not been validated with
this version of the build system; you may possibly experience unexpected
failures. It is recommended that you use a tested distribution.
ERROR: This recipe does not have the LICENSE field set
(cloud9-gfx-image)                                        | ETA:  00:00:14
ERROR: Unable to parse
/home/asahota/poky-try/poky/meta-ti/recipes-misc/images/cloud9-gfx-image.bb:
Exited with "1"
ERROR: This recipe does not have the LICENSE field set (ti-hw-bringup-image)
ERROR: This recipe does not have the LICENSE field set (cloud9-image)
ERROR: This recipe does not have the LICENSE field set (cloud9-gnome-image)
ERROR: Command execution failed: Exited with 1

Summary: There was 1 WARNING message shown.
Summary: There were 6 ERROR messages shown, returning a non-zero exit code.

You can ignore the warning above though..!!
Is there a clean way of integrating meta-ti with yocto..??
Has anyone done this before.? Ideas.?

-- 
*Akshay Sahota**
*Fourth Year Undergraduate
Department of Electronics & Electrical Engineering
Indian Institute of Technology Kharagpur

--089e01177183dbb0ee04de52cb17
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi all,<br><br></div>We are trying to get 2=
.6.32 kernel up and running, for the beagle board&#39;s camera drivers to w=
ork, meta-ti provides the 2.6.32 kernel. Beagle board&#39;s camera drivers =
are available for 2.6.32 kernel.<br>
<br></div>I followed instructions on this ( <a href=3D"http://www.reliablee=
mbeddedsystems.com/wiki/index.php?title=3DYocto_%2B_meta-ti">http://www.rel=
iableembeddedsystems.com/wiki/index.php?title=3DYocto_%2B_meta-ti</a> ) pag=
e and finally I am getting this error:<br>
<br>$ bitbake -k core-image-minimal<br>Pseudo is not present but is require=
d, building this first before the main build<br>WARNING: Host distribution =
&quot;Ubuntu 12.04.2 LTS&quot; has not been validated with this version of =
the build system; you may possibly experience unexpected failures. It is re=
commended that you use a tested distribution.<br>
ERROR: This recipe does not have the LICENSE field set (cloud9-gfx-image)=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 | ETA:=A0 00:00:14<br>ERROR: Una=
ble to parse /home/asahota/poky-try/poky/meta-ti/recipes-misc/images/<a hre=
f=3D"http://cloud9-gfx-image.bb">cloud9-gfx-image.bb</a>: Exited with &quot=
;1&quot;<br>
ERROR: This recipe does not have the LICENSE field set (ti-hw-bringup-image=
)<br>ERROR: This recipe does not have the LICENSE field set (cloud9-image)<=
br>ERROR: This recipe does not have the LICENSE field set (cloud9-gnome-ima=
ge)<br>
ERROR: Command execution failed: Exited with 1<br><br>Summary: There was 1 =
WARNING message shown.<br>Summary: There were 6 ERROR messages shown, retur=
ning a non-zero exit code.<br><br></div>You can ignore the warning above th=
ough..!!<br clear=3D"all">
<div><div><div><div><div><div><div>Is there a clean way of integrating meta=
-ti with yocto..?? <br></div><div>Has anyone done this before.? Ideas.?<br>=
</div><div><br>-- <br><div dir=3D"ltr"><span style=3D"background-color:rgb(=
255,255,255)"><span style=3D"color:rgb(136,136,136)"><b>Akshay Sahota</b></=
span></span><span style=3D"color:rgb(136,136,136);background-color:rgb(255,=
255,255)"><b><font style=3D"background-color:rgb(255,255,255)" color=3D"#66=
6666"><br style=3D"font-family:&#39;courier new&#39;,monospace">
</font></b><font style=3D"font-family:arial,sans-serif;font-size:13px;backg=
round-color:rgb(255,255,255)" color=3D"#666666"><font style=3D"font-family:=
georgia,serif;color:rgb(153,153,153)" size=3D"1"><font color=3D"#666666"><f=
ont size=3D"1">Fourth</font></font> </font></font><font style=3D"font-famil=
y:arial,sans-serif;font-size:13px"><font style=3D"font-family:georgia,serif=
" size=3D"1"><span style=3D"background-color:rgb(255,255,255);color:rgb(153=
,153,153)">Year Undergraduate</span><br>
</font><font style=3D"font-family:georgia,serif" size=3D"1" color=3D"#99999=
9">Department of Electronics &amp; Electrical Engineering<br></font><span s=
tyle=3D"font-family:&#39;courier new&#39;,monospace"><font style=3D"font-fa=
mily:georgia,serif" size=3D"1" color=3D"#999999">Indian Institute of Techno=
logy Kharagpur</font><br>
</span></font></span></div>
</div></div></div></div></div></div></div></div>

--089e01177183dbb0ee04de52cb17--
