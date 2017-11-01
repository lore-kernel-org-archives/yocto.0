Return-Path: <varekpaf@seznam.cz>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6CB17E00D31; Wed,  1 Nov 2017 02:20:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=BAYES_20,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (varekpaf[at]seznam.cz)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [77.75.78.34 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 BAYES_20 BODY: Bayes spam probability is 5 to 20%
	*      [score: 0.0762]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 166 seconds by postgrey-1.32 at yocto-www;
	Wed, 01 Nov 2017 02:20:45 PDT
Received: from mxe1.seznam.cz (mxe1.seznam.cz [77.75.78.34])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F9D8E00D2F
	for <yocto@yoctoproject.org>; Wed,  1 Nov 2017 02:20:45 -0700 (PDT)
Received: from email.seznam.cz
	by email-smtpc1a.ko.seznam.cz (email-smtpc1a.ko.seznam.cz
	[10.53.10.15]) id 46369f56fd011616466b941d;
	Wed, 01 Nov 2017 10:20:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=seznam.cz; s=beta;
	t=1509528044; bh=Q3PFK4dWLAKGymBpU1+p5kHZThGIbH+JrzqxV4riJX0=;
	h=Received:From:To:Cc:Subject:Date:Message-Id:References:
	Mime-Version:X-Mailer:Content-Type;
	b=P5VHOO71JjqZU17gROiZ+9bsexiQjL7egDSRdsCx3YZ2p4p8GagSw5DP6eFDCApnX
	hPFCNZG2abF7h05SwfkvFKMNvc3cCPHOiiMuy5zmhlY2gZJaUzLppwWwNXvHJWDtIo
	0hu3anK8Rux7bYfNJPqtXHd/Tg98/6qlLMmyjCaM=
Received: from unknown ([::ffff:213.175.37.10])
	by email.seznam.cz (szn-ebox-4.5.295) with HTTP;
	Wed, 01 Nov 2017 10:17:47 +0100 (CET)
From: "Pavlina Varekova" <varekpaf@seznam.cz>
To: "Mark Hatle" <mark.hatle@windriver.com>
Date: Wed, 01 Nov 2017 10:17:47 +0100 (CET)
Message-Id: <7kt.NN5y.5gRUOroOgV0.1P{P4x@seznam.cz>
References: <5Tg.NNol.1AtvAv25bON.1PvACL@seznam.cz>
	<b62ec672-bddb-cf0f-759e-38ceb026f190@windriver.com>
Mime-Version: 1.0 (szn-mime-2.0.33)
X-Mailer: szn-ebox-4.5.295
Cc: yocto@yoctoproject.org
Subject: Re: pseudo - few general questions
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
X-List-Received-Date: Wed, 01 Nov 2017 09:20:47 -0000
Content-Type: multipart/alternative;
	boundary="=_41efb88e1d93093b6cbb941f=85dd0794-e51d-53c7-9fe4-477bd2c45000_="

--=_41efb88e1d93093b6cbb941f=85dd0794-e51d-53c7-9fe4-477bd2c45000_=
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi,
thank you very much. It sounds good. So I tried replace fakechroot with =

pseudo.
I read man pages and replace:

FAKECHROOT_BASE=3D"${DIR1}" fakechroot=C2=A0 command

with:

%{PATH/TO/PSEUDO/}bin/pseudo=C2=A0 -r "${DIR1}" -P %{PATH/TO/PSEUDO/} comm=
and

But it does not work good. Probably some variable is set differently. 
Please is the replacement correct?

Pavlina

--=_41efb88e1d93093b6cbb941f=85dd0794-e51d-53c7-9fe4-477bd2c45000_=
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><body>Hi,<br>thank you very much. It sounds good. So I tried replace=
 fakechroot with pseudo.<br>I read man pages and replace:<br><br>FAKECHROO=
T_BASE=3D"${DIR1}" fakechroot&nbsp; command<br><br>with:<br><br>%{PATH/TO/=
PSEUDO/}bin/pseudo&nbsp; -r "${DIR1}" -P %{PATH/TO/PSEUDO/} command<br><br=
>But it does not work good. Probably some variable is set differently. <br=
>Please is the replacement correct?<br><br>Pavlina</body></html>

--=_41efb88e1d93093b6cbb941f=85dd0794-e51d-53c7-9fe4-477bd2c45000_=--
