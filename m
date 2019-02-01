Return-Path: <markus4dev@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36E5EE00D2F; Fri,  1 Feb 2019 04:10:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (markus4dev[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.43 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
	[209.85.221.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1350BE00D0F
	for <yocto@yoctoproject.org>; Fri,  1 Feb 2019 04:10:39 -0800 (PST)
Received: by mail-wr1-f43.google.com with SMTP id r10so6796328wrs.10
	for <yocto@yoctoproject.org>; Fri, 01 Feb 2019 04:10:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=NcmIeKPHniRWesSiF+5oz4HFyX54Q2LgHYI+P8iYV7A=;
	b=EXdd5TVG/U2ulUuXZu2krkBiT9oYseWY+gzEdX239t9tizjSEwFuexEN1vW1vLGv2N
	LbIF98g1wxuu16AOomYuIfMTvkTWxun1+iNNHIr9R6UPEFe8HjTuYuJd2J6vW8i+n+At
	1j6F3lqZELuJTvcgqeyUU0v5gqWNXp0d/PA3ymomQTlMfUSbCW42x2bC55r3LsnPJAJy
	Kg4D3OJbR335ii0OrUdbtVzf4He13VgmJan0ZBz2yjvEn59Wx+CgHKtGrpkj9bLg/V3h
	uN7e8OJVpggo6ndgJb9fRzULdrdnx2UtXJz7fv6W0MWc0/1TGf+MumzoYCJ72z8ggwSL
	DC8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=NcmIeKPHniRWesSiF+5oz4HFyX54Q2LgHYI+P8iYV7A=;
	b=IUNT/X9z3/ZNaAlDp0zaeYkwFHBaRsDN2R4SIeTZD/Ozhd648yR799Hg7QtfeYt0UP
	XKM/OqUhq/2I5i8e2LrLYtOsdxplVo/mcD8j/Lc0tMUKalGe1METQIx8HpIXew8+2no7
	+C9vQVw8F2uX798A0Z2d1CBzM2KIi9BDsFzULarjhaKFeryTQTxWmrTWJK0HEstL+0DV
	VW2kYfFv6aydbZP2O+ZoGaRcYrwdRxaYz/K2kx+xdqy8mRXws+vDMc1/sPJGmWyHMZl6
	bGaa4Uje0ivMO5PnkxhPYrNIXyrOUxzA/PiuymeTiLph60MRtngZzP1cc0dS30lVrC3X
	Ww1Q==
X-Gm-Message-State: AJcUukd66LxAMisYuXfHUGai1rTzcXL8OLE7AOYsUU8DEWLqq9qvH8xs
	2BEtGbtZJDlTNV9rt6dCdm+Nhq5uZSoHAUHoger4wQ==
X-Google-Smtp-Source: ALg8bN5ohgwI0AZopZzckOZgY5LQjxw55o3VDgpYK+LDqRi9dO0IBeh9OhxhEbfpueZxt7myEI+3w2xzAKBzxdR2SFo=
X-Received: by 2002:adf:81c4:: with SMTP id 62mr35871508wra.266.1549023038584; 
	Fri, 01 Feb 2019 04:10:38 -0800 (PST)
MIME-Version: 1.0
From: Markus W <markus4dev@gmail.com>
Date: Fri, 1 Feb 2019 13:10:27 +0100
Message-ID: <CAFd=ocgxmwYraW5JjjrP8WOzyMrF7A=tj8Y8ksaY6tP0H3i=Nw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: [meta-raspberrypi] Rainbow screen with Raspberry Pi 3 A+ but not on B+
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
X-List-Received-Date: Fri, 01 Feb 2019 12:10:41 -0000
Content-Type: multipart/alternative; boundary="000000000000f6bbf10580d407d0"

--000000000000f6bbf10580d407d0
Content-Type: text/plain; charset="UTF-8"

Hi!

I have been running a yocto image (sumo) on a raspberry 3 B+ without any
problems, but wanted to test the new raspberry Pi 3 A+ board with it but I
just get the Rainbow screen on boot. I have updated meta-openembedded to
the latest sumo and meta-raspberry was still up to date with the latest
(sumo) and still the same result.

My question: Has anybody been running sumo on a raspberrypi 3 a+
successfully? I have been googling around for issues but can't find
anything on the new board and yocto. Seems that I am missing something.

Regards,
Markus

--000000000000f6bbf10580d407d0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>I have been running a yocto image (=
sumo) on a raspberry 3 B+ without any problems, but wanted to test the new =
raspberry Pi 3 A+ board with it but I just get the Rainbow screen on boot. =
I have updated meta-openembedded to the latest sumo and meta-raspberry was =
still up to date with the latest (sumo) and still the same result.=C2=A0</d=
iv><div><br></div><div>My question: Has anybody been running sumo on a rasp=
berrypi 3 a+ successfully? I have been googling around for issues but can&#=
39;t find anything on the new board and yocto. Seems that I am missing some=
thing.</div><div><br></div><div>Regards,</div><div>Markus=C2=A0=C2=A0=C2=A0=
 =C2=A0</div></div>

--000000000000f6bbf10580d407d0--
