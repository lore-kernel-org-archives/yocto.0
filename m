Return-Path: <jdmason@kudzu.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E5D1E00BC6; Tue, 23 Oct 2018 03:12:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.176 listed in list.dnswl.org]
Received: from mail-it1-f176.google.com (mail-it1-f176.google.com
	[209.85.166.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24FB8E00BBF
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2018 03:12:44 -0700 (PDT)
Received: by mail-it1-f176.google.com with SMTP id i76-v6so1329974ita.3
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2018 03:12:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=kudzu-us.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=qoLKvXfIQhDmBBdj59BE+Y/FiqCaoyD8S/tBwR85ORc=;
	b=qyj9hHBdNW+TOzK52SX6EyOWUkbWm1AYx+HMbgrZK/4yE0pb6Uc/44SoyQU/U+H/2M
	c1Bc2g9QpLNCRMX1GN9dO1ZOOx42w0N/L0u9rOTpVlZcEYBxPH87eTnBtoZPQLHJiQAl
	rEpFketospUjJrYJAjf1J0SelSzmX4TzA09zoZ47Jb+G64J4jKqIQ9oStizWUHHmo/I9
	2EYXRFBa10v1GzYQruJw/D5U/+d0VJC/Ds5IP9MbsKby5nl3bYkc14OxijkNZeIotbHZ
	gAsnWb9R+/F1XqHXO/Imnyn91dFaQC4oF47YCQvBTcidsTyjRK2RoWD1M6cWub4t7g0p
	FasQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=qoLKvXfIQhDmBBdj59BE+Y/FiqCaoyD8S/tBwR85ORc=;
	b=N5+rLM3ZrAUqW9ukKYDUPHtL9Z9Y/VbMfF3usvGvgAZ2CKDNLFpFJuMNZbGJ5EvnKm
	q7O+nbw+1YAXiLT3KXbarbSfQLKauSncTt2qUsb6CD+79o/64Z3QiErwsv+QDzO5WguO
	s9UTUEHEBx9WVsW/iy+f0p31mhfRRc3NBUcCl2nA1edGVpMwdh5i3HKdeCj9VBDCIPGN
	axQN36xiK9b52NizCa1rDgqrvfMcg2ZFAoBKdeo9LfBCMyXXqwi+O+3By+CBpg8ElBiN
	8fe+6CfeIlZmFbVJAM2KX7uQKYXWjDBHqT5FoLgq41v9bNsKN0L+puXUgStCEwcY3Jm5
	q5eg==
X-Gm-Message-State: ABuFfohjPEbMtHYhMb+edk29NIscm3GlJJjOLZsmy3LJ3T90X2Owi7V1
	7MRsOop9z7W1X/3p9cl33SKKIBqMYYPZ4utoCke8y4/euxY=
X-Google-Smtp-Source: ACcGV60WyvCWwQ6G94DV49O7nM7Z+VAgo686BJIo3R6IZWE7XmTPeNyBXsj0QNnvlJMR0iX6X+EcVLSYA2iDlHe/KCs=
X-Received: by 2002:a24:ad2c:: with SMTP id
	c44-v6mr13311077itf.162.1540289563360; 
	Tue, 23 Oct 2018 03:12:43 -0700 (PDT)
MIME-Version: 1.0
From: Jon Mason <jdmason@kudzu.us>
Date: Tue, 23 Oct 2018 11:12:34 +0100
Message-ID: <CAPoiz9wwT2poZB=Yyg9Bs9MMK3OfPGaAtLR123w047erg6b2Cw@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: NAME missing in mpc8315e-rdb.conf
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
X-List-Received-Date: Tue, 23 Oct 2018 10:12:45 -0000
Content-Type: text/plain; charset="UTF-8"

A quick grep over all of the native config files shows that of all the
"#@TYPE: Machine", only one lacks a "#@NAME", mpc8315e-rdb.conf.

It appears that the file OE version of the file has a real name and
description.  See
http://git.openembedded.org/openembedded/plain/conf/machine/mpc8315e-rdb.conf

Is there a reason to not at least copy this and have it provide some
useful information?

Thanks,
Jon

