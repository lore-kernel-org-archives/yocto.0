Return-Path: <rail@esenciatech.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 75D29E00DAA; Thu,  4 Jan 2018 07:45:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.213.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f50.google.com (mail-vk0-f50.google.com
	[209.85.213.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2CDDE00D90
	for <yocto@yoctoproject.org>; Thu,  4 Jan 2018 07:45:28 -0800 (PST)
Received: by mail-vk0-f50.google.com with SMTP id v70so1150226vkd.8
	for <yocto@yoctoproject.org>; Thu, 04 Jan 2018 07:45:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=esenciatech-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=wx4xS1heH3kHj+EDXe4jDKvZBELFjwLLBc73KX4JoeM=;
	b=wnwf9h1jPo0FharTnPnEANwiD4A2QPohiUKo3YYtjf2sQPEgrO8nAtVNvyWCgCsvoW
	+iPyMDM7kJ4ECzjmjbYzQi+Ngc1q7CZSI68BRb38mDMCzNqDOzFSmRtcagnwewx5k3HS
	tEwEJ8y/xAvS34hWxriN4aZ3cDGfR4FqeWfm7eLDZ13yqmnYoHtrh0KM6PunM1oA5W2x
	+mBWiFccHnAS1LEUP2ajkdRLN2Gt//vek3x1Ls8oSsKeV0nRoXtzTBZooefGt7hrCjSM
	Oduf/vxXt6x8IyXnbjCQYwq9Gbp9J0sZ+YPBp41PjxAIlURNaA4quxkJt42cWuwN+cju
	2b8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=wx4xS1heH3kHj+EDXe4jDKvZBELFjwLLBc73KX4JoeM=;
	b=aiH92TEiE+/6U7PupYPDZew7E1aAQTqQTDo3D82SDMGUCndHqX97c4/v9/ZyEUXwIt
	vYhZx+4dBaQipn5tgHKL1moGA0wSRuZcvnn1IcC8g/BnsCM3kDKmpmGcmuLU/xhBfJgO
	Q/xI9BH9A0NwkLSScgvPUC84ZJj6w/RKBQOywKY5g7arPxXU1lAsWa+qpedOUhntqq2o
	DC7LTHFEShJIWeLFS1vFTgmk7NSlmXwXP3BnKJG/mYPjKoN/6iMfly2gGxYA/pXXkofn
	2JIgeKMbWAKlQs87AFtIT6FqlR6I5EII4RZLODFaNIvf1npf5O2gKsNvdKWWfsFIkzMv
	qIHA==
X-Gm-Message-State: AKGB3mIRULJWAH1WUss8RwEimlBKk4N4QlmmoB514lQolIvzQZRC1L9z
	SGI7uQwlGwHAVA1YQ1/IEWrV8zwQIHiiFHKoC6ux8fGxD0byt2s+/zZU2EvyhtK5zEgWp9+5/2a
	l1oq7dEmhwxmY3w76/3PdSnfoew==
X-Google-Smtp-Source: ACJfBovr9ukYY+qYjy8lDFKYfaCwGLwtT+tavrA1fd3jzxhYBMVDJ2Iy+0MBjYzKu1KV7Rl410VIPw9qrIS/+paBOH8=
X-Received: by 10.31.160.145 with SMTP id j139mr4748883vke.155.1515080727783; 
	Thu, 04 Jan 2018 07:45:27 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.28.74 with HTTP; Thu, 4 Jan 2018 07:45:27 -0800 (PST)
From: Rail Shafigulin <rail@esenciatech.com>
Date: Thu, 4 Jan 2018 07:45:27 -0800
Message-ID: <CAOLNbFYp+U3gJbkWuw-7ViGHzsbLFSEb01P5QREjPPgHb1CV=Q@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: running autoreconf during a configuration step
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
X-List-Received-Date: Thu, 04 Jan 2018 15:45:30 -0000
Content-Type: text/plain; charset="UTF-8"

I'm somewhat new to Yocto. Trying to build libsoc,
https://github.com/jackmitch/libsoc. The steps are outlined here,
https://github.com/jackmitch/libsoc#manually-building. The first one
is to run autoreconf -i. I've been looking through documentation but
didn't find anything on how to do it. Is there an EXTRA_OE<something>
variable? I did run bitbake -e | grep EXTRA_OE but didn't the only one
that is remotely related to it is EXTRA_OECONFIG, but it is for
./configure step. I would appreciate any help with it.

-- 
Rail Shafigulin
Software Engineer
Esencia Technologies

-- 




*ESENCIA TECHNOLOGIES, INC.*3945 Freedom Circle, Suite #360,
Santa Clara CA 95054
________________________________________________________

Phone: +1 408 736 8284 Fax: +1 408 519 3475 
http://www.esenciatech.com | http://www.lnttechservices.com



