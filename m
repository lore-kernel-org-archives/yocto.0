Return-Path: <mamta0925@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96BFAE00929; Thu, 17 May 2018 14:06:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, MIME_QP_LONG_LINE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mamta0925[at]yahoo.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.6.130.124 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from sonic316-14.consmr.mail.bf2.yahoo.com
	(sonic316-14.consmr.mail.bf2.yahoo.com [74.6.130.124])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0609AE007DA
	for <yocto@yoctoproject.org>; Thu, 17 May 2018 14:06:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1526591187; bh=ZrQPTIwMtQuWrN6eCCMuXvTlDWKe3xlXoiC/GpA1RvM=;
	h=From:Date:Subject:To:From:Subject;
	b=J9VLF5h1Pa4gg8vbu9pfVa3FBTL76MOVGfPB71sluclNkRhf1BpLLb2qlNV1+GMDDei40TYPlFbhSFZywp1oVmrDLq3h5vHTNfUDrkXvq5QS2V1ybYTN2e0Gq3jVD+wvBgCU9sGfmfIArqPjX4MaSf6cCDLaL098869ZI5n/NUdlzvj9CG8nggQt26c4NY5EHzcnhSkM2bpdgLwrSpHOf+ipxnatn/rwvtepyyVN4fUgnWnDc1caYx4tHorgVUE1P8oKC02W9Z2MAV6bN4qWkWzQoeWb9l127WLqS4kQJ5qbtoYSrCHXhkJgGw9AuHVvQxNPqqKZ3fJpSx/YuZM8/Q==
X-YMail-OSG: Bf2TuQoVM1kVXHURr6Q7gLQDby98o2KPm.iJBVHnBySFOgZKMBBgPrgwuK1BUSH
	kKR8e2cRPFEha9YnpnJSaLY4VVz1LC.uzucqa71E_4EgOZcztJUV2yE4jhvw.vSzxsSAraO1hB8L
	nY_z0DzewCnUYviBCj6Obw0hekaBOiRSmaZIrKVjcz2PHTWVgkWYcIr_DR4lpLkM2NZzYXDONKSU
	0FfiFHe_cbL5IyOEK4_FyZkvCWOwmrVM4zQGFnx43KWSjCT_erDJ6u3m9ocBcrq_H5gZW5_rvMYA
	XV1skXG.EJ73EEpzAK6oIaB.VsVy2earD6agTWBi9EZYcpKSK6h1Gh2qhRCCEmJDs9lwfEgj8PCX
	el4OrdcU0voZFmhEDN57gHzd3RlE_AMWz1BdDqQf_K6Eh49AQm3T3baCkXvKD4jbuX9NqrjEJkEh
	NNv36tYK_QFrHNNUFd5wW0qQ6ByS9b7VI_SM239iL846Cgsiodf9iIu8NE8_Rkl11RHcoa8u_bGd
	Ca5Ud3.JfAS1Um6rrEXnCxSlpFKH8Hp6SzxX1QP1720DRSgpSVco.vvtXnFwcqGN2Rc4Lv8fOj0G
	PFRrsxPJGoe7DVdm2AuKA6bACk2LBrjwDuzRklnSyDT5YPv_FlTh9gubF5Mr3GRn1szeGR7nu88v
	KkDfF
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic316.consmr.mail.bf2.yahoo.com with HTTP;
	Thu, 17 May 2018 21:06:27 +0000
Received: from c-73-2-139-94.hsd1.tn.comcast.net (EHLO [10.0.1.102])
	([73.2.139.94])
	by smtp408.mail.bf1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID
	85b1fbdca9a8166ca539e61830b1de14 for <yocto@yoctoproject.org>;
	Thu, 17 May 2018 21:06:26 +0000 (UTC)
From: mamta0925@yahoo.com
Mime-Version: 1.0 (1.0)
Date: Thu, 17 May 2018 16:06:25 -0500
Message-Id: <396AD4CF-B81A-48EC-9641-068B3B6D6F59@yahoo.com>
To: yocto@yoctoproject.org
X-Mailer: iPhone Mail (15C153)
Subject: Using yocto as a build system
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
X-List-Received-Date: Thu, 17 May 2018 21:06:29 -0000
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,

Apologies if these are basic questions but thought this will be the best pla=
ce to find answers to the point

So our requirement is to build open source packages in Linux, windows and Ma=
c on a build system. Currently we have an internal build system which is qui=
te cumbersome to manage. Hence we are looking for outside options

Given our situation, is Yocto our best solution? Does it even provide for bu=
ilding windows and Mac open source packages?=20

Thanks,
Mamta=


