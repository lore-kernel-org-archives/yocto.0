Return-Path: <gera-pesikoff@rambler.ru>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 26899E00C1A; Fri, 25 Aug 2017 03:22:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [81.19.78.101 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mxout2.rambler.ru (mxout2.rambler.ru [81.19.78.101])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3726E00B87
	for <yocto@yoctoproject.org>; Fri, 25 Aug 2017 03:22:52 -0700 (PDT)
Received: from saddam1.rambler.ru (saddam1.rambler.ru [10.32.16.1])
	by mxout2.rambler.ru (Postfix) with ESMTP id 14E7E8DC164
	for <yocto@yoctoproject.org>; Fri, 25 Aug 2017 13:22:50 +0300 (MSK)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rambler.ru; s=mail;
	t=1503656570; bh=PArtiT7ah7Df2bfnqlBLBRpfBUpAYVsYa0Mf9xl2F7E=;
	h=From:To:Reply-To:Subject:Date:In-Reply-To:References;
	b=inoMPHXgL7OxUNadrAtTwxTP/kaagDvy95KDd9//XCtfbV5VW3l4tTWXou5osM0ku
	mHvmmFMovT3flvvx1I0iwQJqnaFGsh2aOoQCoichCVozgdsYS8ZIkbQ172TWyqtSxF
	Q8fN/mDQyvFoHJajv1Qgr9CEW4GeRK7MoeUsvorM=
Received: from localhost.localdomain (localhost [127.0.0.1])
	by saddam1.rambler.ru (Postfix) with ESMTP id 025A527342ED
	for <yocto@yoctoproject.org>; Fri, 25 Aug 2017 13:22:50 +0300 (MSK)
Received: from [178.34.195.105] by mail.rambler.ru with HTTP;
	Fri, 25 Aug 2017 13:22:49 +0300
From: "Gera Pesikoff" <gera-pesikoff@rambler.ru>
To: "yocto" <yocto@yoctoproject.org>
Date: Fri, 25 Aug 2017 13:22:49 +0300
In-Reply-To: <1503656551.492470.18944.43610@mail.rambler.ru>
Message-Id: <1503656569.244273.12214.8101@mail.rambler.ru>
MIME-Version: 1.0
References: <1503656551.492470.18944.43610@mail.rambler.ru>
X-Mailer: Rambler WebMail, http://mail.rambler.ru/
X-Rambler-User: gera-pesikoff@rambler.ru/178.34.195.105
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
X-List-Received-Date: Fri, 25 Aug 2017 10:22:55 -0000
Content-Transfer-Encoding: 7bit
Content-Type: multipart/alternative; boundary="_----------=_15036565691221427"

--_----------=_15036565691221427
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"; format="flowed"

I figured out that the new function findTopdir (Submitted on July 18, 2017)=
 does
not handle the errors of the absence of the BBPATH variable and path to the
conf/bblayers.conf in BBATH. It just returns None.

  On Thu, 2017-08-24 at 18:24 +0300, Gera Pesikoff wrote:
  > Hi
  > I started to study bitbake and decided to repeat the BitBake Hello
  > World from the manual
  > (http://www.yoctoproject.org/docs/2.3.1/bitbake-user-manual/bitbake-use=
r-manual.html#bitbake-hello-world).
  > I do everything according to the instructions, but when I run the
  > bitbake command, I get the following output:
  >
  > NOTE: Retrying server connection... (Traceback (most recent call
  > last):
  > File "/home/leonid/test/bitbake/lib/bb/main.py", line 432, in
  > setup_bitbake
  > topdir, lock =3D lockBitbake()
  > File "/home/leonid/test/bitbake/lib/bb/main.py", line 484, in
  > lockBitbake
  > lockfile =3D topdir + "/bitbake.lock"
  > TypeError: unsupported operand type(s) for +: 'NoneType' and 'str'
  > )
  >
  > This is repeated five times, and at the end:
  >
  > ERROR: Unable to connect to bitbake server, or start one

  Are you running bitbake from the build folder (TOPDIR)?
  >
  > Could someone please tell me what the problem is and what I can do
  > about it?
  > I'm using Kubuntu 17.04 and clear Ubuntu 17.04. BitBake Build Tool
  > Core version 1.35.0
  >
  > --
  > _______________________________________________
  > yocto mailing list
  > yocto@yoctoproject.org
  > https://lists.yoctoproject.org/listinfo/yocto

--_----------=_15036565691221427
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="utf-8"

<p>I figured out that the new function findTopdir (Submitted on July 18,=20
2017) does not handle the errors of the absence of the BBPATH variable=20
and path to the conf/bblayers.conf in BBATH. It just returns None. </p><blo=
ckquote style=3D"border-left: 1px solid rgb(73, 78, 89); margin: 10px; padd=
ing: 10px;"><!-- Hostname: benito104.mail.rambler.ru --><div class=3D"messa=
geBodyContainer isInnerPart" id=3D"part1"><div class=3D"messageBody isPlain=
Text">On Thu, 2017-08-24 at 18:24 +0300, Gera Pesikoff wrote:<br> &gt; Hi<b=
r> &gt; I started to study bitbake and decided to repeat the BitBake Hello<=
br> &gt; World from the manual<br> &gt; (<a href=3D"http://www.yoctoproject=
.org/docs/2.3.1/bitbake-user-manual/bitbake-user-manual.html#bitbake-hello-=
world" target=3D"_blank" title=3D"http://www.yoctoproject.org/docs/2.3.1/bi=
tbake-user-manual/bitbake-user-manual.html#bitbake-hello-world" data-mce-hr=
ef=3D"m/redirect?url=3Dhttp%3A//www.yoctoproject.org/docs/2.3.1/bitbake-use=
r-manual/bitbake-user-manual.html%23bitbake-hello-world&hash=3Da7e2a203f5dd=
f8d1c8c1468e34c6740b">http://www.yoctoproject.org/docs/2.3.1/bitbake-user-m=
anual/bitbake-user-manual.html#bitbake-hello-world</a>).<br> &gt; I do ever=
ything according to the instructions, but when I run the<br> &gt; bitbake c=
ommand, I get the following output:<br> &gt; <br> &gt; NOTE: Retrying serve=
r connection... (Traceback (most recent call<br> &gt; last):<br> &gt; &nbsp=
;&nbsp;&nbsp;File "/home/leonid/test/bitbake/lib/bb/<a href=3D"http://main.=
py" target=3D"_blank" title=3D"main.py" data-mce-href=3D"m/redirect?url=3Dh=
ttp%3A//main.py&hash=3D42ece8d7f7a1857fbdd7da1899259ed8">main.py</a>", line=
 432, in<br> &gt; setup_bitbake<br> &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;topd=
ir, lock =3D lockBitbake()<br> &gt; &nbsp;&nbsp;&nbsp;File "/home/leonid/te=
st/bitbake/lib/bb/<a href=3D"http://main.py" target=3D"_blank" title=3D"mai=
n.py" data-mce-href=3D"m/redirect?url=3Dhttp%3A//main.py&hash=3D42ece8d7f7a=
1857fbdd7da1899259ed8">main.py</a>", line 484, in<br> &gt; lockBitbake<br> =
&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lockfile =3D topdir + "/bitbake.lock"<br=
> &gt; TypeError: unsupported operand type(s) for +: 'NoneType' and 'str'<b=
r> &gt; )<br> &gt; <br> &gt; This is repeated five times, and at the end:<b=
r> &gt; <br> &gt; ERROR: Unable to connect to bitbake server, or start one<=
br> <br> Are you running bitbake from the build folder (TOPDIR)?<br> &gt; <=
br> &gt; Could someone please tell me what the problem is and what I can do=
<br> &gt; about it?<br> &gt; I'm using Kubuntu 17.04 and clear Ubuntu 17.04=
. BitBake Build Tool<br> &gt; Core version 1.35.0<br> &gt; <br> &gt; -- <br=
> &gt; _______________________________________________<br> &gt; yocto maili=
ng list<br> &gt; <a href=3D"/#/compose/to=3Dyocto%40yoctoproject.org" title=
=3D"yocto@yoctoproject.org" data-mce-href=3D"#/compose/to=3Dyocto%40yoctopr=
oject.org">yocto@yoctoproject.org</a><br> &gt; <a href=3D"https://lists.yoc=
toproject.org/listinfo/yocto" target=3D"_blank" title=3D"https://lists.yoct=
oproject.org/listinfo/yocto" data-mce-href=3D"m/redirect?url=3Dhttps%3A//li=
sts.yoctoproject.org/listinfo/yocto&hash=3Db2da024ef6083836e279441d6ad7cfc7=
">https://lists.yoctoproject.org/listinfo/yocto</a><br> <br> <br></div></di=
v></blockquote>=

--_----------=_15036565691221427--
