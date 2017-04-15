Return-Path: <sadlife1990@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83EA3E00A51; Sat, 15 Apr 2017 07:24:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sadlife1990[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.172 listed in list.dnswl.org]
Received: from mail-ua0-f172.google.com (mail-ua0-f172.google.com
	[209.85.217.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5667AE0092B
	for <yocto@yoctoproject.org>; Sat, 15 Apr 2017 07:24:06 -0700 (PDT)
Received: by mail-ua0-f172.google.com with SMTP id f10so36419035uaa.2
	for <yocto@yoctoproject.org>; Sat, 15 Apr 2017 07:24:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=8D7BjNr/F86U1kAy94xsdYA+L1jDVz/4V+aMKHzak+s=;
	b=UebAm6lqdcVBIhxAFnYyg5GOfuJe5DMIDX3bE1r/oX4sbrscLUXafpesMF0+zOlnvw
	J0P7CbB86c9qxpeOtxbzgG/NUIzymEjGxfOxFij2gFh4/CTvm0j7TNJ5DCkRi2REvmPw
	PIcw7h4fvSAh+B0f+JWRXoCn9m2m/oIHPMICOjlk68I/xKmfYKxdd/YdzR4yNQF9+T41
	JI9KwENzirEoUZupLQtcNIhI12R9OMV86p7fG+H+sduhJ6T+DoHqA5ULhuRHhXWAdYWN
	hp+i+0UDvsVa2g49epiAmSPHJemc8mPvSfaa6+hmUGoRsC8sEv3fEEE09LWQRjlQ1wHk
	cdgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=8D7BjNr/F86U1kAy94xsdYA+L1jDVz/4V+aMKHzak+s=;
	b=EDTZtyYX5Rcyc2/1TsEm4o8yfLQLqdh+8AmkiY4XRAz7ILsN8o+RFH+j1T3Dg6AkzL
	KBEVZQLjyr8zhh4WRSXNKRJhJfY7kdGr1oxPcKtBUwAu/YNHfpsWWZ4wwq9qQOX7Tykv
	G9eOS2yS4wxMksRsM8nNbYdQhRS6t4b2KznQpltnF/lvZSy5Wv+nRmu0R17ox+mz7KhV
	a5P82o2FmUIhvPFpC3QbWq26ev9AJicZq3PFNSIrWy3n67e5R4qVm7FD0+bEubP2na/T
	bdTJNAl+mLrDLIxgzF0DjF2KLkwyKmXleAS5ALXLDBpsIRZNzY7gQDA4oAQsNL4lvhGi
	2Qag==
X-Gm-Message-State: AN3rC/7tB7kVIEUVa8hk5RaQJpB+8tm5qVLAQsNCANx0vmAALb14Y+4w
	JbAz8c7igKllME9UaImghi6hItO4ISnG
X-Received: by 10.176.67.97 with SMTP id k88mr6243599uak.5.1492266246088; Sat,
	15 Apr 2017 07:24:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.32.105 with HTTP; Sat, 15 Apr 2017 07:24:05 -0700 (PDT)
From: Life Life <sadlife1990@gmail.com>
Date: Sat, 15 Apr 2017 17:24:05 +0300
Message-ID: <CAAHuHfxQbRCgC6fRJo1R=oM11duYh+zzWTZ=J-NTUQ7W_yhCzg@mail.gmail.com>
To: yocto@yoctoproject.org, openembedded-devel@lists.openembedded.org
Subject: Static Lib build.
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
X-List-Received-Date: Sat, 15 Apr 2017 14:24:10 -0000
Content-Type: text/plain; charset=UTF-8

Hello,

I'm try to build static library for SDK.

Update the build/local.conf file with the following information

SDKIMAGE_FEATURES = "staticdev-pkgs dev-pkgs"

INHERIT += "buildhistory"
BUILDHISTORY_COMMIT = "0"
 BUILDHISTORY_FEATURES = "sdk"

But cannot create static library for SDK.


Thanks.

