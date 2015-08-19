Return-Path: <rcagley@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BECD1E00978; Wed, 19 Aug 2015 14:28:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rcagley[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.182 listed in list.dnswl.org]
Received: from mail-ig0-f182.google.com (mail-ig0-f182.google.com
	[209.85.213.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D81EE00947
	for <yocto@yoctoproject.org>; Wed, 19 Aug 2015 14:28:22 -0700 (PDT)
Received: by igfj19 with SMTP id j19so118781031igf.0
	for <yocto@yoctoproject.org>; Wed, 19 Aug 2015 14:28:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=F2ollCv6DSPuiOeEg5nxNBSpQvbtgvL1pcoN43FP4VE=;
	b=J+iSQW8O56OLw38YPLT7BtnS7kSR5N33C9bTyWJv2/pqUquykit83tiyLMLjKiujsP
	NMqFvsUqgEmj2h34et61/MrBfaNMr6T0JflY7luMglvsE0TMTrvdzV23vvjQZnuIaZ8v
	Ahz7O0iGkkYKgtltq4d0n8kWkO38SDr/eSA7cvQgVE7QUKZWuDdoR/Z3h23BgvEUAK92
	xNNLqbjqWPmL+xOnVtLGhCVIbRDIL+qPOuLJJIjvNLnQcO0Z8djMoe8EyOWwiFenXLdn
	JCf81xrkafYVEULWCiN5Waddnky2w5+BbJOJzQY4MxLrur2T6mGex9SCX6zR0O7WLJiy
	z+NA==
MIME-Version: 1.0
X-Received: by 10.50.108.37 with SMTP id hh5mr32833249igb.10.1440019702128;
	Wed, 19 Aug 2015 14:28:22 -0700 (PDT)
Received: by 10.107.153.131 with HTTP; Wed, 19 Aug 2015 14:28:22 -0700 (PDT)
Date: Wed, 19 Aug 2015 14:28:22 -0700
Message-ID: <CAN-NoH0rEOzkb3ds_pm2CW334ErC=4Fi4eMY31s_Ppq-S-+gGg@mail.gmail.com>
From: Richard Cagley <rcagley@gmail.com>
To: yocto@yoctoproject.org
Subject: libqtphonon4-dev
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
X-List-Received-Date: Wed, 19 Aug 2015 21:28:25 -0000
Content-Type: text/plain; charset=UTF-8

i'm on poky master branch. When I try to bitbake meta-toolchain-qt I'm
getting a error I don't know how to go about solving

Computing transaction...error: Can't install
packagegroup-qt-toolchain-target-1.0-r0@all: no package provides
libqtphonon4-dev

This is with pretty much default configs except I've changed the
MACHINE to zc702-zynq7

Any ideas?

