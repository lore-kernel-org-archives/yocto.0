Return-Path: <yliu.public@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EA940E00C0B; Sat, 12 Dec 2015 06:18:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yliu.public[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ob0-f177.google.com (mail-ob0-f177.google.com
	[209.85.214.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86B72E007D3
	for <yocto@yoctoproject.org>; Sat, 12 Dec 2015 06:18:11 -0800 (PST)
Received: by obc18 with SMTP id 18so102133891obc.2
	for <yocto@yoctoproject.org>; Sat, 12 Dec 2015 06:18:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=lblN/ooPeY1+VrLdG22w+x5ywXkR02Zo0OjD5bj5Bd4=;
	b=ghruqjJItr4mm4Cs2oB4kxmJmKl4c2VVqBjLeK0LbzZk/QtRzMCXGavwYrf9Kl0i6t
	7V8M/grCffCoDpr3rj+p9Ke0Ggq8FeAM8xWEk+trtccPC8Vs+VMocOyh95cGGH412cdz
	aniq1hslAdbUZ0ufeqJX+lWz7v6ir7togWJty58iLXo7RM3rZFAmDTzTiHrGZS+6KUio
	dxbbZy6gZdBwTLTCuPZxTK7ZZvYIRNHgOdQlLDYAWfJUyYHqJUh2mfxBQGMpwoNbCj/U
	Jrd10qlvRCzpzpP32gzI1ZjWMcguQWcIrstBIbah7AYKh44Jscf7j1c/17ksAFDlOk3v
	nHiA==
MIME-Version: 1.0
X-Received: by 10.182.79.103 with SMTP id i7mr18339817obx.41.1449929890021;
	Sat, 12 Dec 2015 06:18:10 -0800 (PST)
Received: by 10.202.107.77 with HTTP; Sat, 12 Dec 2015 06:18:09 -0800 (PST)
Date: Sat, 12 Dec 2015 06:18:09 -0800
Message-ID: <CAANXd04abgdaHxkGhL7pppOvio419XPH3o-FPyWHHTaz1qQMZA@mail.gmail.com>
From: Yang Liu <yliu.public@gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Mon, 14 Dec 2015 07:36:38 -0800
Subject: How to unset LD_PRELOAD environment viarable
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
X-List-Received-Date: Sat, 12 Dec 2015 14:18:16 -0000
Content-Type: multipart/alternative; boundary=047d7b2e4d340b471f0526b41c0c

--047d7b2e4d340b471f0526b41c0c
Content-Type: text/plain; charset=UTF-8

Hi, All,

I would like to unset the LD_PRELOAD variable when I try to compile my
module using go cross compiler with CGO enabled.

I tried to add "unset LD_PRELOAD" to my do_compile function in bb file or I
did it manually in devshell, the LD_PRELOAD is still set
to LD_PRELOAD=libpseudo.so.

I tried other env variable, unset is working. Any one know what's the
reason? Is there any way I can get around with this?

Thanks,
Yang

--047d7b2e4d340b471f0526b41c0c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi, All,<br><br></div>I would like to unset the =
LD_PRELOAD variable when I try to compile my module using go cross compiler=
 with CGO enabled. <br><br></div><div>I tried to add &quot;unset LD_PRELOAD=
&quot; to my do_compile function in bb file or I did it manually in devshel=
l, the LD_PRELOAD is still set to=C2=A0LD_PRELOAD=3Dlibpseudo.so.<br><br></=
div><div>I tried other env variable, unset is working. Any one know what&#3=
9;s the reason? Is there any way I can get around with this?<br><br></div><=
div>Thanks,<br></div><div>Yang<br></div></div>

--047d7b2e4d340b471f0526b41c0c--
