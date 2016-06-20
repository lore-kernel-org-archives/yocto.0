Return-Path: <mhalstead@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 129FEE008BC; Mon, 20 Jun 2016 10:47:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f178.google.com (mail-pf0-f178.google.com
	[209.85.192.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96856E00815
	for <yocto@yoctoproject.org>; Mon, 20 Jun 2016 10:47:24 -0700 (PDT)
Received: by mail-pf0-f178.google.com with SMTP id t190so56231353pfb.3
	for <yocto@yoctoproject.org>; Mon, 20 Jun 2016 10:47:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=to:from:subject:cc:message-id:date:user-agent:mime-version
	:content-transfer-encoding;
	bh=+X6O1zGSio43Wm2gSwb6lHeU0Z8ZARXFUmUJsdW4cMg=;
	b=iNrknTAkyOZmU4n8Ol8UgWtMuMiESxt34ANs/8MLlfllJu8vyJK7BVObju+whtppai
	xDsh2BBhNRo73EjC0HJ9K3hKf6kz8myYjSfY5jDCDksamIUCJdkn0Q2hU531tLsiJ2jm
	SIlNRyLZ/2CnRxuKXO7oTIXeiJYyHsv7PHJ2Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:to:from:subject:cc:message-id:date:user-agent
	:mime-version:content-transfer-encoding;
	bh=+X6O1zGSio43Wm2gSwb6lHeU0Z8ZARXFUmUJsdW4cMg=;
	b=hug7o1G2Cjrb3LWm6fzkQD8dS0vhQtuQdsZjROrSWKKl+yMPoLcWnqYMulNE3+mAOA
	SPBY2X1RG6b2mNcdpQeKNE57Wcw6byUB235DlbHbI2ihHBuZOzdxDmqWaMF77T8N9cOM
	oiQJR4mlbPhiPJFN9d0R4H5DFWrEM39UndC7o0ruT2OOSH4UBZCwIjO6vmwsR+CrAeEH
	WWUOr2dgau7FJbPhqpbb4/wNllmlkuyc0yc6siVvi28RpWAeuwICRfpLGuB0VxrDFSX7
	ElYq1AOL1mSXVvFfjk6I5zGP3ad/OarQ1Z8b8KDUqAxRHgDxIxfzpvKBcAy70Wes4z4W
	Fcpg==
X-Gm-Message-State: ALyK8tJCPBtyoxhU+5Y+dUN1rpB6rMGQq9WMihu5ow/cRaWWs6MaFI/raRFxPRXAagOLPA/Q
X-Received: by 10.98.93.65 with SMTP id r62mr22693252pfb.114.1466444837911;
	Mon, 20 Jun 2016 10:47:17 -0700 (PDT)
Received: from yct-desktop.lan ([2001:470:b:16e:222:4dff:fe50:c906])
	by smtp.gmail.com with ESMTPSA id da2sm6863331pad.3.2016.06.20.10.47.16
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 20 Jun 2016 10:47:16 -0700 (PDT)
To: bitbake-devel@lists.openembedded.org,
	Openembedded-core@lists.openembedded.org,
	Openembedded-devel@lists.openembedded.org, yocto@yoctoproject.org
From: Michael Halstead <mhalstead@linuxfoundation.org>
Message-ID: <13986bd3-af12-4768-0a4c-78447c33c8b6@linuxfoundation.org>
Date: Mon, 20 Jun 2016 10:47:16 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.1.1
MIME-Version: 1.0
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: Patchwork users: Help test new version
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
X-List-Received-Date: Mon, 20 Jun 2016 17:47:25 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hello,

OpenEmbedded is nearly ready to upgrade to a new version of Patchwork.
The new version offers several new features that will allow OpenEmbedded
to improve developer workflow and automated checks on incoming patches.

If you are a Patchwork user please visit
https://patchwork-next.openembedded.org/ and take a look. If you find
anything amiss please e-mail me directly and include patchwork in the
subject line.

Thank you for your help upgrading this important system!

-- 
Michael Halstead
Linux Foundation / SysAdmin

