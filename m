Return-Path: <bkauler@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28259E00B9D; Fri, 23 Jun 2017 16:25:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bkauler[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.195 listed in list.dnswl.org]
Received: from mail-ot0-f195.google.com (mail-ot0-f195.google.com
	[74.125.82.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8A1DE00B1B
	for <yocto@yoctoproject.org>; Fri, 23 Jun 2017 16:25:24 -0700 (PDT)
Received: by mail-ot0-f195.google.com with SMTP id p48so6333077otc.1
	for <yocto@yoctoproject.org>; Fri, 23 Jun 2017 16:25:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=J4VA1l7VjgwRmrpf0WWG8xEaTDndb1BYoLjC+NOAp3E=;
	b=l+An0okfae/QvIlZVXNqc3gAmFhZYlQFOiEZ8uhWqUzPtZcOmhwjccWLFZFoiCVJVy
	Bae20c+KQnQhuERYnPNmTuG7uK8Ytv8p8qx9Vls5kXwlcg3buEHdT/zo1lkiZdDqlMVP
	tpd+x3LJR+GChsOtYAdgCA0QzK7PBlws6+Us3ZH8+Ru0vxDbVNkKkOSt3dxgIE6SDd5W
	uG/b3qCtZcF4+/JQ9BDB/HkrHtNTstY70HvlOlXkdd/f7smNA/rAzlxAwJzXtU88RAIk
	pFcBI1dl7EnMTbzC+43VIl/k7FM1iGQwDlkMiQBzNnQjdI9+izON+B75jvrk4sBGnn8E
	MRGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=J4VA1l7VjgwRmrpf0WWG8xEaTDndb1BYoLjC+NOAp3E=;
	b=SpJWvD9apeCBnREnswSMRzVWpMlzmSPExHtj3jwZS5ZcHkH50Y7/vvfLwdsVemh73L
	jqYKNxBwhg3HfxQ6NJMrupcaqVoqhR2VnNJ1oqe5TuD31Twccm4EXGvL98xephqKxAFH
	me+5y5G9iAXgi132NJYlK4sE6kAS97yhddk8ksVd79JeWWlWQPbXYAEhARgiblZmA7X/
	cEnjtlNzZbtOp2xE+VfrzXQrm9FHj1hyPNBysvifqbYF+d0f2W9PDH2NSRtbqeE2jdOL
	PdNd4mPjA3sxBk5Y6kMfpi4Gd8hXLVX0gUo50w9cGBGDBEsYLICf6p2+36UxXpuRBidV
	RluA==
X-Gm-Message-State: AKS2vOwNtUSCcDYJlsJcLr9RoQ1ozxF9eDnFbGq2yw+3hQI8Jc9DgAsm
	wxcNYe1fJPt97BAZ/7X8e60+EaAGG6AM
X-Received: by 10.157.46.9 with SMTP id q9mr5301863otb.30.1498260323960; Fri,
	23 Jun 2017 16:25:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.202.86.208 with HTTP; Fri, 23 Jun 2017 16:25:23 -0700 (PDT)
From: Barry Kauler <bkauler@gmail.com>
Date: Sat, 24 Jun 2017 07:25:23 +0800
Message-ID: <CABWT5yhqqGFck7div0ROxgnwP17qT=bVbg7L1J9ZwS_DvGpyhA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: New meta-quirky layer imports 140 packages
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
X-List-Received-Date: Fri, 23 Jun 2017 23:25:26 -0000
Content-Type: text/plain; charset="UTF-8"

Hi guys,
I am new to OE, only been using it about two months. I undertook the
challenge of building the entire Puppy Linux and Quirky Linux distro
from source in OE.

I had to import approximately 140 packages, there are some failures.
Some of those I can probably revisit, as my ability with OE has been
slowly moving up the learning curve.

Thanks to the guys who created those layers that I was able to use,
such as meta-office and meta-browser -- so have libreoffice and
firefox in my build.

See my blog announcement:

http://barryk.org/news/?viewDetailed=00576

And it is all on github, with a nice readme:

https://github.com/bkauler/oe-qky-src

Due to the fact that I am still somewhere low on the OE learning
curve, if anyone notices anything dumb in my layer, let me know. Or
any improvements or fixes.

Regards,
Barry Kauler

