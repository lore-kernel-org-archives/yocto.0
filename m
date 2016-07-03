Return-Path: <balazovic.peter@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0201EE004F1; Sun,  3 Jul 2016 01:43:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (balazovic.peter[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f47.google.com (mail-lf0-f47.google.com
	[209.85.215.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1B14E0045E
	for <yocto@yoctoproject.org>; Sun,  3 Jul 2016 01:43:45 -0700 (PDT)
Received: by mail-lf0-f47.google.com with SMTP id h129so100831639lfh.1
	for <yocto@yoctoproject.org>; Sun, 03 Jul 2016 01:43:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=f8QzRaaHhleSat7qvxwxkenRgBbKdy0JWCanHUGzmjs=;
	b=bg4Lzagi/SoMYbA2Ylmo02HEvN5ImvlvmHK2JXYVbJ30XryQBcCPJGNR1Y6LoKZu9H
	EhcO+3GEjaH+g6nYqP9/iLs2w6SwK3cdMSdksk0avjUkFqh4GBJbTLWuFcAhjfxqT50R
	OG1Lfr5IAqKUVT2UjFUTPmvHl1e+0REzSdsY7rqe/bBsvKTERy9XyS3zfnrz4Yc3YpEc
	owlRyB+0hyCIHEjSkBsHfbW1xCF7733+uhXVgAhwgV/7KrCQ2CQ9BnDLiCPDCdyxsrzn
	04lUoK5eWFakMZBHqFv3qEoIW2nPeqKirSf/1OKob0t3VI8loNq179LKLhDYDFrtPjJK
	q8TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=f8QzRaaHhleSat7qvxwxkenRgBbKdy0JWCanHUGzmjs=;
	b=PBxeRMp9b4k2M+FgTPPxHkN+wOPA65SiLoO+TKna13yarBNARVETqjSz70SaQKKAYe
	hjGLKF4dxqYDzV73AhPKHTh0mHLdv4tgASl47vdCuwZFIkv2DNBXY1gXF6PKjm+9s78C
	kww1O7c2KP0l3o30KgFnU4PqMCRY19Bek8OCKAna9JVr24JBY/zog2MZUoDYTb1am8N+
	KXS2DHKmLFaMsxLDe8G/5ZH5rVr4FfhyxV1RWLT4Gs5gHM+pMFg+44Ep4h13nC+zN095
	h7tvMJGofwVeLq0tXL4p/10NzzVds1r0X7f4BOmV0IU4Xd7i/3/5lADpJ3dBlP+18Tih
	puoA==
X-Gm-Message-State: ALyK8tL9zGAGE5okog7VSjAERckiW5wIWe+3SnkI54Xcnv/JGvBduxOtJiGRDSR6th2OmIZewQBO9fa+Z2ffDw==
X-Received: by 10.46.5.84 with SMTP id 81mr1495398ljf.65.1467535423188; Sun,
	03 Jul 2016 01:43:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.21.101 with HTTP; Sun, 3 Jul 2016 01:43:42 -0700 (PDT)
From: Peter Balazovic <balazovic.peter@gmail.com>
Date: Sun, 3 Jul 2016 10:43:42 +0200
Message-ID: <CAFq4t4g2pSpv=cC8zkRbGABUVaPKnEYRkK_-4ABjkFziOf+pLg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: USB cam - video device numbering
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
X-List-Received-Date: Sun, 03 Jul 2016 08:43:50 -0000
Content-Type: text/plain; charset=UTF-8

Dears,

I have a driver patch for deserializer (MIPI interface cams) which
overwrites /dev/video0 but this is the usual device assigned to the
usb camera via UVC driver. I want both drivers coexist so I want to
change: example, USB camera being /dev/video5 and not video0.

Can I get advice where should I look at and what to change?

Thanks.

