Return-Path: <rcagley@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 361A8E00A31; Thu, 13 Aug 2015 13:56:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (rcagley[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17A5BE00767
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 13:56:23 -0700 (PDT)
Received: by iodb91 with SMTP id b91so65188604iod.1
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 13:56:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=G7SPq8DXOIGK+921+X6Bns3bOpM2xw2DGgIEDpxoRlg=;
	b=tWJxAZMGBmKB4Y/3AXqs/WVcH8bQrsXpxN5pa4PfzEiRBqbMCofjEnQo5RTe0fRK0L
	1GOrSG19OcEaOu4EweZCourPYQbO6V1BUaxJ5N4Evb2VNz1QAiP6CtE82CAqIwDzciRN
	/ydGy/Ejeed33NQF9Dc1TIvivQUMjiGLIhTKCM/ejZ1PwleouDMzE9omNcvPbkoTa4cC
	cR5YTAdelSIZcXk3vMQDZ3nDcOq874u1YJavFdBUkQ4zAnoG9+sXHKBqZ4kQ/A/VWpoM
	0aZLyGojC2bsVU/PWqHOwlg8VPtPjIuDi92zafDXndh0C1wnL5enkE+2asobaBGUixY+
	JKew==
MIME-Version: 1.0
X-Received: by 10.107.10.162 with SMTP id 34mr8765052iok.139.1439499382754;
	Thu, 13 Aug 2015 13:56:22 -0700 (PDT)
Received: by 10.107.153.131 with HTTP; Thu, 13 Aug 2015 13:56:22 -0700 (PDT)
Date: Thu, 13 Aug 2015 13:56:22 -0700
Message-ID: <CAN-NoH3Z-=RLKqcGvj0V7yAzM4ofT1hVN2r2hfyEL=9EvVqj_A@mail.gmail.com>
From: Richard Cagley <rcagley@gmail.com>
To: yocto@yoctoproject.org
Subject: fido qt4-embedded packaging problems
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
X-List-Received-Date: Thu, 13 Aug 2015 20:56:28 -0000
Content-Type: text/plain; charset=UTF-8

When I try to bitbake core-image-minimal-dev I get an error involving
cpio when I include qt4-embedded in my CORE_IMAGE_EXTRA_INSTALL list.

I looked in the log file and I see a bunch of "PT_INTERP segment not
corresponding to .interp section" and "STT_GNU_IFUNC not handled on
ARM yet" errors and then a final failure about rootfs creation due to
cpio.

Is there something special I need to do to include qt4-embedded for an
arm target?

