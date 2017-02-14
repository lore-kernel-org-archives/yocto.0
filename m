Return-Path: <eddie.cai.linux@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B3402E0097D; Mon, 13 Feb 2017 21:56:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (eddie.cai.linux[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.68 listed in dnsbl.sorbs.net]
Received: from mail-oi0-f68.google.com (mail-oi0-f68.google.com
	[209.85.218.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4DA47E0086E
	for <yocto@yoctoproject.org>; Mon, 13 Feb 2017 21:56:18 -0800 (PST)
Received: by mail-oi0-f68.google.com with SMTP id w144so1778124oiw.1
	for <yocto@yoctoproject.org>; Mon, 13 Feb 2017 21:56:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=Gu4n45GFD/i6JoGPN3XVoJcN4mUQv77eK/xn0dsOocs=;
	b=m/UIzgxusThCt7niPf2ne3yYxtwELZQYhM5SpgnQEEbBuj9KHIHuMrst8WdM6HitZ+
	IutA9tlJGQ8SlJgs9sgYaFvoDlxxdnzsS8E4GtASiVWNjC4csqX7pTSJnTFf1HF+NI6T
	OWZjkA7hHLD9zHg/3IX8lNOcU/p5l+S/V/PPy0efNY/03qNq1rDZgtKfN2L+zcYw6oNb
	NKiknSZtYEBiFBLWv/H26fqxuK1YhdbOctsP29dvnvkB0duNn250UE9G9WdC5vXlAT+V
	ppIisMq5/OVUvhbZfBT3iWLxs/x/sXshH9Hztq/qalJV2JEAByWOq8uycdMB/XHer6k3
	kYzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=Gu4n45GFD/i6JoGPN3XVoJcN4mUQv77eK/xn0dsOocs=;
	b=bkCm2EKkMTY7O9tMPbHmi6wzSVqk44rcvI5GIJYBXkidrNySwEle41Ix4z8rn+O44a
	w35VX7I7Wj0H48PMSlkwpzzr2tgKEVmauRMHXBiUHj/noRIcd+oPH3PPO0rQnnE7Up3t
	b3DgjmSgpXASmSxkH3idgtiGwrN3HbDR+/9G1DY3nBHdYD0CP8vn9TFhy/uXRiX2KMil
	7+Rz/Fe9t2K8+HTQNWVpAzy6l7vYC0N3SItRH92gR3wUQm+5ySCa3yy0QwScXlcUbJ8l
	vLiXE6AtVlc1KK7M56gc1Tz3EHTKccMRF06Ob+1bC7SjJ6Et+ozUihDUwStNduekFaJj
	aeJg==
X-Gm-Message-State: AMke39mZX+7gY+F62uSqNfl5JdD3szsM4gxes7aAAC23Tp5YCWn8kvQCZVnl+KYugxhX9Q==
X-Received: by 10.84.197.72 with SMTP id m66mr34157135pld.83.1487051778240;
	Mon, 13 Feb 2017 21:56:18 -0800 (PST)
Received: from localhost.localdomain ([103.29.142.67])
	by smtp.gmail.com with ESMTPSA id
	f188sm24158887pfa.35.2017.02.13.21.56.16
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 13 Feb 2017 21:56:17 -0800 (PST)
From: Eddie Cai <eddie.cai.linux@gmail.com>
To: romain.perier@gmail.com, twoerner@gmail.com, romain.perier@collabora.com
Date: Tue, 14 Feb 2017 13:54:20 +0800
Message-Id: <1487051666-20888-1-git-send-email-eddie.cai.linux@gmail.com>
X-Mailer: git-send-email 2.7.4
Cc: yocto@yoctoproject.org
Subject: [meta-rockchip][morty][PATHV2 0/6] add main line kernel support
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
X-List-Received-Date: Tue, 14 Feb 2017 05:56:19 -0000

This patch set add main line kernel support for meta-rockchip

Eddie Cai (6):
  machine: Use cortexa17hf-neon-vfpv4 as default tune for rk3288.inc
  machine: Use SOC specific assignements
  machine: separate rk3188 inc file from rk3066
  machine: Use SOC specific assignements
  machine: Use SOC specific assignements
  recipes-kernel: linux: Add mainline kernel

 conf/machine/include/rk3066.inc    |  3 ++-
 conf/machine/include/rk3188.inc    | 21 ++++++++++++++++++++-
 conf/machine/include/rk3288.inc    |  5 ++++-
 recipes-kernel/linux/linux_4.10.bb | 18 ++++++++++++++++++
 4 files changed, 44 insertions(+), 3 deletions(-)
 create mode 100644 recipes-kernel/linux/linux_4.10.bb

-- 
2.7.4


