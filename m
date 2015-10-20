Return-Path: <alireza_1100@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6AAAE00843; Tue, 20 Oct 2015 10:59:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alireza_1100[at]yahoo.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [67.195.87.230 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm48-vm10.bullet.mail.gq1.yahoo.com
	(nm48-vm10.bullet.mail.gq1.yahoo.com [67.195.87.230])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 481ADE006D5
	for <yocto@yoctoproject.org>; Tue, 20 Oct 2015 10:59:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1445363960; bh=v0RpUEhk3c8LGba7EbwOD3K3aI20so21mJevVhOdGoE=;
	h=Date:From:Subject:To:From:Subject;
	b=Yp/b2ztvNBs+BogT5FB0otYuUIeYICNiij8cVaDGgBc0J29MXVgGwXav97acTT39ytv4hBXuLSynSoPm03bqRQns+vyhrwRf7ekj1t70YORlwQ/RMSVgkKi+os7k0skxDBzp2foIDciOFBAFvbtohsFM7YOkNPQj5yVzboT7g7/cMhcBPXdSHFtKBTisk8Phj4ziw8BXrfSWA93R4HS3CZs0sCkjG4n5CX0tkx7yb/kAQqNq+sQjC4EYaaWJZ1U2Bbnj3uOMBrcoCjeILgnZ87FVSfNjq4cb8fkeIQ6tjQTi3zw18AowyD+1SWQJem/oDsahjttdEpRBiEYI9lFHsw==
Received: from [127.0.0.1] by nm48.bullet.mail.gq1.yahoo.com with NNFMP;
	20 Oct 2015 17:59:20 -0000
Received: from [98.137.12.63] by nm48.bullet.mail.gq1.yahoo.com with NNFMP;
	20 Oct 2015 17:56:19 -0000
Received: from [98.139.170.181] by tm8.bullet.mail.gq1.yahoo.com with NNFMP;
	20 Oct 2015 17:56:19 -0000
Received: from [98.139.212.238] by tm24.bullet.mail.bf1.yahoo.com with NNFMP;
	20 Oct 2015 17:56:19 -0000
Received: from [127.0.0.1] by omp1047.mail.bf1.yahoo.com with NNFMP;
	20 Oct 2015 17:56:19 -0000
X-Yahoo-Newman-Property: ymail-4
X-Yahoo-Newman-Id: 461342.2471.bm@omp1047.mail.bf1.yahoo.com
Received: (qmail 95079 invoked by uid 60001); 20 Oct 2015 17:56:19 -0000
X-YMail-OSG: CG5aILQVM1lE_BfTGQxnZgtbBQz3jMyK8Em.kbUvX6mNiL9
	GYk52MkyjABVutzqV_VCeG4xeIUKNXF3UNdha1XDKbZ5z9sZBwW7xlaPJEnQ
	Mb5SIFvc0kbd.IuI9mD9s8sM2cO4DOrjXdZes7ahpZKGTKgNKMWy5c6ph72Y
	BUOW6iwgIzzjHSDEkWUv5yyLDlVS0QUp1adrUooBP_3ecdiKyXxckbzbSF5.
	qNkRRgSWDnXkEFhrI5BNQlOVHQ.4aGsQF0Hkl.Z5qjbKiDGoy_cef1NQhCpn
	YkLPDW4.ewiOBnGreyMBrnYX7a2Wd9sD3Mi5qGMbIBCQBeOOlgT4EOl_GPQV
	mZOLBeI1oRtzrt_8HNomFdB2zlDXRoy.V3DTql5.IL05pXtkl.PMKCUTiZKE
	SR3BQvUzkryEkljhykSKMstem9XiCwVd9FMp42ZsYCFvinK8FGsvSF8oW.UW
	IWRd0T_gzwhYrCPYzBrF7nyX.hFiEodQJsCJtBiz3EiC.yfrwYnUHZRktyTE
	fbMO9oOu0lRBu7hdbjGLyAwlS1Qz694b93pu686v99LjaxUA89GM36j9vm2D
	qcUOK.pao5POUihgFSIJdpQ--
Received: from [188.166.97.233] by web141501.mail.bf1.yahoo.com via HTTP;
	Tue, 20 Oct 2015 10:56:19 PDT
X-Rocket-MIMEInfo: 002.001,
	SGVsbG8gdGhlcmUsDQoNCkkgYW0gdXNpbmcgeW9jdG8gY29yZS1pbWFnZS1taW5pbWFsIGltYWdlIGZvciBteSBiZWFnbGUgYm9uZSBibGFjaywgYW5kIGV2ZXJ5dGhpbmcgaXMgT0ssIGJ1dCBteSBVU0IgcG9ydCBkb2Vzbid0IHdvcmsgYXQgYWxsLg0KDQpJcyB0aGVyZSBhbnlvbmUgaGF2aW5nIGV4cGVyaWVuY2UgaW4gdGhpcyBpc3N1ZSB0byBnaXZlIG1lIHNvbWUgZ3VpZGUsIHBsZWFzZT8NCg0KVGhhbmtzLAEwAQEBAQ--
X-Mailer: YahooMailBasic/799 YahooMailWebService/0.8.203.817
Message-ID: <1445363779.62779.YahooMailBasic@web141501.mail.bf1.yahoo.com>
Date: Tue, 20 Oct 2015 10:56:19 -0700
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
X-List-Received-Date: Tue, 20 Oct 2015 17:59:22 -0000
Content-Type: text/plain; charset=us-ascii

Hello there,

I am using yocto core-image-minimal image for my beagle bone black, and everything is OK, but my USB port doesn't work at all.

Is there anyone having experience in this issue to give me some guide, please?

Thanks,

