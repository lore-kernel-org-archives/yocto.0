Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9AB13E00AC5; Mon, 30 Jul 2018 06:28:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f182.google.com (mail-qt0-f182.google.com
	[209.85.216.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75D13E008CA
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2018 06:28:34 -0700 (PDT)
Received: by mail-qt0-f182.google.com with SMTP id a5-v6so12010197qtp.2
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2018 06:28:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=jlgCuhYrEN/6FG5weealUTliCG0qqpyG+W5IJHyQNcQ=;
	b=gAzCtM1JLiuPP3jhrqD1kGhH3obk8X3uh2FrtEK41PvCzavh7N+7PcQXVM3y009+HK
	tN2Z7cQYKejAaEgQ+HuzGM61iv+RkvBOzBnqywWMmMoeXjxhwf1//XsEOWXr8PVSvlOv
	1L8XihpF0Ynqn0zYVAUU4LptF+EN9hWyTyrPYkUB20dKU0A9jE18Lc/6HtpEoH1gb1g6
	yvjIIRMKofuGE4fmKrqzvqWGFovJs10IG89gpCQvFJZ8uiz75UO7gZj4fukLf0nvvw7Q
	Lheu4YQOH6IkZdH2Hvf5L589VLfRYd1n4mIDsx+uRhnnojXh0T4um60nmfAAFvI7lW2I
	XF+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=jlgCuhYrEN/6FG5weealUTliCG0qqpyG+W5IJHyQNcQ=;
	b=IGfbmnq4H3UAgzyIYNvrOqfMQzo5sSolKTnxkyNc0fUOb3cDYKysW2laR/T/Xkyv2w
	7FMcto+ADo9tbk8OYvRNpGM1I2ZpBDKl79MDF48MstKot4hLAqit0lbzo4mzM6kU9qzH
	ai31Dz4ZvmRaHSJ43W0sHaWkLovYlRDuwPfKZuYXGfcP8cZo1mniQhJI8+aHxhFQAuib
	H6KnTuMUfdlu8J+k6Xuo/8g9ja8G3Hd8CNkGMUGUPp3DxqmYB63Dk1z5m1xTEZXDdtWB
	hGO4R92dJI3gobx7+BeZBtdwEAe0x6rf6f7fwFWsGedyHbjAX16FRjJsX080V3Ln8jCf
	2bvQ==
X-Gm-Message-State: AOUpUlG+xR+cNE28QHSx9pxigLYsYuWW9gYabuReeRsSP6WKrh44U57T
	qil6+dRgVU5WceOp8MjoJfo9CYAoV+L7j849BFmrpB3cF8E=
X-Google-Smtp-Source: AAOMgpdpDUXiAtmS9JKFqOJPamOROhjr2kN8Bd3S/yuhGMT3EuyKSKuDbMQ8syKUh/DRgFDl2VDaGuQgzYurkKxIqjI=
X-Received: by 2002:a0c:f5d3:: with SMTP id
	q19-v6mr15347486qvm.213.1532957313608; 
	Mon, 30 Jul 2018 06:28:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:ad5d:0:0:0:0:0 with HTTP; Mon, 30 Jul 2018 06:28:32
	-0700 (PDT)
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Mon, 30 Jul 2018 15:28:32 +0200
Message-ID: <CAGAf8Lxu7WfXCrqAF4=XyCOXr3c828Rc+XgUi=jG8_rRNhREAg@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: What are the differences among libconfig8-dev, libconfig-dev and libconfig???
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
X-List-Received-Date: Mon, 30 Jul 2018 13:28:35 -0000
Content-Type: text/plain; charset="UTF-8"

Anybody knows?

Do all three exist in YOCTO as different libraries, or these are
variations/the same as libconfig?

Thank you,
Zoran

