Return-Path: <ysan99@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 95AA2E00563; Fri, 27 Jun 2014 05:14:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ysan99[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0003]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.180 listed in list.dnswl.org]
Received: from mail-vc0-f180.google.com (mail-vc0-f180.google.com
	[209.85.220.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51078E00404
	for <yocto@yoctoproject.org>; Fri, 27 Jun 2014 05:14:48 -0700 (PDT)
Received: by mail-vc0-f180.google.com with SMTP id im17so4890616vcb.25
	for <yocto@yoctoproject.org>; Fri, 27 Jun 2014 05:14:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=3vNNyKMxc2NAuWErNG5sI8+Up1s38X3PxewB5TKHxG8=;
	b=C0EEacDoEpTDbr8Rkd+asdpM0UswCmcUv5ofGHrDlPTh8cmpSROm2BHtKlm93tu6Ja
	zrXh1qBxfLabuIPwzmxDQ12BtZq76GgH9wBYsxaDDM+6lwYx5/r9IoQ6Q4gUX4vtgJAf
	xFmavxadfAxM9ZCW5elL5PQorMibnMJBqcyFL+8vF3/zPHfrtFX3dakzhrNFKrznubNr
	lXZvYll39Ng5tjtJR0++yREybsDW4uPUWR/m9tgzR/c2fHo2FXx5rw+YEAtiXeasxZay
	RvkozlfROOtTg45f+0m2oplSzuFipievgQ1BkbBTtIdXQYBg7NsKpE/tAXXYj6iJ18VC
	elxQ==
X-Received: by 10.53.12.229 with SMTP id et5mr16415751vdd.32.1403871288036;
	Fri, 27 Jun 2014 05:14:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.237.134 with HTTP; Fri, 27 Jun 2014 05:14:27 -0700 (PDT)
From: santosh <ysan99@gmail.com>
Date: Fri, 27 Jun 2014 14:14:27 +0200
Message-ID: <CAFcFeQKoTPaCZUYCWmng5L2XPuGUkX8v0YjGsKrfa-LCHwzsqQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: PREFERRED_PROVIDER_
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
X-List-Received-Date: Fri, 27 Jun 2014 12:14:51 -0000
Content-Type: text/plain; charset=UTF-8

Hello!

I have package busybox at prio 50 and package shadow at prio 200.
Both generate chpasswd.

Currently chpasswd is getting installed from shadow because shadow has
higher prio.

I need chpasswd to come from busybox.

How do I do it?

I added PREFERRED_PROVIDER_chpasswd=busybox in template but has no effect.

Thanks,
Santosh

