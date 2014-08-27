Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2B91EE00576; Tue, 26 Aug 2014 17:44:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-yh0-f48.google.com (mail-yh0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80E05E0054C
	for <yocto@yoctoproject.org>; Tue, 26 Aug 2014 17:43:58 -0700 (PDT)
Received: by mail-yh0-f48.google.com with SMTP id i57so12650136yha.7
	for <yocto@yoctoproject.org>; Tue, 26 Aug 2014 17:43:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=9ZYiVNGFAVLEBHhPWn1PCiFvSPCPdA/WV8QL3LyKBfI=;
	b=dJIxlAVIgK1HtuMhrVIg1aX/HxatCKQ/NQFBu+Ai+r1WpA6Fd+pfOJCdGIPxVcmkLW
	Dv2tF+Ro+1hpNPmUOkiZZgnhLMRx986ih7M6+IDROHbUYxkqfcspaQNkzbiuDBuzbTIF
	Xb4r7rXKD2GVKIXJQUsktQ2X0DQhNsbTpNF+N1y9DaR3kOM7J/Jl/0y9Uz+lC3Q/YcbT
	FcLAU2VepFZulyhn5KXUBGMuDBmAdIOhF04i2jj1cMJ+54BYvgPQTXWGl3rVSI7nEAUR
	64UgEKgYsx3Ge8IZvEr0vV/Yr088FdNgpCyqDHuvuG3omYNWRnIvaI6iDSzbmJh/dRdS
	PH1w==
X-Gm-Message-State: ALoCoQln/dx6D+ZURlYk6yP8QvhftHG+wVopeG32e8n7ZbtarqY6vTw0H7a0g0eUTaE6Sv7xbYdw
MIME-Version: 1.0
X-Received: by 10.220.182.73 with SMTP id cb9mr26417686vcb.9.1409100237663;
	Tue, 26 Aug 2014 17:43:57 -0700 (PDT)
Received: by 10.52.255.168 with HTTP; Tue, 26 Aug 2014 17:43:57 -0700 (PDT)
Date: Tue, 26 Aug 2014 17:43:57 -0700
Message-ID: <CAPhnLPCfFFdtOwMm4ae8V73cxe-_rYLDxQNW8KQdAqrHini+Ng@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	Alexandru C Georgescu <alexandru.c.georgescu@intel.com>,
	Zhao Yi <yi.zhao@windriver.com>, Otavio Salvador <otavio@ossystems.com.br>
Subject: Weekly build now available.
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
X-List-Received-Date: Wed, 27 Aug 2014 00:44:11 -0000
Content-Type: text/plain; charset=UTF-8

http://autobuilder.yoctoproject.org/pub/nightly/20140826-2

bitbake     5d858e23de8b15badc3ab7f56ad5160a76a89de1
eclipse-poky-juno     26bfc407781aa185f244a47ba63120343cee4a37
eclipse-poky-kepler     4a167fd662262ebdaa3cf0d332ac0debb52d7904
meta-fsl-arm     c9b88d89e862d623997402104e2d875c36664afc
meta-fsl-ppc     d953212ae5936a7d969d13801b0c2c1eb65cee6f
meta-intel     579cd30427b0cb2941eca06bc0b0b9b1573d0e50
meta-minnow     238a45e9da8bbfff7a6af220b48c11cabd31e01c
meta-qt3     3016129d90b7ac8517a5227d819f10ad417b5b45
oecore     217aa4d9802609d2c3628c8751a27a5d25900898
poky     52b788c6df9201764130ab744bf67b770b24b896


-- 
Elizabeth Flanagan
Yocto Project
Build and Release

