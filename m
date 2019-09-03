Return-Path: <bill@korgrd.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9DEC3E00E8D; Mon,  2 Sep 2019 21:59:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.181 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com
	[209.85.210.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38833E00E89
	for <yocto@yoctoproject.org>; Mon,  2 Sep 2019 21:59:00 -0700 (PDT)
Received: by mail-pf1-f181.google.com with SMTP id b24so10038844pfp.1
	for <yocto@yoctoproject.org>; Mon, 02 Sep 2019 21:59:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=korgrd-com.20150623.gappssmtp.com; s=20150623;
	h=from:content-transfer-encoding:mime-version:subject:message-id:date
	:to; bh=BZnuEKKhxyl5idJr5o7RnW9Gllb8YRmDlg2MXMGuy7g=;
	b=v5t1ji36T4Smc9b0j6P59vyUdEHCBs2Akk5sWJYZglX2LZhATBIRt/3zCGBMzfztw6
	SqP7EiVHfctyJsVFygnclXo0ulavVCjkICGCIKJlNSyem2C1pbtV3kr6P8bM/AxB2QJt
	qwyEhdzsOP4OJNqieWPkLXgqzYXXpRZuow4OszKQEiMvYpiCOT1QC1OAIN3T4y3C+1JJ
	b+6WZmo1LpRkoP4HJl1ADBjjgXiy+W99IwQ7Qt36d/BhjFoIke8ekyJ18qPEPKPN7XHS
	WJfKP1H4NsE3kU65CDaqB8O0ExJdcMu9JhFGy+AGo8xUCBNpeqZDAUTnGZc32umoMYXj
	EO7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:message-id:date:to;
	bh=BZnuEKKhxyl5idJr5o7RnW9Gllb8YRmDlg2MXMGuy7g=;
	b=iLlzn5I4vZ7mTjZbk8zTTltvqHRGNwiZn/yy+IhIU1ZhCSOp//ufZm3D5K0T1YSvyB
	VmFci6lcqTmlTSpNMV6o2R+Jj4SfuJ1F65I6IpqxoXgq7Mf/6ZLXsX3bwZvpd5ZI7Z0k
	rNjZXnsAvWS2Rd1JLjqBDrOwEd+PJKYITJNxqVfChHyKxuUG/0CPzWrylTZgeUcKcIoL
	XzEVg4Gv0LjAMgwLNIo6EC/+R/KIJZqgJdtNhJzgpavGCGiQEvn04Tthr0IZnwrHgmiQ
	YnPRssFp0Kdee7LN9wRX7iLd/7au7IjI65nQuPBrUUfP3xd6qdqhOeAW9y6gGovk0nV6
	EeXQ==
X-Gm-Message-State: APjAAAVqDw13+wRKp8RCUQMMNK/8QHbRZfxjEjh1vQNEhSZBukgJld8N
	ZVj1DQxJjTWtltN5M69PxQcPL1hGBCxF
X-Google-Smtp-Source: APXvYqyhgII9RibImtSJPA/gjl2hPrN3M49WCEt3+FtL4hRQKjx+UnnCKwP2cb9zp++N1Y3cQbFNLA==
X-Received: by 2002:a65:62c4:: with SMTP id m4mr27729466pgv.243.1567486740007; 
	Mon, 02 Sep 2019 21:59:00 -0700 (PDT)
Received: from ?IPv6:2601:644:8780:b9c:e14a:5b3a:2591:a330?
	([2601:644:8780:b9c:e14a:5b3a:2591:a330])
	by smtp.gmail.com with ESMTPSA id
	196sm8738504pfz.99.2019.09.02.21.58.59 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 02 Sep 2019 21:58:59 -0700 (PDT)
From: Bill Jenkins <bill@korgrd.com>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Message-Id: <854B9D7B-6D84-4B41-BCFC-A73323EB30A4@korgrd.com>
Date: Mon, 2 Sep 2019 21:58:58 -0700
To: yocto@yoctoproject.org
X-Mailer: Apple Mail (2.3445.104.11)
Subject: [meta-raspberrypi] Cannot see /dev/ttyS0 on CM3+ with 4.19.66 yocto build.
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
X-List-Received-Date: Tue, 03 Sep 2019 04:59:01 -0000
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable

The 4.14.112 yocto builds that we have been using show both /dev/ttyS0 =
and /dev/ttyAMA0=20
initialization strings in dmesg and both can be successfully used. After =
updating to the latest
to try out the 4.19.66 kernel, we see the initialization message for =
/dev/ttyAMA0 and can use
it, but there is no message for /dev/ttyS0 and we are unable to use that =
uart.

Is there anything that we need to change in our conf file or elsewhere =
when doing this update
in order to get both serial ports to work with the latest kernel?

Any help/info greatly appreciated!
~Bill=

