Return-Path: <gera-pesikoff@rambler.ru>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 84797E00BA2; Thu, 24 Aug 2017 08:24:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [81.19.78.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mxout1.rambler.ru (mxout1.rambler.ru [81.19.78.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53B32E0090A
	for <yocto@yoctoproject.org>; Thu, 24 Aug 2017 08:24:47 -0700 (PDT)
Received: from saddam1.rambler.ru (saddam1.rambler.ru [10.32.16.1])
	by mxout1.rambler.ru (Postfix) with ESMTP id 8CC62C2C071
	for <yocto@yoctoproject.org>; Thu, 24 Aug 2017 18:24:46 +0300 (MSK)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rambler.ru; s=mail;
	t=1503588286; bh=6A8kQjY7aDOIl8K7Pqo421zcb9pC21d9nZrzZPZAob8=;
	h=From:To:Reply-To:Subject:Date:In-Reply-To:References;
	b=fH0VsCbHhpgan1ndkVoH6Ij8YXnGaPPRtttUAqPOR8iY4kpWphPHhhslrcUSZrZmO
	twbnO4CxY4qKhaMshofnAi8CdedFH8Bx/mST/ninshtqjoCwjQUkagVxJZ89dqJWih
	yRkkHr2geq0h6CIl30UV1HwspCkI69UfyZTvyDpA=
Received: from localhost.localdomain (localhost [127.0.0.1])
	by saddam1.rambler.ru (Postfix) with ESMTP id 752CF27342E4
	for <yocto@yoctoproject.org>; Thu, 24 Aug 2017 18:24:46 +0300 (MSK)
Received: from [94.233.165.160] by mail.rambler.ru with HTTP;
	Thu, 24 Aug 2017 18:24:46 +0300
From: "Gera Pesikoff" <gera-pesikoff@rambler.ru>
To: yocto@yoctoproject.org
Date: Thu, 24 Aug 2017 18:24:46 +0300
In-Reply-To: <1503588276.608193.20925.31663@mail.rambler.ru>
Message-Id: <1503588286.42108.3061.23849@mail.rambler.ru>
MIME-Version: 1.0
References: <1503588276.608193.20925.31663@mail.rambler.ru>
X-Mailer: Rambler WebMail, http://mail.rambler.ru/
X-Rambler-User: gera-pesikoff@rambler.ru/94.233.165.160
Subject: ERROR: Unable to connect to bitbake server, or start one
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Gera Pesikoff <gera-pesikoff@rambler.ru>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 24 Aug 2017 15:24:49 -0000
Content-Transfer-Encoding: 7bit
Content-Type: multipart/alternative; boundary="_----------=_15035882863061104"

--_----------=_15035882863061104
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"; format="flowed"

Hi
I started to study bitbake and decided to repeat the BitBake Hello World fr=
om the
manual
(http://www.yoctoproject.org/docs/2.3.1/bitbake-user-manual/bitbake-user-ma=
nual.html#bitbake-hello-world).
I do everything according to the instructions, but when I run the bitbake
command, I get the following output:

NOTE: Retrying server connection... (Traceback (most recent call last):
File "/home/leonid/test/bitbake/lib/bb/main.py", line 432, in setup_bitbake
topdir, lock =3D lockBitbake()
File "/home/leonid/test/bitbake/lib/bb/main.py", line 484, in lockBitbake
lockfile =3D topdir + "/bitbake.lock"
TypeError: unsupported operand type(s) for +: 'NoneType' and 'str'
)

This is repeated five times, and at the end:

ERROR: Unable to connect to bitbake server, or start one

Could someone please tell me what the problem is and what I can do about it?
I'm using Kubuntu 17.04 and clear Ubuntu 17.04. BitBake Build Tool Core ver=
sion
1.35.0

--_----------=_15035882863061104
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="utf-8"

<p>Hi<br>I started to study bitbake and decided to repeat the BitBake Hello=
 World from the manual (http://www.yoctoproject.org/docs/2.3.1/bitbake-user=
-manual/bitbake-user-manual.html#bitbake-hello-world).<br>I do everything a=
ccording to the instructions, but when I run the bitbake command, I get the=
 following output:<br><br>NOTE: Retrying server connection... (Traceback (m=
ost recent call last):<br>&nbsp; File "/home/leonid/test/bitbake/lib/bb/mai=
n.py", line 432, in setup_bitbake<br>&nbsp;&nbsp;&nbsp; topdir, lock =3D lo=
ckBitbake()<br>&nbsp; File "/home/leonid/test/bitbake/lib/bb/main.py", line=
 484, in lockBitbake<br>&nbsp;&nbsp;&nbsp; lockfile =3D topdir + "/bitbake.=
lock"<br>TypeError: unsupported operand type(s) for +: 'NoneType' and 'str'=
<br>)<br><br>This is repeated five times, and at the end:<br><br>ERROR: Una=
ble to connect to bitbake server, or start one<br><br>Could someone please =
tell me what the problem is and what I can do about it?<br>I'm using Kubunt=
u 17.04 and clear Ubuntu 17.04. BitBake Build Tool Core version 1.35.0</p>=

--_----------=_15035882863061104--
