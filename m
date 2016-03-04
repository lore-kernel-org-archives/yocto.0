Return-Path: <winotu.email@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF9B7E00CB6; Fri,  4 Mar 2016 07:13:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (winotu.email[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ob0-f180.google.com (mail-ob0-f180.google.com
	[209.85.214.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23D96E00B89
	for <yocto@yoctoproject.org>; Fri,  4 Mar 2016 07:13:23 -0800 (PST)
Received: by mail-ob0-f180.google.com with SMTP id ts10so52571165obc.1
	for <yocto@yoctoproject.org>; Fri, 04 Mar 2016 07:13:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to;
	bh=7V8pr4yb7GnK0eaZ3+r9cauuyclcisv8qOok2zNxW6M=;
	b=S6jvqtI0XqbSCubXAQC3KHbJxUIpdsIEsHjIvHXtxdZ020PLviRcLWW6Q3YXA1J0zl
	PHq/b64LJuoy8K7TDmA73BYzAul86nn1kHgdoQh6Qu8X4RGeEGz8HhQFdhB7LFcoFrCT
	uJbRTtwGLaBzxpDBOaZq8lLSIqOBtVgrX09mREGgyxjlF1eXq6D6jykzCHiKLICccQHn
	vFfyScuDWhl2k68wE8avlKXoQufeQN6rmKgB2FnawheGvqY4DFy2d+bHlyeNEAOGbeXh
	XbomXJiicOZ+v0/Th2pmsfvOxUuD4kDPlJtGreIMbI+Ulmd8dQ3yAc3JLDF/CittRl46
	2KFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
	bh=7V8pr4yb7GnK0eaZ3+r9cauuyclcisv8qOok2zNxW6M=;
	b=egBduVt2BEZBNKr0S3Q18azuGj0gTXl9qE3xjkTxNayGKPJnb6WKwP5y4Ob9AlaEnT
	Wj+8clnfRV2ovDSuaJRTf84jdLcbuotkTvEowFlO+Einb1MZ4LVN4K9ZySTeNp6TU+iD
	l2AeN6ylazZD1e3BOJB4j2ZI63M6ydaNAkn8qpQsUn41DXMqlEtrLG9xcepy+Pon7AtH
	xkp2EwY+ulwvDs/EX9TPefZgPHTxcXXAkQ/en+1OML4/i9IAEeYrY8/Osjppu6oFjwgs
	duvG9fhEDeu9Nv4Or0Sm+hdBdbwZ6vEyFQ2q3iKxbZx3tf997mwuTuXRE8mjJ8IOhQgP
	Awmg==
X-Gm-Message-State: AD7BkJKOmK/3PhHYFZz7pqam7wrMKC210Uyhluw92XSE3EP1P53yjlu7Xwcd4ADHwlaTGvdfH5G2jMTpphU99A==
MIME-Version: 1.0
X-Received: by 10.60.92.106 with SMTP id cl10mr6212580oeb.82.1457104403136;
	Fri, 04 Mar 2016 07:13:23 -0800 (PST)
Received: by 10.182.28.169 with HTTP; Fri, 4 Mar 2016 07:13:22 -0800 (PST)
Date: Fri, 4 Mar 2016 16:13:22 +0100
Message-ID: <CAEjjReLxsQAPSp9J+LejheRv=oxzC4nZfLo_Q+tgZf+Dhb00Tg@mail.gmail.com>
From: "Chris Z." <winotu.email@gmail.com>
To: yocto@yoctoproject.org
Subject: Native packages compiled with host gcc set in PATH and with LD_LIBRARY_PATH to libstd++
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
X-List-Received-Date: Fri, 04 Mar 2016 15:13:25 -0000
Content-Type: multipart/alternative; boundary=047d7b33d8fc5995cc052d3a8ef2

--047d7b33d8fc5995cc052d3a8ef2
Content-Type: text/plain; charset=UTF-8

Hi,

I have set newer gcc(4.9) in PATH and with proper LD_LIBRARY_PATH. Default
system gcc is 4.4.

Bulding cmake-native fails when bootstrap cmake tries to compile cmake
native binary.

This is due to the fact that bootstrap was compiled with newer glibcxx and
it can't be found in system/host /usr/lib, /usr/lib64 nor in -rpath.

rpath is set to
                        -Wl,-rpath,${STAGING_LIBDIR_NATIVE} \
                        -Wl,-rpath,${STAGING_BASE_LIBDIR_NATIVE} \

from BUILD_LDFLAGS var in bitbake.conf which is expand in native class.

What is the correct approach to fix this ? Or I shouldn't use gcc from PATH
for compilation of native packages ?

--047d7b33d8fc5995cc052d3a8ef2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div>Hi,<br><br></div>I have set =
newer gcc(4.9) in PATH and with proper LD_LIBRARY_PATH. Default system gcc =
is 4.4.<br><br></div>Bulding cmake-native fails when bootstrap cmake tries =
to compile cmake native binary.<br><br></div>This is due to the fact that b=
ootstrap was compiled with newer glibcxx and it can&#39;t be found in syste=
m/host /usr/lib, /usr/lib64 nor in -rpath.<br><br></div>rpath is set to<br>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -Wl,-rpath,=
${STAGING_LIBDIR_NATIVE} \<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 -Wl,-rpath,${STAGING_BASE_LIBDIR_NATIVE} \<br><br></div>=
from BUILD_LDFLAGS var in bitbake.conf which is expand in native class.<br>=
<br></div>What is the correct approach to fix this ? Or I shouldn&#39;t use=
 gcc from PATH for compilation of native packages ?<br></div>

--047d7b33d8fc5995cc052d3a8ef2--
