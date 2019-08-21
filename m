Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60E52E00D11; Wed, 21 Aug 2019 02:10:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [62.149.156.86 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtpcmd0986.aruba.it (smtpcmd0986.aruba.it [62.149.156.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87D8DE008D3
	for <yocto@yoctoproject.org>; Wed, 21 Aug 2019 02:10:27 -0700 (PDT)
Received: from [10.0.3.121] ([78.6.3.122])
	by smtpcmd09.ad.aruba.it with bizsmtp
	id rlAS2000i2dwwGE01lATiu; Wed, 21 Aug 2019 11:10:27 +0200
To: Yocto discussion list <yocto@yoctoproject.org>
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <4899567d-add8-eb6f-23bc-9db23bd9196f@faresoftware.it>
Date: Wed, 21 Aug 2019 11:10:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1566378627; bh=GAhdvB9EvpAmdDKeBNEW4jpHH2IwSnTH+91/O+Wmyhw=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=JMnIRfpeV/WlHMLj2lEiZ+aDJbbrn2b4+fsrZVRDwYzCgAc2nbgbIGF5PNS3E8cjA
	zqBpxK94Kz0EBnoh5c+tmHgTYVaUoHCEK8vYc6kGyDhVMj6116ZWkQsQNcV3h8DA36
	3RC0djep2U+BuELuSwxDdNFVPu03UOhf4I/ELifzYPXUrfpVvjdzE6hHFem0nXKQns
	/u2kGgecAuJ89nhlVzXFmG42nkIM1NYfz7lTyNqFHwEoffl7+OaMoN01QptwuSJuFP
	2kmYK96AnXS8L9syFqjPFTJpLq55nBY5sm3zE45BS164pPjCTZgzUpd3O4QZqJ119D
	oQRvn45iNg5aA==
Subject: libGL missing. Which packages bring it?
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
X-List-Received-Date: Wed, 21 Aug 2019 09:10:28 -0000
Content-Type: text/plain; charset=iso-8859-15
Content-Transfer-Encoding: 8bit
Content-Language: it

Hi all

I try to compile kivy for Pyro and Python3 for framebuffer con RPi3.

The builder cannot find libGL and -lGL linker fails.

Which are the packages that give libGL?


Best regards

    Mauro


