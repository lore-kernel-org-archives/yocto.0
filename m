Return-Path: <apetroaiecristeamihaela@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 64D88E016B0; Tue,  5 Jun 2018 07:33:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (apetroaiecristeamihaela[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f174.google.com (mail-wr0-f174.google.com
	[209.85.128.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 170D0E016AA
	for <yocto@yoctoproject.org>; Tue,  5 Jun 2018 07:33:03 -0700 (PDT)
Received: by mail-wr0-f174.google.com with SMTP id y15-v6so2674174wrg.11
	for <yocto@yoctoproject.org>; Tue, 05 Jun 2018 07:33:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:content-transfer-encoding:mime-version:subject:message-id:date
	:to; bh=6h6pScVKqjEhdz2eSoM4bIielpY1N8/qiYuqHAE0Cj4=;
	b=fUhl8F5ZFts+rptdEzwPA0oZjkF1HgGeNDyrVGgH2URBhDoI/uKwzG8JX0X6gcJm8I
	TUlqiJ6kVnAvYY9RkbvqIHXAgZk/IDC5ITqtWzGpVXgemwwbO6qjiEwYVD+wp/H9zN64
	1RYF+JOQIMjRMTMRoI2U2MQTwlsSUBQsEOddFiubmrCRvJ/s40S9h9fQceS03QMwx4Y9
	RvLdO1nqJRUu9fPhkqDiLG0+1FpHQXDJRLfAtKL8CC3Fdac110Qmvd/pqtVwcCnhPs6k
	48y47Q+NJkuFtMS68qPRX6JickIgl3zSoJDHOkEP8svlOuAz7IE200um1cj9ypkEwUAf
	Josw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:message-id:date:to;
	bh=6h6pScVKqjEhdz2eSoM4bIielpY1N8/qiYuqHAE0Cj4=;
	b=iiQhjQ8GMxu7RQVcg5kvID30hy0Np0ayH3PN+YoWCiJ0va7871paGS/GIsWCu4XSNw
	WiSRZ5ZM40oTgkQ+umkAvl8WUQaWYJ9FaGmU9Qg3Xj8nd66v37fJrbTsQ4UjmfAOnsnA
	jLJ6V4lpl8SeP97XRZnl5yw5HlDhOiOpNN0ZbgV0OocI1OGPUh5H2q59mRhcwpi38r8+
	UJKS99KYa5pBuRiFe4ATa2tWWeOCwhReXT+xVSojtP0Hj8kQaYxDKnAKjA9RsUtO5JBH
	tPwfyLn+Wmj46ZRMuHFUXdB1VJjCb7Hz1uCVPEnZhM3VlyR3x9JW1bqvSbhbHMgiumUw
	mBgg==
X-Gm-Message-State: ALKqPwfrvppe34UbJy1sJFvLFg7WX4HwAIP7ZY+SrcEhQbfvUpozEpbL
	FI957lGLkl0cbXAjwvsQqwxzlTC5
X-Google-Smtp-Source: ADUXVKLvEiE4SUuEHz9yfBnTfdCUodwGiDOiJZv7hYBHKGYhRVKIYfvxcphnp0d+iowU16NsaBiIAw==
X-Received: by 2002:adf:ab96:: with SMTP id
	s22-v6mr17358422wrc.90.1528209182625; 
	Tue, 05 Jun 2018 07:33:02 -0700 (PDT)
Received: from uos-147711.clients.soton.ac.uk (boldrewood.soton.ac.uk.
	[152.78.0.15]) by smtp.gmail.com with ESMTPSA id
	203-v6sm2081633wmp.23.2018.06.05.07.33.01
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 05 Jun 2018 07:33:01 -0700 (PDT)
From: Mihaela Apetroaie-Cristea <apetroaiecristeamihaela@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 11.2 \(3445.5.20\))
Message-Id: <443D9650-0A26-433A-AC22-F61DBFDE1221@gmail.com>
Date: Tue, 5 Jun 2018 15:33:00 +0100
To: yocto@yoctoproject.org
X-Mailer: Apple Mail (2.3445.5.20)
Subject: partitions resizing on the fly
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
X-List-Received-Date: Tue, 05 Jun 2018 14:33:05 -0000
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hello,=20

I have a minimal yocto OS built for RPI, which has three partitions: =
boot, root and data. Is there any way to resize root and data such that =
root expands/flattens when files and others are added/deleted? Such that =
I can make more space for the data partition. At the moment my =
partitions are built with minimal size and I expand them with gparted =
after I added them on the sd card. But if I put my device somewhere =
unreachable it would be very useful to have a way to expand and flatten =
portions on the fly.

Thank you,
Mihaela=

