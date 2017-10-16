Return-Path: <varekpaf@seznam.cz>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 01D8DE00D18; Mon, 16 Oct 2017 05:17:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (varekpaf[at]seznam.cz)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [77.75.76.89 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0002]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 60 seconds by postgrey-1.32 at yocto-www;
	Mon, 16 Oct 2017 05:17:30 PDT
Received: from mxb2.seznam.cz (mxb2.seznam.cz [77.75.76.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA598E00D04
	for <yocto@yoctoproject.org>; Mon, 16 Oct 2017 05:17:30 -0700 (PDT)
Received: from email.seznam.cz
	by email-smtpc7a.ng.seznam.cz (email-smtpc7a.ng.seznam.cz
	[10.23.10.195]) id 5401bf2fef36366f545cb464;
	Mon, 16 Oct 2017 14:17:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=seznam.cz; s=beta;
	t=1508156249; bh=HAn/o+GsKhVrj/ako65C66VftyuNWrCSJi0JJQi3KNo=;
	h=Received:From:To:Subject:Date:Message-Id:Mime-Version:X-Mailer:
	Content-Type;
	b=l9BoSNl531P+Met6owum4BqKpFe7l5ovPK5HU2y+xiHnY7cquZHlhkxc8ApoAXilD
	TxOdjC4/776rnWm3/M18JrsWY1mDklcvWIeOAfG6gqFnubWfqKf9i5DfETHwVb4m2/
	ZccO/I6W/KfY+1/BiBCQlp68YDNFDd4vpx7v3kF8=
Received: from unknown ([::ffff:83.240.65.44])
	by email.seznam.cz (szn-ebox-4.5.286) with HTTP;
	Mon, 16 Oct 2017 14:16:21 +0200 (CEST)
From: "Pavlina Varekova" <varekpaf@seznam.cz>
To: <yocto@yoctoproject.org>
Date: Mon, 16 Oct 2017 14:16:21 +0200 (CEST)
Message-Id: <5Tg.NNol.1AtvAv25bON.1PvACL@seznam.cz>
Mime-Version: 1.0 (szn-mime-2.0.33)
X-Mailer: szn-ebox-4.5.286
Subject: pseudo - few general questions
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
X-List-Received-Date: Mon, 16 Oct 2017 12:17:32 -0000
Content-Type: multipart/alternative;
	boundary="=_553158c91820c80b38ff6cca=232dae4f-ff73-5a61-801c-fb8705e36dbc_="

--=_553158c91820c80b38ff6cca=232dae4f-ff73-5a61-801c-fb8705e36dbc_=
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi,
I am evaluating to use pseudo in one project so I have several questions =

regarding the tool.

As I see in the official home for pseudo's git repository the last commit =
is
from 2017-04-13. Is pseudo maintained now and will it be in the future? Ho=
w 
active the community is?

From its documentation I know that it is proposed for "provide enough 
functionality to allow RPM and similar tools to run file system installs =

using chroot()". But "implementation is far from complete or perfect". Is =

pseudo suitable to use in automated tests that aim to or can set a broad =

range or combinations of file ownerships?

Thank you very much.

Pavlina

--=_553158c91820c80b38ff6cca=232dae4f-ff73-5a61-801c-fb8705e36dbc_=
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><body>Hi,<br>=0A=
I am evaluating to use pseudo in one project so I have several questions r=
egarding the tool.<br>=0A=
<br>=0A=
As I see in the official home for pseudo's git repository the last commit =
is from <span><span>2017-04-13</span></span>. Is pseudo maintained now and=
 will it be in the future? How active the community is?<br>=0A=
<br>=0A=
From its documentation I know that it is proposed for "provide enough =
=0A=
functionality to allow RPM and similar tools to run file system installs=
=0A=
 using chroot()". But "implementation is far from complete or perfect". =
=0A=
Is pseudo suitable to use in automated tests that aim to or can set a =
=0A=
broad range or combinations of file ownerships?<br>=0A=
<br>=0A=
Thank you very much.<br>=0A=
<span><font color=3D"#888888"><br>=0A=
Pavlina<br></font></span></body></html>

--=_553158c91820c80b38ff6cca=232dae4f-ff73-5a61-801c-fb8705e36dbc_=--
