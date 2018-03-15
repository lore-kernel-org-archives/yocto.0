Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1CC3BE007D4; Thu, 15 Mar 2018 10:22:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.215.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f44.google.com (mail-lf0-f44.google.com
	[209.85.215.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8483BE0079D
	for <yocto@yoctoproject.org>; Thu, 15 Mar 2018 10:22:25 -0700 (PDT)
Received: by mail-lf0-f44.google.com with SMTP id v9-v6so11346150lfa.11
	for <yocto@yoctoproject.org>; Thu, 15 Mar 2018 10:22:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=qLwfRMs8aEyTAc+er38h4aB2FIqiZ1crnkvGvAMskic=;
	b=u35RKaOGJPRk5u09NmdbNsbp7FtqDUcgb+fiQB3qHBIbJ7GEUYAJxUQrjKub0lcwqZ
	qvhPnKOWJybQbft/SfuyJR1XyKwUmcg+UToZ49+I3ThA2vZIcn50xg0fKbDf4CHQOz2y
	RqLcUrd8L4QOCeKQA+fqdeRrmWLRb7jGd6kxI1Bp98C33RsR04XcaxMvKinPzBKbejjr
	GWJI3JwiP9hHYZ9XG6SE8EduxhOCh9J/TLlVS/kzm3ocHjNFRdGT2OMDNP/3lbzdqr4s
	dLTX11gNrzKb1wygrV65z1xDfvcqpTuBNBN3izQGtgS+bZBKiYAoPelNuZbHI43qxVEF
	mbmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=qLwfRMs8aEyTAc+er38h4aB2FIqiZ1crnkvGvAMskic=;
	b=dBtU4anOeli1JbEyde86KzbOZ4ogk+vfzmbcGAClz94As3Vk1pKyqjhBZfU7B/9WxA
	VXsvKJTggFC+X2Sm2xfexxVqX3aOASKrFB2LZFmjs5UP89b+x12v2vGAc1WXktWe4A/s
	UaDUg94G3nmhgdrlwg7/fL2d2on6NurhoAfMrhCq9xOP7XzJDdNScfBCR+q8SfDeYGUG
	VrNcKCMXp8cePr33q7wfZMRxwkaOY/Qm3J1NHB98G57QzPrlfeDtmS4pHnLw2K1CCD7n
	NzQP0m16IsYlG+x2L0z4abMaeulcwiggvuz3+CEqE2ivxPx5gC/kkCPOVuK9m1hjzkYA
	oIrA==
X-Gm-Message-State: AElRT7F0a6o2C+VEBQo6ei7u1OaE6NDLjs/4WmrdMDJNOPdVC2an6qSV
	EkCRpc9uJ8IW0t+pMly1T2UV4qIwfknjUj4lJCiL1p+U
X-Google-Smtp-Source: AG47ELvLUhYbQSWcW6qTJDtTlYxzejvng+lzlBucseKkhOs6xKmKzus7MzgqhhowVqCvHcv5vDYvylrX606/4A+cPS4=
X-Received: by 10.46.92.7 with SMTP id q7mr6663584ljb.21.1521134544112; Thu,
	15 Mar 2018 10:22:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a19:1f0f:0:0:0:0:0 with HTTP; Thu, 15 Mar 2018 10:22:23
	-0700 (PDT)
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Thu, 15 Mar 2018 18:22:23 +0100
Message-ID: <CAOT_U5bWa90d5Ly_JRrGC_Smz=z0xvO6R_XGXJp_eDkEbL7pTw@mail.gmail.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Does PACKAGECONFIG only apply to autotools recipes
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
X-List-Received-Date: Thu, 15 Mar 2018 17:22:26 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,
is it true that that PACKAGECONFIG is only used
 for recipes that inherit autoconf?

Was trying to understand what they do in a recipe:
    https://git.yoctoproject.org/cgit.cgi/poky/plain/meta/recipes-connectivity/bluez5/bluez5.inc
and didn't really get what this was about until found
the autoconf reference mentioned in a book.

So "features" as referenced in the mega manual:
    https://www.yoctoproject.org/docs/2.4/mega-manual/mega-manual.html#var-PACKAGECONFIG
are the flags that will end up being passed to ./configure?

However later in the recipe it's used to populate other variables

    NOINST_TOOLS = " \
        ${@bb.utils.contains('PACKAGECONFIG', 'readline',
'${NOINST_TOOLS_READLINE}', '', d)} \
        ${@bb.utils.contains('PACKAGECONFIG', 'testing',
'${NOINST_TOOLS_TESTING}', '', d)} \
        ${@bb.utils.contains('PACKAGECONFIG', 'tools',
'${NOINST_TOOLS_BT}', '', d)} \
    "

Is the original assumption true (that it's an autoconf only thing)?
Is there a way to test that by grepping the code (didn't found
autoconf references when greping for PACKAGECONFIG in
bitbake -e bluez5)?

Be Well :)

