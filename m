Return-Path: <marek.andrus@wp.pl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CB9B3E007F1; Mon, 18 Aug 2014 06:40:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (marek.andrus[at]wp.pl)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [212.77.101.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0011]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 400 seconds by postgrey-1.32 at yocto-www;
	Mon, 18 Aug 2014 06:40:43 PDT
Received: from mx3.wp.pl (mx3.wp.pl [212.77.101.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8BD0DE007EE
	for <yocto@yoctoproject.org>; Mon, 18 Aug 2014 06:40:42 -0700 (PDT)
Received: (wp-smtpd smtp.wp.pl 32070 invoked from network);
	18 Aug 2014 15:34:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
	t=1408368841; bh=zZP0ii9IRoCVAMa8p5hKAb/zkcGmZL6Yzl2e85a8B2g=;
	h=From:To:Subject;
	b=MmII2MsJUC+F+DDPwVidWnTdYRLXLJF1zFs0othHTLqJUnpxGAslftSY/AcnhQwMm
	D/kXaaxsRbLMix9wNyxc4pvvc0To7cqX7vQw+nnqw1OYBCnjNZ4er+37H4YS5lWxoa
	YmRNnShcuSDOsIRIiaf8xzAfHpmsF1ksZyCPeLrU=
Received: from unknown (HELO [62.159.77.167]) (marek.andrus@[62.159.77.167])
	(envelope-sender <marek.andrus@wp.pl>)
	by smtp.wp.pl (WP-SMTPD) with AES128-SHA encrypted SMTP
	for <yocto@yoctoproject.org>; 18 Aug 2014 15:34:01 +0200
Message-ID: <53F200C8.7090103@wp.pl>
Date: Mon, 18 Aug 2014 15:34:00 +0200
From: Marek Andrus <marek.andrus@wp.pl>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Icedove/24.7.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
X-WP-AV: skaner antywirusowy poczty Wirtualnej Polski S. A.
X-WP-SPAM: NO 0000000 [4YN3]                               
Subject: setting ASSUME_PROVIDED just for target package
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
X-List-Received-Date: Mon, 18 Aug 2014 13:40:53 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I'd like to tell bitbake not to build python for target, but I still 
want python-native.

If I add
     ASSUME_PROVIDED += "python"
it stops building both python and python-native. If it add
     ASSUME_PROVIDED += "python-native"
it stops building just python-native.

What to do to prevent building just python ("-target")?

BR,
Marek

