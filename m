Return-Path: <alireza_1100@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B2704E00843; Tue, 20 Oct 2015 10:30:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alireza_1100[at]yahoo.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0026]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [67.195.87.241 listed in list.dnswl.org]
Received: from nm50-vm1.bullet.mail.gq1.yahoo.com
	(nm50-vm1.bullet.mail.gq1.yahoo.com [67.195.87.241])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A485E006D5
	for <yocto@yoctoproject.org>; Tue, 20 Oct 2015 10:30:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1445362221; bh=v0RpUEhk3c8LGba7EbwOD3K3aI20so21mJevVhOdGoE=;
	h=Date:From:Subject:To:From:Subject;
	b=o4OmxkSdW8JMxwnsxb7Hw8vOcOGf/b1MF5d1hXgLA1xy6Xw8H3FwHAQzD749NtrnM6HNNM9wrCnzcEsVqCIwretTx4pzyfsBH42DX/1oW/wWR7v3TIe5hrmEhk8pvr2rdrkmpU4IZum1IVqvpeD904nNzvBUwKFKnuFWz/nVIlcPY2cJ22+48wCJwH3+O9XIGGBtmZskRCiuNsWAPr9LHExiaxpoTve+5tvOLrDnT219pYaMWCoRfoeeOzGfb4Hp2hkuc8fKsnXcoGNltpswnFt4ssul3ppry/CeUbbqX7bktO2ZUluKFz2jHnTCY4XGyga4TzgvjSw+lvCyPbkz7Q==
Received: from [127.0.0.1] by nm50.bullet.mail.gq1.yahoo.com with NNFMP;
	20 Oct 2015 17:30:21 -0000
Received: from [98.137.12.63] by nm50.bullet.mail.gq1.yahoo.com with NNFMP;
	20 Oct 2015 17:27:20 -0000
Received: from [66.196.81.172] by tm8.bullet.mail.gq1.yahoo.com with NNFMP;
	20 Oct 2015 17:27:20 -0000
Received: from [98.139.212.206] by tm18.bullet.mail.bf1.yahoo.com with NNFMP;
	20 Oct 2015 17:27:20 -0000
Received: from [127.0.0.1] by omp1015.mail.bf1.yahoo.com with NNFMP;
	20 Oct 2015 17:27:20 -0000
X-Yahoo-Newman-Property: ymail-4
X-Yahoo-Newman-Id: 557104.56653.bm@omp1015.mail.bf1.yahoo.com
Received: (qmail 77654 invoked by uid 60001); 20 Oct 2015 17:27:20 -0000
X-YMail-OSG: .FvvVYcVM1nQjZyvxCiqtXowl4kRzQr5YawnzATxgVrMqWo
	kARlW4_bBFapF82rs0YRWI_15ULWlAXrY3OLpY2aTAqyR2gkzza_1j.KJ6dj
	zEnflenimh4FC48WOgNlOMINmSu1fy8vAcaOQkMo2nYk7gBGV8Nf5sFdxRsI
	GCvAc1ciPr_po3xBwrknWs6ma3Om9BuUC35UF4rfLZwn5u4_vyPifdbbn9BX
	sX9E4DiKDDeaQh6xZAESqkU4a3EGpiEZOn5o3MDCLGp3JyRT6DB955weEPmb
	T4IGVqHv_lfeJUBfaA5o4Pv.ED82uDkFHxFLjaW4YpU1VEClGLn03Y3YuVwu
	ji3ltsRvdgasfX8dgdMXe_2Sucbr2c9rFE_F_D..rD7R57yiFppKzk92z0fw
	tb4Mn3ZUXfB116VP.AUfYaJ41zVOJvKIymfV7Gfx82bTmwvkcOa9KYc5rqZ_
	IspZSsiaAgSff_yAOq.pVoPGjhK3ByENqgnkkuF5u3L.Cv4TZ1iFolL5RHel
	ISVC6RUHZlUEM54ChNF0vMFmLZd8LO2WH33VsYHuuZvFLByhsPnA4sAeEP66
	FMxPzvG_F4Jx71_dSMpQg7Y0-
Received: from [188.166.97.233] by web141504.mail.bf1.yahoo.com via HTTP;
	Tue, 20 Oct 2015 10:27:20 PDT
X-Rocket-MIMEInfo: 002.001,
	SGVsbG8gdGhlcmUsDQoNCkkgYW0gdXNpbmcgeW9jdG8gY29yZS1pbWFnZS1taW5pbWFsIGltYWdlIGZvciBteSBiZWFnbGUgYm9uZSBibGFjaywgYW5kIGV2ZXJ5dGhpbmcgaXMgT0ssIGJ1dCBteSBVU0IgcG9ydCBkb2Vzbid0IHdvcmsgYXQgYWxsLg0KDQpJcyB0aGVyZSBhbnlvbmUgaGF2aW5nIGV4cGVyaWVuY2UgaW4gdGhpcyBpc3N1ZSB0byBnaXZlIG1lIHNvbWUgZ3VpZGUsIHBsZWFzZT8NCg0KVGhhbmtzLAEwAQEBAQ--
X-Mailer: YahooMailBasic/799 YahooMailWebService/0.8.203.817
Message-ID: <1445362040.33608.YahooMailBasic@web141504.mail.bf1.yahoo.com>
Date: Tue, 20 Oct 2015 10:27:20 -0700
From: Alireza <alireza_1100@yahoo.com>
To: yocto@yoctoproject.org
MIME-Version: 1.0
Subject: Beagle Bone Black problem with hotplug USB
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
X-List-Received-Date: Tue, 20 Oct 2015 17:30:25 -0000
Content-Type: text/plain; charset=us-ascii

Hello there,

I am using yocto core-image-minimal image for my beagle bone black, and everything is OK, but my USB port doesn't work at all.

Is there anyone having experience in this issue to give me some guide, please?

Thanks,

