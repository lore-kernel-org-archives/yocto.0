Return-Path: <yuq825@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5D94AE008B4; Sat, 29 Nov 2014 20:49:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yuq825[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f182.google.com (mail-ie0-f182.google.com
	[209.85.223.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35188E008C4
	for <yocto@yoctoproject.org>; Sat, 29 Nov 2014 20:49:37 -0800 (PST)
Received: by mail-ie0-f182.google.com with SMTP id x19so7893118ier.13
	for <yocto@yoctoproject.org>; Sat, 29 Nov 2014 20:49:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=GyVTQG6gFLwAYwHJUsVd7H8HyVyx5JkTiNFqCrwZW5o=;
	b=00JmXaPx/0LmtY9rw+UoNhNWPCxn6ii+iMe+o5ojtx/bsRbQRSNNiaoPg4QnwulZ5d
	3GnW/PHLj/eH1+fA7cJP2iMkSnoq6d6spfbHiPu5YQauz6AB6Kh0OQ6WIs6sRKnkBjQV
	vDEF7Gso9x3eQq2xZOs+FSv9bWdR+gKvXVvZzOr2w8PBpVWs3E9OI6m8VVHaa1pvDCdm
	QvOQ4kgyJw6yuEs4pPZm+75uc3QYaeXQ1ys2sgXPUUPIbbqCBlLMDPUD6TDVsbw1pyN5
	bjWDYvEErSMe1Vj1xHTKbpfZ6XCtBDyba6c7JmcFj8SQfFyKqp0xC8TMLXQQiL6V33Bh
	Vqqw==
MIME-Version: 1.0
X-Received: by 10.50.62.104 with SMTP id x8mr33952715igr.2.1417322976267; Sat,
	29 Nov 2014 20:49:36 -0800 (PST)
Received: by 10.107.10.7 with HTTP; Sat, 29 Nov 2014 20:49:36 -0800 (PST)
Date: Sun, 30 Nov 2014 12:49:36 +0800
Message-ID: <CAKGbVbtPT_ZwgLs72HMGbk-VesbUyRiQBoQDG+UrGMFZWg4qwQ@mail.gmail.com>
From: Qiang Yu <yuq825@gmail.com>
To: yocto@yoctoproject.org
Subject: When to create a new build directory for yocto?
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
X-List-Received-Date: Sun, 30 Nov 2014 04:49:43 -0000
Content-Type: multipart/alternative; boundary=047d7bdc1bd08853bf05090c388e

--047d7bdc1bd08853bf05090c388e
Content-Type: text/plain; charset=UTF-8

Hi all,

I'm maintaining a Yocto build system to produce these outputs:

1. ARM SOC 1
  1). board 1 image
  2). board 2 image
  3). SDK for i686
  4). SDK for x86_64
2. ARM SOC 2
  1). board 3 image
  2). board 4 image
  3). SDK for i686
  4). SDK for x86_64

Now I don't know the right way to create build directories for these
builds. The simplest way
I think is creating one build directory for each of these builds. But it
wast resource for boards
with the same SOC which can share cross toolchain. And ARM SOC 1 and ARM
SOC 2 use
different conf/bblayers.conf to add different BSP layer, I need to modify
it when switch SOC.
So the right way is creating one build directory for each SOC, then bitbake
each output's recipe,
right?

I am also not sure if I can put the SDK and board image in the same build
directory. Because
once I build a board's image after creating its SDK, I add gdbserver to it,
but the build fail without
really building the gdbserver package. So I guess the board image build is
confused by the SDK
build state.

So the conclusion is I need a recommended way to separate output into
different build directories:
1. minimize rebuild shared packages
2. no build state corruption
3. if multi output in the same build dir, no change to conf/ files or an
easy way to switch between

Regards,
Qiang

--047d7bdc1bd08853bf05090c388e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<br><br>I&#39;m maintaining a Yocto build system to=
 produce these outputs:<br><br>1. ARM SOC 1<br>=C2=A0 1). board 1 image<br>=
=C2=A0 2). board 2 image<br>=C2=A0 3). SDK for i686<br>=C2=A0 4). SDK for x=
86_64<br>2. ARM SOC 2<br>=C2=A0 1). board 3 image<br>=C2=A0 2). board 4 ima=
ge<br>=C2=A0 3). SDK for i686<br>=C2=A0 4). SDK for x86_64<br><br>Now I don=
&#39;t know the right way to create build directories for these builds. The=
 simplest way=C2=A0<div>I think is creating one build directory for each of=
 these builds. But it wast resource for boards=C2=A0</div><div>with the sam=
e SOC which can share cross toolchain. And ARM SOC 1 and ARM SOC 2 use=C2=
=A0</div><div>different conf/bblayers.conf to add different BSP layer, I ne=
ed to modify it when switch SOC.=C2=A0</div><div>So the right way is creati=
ng one build directory for each=C2=A0SOC, then bitbake each output&#39;s re=
cipe,=C2=A0</div><div>right?</div><div><br>I am also not sure if I can put =
the SDK and board image in the same build directory. Because=C2=A0</div><di=
v>once I build a board&#39;s image after creating its SDK, I add gdbserver =
to it, but the build fail without=C2=A0</div><div>really building the gdbse=
rver package. So I guess the board image build is confused by the SDK=C2=A0=
</div><div>build state.<div><br></div><div>So the conclusion is I need a re=
commended way to separate output into different build directories:</div><di=
v>1. minimize rebuild shared packages</div><div>2. no build state corruptio=
n</div><div>3. if multi output in the same build dir, no change to conf/ fi=
les or an easy way to switch between</div><div><br></div><div>Regards,</div=
><div>Qiang</div><div><br></div></div></div>

--047d7bdc1bd08853bf05090c388e--
