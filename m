Return-Path: <spdev31@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82016E009DA; Mon, 18 May 2015 20:59:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (spdev31[at]gmail.com)
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
	*      [209.85.223.176 listed in list.dnswl.org]
Received: from mail-ie0-f176.google.com (mail-ie0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1481E0099B
	for <yocto@yoctoproject.org>; Mon, 18 May 2015 20:59:17 -0700 (PDT)
Received: by iepj10 with SMTP id j10so4675933iep.3
	for <yocto@yoctoproject.org>; Mon, 18 May 2015 20:59:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=cIMJccuXSw3wcdVty8wWICxWMjcDaghbW//rC8WFW34=;
	b=GqSc1i0YUZOJ5ZuF3Dj8M739o10kd0Z9YPBhGrS2zlaUVaGNebzWw/lZeTbN6+8sYb
	jNSidPBnDfALqO/b5rxEp6ahkyehtjTHIg3W4k/EmICJkttJqhG3UZK5sUP0ozIdlD5D
	DWvJYMox6dWIUXjLzCTn2nG+p2onBUbHZ/qwwHmdxkKbvgeKqTJtPQXekKbOTbVdfiLG
	4QhP2eBHd9qgcUV7L29P88gBSu4/RK3VjeVtyLPdrlWtt78B4mbij9WGsbmLERZYGvm/
	5AYOSpc15NnXpigxFBa3IvFB0O6IxM8/mPRBXdQzHWrtkC1JzjtrBkn79KpuNQzxc5QU
	zsLw==
MIME-Version: 1.0
X-Received: by 10.107.8.144 with SMTP id h16mr1402841ioi.49.1432007956510;
	Mon, 18 May 2015 20:59:16 -0700 (PDT)
Received: by 10.64.139.103 with HTTP; Mon, 18 May 2015 20:59:16 -0700 (PDT)
Date: Mon, 18 May 2015 20:59:16 -0700
Message-ID: <CAEWbfH+W+7=A=eg=oTqUC5g-F1FVki-woFXm1E2JNEHsOkySmw@mail.gmail.com>
From: spdev31 <spdev31@gmail.com>
To: yocto@yoctoproject.org
Subject: How to use a local SVN repository as a premirror?
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
X-List-Received-Date: Tue, 19 May 2015 03:59:19 -0000
Content-Type: multipart/alternative; boundary=001a113f9156903f030516675599

--001a113f9156903f030516675599
Content-Type: text/plain; charset=UTF-8

Hello all,

I have a local SVN repository which Yocto successfully downloads from using
SRC_URI.  Now I'm trying to setup Yocto to use this repository as a
premirror rather than an upstream source.  But I'm getting fetch errors
while trying to convert from SRC_URI to PREMIRRORS.  Can anyone point me to
how can I setup a local SVN server as a premirror?  I have not been able to
find any examples online, but I've found old references to git premirrors (
https://lists.yoctoproject.org/pipermail/poky/2011-September/007014.html)

My SVN URL is svn://127.0.01/MyRepo/trunk/TopLevel/TestDir and can be
accessed as an upstream source with
SRC_URI = "svn://127.0.01/MyRepo/trunk/TopLevel;module=TestDir".  But when
I setup PREMIRRORS to "svn://.*/.* svn://127.0.0.1/MyRepo/trunk/TopLevel"
my SVN server shows that Yocto tries accessing the following invalid
URL: /MyRepo/trunk/TopLevel/TestDir_127.0.0.1_.MyRepo.trunk.TopLevel_3_.tar.gz/TestDir.

The "tar.gz" part of the invalid URL appears to be the cause - can anyone
help me understand why this "tar.gz" URL is added when PREMIRRORS is used?

Please let me know if this question is better suited for the poky mailing
list.

Thanks,
Shaun

--001a113f9156903f030516675599
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello all,</div><div><br></div><div>I have a local SV=
N repository which Yocto successfully downloads from using SRC_URI.=C2=A0=
=C2=A0Now I&#39;m trying to setup Yocto to use this repository as a premirr=
or rather than an upstream source.=C2=A0 But I&#39;m getting fetch errors w=
hile trying to convert from SRC_URI to PREMIRRORS.=C2=A0 Can anyone point m=
e to how can I setup a local SVN server as a premirror?=C2=A0 I have not be=
en able to find any examples online, but I&#39;ve found old references to g=
it premirrors (<a href=3D"https://lists.yoctoproject.org/pipermail/poky/201=
1-September/007014.html">https://lists.yoctoproject.org/pipermail/poky/2011=
-September/007014.html</a>)</div><div><br></div><div>My SVN URL is svn://12=
7.0.01/MyRepo/trunk/TopLevel/TestDir and can be accessed as an upstream sou=
rce with </div><div>SRC_URI =3D &quot;svn://127.0.01/MyRepo/trunk/TopLevel;=
module=3DTestDir&quot;.=C2=A0 But when I setup PREMIRRORS to &quot;svn://.*=
/.* svn://<a href=3D"http://127.0.0.1/MyRepo/trunk/TopLevel">127.0.0.1/MyRe=
po/trunk/TopLevel</a>&quot; my SVN server shows that Yocto=C2=A0tries acces=
sing the following invalid URL:=C2=A0/MyRepo/trunk/TopLevel/TestDir_127.0.0=
.1_.MyRepo.trunk.TopLevel_3_.tar.gz/TestDir.</div><div><br></div><div>The &=
quot;tar.gz&quot; part of the invalid URL appears to be the cause - can any=
one help me understand why this &quot;tar.gz&quot; URL is added when PREMIR=
RORS is used?</div><div><br></div><div>Please let me know if this question =
is better suited for the poky mailing list.</div><div><br></div><div>Thanks=
,</div><div>Shaun</div></div>

--001a113f9156903f030516675599--
