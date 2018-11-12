Return-Path: <ravchand_jm@yahoo.co.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3BEB7E00A85; Sun, 11 Nov 2018 21:58:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ravchand_jm[at]yahoo.co.in)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [106.10.241.41 listed in list.dnswl.org]
Received: from sonic307-24.consmr.mail.sg3.yahoo.com
	(sonic307-24.consmr.mail.sg3.yahoo.com [106.10.241.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA4B0E007B3
	for <yocto@yoctoproject.org>; Sun, 11 Nov 2018 21:58:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.co.in; s=s2048;
	t=1542002296; bh=OCQ4B1tDZBZg/9r1DYUExiT8jPQVVtyxjvw7qS6qN8s=;
	h=Date:From:To:Subject:References:From:Subject;
	b=ndUNEuMe8n2bdsGc1ECEMtCuaXt5MrFE5+rmT9oEcQqNGmJWd2echkqHfvcrfhrsoISiIO4eNhW+1Lv5LpgathkqRnSvoHRQjlWPe+hdpf+Mwi+gnvPl37nSIZ5pBafLp+rvrBrAmXX7WOgwO42b7ABDPIP0xsphsoAMGmgkPNBoO/BDVL2TXk6t3FNOpEgNdgo57XAVUncJKInZfBr1MNJ9kNaTZ4UkbGWk8Co8xwryPFt/w1w8UDbeszK/2ypIU0nfcQUkn32uzUBF0WlHRxWgUwsSHQ3Uh5p8Mx1FzN+L1MyT96T7ayGrDKu1mJk9JtzITlT4m6WJxa9G0Qu0mw==
X-YMail-OSG: 4ej.XOgVM1kVNAjcJJOcZhypujFWL5VGYEUWUueUN7DJ6n9Y3pAGvI8kUkl8zqI
	F1I27V.NfXljTWCCNrmqdjZWdHAgQFapkaENtcfX_CJYGXJoGTxVFEzROzBcZpH1ffBx2_Bql9EB
	oStZPvHYdBioMD7Pl26ubjsJL4cqYWPwHBV7jDt86DULHkRO2jTJzQHmmzAlgEsKvgPe_q1CgR22
	q_NfuUHhlYnyenI1HAHrhcX24jrlBWsQr7fRSuaAgRttdcbJ.bRYtDtoPuAe0kwSk5GxRCFjJyvg
	RzUWwjoEdZd6Xt21f2I_0QgRdHLi8x6w2Ym_1yUQRZCi58ziDzpEakn4OtwFbmcJG5LWq_3pww1j
	VSFd8Z56xIX7zg6xfkSZ.z5XGaSE7psivWw2hqBC.MFShUsrIYDVRUWOCSmbKmJCctXK.0VkhI9r
	Flr9DwkfeZwOiPB1b7mpF1KkZuTuYJt1i19tOZtYGSBrt7Nt94k2wruTr3VW_n__YGblVjkTDHEY
	.pqxJJFYQL70NPVwtHq.fBNcrQvGBgr96pYdjM4ORChDvBLVprKxtT8RnM96BNqh5eQ7OCO1Dr6q
	CTBkqL3CC2qgba30iyCTFrYrFb.UOHgMphxfXKZn.7GG6jK3vYrH.367FJEVJKcthyGQPMbfupi.
	g5RiiM3B5bTxPO_39I55Nt3OQy6icsr3ED_x21aozyZ97opjhC1r3p.lnsQPPt19ikeCnOBs86KW
	ukynRc13IFQGJzzgVX6b.NKaBQpI9WYtLLLuayyUbIMC.S16og8TzzLYgWv3NsK36W6vUbSa0P7C
	u7pKrH5OAntK_BmfUzFnOy6MY.rKRUidnzwwiLuLqqBAlqdHm4kw8cs2O3iNKmG4CeiP9yHqpsV5
	WZpY7uWL.Q3D8nFytDBfaxCKaWkgUKuLKDn16aPBFOOFBz0PEzjAB6PdKiERS130B3KDPP2RpH4g
	W95ZAJES8scWLmJj4uNHvTjxxmq01pkJcrH.grX17Hu9We93D8SetuYIbvf2fPiDBn8djznWao5f
	IhsJJ4.qssV080iAO6uLADZSlXzqonmz0eNn5jUw-
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic307.consmr.mail.sg3.yahoo.com with HTTP;
	Mon, 12 Nov 2018 05:58:16 +0000
Date: Mon, 12 Nov 2018 05:58:16 +0000 (UTC)
From: ravi chandran <ravchand_jm@yahoo.co.in>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <818319704.721300.1542002296272@mail.yahoo.com>
MIME-Version: 1.0
References: <818319704.721300.1542002296272.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.12732 YMailNorrin Mozilla/5.0 (Windows NT 6.1; Win64;
	x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77
	Safari/537.36
Subject: lib32-glibc headers populated instead glibc headers in the SDK toolchain - yocto 2.2.2
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
X-List-Received-Date: Mon, 12 Nov 2018 05:58:20 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_721299_220827740.1542002296268"

------=_Part_721299_220827740.1542002296268
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi all,
I am working as integrator in one project where both lib32 & lib64 need to be supported. Hence, lib32-glibc & glibc both are there in yocto build. In the final toolchain, after running "bitbake <image> -c populate-sdk", it is randomly, lib32-glibc headers are getting populated instead of glibc headers.
Ex: in the toolchain, <sysroots_dir>/aarch64/usr/include/bits/endian.h - lib32-glibc header file content seen instead glibc header file content.
Please let me know if anybody has any solution/work-around for this.
Thanks in advance,Ravi

------=_Part_721299_220827740.1542002296268
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div class="ydp1e9d5e49yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px;"><span><div>Hi all,</div><div><br></div><div>I am working as integrator in one project where both lib32 &amp; lib64 need to be supported. Hence, lib32-glibc &amp; glibc both are there in yocto build. In the final toolchain, after running "bitbake &lt;image&gt; -c populate-sdk", it is randomly, lib32-glibc headers are getting populated instead of glibc headers.</div><div><br></div><div>Ex: in the toolchain, &lt;sysroots_dir&gt;/aarch64/usr/include/bits/endian.h - lib32-glibc header file content seen instead glibc header file content.</div><div><br></div><div>Please let me know if anybody has any solution/work-around for this.</div><div><br></div><div>Thanks in advance,</div><div>Ravi</div></span></div></body></html>

------=_Part_721299_220827740.1542002296268--
