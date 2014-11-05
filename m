Return-Path: <s.stirtzel@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D625EE0084D; Wed,  5 Nov 2014 04:52:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (s.stirtzel[at]googlemail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f41.google.com (mail-oi0-f41.google.com
	[209.85.218.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 331C6E0082F
	for <yocto@yoctoproject.org>; Wed,  5 Nov 2014 04:52:35 -0800 (PST)
Received: by mail-oi0-f41.google.com with SMTP id e131so12010555oig.28
	for <yocto@yoctoproject.org>; Wed, 05 Nov 2014 04:52:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=xgjtbvtQveVaIogLxYeMeFiAUdaRBrE4XiNVo31kJt8=;
	b=ozzKb4RGq03I6nEGG1ebdJSIkBDShvwa5HZwhBwXdsu+3vzQs5pznBdd67u6KIrk3Q
	isXvk+NOzZpXzSnTyw9IRRmTzR0xqSeptYNzDhBgmZhZ3p0b2JxcArj0babdJKlLETSD
	6zD33JTLIyUV02KylvsHEWA9otkyEzRy0ZohipIgiR9QF4coLPLcOdlScuGbnLh/Dx6p
	bm9vGvFcY7dBqeRxZ2RywM+q9XWwQNrhWWXausu6qvRw8Jbtw3zJ3VfJ1MTQ2C/bAftJ
	r3TzczV8BLYJNssvK1+lS3VTppUh3szWC8uI1RELmQgxHyZVJ/5VhaTrZXUfBm/bFrPS
	Diww==
X-Received: by 10.182.68.106 with SMTP id v10mr48742172obt.32.1415191954573;
	Wed, 05 Nov 2014 04:52:34 -0800 (PST)
MIME-Version: 1.0
Received: by 10.76.158.195 with HTTP; Wed, 5 Nov 2014 04:52:14 -0800 (PST)
In-Reply-To: <5453D7C9.2040805@gmail.com>
References: <5453CA61.5090902@gmail.com>
	<CAD0=qkKpRpoP_uuYiSdGNrN+SyrJy_sFkCw+iJhPfM7UdrWNCQ@mail.gmail.com>
	<5453D7C9.2040805@gmail.com>
From: Samuel Stirtzel <s.stirtzel@googlemail.com>
Date: Wed, 5 Nov 2014 13:52:14 +0100
Message-ID: <CAGiJk9foS40b7RFM4o=P9p8e_yAmyqSzqy1ZZtXJshADJZQSmw@mail.gmail.com>
To: nick <xerofoify@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Angstrom Build Failing
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
X-List-Received-Date: Wed, 05 Nov 2014 12:52:42 -0000
Content-Type: text/plain; charset=UTF-8

2014-10-31 19:41 GMT+01:00 nick <xerofoify@gmail.com>:
> Thanks Sven,
> I will git pull later and see if it's up again just wasn't sure if this was
> a network error or a misconfiguration on my part.
> Cheers Nick

Sorry my fault,
I have renamed the layer in gitorious in order to prevent confusion
since there is another layer for the new KDE 5 stuff.

For KDE4 there is:
git://gitorious.org/openembedded-core-layers/meta-kde4.git

KDE 5 / KDE Frameworks 5:
https://github.com/e8johan/meta-kf5


-- 
Regards
Samuel

