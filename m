Return-Path: <gholhakiii@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 55766E0083D; Tue, 12 Nov 2019 07:33:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gholhakiii[at]yahoo.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [74.6.135.124 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from sonic310-14.consmr.mail.bf2.yahoo.com
	(sonic310-14.consmr.mail.bf2.yahoo.com [74.6.135.124])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8D57E007AA
	for <yocto@yoctoproject.org>; Tue, 12 Nov 2019 07:33:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1573572822; bh=QcZYVg4EW2eGA3xMlf9YnSOlgQVj92tMUZ92Eq1pdN0=;
	h=Date:From:To:Subject:References:From:Subject;
	b=YfDm1ch31PzgdSiLP7tYEwOX6uldGnl/yU2zmWL2xsVYsC0H0wxyW2/mXtxSnES7lh8uChAUjkmY0UkcRiMQfLZnWZzHVUmqbtYJP3hUJfxYMN3t8yjS3p41X/qwxoMRrOgXOPS2hCcCSFUVM9temii+/IzYOkNwWGrk18y6nf1fdK2srfx2NiWJw8jjQoH0XkWwCbkXeSEuLgkNdhWq5lIy5EtbaZfH3nDp/wB7cqnZWiAMa5PMu+HkpXsWS4BVxHU9lBI6C4+eWWcEEY19qfbd94aB8eL/po7+rIu63yfczWg0vkNhmW6CwkeeP4PJmVjGGsBj9l4rlgZpS4TeAg==
X-YMail-OSG: OwJRNusVM1mtxE9E_MZFNdFMEjwuT6LXPLjHZjz4LGVzyeUrTKytXT4QEisAhNh
	Pv4ZoJoRMhxkRt.xlIc1fwHj4Y4QDoroH1dtF3pclx1e9QSGVE_OMilPWKKsa6DBBaozCVJTBvhr
	LWmQ8oEDkSdnoz1K.2Rbv63IM3BCqBL3PaDL.u7mLBG0_SfQkXIfVvbJjRnsn38QuWyulSi2avtv
	dCH4GKABlZkbltb6KogXBSmnD2agN72105XliM.jC16YlGnYd6sKRub_th_q4JMLwI4GHpFo4rUD
	mXCcfAfXcbG1pTpfNnlXz5s6auM_7Cs5JBRTBNA9lYW_inwRxHNDU35QJ7YncUpz2MQW9VJpuDXz
	GzGo1blWx948kTOX.Tz_2creBaxpynGEn8rjN8Xe9uUgRrsIzpSMg4cVig2MJAGcn.6hz_9Op2Ui
	22H7dLSJjvg_S4vgplHVRYCes5e4Zulv5a5HQNVe853ilrr3uL5PakVJtd9srce292vBz.xbKFnw
	tX5LDg8A9fb87EmVehqdu4aSJxNpXVsQmzSqraXJ9kiOaxfVx2EPmY1nqYl3V7ukuyORlTI8hw7q
	n8U4a8YlRt_VDH7U1__1b8Q3fAfs3N4rqj.HpVgPtK68GEZl.p3UjMLbX07Y4SZSA9yOfDDT1.kF
	DPB_Cw1c.hRsvCOCjeBmDbbHHzFjZhVAWHSZ3N8n5j2qPQ31sdTouP0.LMBP_rcag_HqihFlYNTc
	VcmwyhTBMktdWn7m7jz_zBHk.nV0EGMbDBsv_0stznu7j23wUHQYxOGjRTIgW19lBuu5BFERPy7e
	NHPRD7TXI9GT8q2HFjh7dSMAcXQEGcVlaCQM8ChI4mqCumgBPrshNm7qC8rE.MyC6RYMtZaB1TGM
	jVEhSfIHxKHzA7d196uzzq75hWAxa5D4yc.phkZ.E_zTTfwh8xh6rYVeGzButULpeP5HiK9Q2UF6
	KMinx93cFHhQCLe1brEyo3Ba2jxwA1SZX8EtaqrQLISzffVlPZAbzoo3GLCme_DSv46qlkcvsNmY
	GePQ6JenN5xkLZzpngRZPgrxd1Noiy22fK0_TJJ9wgGmw6VSuoU2Ldnl8P9FJfUHgLnwb0g4cO17
	6ooVg5L.nHy00udiNNijlAeypABVG6baxXa.6pwWs.vrLTajpUB84HLsFsOAGLPcScNAlQPkcFAu
	6x9InV_ZNvtHNEUxeDz.TBTrEYUMkanu2HO3bQ7Y2V0rTbiNC_8J5xkt.kraVAqNDlEqgV_jHCTi
	glflYJi.AbXiFPWFpbR8N5Ivz.D2iT3eg3qE5pPYmZl6cTZYiM7UZ.3kw4Fg_5SJIAZF6dH1qOQg
	-
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic310.consmr.mail.bf2.yahoo.com with HTTP;
	Tue, 12 Nov 2019 15:33:42 +0000
Date: Tue, 12 Nov 2019 15:33:38 +0000 (UTC)
From: "gholhakiii@yahoo.com" <gholhakiii@yahoo.com>
To: yocto@yoctoproject.org
Message-ID: <37113658.2021239.1573572818816@mail.yahoo.com>
MIME-Version: 1.0
References: <37113658.2021239.1573572818816.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.14680 YMailNorrin Mozilla/5.0 (X11; Linux x86_64;
	rv:60.0) Gecko/20100101 Firefox/60.0
Subject: Building only the app and not the Linux core
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
X-List-Received-Date: Tue, 12 Nov 2019 15:33:44 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_2021238_969690044.1573572818816"

------=_Part_2021238_969690044.1573572818816
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi all,

I would like to build my yocto project, but only my applications. I mean, I would like to separate my Linux build and the application build.
I want to just have my meta-layer which contains my application being build by calling the bitbake command.
Can anyone give me a pointer? Using the multiconfig is the way to do it?

Best
Em

P.S. If I want to be more specific, I just want to use Yocto as a cross-compilation tool for baremetal applications.

------=_Part_2021238_969690044.1573572818816
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div class="ydp910a8e7cyahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px;"><div dir="ltr" data-setdir="false"><div>Hi all,<br><br>I would like to build my yocto project, but only my applications. I mean, I would like to separate my Linux build and the application build.<br>I want to just have my meta-layer which contains my application being build by calling the bitbake command.<br>Can anyone give me a pointer? Using the multiconfig is the way to do it?<br><br>Best<br>Em<br><br>P.S. If I want to be more specific, I just want to use Yocto as a cross-compilation tool for baremetal applications.</div><div><br></div></div></div></body></html>

------=_Part_2021238_969690044.1573572818816--
