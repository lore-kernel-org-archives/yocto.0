Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F86EE009C2; Fri, 24 Mar 2017 01:44:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.179 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.179 listed in list.dnswl.org]
Received: from mail-io0-f179.google.com (mail-io0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA784E00724
	for <yocto@yoctoproject.org>; Fri, 24 Mar 2017 01:44:23 -0700 (PDT)
Received: by mail-io0-f179.google.com with SMTP id f84so12748500ioj.0
	for <yocto@yoctoproject.org>; Fri, 24 Mar 2017 01:44:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:organization:mime-version
	:content-transfer-encoding;
	bh=bDwMEGJxiSCsZfQKyAEREMq3ulVG/73nWhPE4+MGjBA=;
	b=Ya0ekQxkQBqlp7ON5UdUNh7rhcJLMtRMkkpBxWBuffOLVmy9ffaeAZ0LKuZ+6JasTC
	PHlTzTwYcZhfCe+vMyNDiWCC0oUTU8BOlYcapmLvCIDR5oKSm6CIMJR0blD698JYQ1bk
	H324XU69vY7Cgdd9rSZJwDFfcAYBwC/TxFSCyZHKYI5+8Vly2NwYDA+Jod6lviI+KebS
	MLAaWNEq6Mf6ng9YY2TmNhNtcHfXgRJyDj5jaz6KC7Q8sU4Z0UYRsvK0A0BlkuhfWiGI
	YYdobyrl/TAYME05qbCviOhP7Q8+/9WUMxR1F5nY2ZPhBNbqJAn4OWYcW3WtbVhTZktR
	hioA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:organization
	:mime-version:content-transfer-encoding;
	bh=bDwMEGJxiSCsZfQKyAEREMq3ulVG/73nWhPE4+MGjBA=;
	b=ENybcJm3wm4Q5sx72GgwGZNZqS0Tva1wnWN2azdroo1068sAXAp30XU3wMU2L+9DRg
	EVq9fMFQjC4sbkq6lxWrQ2TYrIMZilX8LoEHJ26UrWTmiBopjYDwrdx/xEicju0htJi4
	OWPPvzZFTzB9Sd7bnd38DZduvRtBZPWp522seSPFY7BPvfClRsro3/spfvTH3IFSkg8t
	icm9a89ZpREXcAIwuobPwDT7T9hkD6BMy1XQ9HcHgWfNYxn+ZmpN7wVY5sBzfeUq7FzA
	9y6v4WyuAJeUld0hVysphRR3hkzcrgA/bVhh1GBhcJLOAX1DL8OlLdOUbRPOhwJLaxHM
	i6pA==
X-Gm-Message-State: AFeK/H0QBsMe0gNFLnMqIpIrDxRu468uWkLoS/A9HDjULBUCl54dERXjFWoUodsHZrTQv2e0
X-Received: by 10.107.55.137 with SMTP id e131mr6879266ioa.105.1490345062615; 
	Fri, 24 Mar 2017 01:44:22 -0700 (PDT)
Received: from pohly-mobl1 (p5DE8E2F9.dip0.t-ipconnect.de. [93.232.226.249])
	by smtp.gmail.com with ESMTPSA id r203sm692067itc.5.2017.03.24.01.44.20
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 24 Mar 2017 01:44:21 -0700 (PDT)
Message-ID: <1490345058.6396.258.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: Armin Kuster <akuster808@gmail.com>
Date: Fri, 24 Mar 2017 09:44:18 +0100
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: [meta-security] master-next rebased?
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
X-List-Received-Date: Fri, 24 Mar 2017 08:44:26 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hello Armin!

Did you accidentally rebase all of master-next?

The current master-next tip (3b9dd3688b6c725aa0146c91ee1a58c26095e48d)
isn't rooted in the current master
(8b38c93f2387793fb03d082e47723002cf667ae9) anymore:

$ git branch -r --contains origin/master-next 
  origin/master-next
$ git log --oneline origin/master..origin/master-next  | wc -l
179
$ git log --oneline origin/master  | wc -l
211

Looking at the content, it seems that only the last two commits in
master-next are actually new ;-}

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.




