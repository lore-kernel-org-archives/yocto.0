Return-Path: <savages@savages.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC40AE0093E; Mon,  6 Jun 2016 17:09:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=BAYES_40,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 BAYES_40 BODY: Bayes spam probability is 20 to 40%
	*      [score: 0.3702]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 366 seconds by postgrey-1.32 at yocto-www;
	Mon, 06 Jun 2016 17:09:49 PDT
Received: from mail.tvlinux.us (mail.tvlinux.us [74.207.242.209])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B65FE00924
	for <yocto@yoctoproject.org>; Mon,  6 Jun 2016 17:09:49 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested) (Authenticated sender: savages)
	by mail.tvlinux.us (Postfix) with ESMTPSA id 6BFF620171
	for <yocto@yoctoproject.org>; Tue,  7 Jun 2016 00:03:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=savages.com;
	s=151110; t=1465257822;
	bh=umv9MwmPvGZSZgPVMRk/QuAqSEer39ULZ82gfX6sp+Y=;
	h=From:Subject:To:Date:From;
	b=ngu64v9R73YYm3OHYLzmxASxrCZDfj3SbQhP3pRQrUxAclZb9ewwjxsaDEO74YtzI
	cMznHpmENGAbCglRbGd2CUL+tJhzg+WpuI6a6LEE0ZT6SLajAKgiFSLO+M4pNp6pxJ
	YZJCBxfUWnl6twPcvcNN/WRZ9RgXFbiXTgyLSQ6c=
From: Shaun Savage <savages@savages.com>
To: yocto@yoctoproject.org
Message-ID: <57560F4D.5070307@savages.com>
Date: Mon, 6 Jun 2016 17:03:25 -0700
MIME-Version: 1.0
Subject: yocto eclipse ADT for mars
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
X-List-Received-Date: Tue, 07 Jun 2016 00:09:53 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi all

I am trying to get eclipse working with eclipse mars.2 release 4.5.2.  I
have patched yocto to build on Ubuntu 16.04. Now I am trying to install
yocto ADT on eclipse.  The problem is rse.terminal has been deprecated. 
Now there is local-shell, telnet and ssh.
I have tried to build adt from the mars-master branch, but the
rse.internal.terminal is still there. 

What can I do?

shaun
 

