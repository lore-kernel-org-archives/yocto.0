Return-Path: <pervivek@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B283DE00B3A; Tue,  1 Mar 2016 01:51:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pervivek[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.48 listed in list.dnswl.org]
Received: from mail-vk0-f48.google.com (mail-vk0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88987E00A27
	for <yocto@yoctoproject.org>; Tue,  1 Mar 2016 01:51:10 -0800 (PST)
Received: by mail-vk0-f48.google.com with SMTP id e6so161793406vkh.2
	for <yocto@yoctoproject.org>; Tue, 01 Mar 2016 01:51:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to;
	bh=VXIzO+4SmimBsFc4W3DeoVF4Hg/eO5/NerkDYWGnaJ8=;
	b=lMQwAGILiHY4HhInuiUtFUUWvDtLv6PUkJ0QuOd7M2GC02kvpgZomxfPW5ekXelzii
	Epzk/U1g6F4qU4mW9tM/yaZ4Y0jCCta4jqys/HouCGAwY7c88Ertriy8ldGsPf55nmiv
	2vU+wE424XOHOGBCSS9GXdFnEbWrMYFuOATzUzXUvUgkWM9gd0+M8+0ecpALjsNCoTU7
	ls5lgJFvKtXCFQd6NkS2HiXkLNz8LrTeo59s+jPHHd6AgLYFfCEOhWfMO9jE98SRkwVS
	9pPbm/IknJqpi60TFfB0ArOfna1y+rfJawQtvKBIcI04PBuoXJpPd5Lm14cZFsI+T0Qc
	JsfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
	bh=VXIzO+4SmimBsFc4W3DeoVF4Hg/eO5/NerkDYWGnaJ8=;
	b=CGN0G+Wgi53zxDt54Fw6rgsJHMxPgzWR9yrIRRXoN+gSQefAf+xctAD/z2TNNAgMyH
	gTYCxWGMLLxFEyrOMe5D1aPOfTKhNJ8DAdaEvO3tKwJi/Yc+e2Y9ckErSR0hC+ZdMgi8
	JuLBwcqMavfq1NvcWyiCsNIp6ADOYK3rAlxB1ewPK7upKEKQiZ2w1jnhI9LaK6pIPIGi
	9q7xmUjZ+Hos6tBDCDw6ot3JJDja0x6loQaKA0JzG1Mif7BlDWKBLdER6v4bQpjE1J1v
	Yrpx/oBgGoKjx+Qgp2SNC+kx06AcsZFSqZqH2UJ0y326qti/VXSoYFycUklvsn3fI65T
	7nyg==
X-Gm-Message-State: AD7BkJJzHi+PBe8j+kST4Dl7h1d9zZNJRj+cei62gq2yWUo99vP9FHemKR3yiRaFCHijOZsa3SP047RCbBBaSw==
MIME-Version: 1.0
X-Received: by 10.31.47.207 with SMTP id v198mr15094575vkv.6.1456825869496;
	Tue, 01 Mar 2016 01:51:09 -0800 (PST)
Received: by 10.31.229.71 with HTTP; Tue, 1 Mar 2016 01:51:09 -0800 (PST)
Date: Tue, 1 Mar 2016 15:21:09 +0530
Message-ID: <CALLyC8Rop72w1ifz+=8A6TRuJ_j8w8x=pS9-m3VRUnAo_mVRUA@mail.gmail.com>
From: Vivek Per <pervivek@gmail.com>
To: Yocto <yocto@yoctoproject.org>
Subject: which package provides shutdown command
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
X-List-Received-Date: Tue, 01 Mar 2016 09:51:13 -0000
Content-Type: multipart/alternative; boundary=001a114336bc73772f052cf9b485

--001a114336bc73772f052cf9b485
Content-Type: text/plain; charset=UTF-8

Hi,
   When i try to use reboot command(which is from busybox) on target it is
invoking telinit (which is sysvinit, runlevel 6 ). Currently i am building
image with systemd not with sysvinit .When i use strace reboot it is
calling telinit, how can i configure to use "shutdown" command instead of
"reboot" command , which package produces "shutdown" commnad. How can i
configure busybox to reboot (with out any arguments to reboot ) . I can
able to reboot by using "reboot -f" , but i don't want to do like that , I
want to simply use "reboot" .
Thanks in advance

Regards
Vivek

--001a114336bc73772f052cf9b485
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>=C2=A0 =C2=A0When i try to use reboot command(whic=
h is from busybox) on target it is invoking telinit (which is sysvinit, run=
level 6 ). Currently i am building image with systemd not with sysvinit .Wh=
en i use strace reboot it is calling telinit, how can i configure to use &q=
uot;shutdown&quot; command instead of &quot;reboot&quot; command , which pa=
ckage produces &quot;shutdown&quot; commnad. How can i configure busybox to=
 reboot (with out any arguments to reboot ) . I can able to reboot by using=
 &quot;reboot -f&quot; , but i don&#39;t want to do like that , I want to s=
imply use &quot;reboot&quot; .=C2=A0</div><div>Thanks in advance<br></div><=
div><br></div><div>Regards</div><div>Vivek=C2=A0<br></div></div>

--001a114336bc73772f052cf9b485--
