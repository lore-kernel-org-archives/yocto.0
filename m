Return-Path: <fabriciolelis@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F9A1E009A0; Mon, 15 Dec 2014 12:23:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (fabriciolelis[at]gmail.com)
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
	*      [209.85.213.177 listed in list.dnswl.org]
Received: from mail-ig0-f177.google.com (mail-ig0-f177.google.com
	[209.85.213.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1E69E0093F
	for <yocto@yoctoproject.org>; Mon, 15 Dec 2014 12:23:55 -0800 (PST)
Received: by mail-ig0-f177.google.com with SMTP id z20so5764082igj.10
	for <yocto@yoctoproject.org>; Mon, 15 Dec 2014 12:23:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=XT20WConNlAW/dg26tUghy0SYYNQKDSbRwNiYVWE4zA=;
	b=n1qNHmBvTXSehZX4kiY6luNblHdhs/OZnQJtNF1mde8Y37HThkpjukkWrZzHI109d6
	4C3csVrlIAWp3olY8jgKwAGmUJaXGJt+SdZDjoN8lRg3Gyhxc54/+iFuVmUb+4QNQSyH
	X4zZD4WuNpfdqIEt5MBSdptDLmKdxYxSSyP/W0MawBezTjjVqnyjIss06ReG9sgSPSQ+
	50ItpTNkLFFBv5O2JPktgl6530y5C2tXxZEF1hRC2Z6CoOmqb59YrzVuY1KhnQk4+8OK
	9cCd3tEFhpcxWapE/awb62UdaLay7NBknVLyiRnl/d7RsddmdSUte3fH9xoPxvjRmf5f
	RzTw==
X-Received: by 10.50.154.74 with SMTP id vm10mr15931166igb.1.1418675035058;
	Mon, 15 Dec 2014 12:23:55 -0800 (PST)
MIME-Version: 1.0
Received: by 10.50.31.227 with HTTP; Mon, 15 Dec 2014 12:23:14 -0800 (PST)
From: =?UTF-8?B?RmFicsOtY2lvIEzDqWxpcw==?= <fabriciolelis@gmail.com>
Date: Mon, 15 Dec 2014 17:23:14 -0300
Message-ID: <CAFpUbKh9m1KwFaZwAhO3g7wy5pvMKRgiG-2ewpN1sdHzC-cB0g@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: (No subject)
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
X-List-Received-Date: Mon, 15 Dec 2014 20:23:58 -0000
Content-Type: multipart/alternative; boundary=047d7bd6af408443c8050a4705a0

--047d7bd6af408443c8050a4705a0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

I have this problem:

Assuming /home/fabricio/qemuarm-sato is an nfs rootfs
Error: conflicting FSTYPE types [/home/fabricio/qemuarm-sato] and nfs

Anybody can help me?

Thanks in advance!

--=20
Fabr=C3=ADcio Gutemberg L=C3=A9lis de Melo
Master in Computer Science at UFCG
http://fabriciolelis.googlepages.com/

--047d7bd6af408443c8050a4705a0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I have this problem:</div><div><br>=
</div><div>Assuming /home/fabricio/qemuarm-sato is an nfs rootfs</div><div>=
Error: conflicting FSTYPE types [/home/fabricio/qemuarm-sato] and nfs</div>=
<div><br></div><div>Anybody can help me?</div><div><br></div><div>Thanks in=
 advance!<br clear=3D"all"><div><br></div>-- <br><div class=3D"gmail_signat=
ure"><div dir=3D"ltr">Fabr=C3=ADcio Gutemberg L=C3=A9lis de Melo<br>Master =
in Computer Science at UFCG<br><a href=3D"http://fabriciolelis.googlepages.=
com/" target=3D"_blank">http://fabriciolelis.googlepages.com/</a><br></div>=
</div>
</div></div>

--047d7bd6af408443c8050a4705a0--
