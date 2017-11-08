Return-Path: <ranshalit@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B5F4EE00D51; Wed,  8 Nov 2017 11:16:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ranshalit[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f52.google.com (mail-wm0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 275A8E00D4D
	for <yocto@yoctoproject.org>; Wed,  8 Nov 2017 11:16:37 -0800 (PST)
Received: by mail-wm0-f52.google.com with SMTP id b189so12495453wmd.4
	for <yocto@yoctoproject.org>; Wed, 08 Nov 2017 11:16:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=Yp1n+IeTbrN3e4qoePyAwNJ7L929MyWV2CG2ZIp5wO4=;
	b=Wag6bA+uKB4xbrrTGfIBJFrc4pBnx6avNg8XnllsRz67OPL5U1JvyRqcraM6k4NXJ6
	G2Gq6YOH/XJzvxlx85yIH8z1ODWq9oLFvJEXtpyboyHU9xZ2pSzr5DitvfQ2KTiF3e44
	oZaySx2KpDneMCe/MKjN7ig0zj4xYj2LUxLq74K+RyIbZYKcxG+unnzHq9QVN6X7Cb0S
	WmAPdeXB4ThLJFBvWzgUtrDyV9Hg0okyBx+HgbE3ZkxprwFiWbl8TimiIg/kNco8gOr1
	fygsR3F3rKQZBpFFOyqprBp7uBZGj9ohmFvoFYEmQYcgrUUELIWY444Yu2bFjm6y6BK+
	11fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Yp1n+IeTbrN3e4qoePyAwNJ7L929MyWV2CG2ZIp5wO4=;
	b=l2cr4TPKu+J+Abx3Awn40EaYhU8ZWgcY5G31v6vIbRp1tsj+GJS+Ei6hBKOXxMy+9I
	3IT37Hnjekf+z38GYQHtdJwwhg9wsb4T9UjonGt7MhaB3S2T5igxtuQeEOHs3eQ3x4eO
	zH1u/HoqgdhGpRKMtZcoPa5lbHFnipXRqAHCbRPv3EREcEhFZxyGJhGYmAYxYloZfWej
	0o/TH/N7wKlYiClTiCRY3hiv8dNjVDH8NE/D2FIs5+6AopeAk2IDmkAkdalmO7K8y39/
	GEJUHQhLCdd7t9G5LHeQzBGbYKYzNVLrNnbUruJV91sehCIYzgiW+E8K0RLpIQtuVM1S
	vIrA==
X-Gm-Message-State: AJaThX5KyMV4SQLOZdp43w6yd2AfudN6DrHcYIyHgISaVG+ZImLTSQ3N
	cTcvffmsrf2rYQf2jpsfwob3J2fuYNqocCJXmFM=
X-Google-Smtp-Source: ABhQp+QllMAk55C9/jROPSQoY0W06oR+Kg1NL8EsosrCTGoVcL2TtB45XNN1YeBEdMip510upMfKguXlJIfjbvG4LCw=
X-Received: by 10.80.243.21 with SMTP id p21mr1984369edm.38.1510168596580;
	Wed, 08 Nov 2017 11:16:36 -0800 (PST)
MIME-Version: 1.0
Received: by 10.80.137.18 with HTTP; Wed, 8 Nov 2017 11:16:35 -0800 (PST)
From: Ran Shalit <ranshalit@gmail.com>
Date: Wed, 8 Nov 2017 21:16:35 +0200
Message-ID: <CAJ2oMhLQJGBZZW8uCG5C9HJDFU7=LiLB9f28Sv6D1Cm+wFiPWg@mail.gmail.com>
To: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: apt-get
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
X-List-Received-Date: Wed, 08 Nov 2017 19:16:38 -0000
Content-Type: text/plain; charset="UTF-8"

Hello,

Is there a way to add "apt-get" command (and package manager) in yocto ?

Thank you,
Ran

