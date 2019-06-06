Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 94088E00D83; Thu,  6 Jun 2019 04:09:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jupiter.hce[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.45 listed in list.dnswl.org]
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com
	[209.85.166.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46B67E00D79
	for <yocto@yoctoproject.org>; Thu,  6 Jun 2019 04:09:22 -0700 (PDT)
Received: by mail-io1-f45.google.com with SMTP id e3so1439346ioc.12
	for <yocto@yoctoproject.org>; Thu, 06 Jun 2019 04:09:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=MAblYNAgSC+3Zeo4aPLJNc9IIOZBHzkcf8OPW5OexUs=;
	b=QSA7A8yViDrh0Vl1WxfY+xYXNp9GKeHtqluA4NAzsDSBESe2gRwddxQ12EY+yzWvxH
	TvmlY77LTJOCo8VaCsx6A6SDMw+OpQr53LkOs8p5CLnfWs+4L3CvGmFa+CMNqkXTMIub
	a9EXGANLgXTAgnSLFmOCxLRb3ClRe43PAQe4FNW25IxIYbaD/H7bVVZwvRMcMKpOnpge
	Hvo17WzB/kS+PR4XhYvmos2QNFEq4jeayXAM55m3CERsu8KAqGpPbmKe/dRDyJIbIEwA
	z3PrTAhwV2q8cRb2/lUsZjG/amo7feFxRvXpC9PXP1hKERWghfs0xN5WDoym12sH6naN
	rdjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=MAblYNAgSC+3Zeo4aPLJNc9IIOZBHzkcf8OPW5OexUs=;
	b=uk8Bn4VCBi+laAJPHhY6KUma5Q3LTuBZEK4hkKKVfzEKHYVnX/6iutbwCRisz3Yqre
	cLOO/LfpZ5MMMTwyTfqqlXTYjY1lls/0oGmdjnxPzHvQa8cMIFvCxSznqiXJxh0N8M3z
	G0DC/CDZa/k8faahTCUsislS28E8o1dwj4KlBVPkBjmmdfkx4R2oCzCB4b7z3kUeauga
	ewK1PvbbWg//DIunvRLKhNDnlMLRj5G7wMmWWHFkr1HUCwYt2cJ2m9eDmZWg7HhHyiFP
	NWlk3uUAiylYliQPafu5U7ViyeCFvCFrnzqKf4iK2JY8r87WMIHVoscUaW3YMBPUW7A2
	ruuw==
X-Gm-Message-State: APjAAAVktxu5p5E85y3EcvTnotCLkCVFik6ERiRa0kUrUAFctudaEC57
	pyYibUb2vZXGioZZ8DffyjZlwmJ31/upzrGhw9+cz2uL
X-Google-Smtp-Source: APXvYqyXz5IKU7SgO1FGutWy5lkp4axyZ0pLXjUHV4BA3dgYK95vd6sAR+12TgMP4c0t9JutmYSR7JyND6DNyuhkrCE=
X-Received: by 2002:a5e:db02:: with SMTP id q2mr7732574iop.306.1559819361500; 
	Thu, 06 Jun 2019 04:09:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:92cf:0:0:0:0:0 with HTTP;
	Thu, 6 Jun 2019 04:09:21 -0700 (PDT)
From: JH <jupiter.hce@gmail.com>
Date: Thu, 6 Jun 2019 21:09:21 +1000
Message-ID: <CAA=hcWSh9-DaYwFED5UpT_h1C0H22HG76LVd3d+aL4V+LBQQBA@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Support NAND flash
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
X-List-Received-Date: Thu, 06 Jun 2019 11:09:22 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

Has anyone used NAND? Does the MTD already support the NAND driver or
do you have to work our the detailed driver yourself? Could you share
your experiences how to build the image and to hand and access the
NAND if it is required?

Thank you.

Kind regards,

- JH

