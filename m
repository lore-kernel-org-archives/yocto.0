Return-Path: <stevep@korgrd.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC1EEE00942; Tue, 15 May 2018 12:12:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f182.google.com (mail-yw0-f182.google.com
	[209.85.161.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67E2EE0044F
	for <yocto@yoctoproject.org>; Tue, 15 May 2018 12:12:43 -0700 (PDT)
Received: by mail-yw0-f182.google.com with SMTP id x27-v6so419051ywj.1
	for <yocto@yoctoproject.org>; Tue, 15 May 2018 12:12:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=korgrd-com.20150623.gappssmtp.com; s=20150623;
	h=from:content-transfer-encoding:mime-version:date:subject:message-id
	:to; bh=3MnX1/aTimOvyF/nzSXPITtEZI2d/qp+d7DD0OvCo6o=;
	b=Es5GW5ct3ZGkE56V86ggfkYlE4EMz1byyQ4WA7R0j5niSESnzXpC/gJwlg9mSSkMef
	1MpmwNQRm1JYlOBaysXLgf5YSAPBrd2yG81UM2PcwEVPaIu3Q+Y0+/bZc0ABJ6KPK+BW
	3yZ+OJfxvikUlrZCkAMygDaTJq0+lG9kZ5UH36wLtqSYN4TSSUb4DfzGwLiEEPSGEU1c
	VjIvhe0kNcDgquZJMet7ptbjlyiDjM9m05z+d4QKm332wwbFUGkdVyiNvzIyUIr+76wo
	fNC3BbApx1mskRxJ7pbSXunPbpzSeOXbCJbkuWzB9GIMDhWDDURSf/YtQKyyvnVsYH2f
	9bhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version:date
	:subject:message-id:to;
	bh=3MnX1/aTimOvyF/nzSXPITtEZI2d/qp+d7DD0OvCo6o=;
	b=S1wn+RzN5KUBFor3Ty9t/SXOj2jnxfblzCQnKZ/snoVhcZbDKrET6EY4YAUDIFfwXq
	lTTNjlXVn3RlxwFMZjJzAPHqHaL4qNkEjmB4WGNtDXn9L3FKWpI6qPdxFjFnqFVilNKy
	IJswTPrsHV1zgh3PzJr/5WWU+8FYZQ8Jz+sV6dpGOFFEc0Nb14GKD8XFDdyybe1dZ82a
	IqR+HH3/BEYzAF60mCt+yJUvtwFfVFJiSfZfXXUibjwmqpTwkxxfRfMaXCvNJZnIk0dx
	orrXKcuAIUf8PuFwfQan1U1XGNcdXmF2hxyj9iiw5L2WCDDrvOxh26G6RDiSY4IpXgxq
	hGMQ==
X-Gm-Message-State: ALKqPwdWWBqsqSh5Z9c9c2NAtSZGf3vMb12LbSjBBfAWB2WvLbIiUfdo
	Af5+QYiAdJoIMfPAoycrBmTd7umfH84=
X-Google-Smtp-Source: AB8JxZpAHEX6bgqghQSLD/Xck8LuHRr2iX9rCyvFxOJVbzKK1pVXpOv5njDIJbBl+nAIsScjE7Jj/Q==
X-Received: by 2002:a0d:c586:: with SMTP id
	h128-v6mr7215962ywd.208.1526411562920; 
	Tue, 15 May 2018 12:12:42 -0700 (PDT)
Received: from [192.168.1.2] (68-112-255-18.dhcp.oxfr.ma.charter.com.
	[68.112.255.18]) by smtp.gmail.com with ESMTPSA id
	h1-v6sm279609ywj.86.2018.05.15.12.12.41
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 15 May 2018 12:12:41 -0700 (PDT)
From: Steve Pavao <stevep@korgrd.com>
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Date: Tue, 15 May 2018 15:12:40 -0400
Message-Id: <777993E7-C6B3-44E5-A1AE-26C8A56A2100@korgrd.com>
To: yocto@yoctoproject.org
X-Mailer: Apple Mail (2.3273)
Subject: -c populate_sdk question
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
X-List-Received-Date: Tue, 15 May 2018 19:12:45 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello,

Is there an easy way to exclude a section of my local conf when I am =
building with -c populate_sdk option?

Long story short, I have some multilib-related entries in my local.conf =
which I need when building only the OS image, but which cause errors =
when building the SDK.

It=E2=80=99s be easiest if I could put a conditional around the =
multilib-related entries in my local.conf.  Then when I build with the =
-c populate_sdk option, they would be excluded from that build.

I noticed there are many SDK* variables in the Bitbake system, but I=E2=80=
=99m not so sure what are the best one/ones to use for my purpose, and =
what is the recommended syntax to achieve this conditional exclusion in =
my local.conf.

Thanks in advance for any ideas.

- Steve Pavao
Korg R&D


