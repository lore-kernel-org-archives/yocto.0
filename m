Return-Path: <mhalstead@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ACA9AE00B8F; Tue, 27 Jun 2017 13:55:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.47 listed in dnsbl.sorbs.net]
Received: from mail-oi0-f47.google.com (mail-oi0-f47.google.com
	[209.85.218.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66816E00B77
	for <yocto@yoctoproject.org>; Tue, 27 Jun 2017 13:55:44 -0700 (PDT)
Received: by mail-oi0-f47.google.com with SMTP id p66so27084702oia.0
	for <yocto@yoctoproject.org>; Tue, 27 Jun 2017 13:55:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=to:cc:from:subject:organization:message-id:date:user-agent
	:mime-version:content-language:content-transfer-encoding;
	bh=Q8+E9T8wm5w22crAMR5PPDqSPq5UT8I276ZTqilydlg=;
	b=Vd1GO1mbIu8YUk4oRwsWPopvfhiDPQn1t3HIONVLse3HCo2CsBUPcFZSoqti0KgVrT
	f2UPLjfZ3hRYbuYiYsqZBMWWUIOcsMjiC1Rv83K5bdG8ryx5t7O/9b+heDwGXV+4Qr3x
	TqNJnu+75c752YMLLwpgYm6yIrEAHArkx/OgU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:cc:from:subject:organization:message-id:date
	:user-agent:mime-version:content-language:content-transfer-encoding;
	bh=Q8+E9T8wm5w22crAMR5PPDqSPq5UT8I276ZTqilydlg=;
	b=qrUkGxn8fhln17W6ayyet7J73AOM7xNLf5Wo19kXQtgc4v7eMUcAOqrDnMO76530LF
	kMv9WWugjCt52BLzfqPNfkLFbnae0jgm1Pr7Xb5aslvRfJkWP7pgp/52qE2bF399V8eZ
	ZPgae1H3+PZgyuA5h6D7xtEOYJTYuUZN7kl7BLb6GdNZ9uPS+Dv8mDGT/xq5ETcONQfE
	DqGJmRLC1WG5BH/krLeBe5TqlEecp/0i2CY30KSLn/zbfXwEr4jh17dvwmgNncNIgiE8
	hIaVgFxhM5Akvyud134REzP20mG36Q5/3DmoaL5/oBjGhsLOzKNIC2/Pw18xZa3eTRHj
	rQ4A==
X-Gm-Message-State: AKS2vOw7wMZ8IpLqPpf/VUY8MEJPidXhvVJZ7+HQnm/Jb74mvAJ+9D2O
	CWyhdKKUEj8g9RTR
X-Received: by 10.202.207.10 with SMTP id f10mr4529716oig.170.1498596942009;
	Tue, 27 Jun 2017 13:55:42 -0700 (PDT)
Received: from yct-lpt.lan (50-39-170-231.bvtn.or.frontiernet.net.
	[50.39.170.231])
	by smtp.gmail.com with ESMTPSA id y84sm224187oie.40.2017.06.27.13.55.39
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 27 Jun 2017 13:55:41 -0700 (PDT)
To: yocto@yoctoproject.org
From: Michael Halstead <mhalstead@linuxfoundation.org>
Organization: Linux Foundation
Message-ID: <3ac5fdbe-3f3a-e3a7-5fdc-242fdd7eaff8@linuxfoundation.org>
Date: Tue, 27 Jun 2017 13:55:39 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.0
MIME-Version: 1.0
Cc: otavio@ossystems.com.br, joshua.g.lock@intel.com,
	alexandru.c.georgescu@intel.com
Subject: Release Candidate Build for yocto-2.1.3.rc2 now available.
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
X-List-Received-Date: Tue, 27 Jun 2017 20:55:45 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

A release candidate build for yocto-2.1.3.rc2 is now available at:


    https://autobuilder.yocto.io/pub/releases/yocto-2.1.3.rc2


Please begin QA on this build as soon as possible.


Build hash information:
meta-intel : 1f8dd1b00ce9c72d73583c405ec392690d9b08b7
meta-qt4 : 92a72a790a427af5f85ce86fea4fce86a72c7b58
refkit : 0ec24f3484536f3c59e24235f622ea00f8fc1f02
meta-mingw : 4fb621f4589f5357622b141ae28dc1018b91bc6e
meta-qt3 : d5d5225ef78e403301a429d0f64bd4a262b0fa4d
meta-gplv2 : d96ec8f6895d34cc9b05d9a0101ac496db324b18
poky : 3cf0e093481ea260d4f41bed24336ea7f0102bde

This was an automated message from The Yocto Project Autobuilder
(git://git.yoctoproject.org/yocto-autobuilder) forwarded by Michael
Halstead because of a cluster e-mail issue.

