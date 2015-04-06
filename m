Return-Path: <blackt1ger@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 728FFE0098E; Sun,  5 Apr 2015 18:46:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (blackt1ger[at]yahoo.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [98.138.90.87 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm24.bullet.mail.ne1.yahoo.com (nm24.bullet.mail.ne1.yahoo.com
	[98.138.90.87])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1C20E00963
	for <yocto@yoctoproject.org>; Sun,  5 Apr 2015 18:46:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1428284810; bh=h7mCTi8fnEqjfqdKS3RRjXOgUA0ijQEzPsQEyzQWSqw=;
	h=Date:From:To:Subject:From:Subject;
	b=L4x4696gxuUq/rdo7jS6Dr46bziWm08Z5F/lGLmL92scSgMUb2AG7q15cck8qEpIHXhdR/OsowRl58hC5bfWAnDB06pe4u+LeR5F7cMg1uIhg1UfdGFBDqRuLP/zg8NRcTDVQzWAoKRhbIHQwGmAMZyxaSvRKcabG4CSBvrZnDcebSfq8t3iS8fuC4obg40ALQ8jekqIewQPPZochHe+QDA7y39CJMqdJmuygFogSx+28hRu4/bIjwUrFAms+yGCFd4coTnaLLJRgbtJ4vyWqd1oz0F8ZHMUuXVmjNrDcgFsluKrOkc8ba4F/BkC89tseBxzwH0E0FrkRDV16jDN6w==
Received: from [98.138.100.103] by nm24.bullet.mail.ne1.yahoo.com with NNFMP;
	06 Apr 2015 01:46:50 -0000
Received: from [98.138.226.56] by tm102.bullet.mail.ne1.yahoo.com with NNFMP;
	06 Apr 2015 01:46:50 -0000
Received: from [127.0.0.1] by smtp207.mail.ne1.yahoo.com with NNFMP;
	06 Apr 2015 01:46:50 -0000
X-Yahoo-Newman-Id: 611158.41345.bm@smtp207.mail.ne1.yahoo.com
X-Yahoo-Newman-Property: ymail-3
X-YMail-OSG: V_w9E.EVM1nTg5Z6qQ6AWP7.QmUW.wnYRvUkPmesTvBeQGC
	Lfs0iFHm9JrDAEEcEKgFJ9O7cB0aabm5DP73kprGIHdVPoqAtS8dz58PhMhp
	1xfPph_1eoUjGW.i9MEo_CF2zSXa0ACpgx1.LuHR3ifksgVv6E4T.lh8hHAs
	WHpcQ1TTLmSYF1KkBf9z2MNZW9Z8s5SDqtyYE8.p_ATkEErcVan1Z48wuMCO
	jFkfHVxnpGMDv3_iPfBP8ayJMQUiPWJ2iUfCuIictRDH.DOYOFMzKtF38WXG
	Tmxi629uDeld.mMpr7Tmn3blR8VVO_M9w3y4X41vDYQfnYHETCLRxIym8B4C
	tYjTt1joWI6b2Qu0oJ0.AH8z3JOkfRnEPk1febX9ElSIu_8WTC4NS_SZTLhs
	0EOGbrdpztG7uKbZrfcdHcTh4Y446VlzoRvsIYMzIKbrPj5GdvIDLI9n6rqF
	8z8W.THkRHcd1hoeEydiaPNvyP4IzrEUNOjoUd9ryzEU2ljjtC_c0U..Sl.i
	uP.0Kk8c2VY_4AUaPV2Qrq_MQ1o2P
X-Yahoo-SMTP: 64Rl7imswBAWpv6wTwoSL_WDoXYzCQw-
Message-ID: <5521E589.3010007@yahoo.com>
Date: Sun, 05 Apr 2015 21:46:49 -0400
From: Ken Davis <blackt1ger@yahoo.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: what's the difference between meta-openembedded/meta-oe and meta-oe/meta-oe
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
X-List-Received-Date: Mon, 06 Apr 2015 01:46:52 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I'm soo confused.

what's the difference between meta-openembedded/meta-oe and meta-oe/meta-oe?


