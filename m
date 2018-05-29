Return-Path: <kumar.ugesh003@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08429E00C62; Tue, 29 May 2018 09:50:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kumar.ugesh003[at]yahoo.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [106.10.244.83 listed in list.dnswl.org]
Received: from sonic309-20.consmr.mail.sg3.yahoo.com
	(sonic309-20.consmr.mail.sg3.yahoo.com [106.10.244.83])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49336E00A26
	for <yocto@yoctoproject.org>; Tue, 29 May 2018 09:50:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1527612645; bh=01SOXRPt6JV8Bz8VsJImeosIhuPctwpkRvXVYeac88g=;
	h=Date:From:To:Subject:References:From:Subject;
	b=E2yP3FgmxfVwNysZmTC3OVBz+CD5PSYgVKQ0AVTTIXw697LVKDo53VEJojCuI7m4VESzCqYsFptb8Il6zXHp66PkBRAKIbhRYglX3kgRYgm9S9Ql5Bh2K28hivIsEbUYjfx56vIFtuz4IfYo6qWpRcMCSAkut2fMRAeIMgj++HpL86w4LGhbXK4AG/uugUZQ4Fm3i4qcbKwyJmsR4EzdGfXEv+3nSmATQzYtJCQEqtSENY8f5zsW89le4MT6oDzimU3qSs26m/BMVUKed7/nid/b9P3u1V09RcJrnuNK4RYBcWfCigvgu3Dh1m1d+vUKJN4HNcr9SKxLZf6kR7VZwQ==
X-YMail-OSG: YGYO7gIVM1mA59tqw9BWSzYFfeS7vIOaNuZZnLQslYv5u3bVPb7KGYCp7nvoqTE
	975iigP.BCg.Nq70rssIc.4mHliwNkq7HxT1v4FWuVQZJnP4oUCC20jt.arCWzOVkOS7ggA2hGyG
	kvnNwPT9bnjyN3iw5VjPjYj4GjhweozCZVBisaqMj7L_ZfCZTuGQT3tu8amMMBw6CTN6sQmgZjSK
	OGKK2l5cc61T7UCKgRCC07BcrW58oEjKETkfP031tIFrX142Ptu3YVVuV5L7rW1QwfmRLv.Fg1bt
	3GaDcW2N6MHZyB4ITKOfWXV_TheVxpgvDE.5BZm8Ee6QJLM2QNXU36RuYBH8jePmJK_br_tMHVF1
	q6bfxqOn0jwZ3fp.VfBhf5FJTFXlB0rdr_6GP11fODR3XMd0OD_eitQySM8_mffTLOAjea66sIro
	tS4Gp.J5tpfbk5uKwHQ9Cm8DO.1U6zNkNUgYLRfK2PkQTbQIqJkgg5.Q4_DqK_5Z6T65cgTu5XpV
	xrmturb60m8EuyWdng9Hg4P4kPPYx5LWVCU5cbi_sRgjv.KYY9ec0MgsY8n..IBR0BPwpd2N0AYd
	y9aMV5YuFc2B3FUT0ig2_wCZKbgz1NcZUHxPu6ALfez1CunyZ2U1i6wbXukb4c2v8sicC.RO05iH
	ahnG3ig8J
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic309.consmr.mail.sg3.yahoo.com with HTTP;
	Tue, 29 May 2018 16:50:45 +0000
Date: Tue, 29 May 2018 16:50:40 +0000 (UTC)
From: Ugesh Reddy <kumar.ugesh003@yahoo.com>
To: Yocto Discussion List <yocto@yoctoproject.org>
Message-ID: <357124699.6943089.1527612640596@mail.yahoo.com>
MIME-Version: 1.0
References: <357124699.6943089.1527612640596.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.11871 YMailNorrin Mozilla/5.0 (X11;
	Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu
	Chromium/64.0.3282.167 Chrome/64.0.3282.167 Safari/537.36
Subject: Enabling Macro from .bb file
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
X-List-Received-Date: Tue, 29 May 2018 16:50:48 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_6943088_1343089440.1527612640595"

------=_Part_6943088_1343089440.1527612640595
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,=C2=A0 I have the source code were the part of the code kept inside t=
he #ifdef SOME_MACRO=C2=A0 and what would be the correct place to define SO=
ME_MACRO=C2=A0 this macro?note: This define is specific to the recipe.
Regrds,Ugesh

------=_Part_6943088_1343089440.1527612640595
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px;"><div><font size="2">Hello,</font></div><div><font size="2">&nbsp; I have the source code were the part of the code kept inside the #ifdef SOME_MACRO&nbsp; and what would be the correct place to define SOME_MACRO&nbsp; this macro?</font></div><div><font size="2">note: This define is specific to the recipe.</font></div><div><font size="2"><br></font></div><div><font size="2">Regrds,</font></div><div><font size="2">Ugesh</font></div></div></body></html>

------=_Part_6943088_1343089440.1527612640595--
