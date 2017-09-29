Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3CD38E00D63; Thu, 28 Sep 2017 21:26:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f172.google.com (mail-pf0-f172.google.com
	[209.85.192.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE375E00D55
	for <yocto@yoctoproject.org>; Thu, 28 Sep 2017 21:26:46 -0700 (PDT)
Received: by mail-pf0-f172.google.com with SMTP id m63so123502pfk.7
	for <yocto@yoctoproject.org>; Thu, 28 Sep 2017 21:26:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=56XM5MDGr7HPU2PeEXTrFscO/uGG0DcNMAm6fBEvkcU=;
	b=nIfMz0/ic9/gfAxU50IN/GKEmIkd1LZgXiqXcf/49a/2GhSwniNEdTfTV3guO/AYWi
	acAaosSUX4U02MpimniuvOhL17BOUx3SgvHKTw9R1QmA4iiGyOmAggW9sqNDmL6KnzyV
	oswwd8mmxanxXnCZdWnMNQvDZ8+fahHU22G+iuLwipUxOMd7Y0Rk9LU2GO8Ue5SwGmWZ
	FK3NBwnCvQUNU7kvBaZOU4JsxTLbsp9ruzb0RWiyeh8YnKrNFyigU80qn4rKems1Vv1B
	5oTX3f7uQewBq7dYPNAFQ0Xh5LIQnKAlo3/Q2kf+aaR9jNTH0kKgkavSbDYQypwZARpQ
	3uqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=56XM5MDGr7HPU2PeEXTrFscO/uGG0DcNMAm6fBEvkcU=;
	b=sZt5zmGIjVqwjO8JQAdjTsrQq/P5aWTKcxtipCQL77vUAsyUxEMn77xuW+NMzYb4us
	tzz4AM3AFZFSu6EGpUEYQ38pyaakcbspcR46GAgS8bDW4FARh/d7B0WU2WHCYkTT7FtR
	Ux7JYt9hs6C9xi2G2ffx4W9jOeFnL9/o6WCBobd2DLNZ625xElRuRRlxyWoQVdQMQ/VR
	wG0unirHg1CUxGKD+hVe1iZ63RrQDAAik5rQ5LNDMzDlpPz77WSwdrVqdvIJg4MY7y7I
	YablCkzm8KJw6G9YAyhMT1y/fwJUJYpNn1P9JStGK9CwZExwfKZ4Q6T81hwjGK7MfI8b
	2xNw==
X-Gm-Message-State: AHPjjUjTV9aUaA4AdbWHo0FLXTi4L37+PFgvUUFX7wzI+OjlzuCgHAlW
	pyoCvgaBuD/tdd7iNwwVqFOjIw==
X-Google-Smtp-Source: AOwi7QAyuKVWHyTDHXQkRksu+kQHlGUDhs2AyJ+aigKAX4oBLCZjxej+ueNN6JC6uu5Kz5Mby7tTVA==
X-Received: by 10.101.78.130 with SMTP id b2mr1629166pgs.160.1506659206272;
	Thu, 28 Sep 2017 21:26:46 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.mvista.com
	([2601:202:4001:9ea0:c06:a05b:fc56:fd72])
	by smtp.gmail.com with ESMTPSA id
	r66sm5060330pfl.15.2017.09.28.21.26.45
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 28 Sep 2017 21:26:45 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Thu, 28 Sep 2017 21:26:33 -0700
Message-Id: <1506659201-21501-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: Adding security audit tools
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
X-List-Received-Date: Fri, 29 Sep 2017 04:26:47 -0000

Lynis and openscap are both compliance tools. This provides the basic framework.
The os-release and oe-release recipes will be moved and really belong in a distro
or other solution layer, IMHO.
I have not figured out the companion layer yet. This makes it useable.

[meta-security][PATCH 1/8] meta-security-compliance: add new layer
[meta-security][PATCH 2/8] lynis: add auditing tool
[meta-security][PATCH 3/8] openscap: add package
[meta-security][PATCH 4/8] openscap: add scap-security-guide
[meta-security][PATCH 5/8] openscap: add dameon
[meta-security][PATCH 6/8] openscap: Add oe specific files
[meta-security][PATCH 7/8] os-release: needed by openscap
[meta-security][PATCH 8/8] oe-release: add oe-release file for

