Return-Path: <daltonfury42@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70F58E0086D; Thu, 12 Mar 2015 11:55:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (daltonfury42[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ob0-f178.google.com (mail-ob0-f178.google.com
	[209.85.214.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9ECBE00858
	for <yocto@yoctoproject.org>; Thu, 12 Mar 2015 11:55:41 -0700 (PDT)
Received: by obcva2 with SMTP id va2so16034342obc.3
	for <yocto@yoctoproject.org>; Thu, 12 Mar 2015 11:55:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=pLwsp8OkoHUQhyXwPxQmKNS4jtPE7UWyyZLe6qtDFF0=;
	b=xXXMCzDPWxhFc2ARum/DFx/EVabqL7EVi5L9fXG48Mu5N2CJxJuX2GAYJ9MGoJQjDi
	V6fLG1IU7D2d40OV92UrCHwHLqg0wmCWeqC+I6qScjpRayUHDKtWaaDO0MEaoRNPlm6m
	/eKxlhkC1TU4DDZBoUns9ElTcbiBIpuClI2t2fH6TlBJ3LrEFqnQQJljlaw++Ickelqi
	FX/FmkOXMj5WLIUndYp2LHXKLUiZgFOsfndfR1VqQHmgtc2KH9W78CKCfMHr7lVHv5uN
	t+XEXuFgoHEBOcWfEQrZyIBPMgO/KUFZjNLUfUfASy5HfUnORD8pRLf9+tayOrTCMreK
	SURQ==
MIME-Version: 1.0
X-Received: by 10.202.82.136 with SMTP id g130mr9150307oib.73.1426186541519;
	Thu, 12 Mar 2015 11:55:41 -0700 (PDT)
Received: by 10.202.59.66 with HTTP; Thu, 12 Mar 2015 11:55:41 -0700 (PDT)
Received: by 10.202.59.66 with HTTP; Thu, 12 Mar 2015 11:55:41 -0700 (PDT)
In-Reply-To: <CALH0Xh=LdyU0MfiwOJiTkR4TmjErNsb11Q37M-noB78wjx_63g@mail.gmail.com>
References: <CALH0XhnxvVq8aHnnpXGfhRdG+y2ym0wJzVtSUAMWWfkR30sTGA@mail.gmail.com>
	<CALH0Xh=dDw5thoKebNN7kFbQ4hA=ztbAhaD6f0+ntsHdnqiBdw@mail.gmail.com>
	<CALH0Xh=LdyU0MfiwOJiTkR4TmjErNsb11Q37M-noB78wjx_63g@mail.gmail.com>
Date: Fri, 13 Mar 2015 00:25:41 +0530
Message-ID: <CALH0Xh=sbN2SX3qNsY22Zb=RZ=+US3BP14sKicyZBQCz67T0Bw@mail.gmail.com>
From: Dalton Fury <daltonfury42@gmail.com>
To: yocto@yoctoproject.org
Subject: Cannot compile opencv with cmake.
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
X-List-Received-Date: Thu, 12 Mar 2015 18:55:46 -0000
Content-Type: multipart/alternative; boundary=001a11359ede30d97c05111bee07

--001a11359ede30d97c05111bee07
Content-Type: text/plain; charset=UTF-8

Hey,
I am trying to compile a c++ program which uses opencv on pokey. These are
the packages I have installed.
CORE_IMAGE_EXTRA_INSTALL += "cmake"

EXTRA_IMAGE_FEATURES += "tools-sdk"

When I run cmake,, I get this error.
http://pastebin.com/WifpRYXV

I followed the instructions given in this post:
http://stackoverflow.com/questions/8711109/could-not-find-module-findopencv-cmake-error-in-configuration-process
But still I get trouble:
http://pastebin.com/V7sSwP8r

I am new to yocto, and really need your help to proceed with my task.
Thankyou.

--001a11359ede30d97c05111bee07
Content-Type: text/html; charset=UTF-8

<p dir="ltr">Hey, <br>
I am trying to compile a c++ program which uses opencv on pokey. These are the packages I have installed. <br>
CORE_IMAGE_EXTRA_INSTALL += &quot;cmake&quot;</p>
<p dir="ltr">EXTRA_IMAGE_FEATURES += &quot;tools-sdk&quot;</p>
<p dir="ltr">When I run cmake,, I get this error. <br>
<a href="http://pastebin.com/WifpRYXV">http://pastebin.com/WifpRYXV</a></p>
<p dir="ltr">I followed the instructions given in this post: <br>
<a href="http://stackoverflow.com/questions/8711109/could-not-find-module-findopencv-cmake-error-in-configuration-process">http://stackoverflow.com/questions/8711109/could-not-find-module-findopencv-cmake-error-in-configuration-process</a><br>
But still I get trouble: <br>
<a href="http://pastebin.com/V7sSwP8r">http://pastebin.com/V7sSwP8r</a></p>
<p dir="ltr">I am new to yocto, and really need your help to proceed with my task. <br>
Thankyou.<br>
</p>

--001a11359ede30d97c05111bee07--
