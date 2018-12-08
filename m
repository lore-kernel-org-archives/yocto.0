Return-Path: <balazovic.peter@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 381C6E00C41; Sat,  8 Dec 2018 07:21:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (balazovic.peter[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.48 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com
	[209.85.166.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97B23E003E1
	for <yocto@yoctoproject.org>; Sat,  8 Dec 2018 07:21:03 -0800 (PST)
Received: by mail-io1-f48.google.com with SMTP id r200so5582210iod.11
	for <yocto@yoctoproject.org>; Sat, 08 Dec 2018 07:21:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=PkeiSXmDFu1JSAZRHYX0y+yqzdgDC/YurZZ8BsVS//g=;
	b=sw1AnzCusFuynCjoAn0SStxdA3MEX1Ct8ksvLMx6X/kuIn/OuR7RjxI/nNhrl/EmfW
	AqroVeh6vtZRL7BaC30aDZGw/cem00NeYq2J3MBwCqbfTh+DEK97Fx26bbDJn7KaWguU
	6nM74V0tqplMFBHcwpbwmhovWsUtxe65D92vQXDa+nh0nJI6Lrh3F5N/0LMlCKgLDYKb
	SDf1biNPXtn+iPvzEMDnoZozc5LZZIllYFnPLW/XnrHhy/qvY3XCo2qSUNUF3MKAct8a
	8sr2HJyubW2ysLw6EAfUNfs+MXJO6h0N7zJPXv7oOSLe6KLlbKGtfmnSR/TcXkCY2XZT
	O2QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=PkeiSXmDFu1JSAZRHYX0y+yqzdgDC/YurZZ8BsVS//g=;
	b=NUcm6VQ5PA/EIJee1/K53bRBB0m9R4lzngEJzrCbGdP1HqQNBUNJUCqPFNdhb+M7FZ
	XJrp8mX135yA46C3+lTob15Qjy4bJlXJUCC7shAgl3ZD4KNlJCHUDmvka3moFprGlokU
	eGUd32LUbMOSY7yJ0U/3eBoTrikLGvIMHNcS6l3E8lAAmMw3gRXdjxV3MegzDRRq+DAI
	m7iZLFTrLOy1Z6FTuKEWJPEFUTex7sy5dxvAl89dXbtWOrSBljviPk4OhyCv5uw+OULm
	Db6/qk3inLLtERiQ9IRKFj6p+XrhCvmKmFu6uJrmdK8svTkmokg5eiQaueJVmHsKnygf
	8XqA==
X-Gm-Message-State: AA+aEWaRgLy70Xp/IPd5M+WtrY6u2QikfFJ9lEuvEqnZWIglSZpYq4Cv
	62j38D+pdtIsI6Z+hGD4ljxJLenO2YZ8gnVY/A5xlCFt
X-Google-Smtp-Source: AFSGD/WGio0zIaQiq/uo7z0xHldZ+YQkSxSUFS5G9SDD4LX++PHYHv3xS1Gpmgu3+98/OpBQ4Pgbjau8kI6ZMUeA1og=
X-Received: by 2002:a5d:87cd:: with SMTP id q13mr4803703ios.92.1544282463040; 
	Sat, 08 Dec 2018 07:21:03 -0800 (PST)
MIME-Version: 1.0
From: Peter Balazovic <balazovic.peter@gmail.com>
Date: Sat, 8 Dec 2018 16:20:52 +0100
Message-ID: <CAFq4t4gSvQg-g2-v=vBn8vRC3vpHbjb1Am6SREBAAha9PogcBw@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: X11 forwarding request failed on channel 0
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
X-List-Received-Date: Sat, 08 Dec 2018 15:21:05 -0000
Content-Type: multipart/alternative; boundary="000000000000a47ac8057c844712"

--000000000000a47ac8057c844712
Content-Type: text/plain; charset="UTF-8"

I am trying to ssh-connect with enabled x11 forwarding to my Yocto remote
target using ssh -XY root@xxx.xxx.xxx I am getting error

~$ ssh -XY root@XXX.XXX.XXX.XXX
debug1: Remote: No xauth program; cannot forward with spoofing.
X11 forwarding request failed on channel 0

I have enabled xauth on my system ... as well enabled X11 forwarding at
/etc/ssh/ssh_config
ForwardX11 yes

and /etc/ssh/sshd_config
X11Forwarding yes
X11DisplayOffset 10

I have xauth on my system what other configuration needed to enable x11
forwarding?

--000000000000a47ac8057c844712
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div dir=3D"ltr">I am trying to ssh-connect with enabled x11 forw=
arding to my Yocto remote target using ssh -XY root@xxx.xxx.xxx I am gettin=
g error<div><br></div><div><div>~$ ssh -XY root@XXX.XXX.XXX.XXX<br></div></=
div><div><div>debug1: Remote: No xauth program; cannot forward with spoofin=
g.</div><div>X11 forwarding request failed on channel 0</div><div><br></div=
></div><div>I have enabled xauth on my system ... as well enabled X11 forwa=
rding at</div><div>/etc/ssh/ssh_config=C2=A0</div><div>ForwardX11 yes</div>=
<div><br></div><div>and /etc/ssh/sshd_config</div><div>X11Forwarding yes</d=
iv><div>X11DisplayOffset 10</div><div><br></div><div>I have xauth on my sys=
tem what other configuration needed to enable x11 forwarding?</div></div></=
div></div></div></div></div>

--000000000000a47ac8057c844712--
