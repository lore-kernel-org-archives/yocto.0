Return-Path: <linux.matthew@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5640FE00D4F; Fri,  1 Jun 2018 12:36:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (linux.matthew[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f173.google.com (mail-qt0-f173.google.com
	[209.85.216.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF3BAE00D4A
	for <yocto@yoctoproject.org>; Fri,  1 Jun 2018 12:36:17 -0700 (PDT)
Received: by mail-qt0-f173.google.com with SMTP id d3-v6so33537495qtp.11
	for <yocto@yoctoproject.org>; Fri, 01 Jun 2018 12:36:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=GzPUNDaNjxCxAvDyXPLfeloH572zOF1zD9ja6CFyWkE=;
	b=Ia4/5VczOU3k212wiCFPQUypYRVwegvJEi6O47WVhK9KgbXR8P/CKm3SYT74ZC3yv9
	i/7eftmPA6kj+Fx6UmCzNf+BpXsZ7i0E6f2nUkWcFfjjsO+A1Og1c5sMuYKQvCam7gfj
	uXZeNO7s7zgbXcqgmEK0eu9uJ1i2bN+ifYOrHyqmpkB3fdQME8cCMcIxEXL52DvZi9nP
	WJt3m7+fwGYFDDPvdSu/skp5yMC4LVVkX8HYXesdad/ajSMXh2GTmJI+0+hTWeR9TW7v
	G3Nz3crFq16qGhUkiegcWiMelvXrfWZ7v0VTTywEHQZt9hGucTDb2VYn/Si1Wmo5m3W/
	HlWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=GzPUNDaNjxCxAvDyXPLfeloH572zOF1zD9ja6CFyWkE=;
	b=nGXHzoBSW1KfHj/mBU2cJhYrg6rB5GPA0XpHNGTlH4slD68gMLtbJQJeZWi5nTMuwF
	eMLlGr9xy1U3nMGNU4jI/Dl761yukEBabyPiaybkUqKfV+uXlyX80NrhODdXtlWl6Wt5
	+mJydWNJIouo2wND15gmgXXwt5SMR1EEwG5VXm6XLnLc4CyeOCqH86cUbtbvBJH0yrao
	9E7ipCHUHkVXWMRGQhp+9roE81QjOHn4hkhtTGMMFjaBSd2gDACTAks8CJyoivxm7XMe
	nYK6kVyr3T3AQx1E9w19wijOEJ2hAS92jmcf3GddC6YWGg6bQriIgfKDqE7BtWqmLhuE
	pvfQ==
X-Gm-Message-State: APt69E3zk/DUOO/Jrv5JQMZwEZ3V7FpOO9cIayjg8qoXMZZbPjp9bgGN
	T1dEW9qLCLi/7NK2hy0x5c5GEvlPcsnhXrBWKyRoDg==
X-Google-Smtp-Source: ADUXVKLUi/pTNITxLwLsxct1p62JNTWTqYdSZ0GoT4XdELl3zxvP4wo+oJuhP7vSHZWvvAYA8OFYXbCGAZxKc8HDdNQ=
X-Received: by 2002:ac8:fdb:: with SMTP id
	f27-v6mr12559376qtk.293.1527881776775; 
	Fri, 01 Jun 2018 12:36:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac8:2c8a:0:0:0:0:0 with HTTP;
	Fri, 1 Jun 2018 12:36:16 -0700 (PDT)
From: Matthew Clark <linux.matthew@gmail.com>
Date: Fri, 1 Jun 2018 15:36:16 -0400
Message-ID: <CAHHS9cF2mO3ORV+tccyN7CnweCCOc+f=6nFRpNq6RzL7fGw7ew@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Error cross-building python 3.5.2
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
X-List-Received-Date: Fri, 01 Jun 2018 19:36:19 -0000
Content-Type: multipart/alternative; boundary="000000000000904601056d99b259"

--000000000000904601056d99b259
Content-Type: text/plain; charset="UTF-8"

I'm trying to build yocto for two different ARM boards using a rocko and a
sumo distro, but am running into the same problem:


PYTHON_PROJECT_BASE=/home/mclark/Code/Yocto/ODroid/build/tmp/work/aarch64-poky-linux/python3/3.5.5-r1.0/build
\
_PYTHON_HOST_PLATFORM=linux-aarch64  PYTHONPATH=\
/home/mclark/Code/Yocto/ODroid/build/tmp/work/aarch64-poky-linux/python3/3.5.5-r1.0/recipe-sysroot-native/usr/lib/python3.5/lib-dynload/:
/home/mclark/Code/Yocto/ODroid/build/tmp/work/aarch64-poky-linux/python3/3.5.5-r1.0/build/build/lib.linux-aarch64-3.5:\
/home/mclark/Code/Yocto/ODroid/build/tmp/work/aarch64-poky-linux/python3/3.5.5-r1.0/Python-3.5.5/Lib:\
/home/mclark/Code/Yocto/ODroid/build/tmp/work/aarch64-poky-linux/python3/3.5.5-r1.0/Python-3.5.5/Lib/plat-linux
\
python -S -m sysconfig --generate-posix-vars

Traceback (most recent call last):
  File
"/home/mclark/Code/Yocto/ODroid/build/tmp/work/aarch64-poky-linux/python3/3.5.5-r1.0/Python-3.5.5/Lib/encodings/__init__.py",
line 31, in <module>
    import codecs
  File
"/home/mclark/Code/Yocto/ODroid/build/tmp/work/aarch64-poky-linux/python3/3.5.5-r1.0/Python-3.5.5/Lib/codecs.py",
line 95
    *, _is_text_encoding=None):
     ^
SyntaxError: invalid syntax

I've not been able to to identify a solid lead on why this is bailing, but
its blocking my builds.  Does anyone one know why it's crapping here?

Matt

--000000000000904601056d99b259
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;m trying to build yocto for two different ARM boards=
 using a rocko and a sumo distro, but am running into the same problem:<br>=
<br><br><font face=3D"monospace, monospace">PYTHON_PROJECT_BASE=3D/home/mcl=
ark/Code/Yocto/ODroid/build/tmp/work/aarch64-poky-linux/python3/3.5.5-r1.0/=
build \<br>_PYTHON_HOST_PLATFORM=3Dlinux-aarch64=C2=A0=C2=A0PYTHONPATH=3D\<=
br>/home/mclark/Code/Yocto/ODroid/build/tmp/work/aarch64-poky-linux/python3=
/3.5.5-r1.0/recipe-sysroot-native/usr/lib/python3.5/lib-dynload/:<br>/home/=
mclark/Code/Yocto/ODroid/build/tmp/work/aarch64-poky-linux/python3/3.5.5-r1=
.0/build/build/lib.linux-aarch64-3.5:\<br>/home/mclark/Code/Yocto/ODroid/bu=
ild/tmp/work/aarch64-poky-linux/python3/3.5.5-r1.0/Python-3.5.5/Lib:\<br>/h=
ome/mclark/Code/Yocto/ODroid/build/tmp/work/aarch64-poky-linux/python3/3.5.=
5-r1.0/Python-3.5.5/Lib/plat-linux \<br>python -S -m sysconfig --generate-p=
osix-vars<br><br>Traceback (most recent call last):<br>=C2=A0 File &quot;/h=
ome/mclark/Code/Yocto/ODroid/build/tmp/work/aarch64-poky-linux/python3/3.5.=
5-r1.0/Python-3.5.5/Lib/encodings/__init__.py&quot;, line 31, in &lt;module=
&gt;<br>=C2=A0 =C2=A0 import codecs<br>=C2=A0 File &quot;/home/mclark/Code/=
Yocto/ODroid/build/tmp/work/aarch64-poky-linux/python3/3.5.5-r1.0/Python-3.=
5.5/Lib/codecs.py&quot;, line 95<br>=C2=A0 =C2=A0 *, _is_text_encoding=3DNo=
ne):<br>=C2=A0 =C2=A0 =C2=A0^<br>SyntaxError: invalid syntax</font><div><fo=
nt face=3D"monospace, monospace"><br></font></div><div><font face=3D"arial,=
 helvetica, sans-serif">I&#39;ve not been able to to identify a solid lead =
on why this is bailing, but its blocking my builds.=C2=A0 Does anyone one k=
now why it&#39;s crapping here?</font></div><div><font face=3D"arial, helve=
tica, sans-serif"><br></font></div><div><font face=3D"arial, helvetica, san=
s-serif">Matt</font></div></div>

--000000000000904601056d99b259--
