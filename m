Return-Path: <anoojgopi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09993E007DC; Wed, 27 Aug 2014 06:57:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (anoojgopi[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f179.google.com (mail-wi0-f179.google.com
	[209.85.212.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E061E007B9
	for <yocto@yoctoproject.org>; Wed, 27 Aug 2014 06:57:41 -0700 (PDT)
Received: by mail-wi0-f179.google.com with SMTP id f8so479934wiw.12
	for <yocto@yoctoproject.org>; Wed, 27 Aug 2014 06:57:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=NHxx4knwqtcf/zExNFxzdH6wBEeKeVmYTFf7o1vYLMc=;
	b=iEEx3jhkejoDLEZikIdDfVVcrQpFKwVPV3ZnPj9fL8oeF0H2zFmlrOrISIUw8Llg4+
	XCcK2Xl93ntX++K5W4KKZAZc75sF/HJ00W7qQS+n9RVOTrrOWrTWdOYSUPkY38MsD781
	uAODz/j3DhkCv71d6VIND1Bj6HW/hXZhSljQKRjnPJhbyF1+dxqOqLHnFeDY7PlWxGtB
	sPKO5wK1J3B2LodExCYc/8f9tDO7LaJSMEuCnnWK1SOQHxeX7rLa6fTM1J4oiqLS5tcJ
	fN6ADyE74bmpYgVTa8SF5gicuwmvoqLkW1CJNN7/wMHpoEQX/L+gc0zs0Ib2OWEX8ZPs
	0LeQ==
MIME-Version: 1.0
X-Received: by 10.195.13.2 with SMTP id eu2mr23604175wjd.88.1409147860742;
	Wed, 27 Aug 2014 06:57:40 -0700 (PDT)
Received: by 10.194.19.193 with HTTP; Wed, 27 Aug 2014 06:57:40 -0700 (PDT)
Date: Wed, 27 Aug 2014 15:57:40 +0200
Message-ID: <CALkREYA7nN3sL2ALk4JCOt=NrhYFPpd=gAS_pzMe2OMURXDVNg@mail.gmail.com>
From: Anooj Gopi <anoojgopi@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Build dts alone
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
X-List-Received-Date: Wed, 27 Aug 2014 13:57:43 -0000
Content-Type: multipart/alternative; boundary=047d7bd91b48acf6f405019ccded

--047d7bd91b48acf6f405019ccded
Content-Type: text/plain; charset=UTF-8

Hello,

After changing the kernel dts file (directly in work directory) I would
like to build just the dtb file from yocto (without rebuilding entire
virtual/kernel target). Is it possible to do so?

Regards,
Anooj

--047d7bd91b48acf6f405019ccded
Content-Type: text/html; charset=UTF-8

<div dir="ltr"><div><div>Hello,<br><br></div>After changing the kernel dts file (directly in work directory) I would like to build just the dtb file from yocto (without rebuilding entire virtual/kernel target). Is it possible to do so?<br>
<br></div>Regards,<br>Anooj<br></div>

--047d7bd91b48acf6f405019ccded--
