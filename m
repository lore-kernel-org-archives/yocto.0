Return-Path: <atul.singh008@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 61D54E00524; Wed, 25 Jun 2014 11:44:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (atul.singh008[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0010]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f171.google.com (mail-ig0-f171.google.com
	[209.85.213.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30810E003D8
	for <yocto@yoctoproject.org>; Wed, 25 Jun 2014 11:44:18 -0700 (PDT)
Received: by mail-ig0-f171.google.com with SMTP id h18so6356153igc.16
	for <yocto@yoctoproject.org>; Wed, 25 Jun 2014 11:44:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=u/GDDxaDoh0QQcV7eCileOff2vyVfzbj4o6KXZCq5nM=;
	b=SU9aV9WlEh367iC9AnQFaCKrF3Et9E3gN1SIPBFmg/T5RwU2QDdjZqTi5SyWJX/AzZ
	rkzsdt9Wt6+DmwvNKCFh0Xauw+BeFcrWhzDLQkNFaEjSoHvALVo0W1XpFfxCKXYemD/a
	sEB+XzqineR9CWcoYRNooRsjtpsEjUUaNZwjW49l7QozghqcCj3mmApsZE+/b0iEqSeC
	mPPVryv/XMIRX4zD2jpXOHRMmKtvdfIbx6j7+5EJT4v7dnA1Y2EVtrQOcI6eru+gYIKW
	VWQHyPnMkBvIxtGM39/rRkPKS4z6qxxdAN1BvBSlhbgXnozxRPMWnsz7hCItSDs3+jx3
	GW0w==
MIME-Version: 1.0
X-Received: by 10.43.79.71 with SMTP id zp7mr8996732icb.38.1403721857814; Wed,
	25 Jun 2014 11:44:17 -0700 (PDT)
Received: by 10.64.86.225 with HTTP; Wed, 25 Jun 2014 11:44:17 -0700 (PDT)
Received: by 10.64.86.225 with HTTP; Wed, 25 Jun 2014 11:44:17 -0700 (PDT)
Date: Thu, 26 Jun 2014 00:14:17 +0530
Message-ID: <CAH21_vH7dkBAZU0B9mLMjJi2vrwCP0-zrCCSKKfAMyArZ5r96g@mail.gmail.com>
From: atulkumar singh <atul.singh008@gmail.com>
To: yocto@yoctoproject.org
Subject: Multilib
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
X-List-Received-Date: Wed, 25 Jun 2014 18:44:22 -0000
Content-Type: multipart/alternative; boundary=001a11c3b586b2d82a04fcad7677

--001a11c3b586b2d82a04fcad7677
Content-Type: text/plain; charset=UTF-8

Hi All,

I am trying to build toolchain for arm architecture with multilib support.
And my requirement is i need different library file for different features
and architecture.
Could anyone please help me on the same.

Thanks and regards,
Atul

--001a11c3b586b2d82a04fcad7677
Content-Type: text/html; charset=UTF-8

<p>Hi All,</p>
<p>I am trying to build toolchain for arm architecture with multilib support.<br>
And my requirement is i need different library file for different features and architecture.<br>
Could anyone please help me on the same.</p>
<p>Thanks and regards,<br>
Atul </p>

--001a11c3b586b2d82a04fcad7677--
