Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2615E00D74; Thu,  8 Aug 2019 23:20:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.180 listed in list.dnswl.org]
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com
	[209.85.160.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1BB9E00CD7
	for <yocto@yoctoproject.org>; Thu,  8 Aug 2019 23:20:03 -0700 (PDT)
Received: by mail-qt1-f180.google.com with SMTP id k10so25663357qtq.1
	for <yocto@yoctoproject.org>; Thu, 08 Aug 2019 23:20:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=5hcWWa8lhGUdJlWGBPH3/W4zNqyQjwmPJJCC80Tyq64=;
	b=OB4FDZgqL+rcb3QhKy2p63tNkSUGDJrPTiQ1Hcfk4eex8Y1WjZW74mAXL4V2wXjJGm
	N9hB+u3rZBMAa0Gispnl1izndr/CXRvpCfgBREkIC10rWc8eHnFA5QhlSfgxJc8pZofg
	ncHyD+6K/J5l7EmVcUAc/esmaOVgju/Gv3Jxn6ZWZFVFIjL8jVq+7u1JeeZ+oZ3eLKTT
	Kcr4LpD0PWEWXn3WnhLlWs2jZFSGmRhzIcyRpPq3d8jWJkQXQn6J5g7g5tAidSCuFhYV
	RYTa7qhj9sJodv/eAeveIjPvHJ8SfDiYREkg1ixKrh42I7zsXLv5KnKGbHr9/PujMOHM
	ak8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=5hcWWa8lhGUdJlWGBPH3/W4zNqyQjwmPJJCC80Tyq64=;
	b=P9cMTVmBtqe5xYIGMhe6lQJCzGIRHqQWxLKHUw1P+moqLHH2oYFzkzcsINS0HHDR1j
	1EplAiLnz01ouquTON4LLiSKM8QatOAFng4fHuAn4CvhDDe2+DQG8q9MydP0mwGIMfLz
	jlwIkfL5smhHWWliwNqc2U3TFYbVJGFtYdRBZn/PGJ2Od9sTt5MSRgH9GXKzujz1KDZS
	Sr2MwjncnEd8hhHwM9Mn72q7ZjPZOBZ1ZP6wbNUrhVo75cjsyZa96tjJepdtcxXK519+
	Ehmx4Vzp5zIfkFlAmG2PO4bQ7vcWYYvq3aiTBBCiBPuX86NnlUJRl+sTKRFimFVLdEeR
	GCYg==
X-Gm-Message-State: APjAAAXCXnHl4npuilR/TyDN8QIEbd5DTxvQY9JJPlXxNJ4RKKhLvYde
	PIpa7sxZCkyM1qY6BdtcbqCq9koQjyfzfE/yVjZIwAy53bs=
X-Google-Smtp-Source: APXvYqxrUBNtbhH5mchXGiOBelPgJHOLnatZ5+YUAVqE9If7EaF0n0a0bEsl6Tx2oOz8fjJlMOLmGjaLwqoQWzkX1RM=
X-Received: by 2002:ac8:72cc:: with SMTP id o12mr10087987qtp.328.1565331602652;
	Thu, 08 Aug 2019 23:20:02 -0700 (PDT)
MIME-Version: 1.0
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Fri, 9 Aug 2019 08:19:51 +0200
Message-ID: <CAGAf8LxnLncDewt_k1SUP-H6313ubeNRRW0cqp-gawJ_xsrgaw@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Yocto repos for NXP referent platform MCIMXABASEV1 also called SABRE platform?
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
X-List-Received-Date: Fri, 09 Aug 2019 06:20:05 -0000
Content-Type: text/plain; charset="UTF-8"

Hello to all,

I am trying to find out some recent yocto repo, which contains YOCTO
reference repo for the following NXP board:
MCIMXABASEV1 also called SABRE platform.

Here is one repo I found reading this document... But this is too outdated!

http://events17.linuxfoundation.org/sites/events/files/slides/AGLAMM_How%20we%20Run%20AGL%20on%20i.MX%20processors_tkobayashi_25FEB16%20rev.D.pdf

Does anybody have some other repos/suggestions in mind for such a
board? Please, come forward if yes...

Thank you,
Zoran
_______

