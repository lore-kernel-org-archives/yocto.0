Return-Path: <dfldashgkv@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C4CBE00A8C; Wed, 23 Sep 2015 04:53:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (shiftee[at]eircom.net)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7960E00992
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2015 04:53:21 -0700 (PDT)
Received: by wiclk2 with SMTP id lk2so65348121wic.1
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2015 04:53:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:date:message-id:subject:from:to:content-type;
	bh=uelqz7gZLQ197w06ugLvMsWBi8PSjC62uNjJAgsFdpE=;
	b=Dl92KuTPr3tTPZcx7m0Ed3JoaDhUmucTNdWGJPsRgf3jEyFW1QDlpb+lKxPLFsoe1Q
	p8450yaP2HvxKd8Fsvpph/bi6kjLkHrUrJha/LU4AAmQxu7azFOt90CpxN2thgd34oiz
	2IgUpXn5kEYShmHMCu2uKDyiWVx3GvD4cc5Xp2gPXsQB2o2ewPej651iwCgvUbQN58H2
	hd9Fq5AGvHXLZ1ayxa+B7yPRCV8KAj/bLnOlb6CPmox2FqjU/Ww7xwGT7sXGkC7EwElK
	ucTLbHqWXi9aWSNTMW1l2DQJ8bLTQS73DEyJHcJwx86vN6wtAcyrRX7bNJCUjkD+X5+L
	Sk2A==
MIME-Version: 1.0
X-Received: by 10.180.12.241 with SMTP id b17mr3975012wic.55.1443009200402;
	Wed, 23 Sep 2015 04:53:20 -0700 (PDT)
Sender: dfldashgkv@gmail.com
Received: by 10.28.55.134 with HTTP; Wed, 23 Sep 2015 04:53:20 -0700 (PDT)
Date: Wed, 23 Sep 2015 12:53:20 +0100
X-Google-Sender-Auth: RYkH08FlalHmqW5nk8CnJqVrxLU
Message-ID: <CAJv4cO0rD_wNZDYAMxJdD2wJRUs6omi99j26FSj=+fzgJyWGbw@mail.gmail.com>
From: "Mark O'Donovan" <shiftee@eircom.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Webkit2gtk opengl issue
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
X-List-Received-Date: Wed, 23 Sep 2015 11:53:25 -0000
Content-Type: text/plain; charset=UTF-8

I am working on an am335x based project, with a webkitgtk
program on the screen, displaying a simple webpage.

I want to use a standard yocto kernel, which I believe
means I must do without the SGX hardware acceleration
until an open-source driver is available.

Thus in fido I had added opengl to DISTRO_FEATURES_remove
This worked with webkitgtk 1.x

The webkitgtk 2.x recipe  also specifies opengl as optional.
However it depends on gtk+3 which depends on libepoxy
which requires virtual/egl.

Is this an oversight??

Is it possible to build webkit 2.x without opengl??

Thanks
Mark

