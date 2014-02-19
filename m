Return-Path: <fede.vitali@gmail.com>
Received: from mail-oa0-f52.google.com (mail-oa0-f52.google.com
	[209.85.219.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7CADE0074B
	for <yocto@yoctoproject.org>; Wed, 19 Feb 2014 02:44:36 -0800 (PST)
Received: by mail-oa0-f52.google.com with SMTP id o6so201907oag.11
	for <yocto@yoctoproject.org>; Wed, 19 Feb 2014 02:44:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=xBGKOcz2P1DLtVVizvPXP7m5wXfiOepB6T0nqOCi368=;
	b=HF7BeK5vLq9jpcIAv3vuoczu+3JW1Xv4JQsq/tM5yC0OR1hd5znwMQ/eiL6ZkY+s38
	SG5VpC9Z98bfxNhQ5wg1M++dqPIJ8wRxIrTPYHw1di65KiWAAkEFCY7Jn7oYKLvjuqR/
	u2trhpIqLSvApG2d7XgqwhhZoxsygMqSPdoJvzKJhqEsQpLhWaYnTf/JmmK3EP7GWZrX
	XTWOf/AM9gZIZHA+mmS4isWRetfFAOdhxgggFw9LuMygUYsJuaLvqJx7u/zS0i5ukQS9
	wFAOW0YLIvZx9T1Q1PUuvk8KaIMikSIE9RVjkP7BvLZ4um/tWZQ4+4hqvqpVxi7mMJq+
	uCBQ==
MIME-Version: 1.0
X-Received: by 10.60.45.38 with SMTP id j6mr30868362oem.2.1392806675982; Wed,
	19 Feb 2014 02:44:35 -0800 (PST)
Received: by 10.76.101.11 with HTTP; Wed, 19 Feb 2014 02:44:35 -0800 (PST)
Date: Wed, 19 Feb 2014 11:44:35 +0100
Message-ID: <CAD78y+7qxqkdf1d1p6dFe5Cv9dFLHpgZ3uJfOD6JdmbScfX2+g@mail.gmail.com>
From: Federico Vitali <fede.vitali@gmail.com>
To: yocto@yoctoproject.org
Subject: problem with yocto behind http_proxy
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
X-List-Received-Date: Wed, 19 Feb 2014 10:44:39 -0000
Content-Type: multipart/alternative; boundary=089e015367ec29b07704f2c0137f

--089e015367ec29b07704f2c0137f
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I have problems using yocto behind a firewall. The firewall blocks git, so
I've followed the instructions
given here:

http://www.yoctoproject.org/docs/1.5.1/ref-manual/ref-manual.html#how-does-the-yocto-project-obtain-source-code-and-will-it-work-behind-my-firewall-or-proxy-server

i.e. adding the following lines to my local.conf:

PREMIRRORS_prepend = "\
     git://.*/.* http://www.yoctoproject.org/sources/ \n \
     ftp://.*/.* http://www.yoctoproject.org/sources/ \n \
     http://.*/.* http://www.yoctoproject.org/sources/ \n \
     https://.*/.* http://www.yoctoproject.org/sources/ \n"

BB_FETCH_PREMIRRORONLY = "1"


but I still get the following errors:

ERROR: Function failed: Network access disabled through BB_NO_NETWORK
(or set indirectly due to use of BB_FETCH_PREMIRRORONLY) but access
requested with command git fetch -f --prune
git://git.yoctoproject.org/yocto-kernel-tools.git refs/*:refs/* (for
url git://git.yoctoproject.org/yocto-kernel-tools.git)
ERROR: Logfile of failure stored in:
/home/vitalife/yocto/poky-dora-10.0.1/build/tmp/work/x86_64-linux/kern-tools-native/0.2+gitAUTOINC+a42509b01c-r12/temp/log.do_fetch.4490

It seems that bitbake is still trying to access the server with git.

Any suggestion?

Thank you in advance

Federico

--089e015367ec29b07704f2c0137f
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I have problems using yocto behind =
a firewall. The firewall blocks git, so I&#39;ve followed the instructions<=
/div><div>given here:</div><div><br></div><div><a href=3D"http://www.yoctop=
roject.org/docs/1.5.1/ref-manual/ref-manual.html#how-does-the-yocto-project=
-obtain-source-code-and-will-it-work-behind-my-firewall-or-proxy-server">ht=
tp://www.yoctoproject.org/docs/1.5.1/ref-manual/ref-manual.html#how-does-th=
e-yocto-project-obtain-source-code-and-will-it-work-behind-my-firewall-or-p=
roxy-server</a><br>
</div><div><br></div><div>i.e. adding the following lines to my local.conf:=
</div><div><br></div><div><pre class=3D"" style=3D"overflow:auto;color:rgb(=
51,51,51)">PREMIRRORS_prepend =3D &quot;\
     git://.*/.* <a href=3D"http://www.yoctoproject.org/sources/">http://ww=
w.yoctoproject.org/sources/</a> \n \
     ftp://.*/.* <a href=3D"http://www.yoctoproject.org/sources/">http://ww=
w.yoctoproject.org/sources/</a> \n \
     http://.*/.* <a href=3D"http://www.yoctoproject.org/sources/">http://w=
ww.yoctoproject.org/sources/</a> \n \
     https://.*/.* <a href=3D"http://www.yoctoproject.org/sources/">http://=
www.yoctoproject.org/sources/</a> \n&quot;</pre><pre class=3D"" style=3D"ov=
erflow:auto"><font color=3D"#333333">BB_FETCH_PREMIRRORONLY =3D &quot;1&quo=
t;<br>
</font></pre><pre class=3D"" style=3D"overflow:auto"><font color=3D"#333333=
"><br></font></pre><pre class=3D"" style=3D"overflow:auto;color:rgb(51,51,5=
1)">but I still get the following errors:</pre><pre class=3D"" style=3D"ove=
rflow:auto">
<font color=3D"#333333">ERROR: Function failed: Network access disabled thr=
ough BB_NO_NETWORK (or set indirectly due to use of BB_FETCH_PREMIRRORONLY)=
 but access requested with command git fetch -f --prune git://<a href=3D"ht=
tp://git.yoctoproject.org/yocto-kernel-tools.git">git.yoctoproject.org/yoct=
o-kernel-tools.git</a> refs/*:refs/* (for url git://<a href=3D"http://git.y=
octoproject.org/yocto-kernel-tools.git">git.yoctoproject.org/yocto-kernel-t=
ools.git</a>)
ERROR: Logfile of failure stored in: /home/vitalife/yocto/poky-dora-10.0.1/=
build/tmp/work/x86_64-linux/kern-tools-native/0.2+gitAUTOINC+a42509b01c-r12=
/temp/log.do_fetch.4490</font><span style=3D"color:rgb(51,51,51)">
</span></pre><div>It seems that bitbake is still trying to access the serve=
r with git.=A0<br></div></div><div><br></div><div>Any suggestion?</div><div=
><br></div><div>Thank you in advance</div><div><br></div><div>Federico</div=
>
</div>

--089e015367ec29b07704f2c0137f--
