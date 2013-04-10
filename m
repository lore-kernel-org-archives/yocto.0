Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-ve0-f173.google.com (mail-ve0-f173.google.com
	[209.85.128.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68245E01471
	for <yocto@yoctoproject.org>; Wed, 10 Apr 2013 15:48:16 -0700 (PDT)
Received: by mail-ve0-f173.google.com with SMTP id cy12so923520veb.4
	for <yocto@yoctoproject.org>; Wed, 10 Apr 2013 15:48:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type:x-gm-message-state;
	bh=OSXSb18rtEcTRm5EZr+G9mnV2wpm8P94AzBvo1NG3EA=;
	b=WwNaUKxYdNeqj0ElBpHD4Y4SDvHHm/PmyAuT3IVj/etfC528kma5UkfshZPDNShLsc
	/SacyU1OK/ldoHzKKzSETHyTu0Md99pnnBB+NkHe1NKyNiXcGvXaVaIWbcLWhEnL8R4z
	BE+OiVgY8GDMwYw+bQGhFJGUsHUaDB2mH1U5Q5ce0idE/7h72W2KcO1yM/7NsvqhabZQ
	joOPpyCz3/c7wfDAC49C9YvbFTFSG0XrwMkuBVel8rQ7lFS3OcxbE6EsRt1pdHYlMA9L
	Oa3WlG1wmjhYN7yT/K41O04arLWezL0xHcuva5Pq4zNuiF6tGt/FAW1XOSe59bx3VDgf
	VV5g==
MIME-Version: 1.0
X-Received: by 10.52.101.129 with SMTP id fg1mr2658869vdb.112.1365634095705;
	Wed, 10 Apr 2013 15:48:15 -0700 (PDT)
Received: by 10.52.163.74 with HTTP; Wed, 10 Apr 2013 15:48:15 -0700 (PDT)
Date: Wed, 10 Apr 2013 15:48:15 -0700
Message-ID: <CAPhnLPAmLKbfehcGK3NPZFbNCja6H3TG=Y9q9r=A1PsjURy4gg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-Gm-Message-State: ALoCoQn6/ecgryYllCUuBmAjXnvPqrPaz5AmCa8v3Lru3OiUhqBO7+OKuj5+OWsxY/62PjvvK6S9
Subject: 1.4_M6.rc1 started
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
X-List-Received-Date: Wed, 10 Apr 2013 22:48:16 -0000
Content-Type: text/plain; charset=ISO-8859-1

Our first release candidate for dylan has been started. It will be
available this evening at:
http://autobuilder.yoctoproject.org/pub/nightly/20130410-1

Repo               Branch      Hash
poky                dylan         adb63ca02348af72a30cef2f20de2234b74a7200
meta-intel       dylan         fd58fb07cf4fcc0553d0608f5688fc03e41ea15c
meta-qt3         dylan         4c27cce6688aa39852f3cba5e7b80ec279019605
meta-fsl-arm  dylan         5b8683ad04d63f0d5b2638cac245bff28468b634
meta-fsl-ppc   master      3312fd5ce9caced68eff577cd0e83ff1471b0612
eclipse-poky   dylan         e5172830f61b7dcc3ac03d18a03e63389c6b4629

So far everything looks pretty green. I'll have tags up tonight once
it completes.

--
Elizabeth Flanagan
Yocto Project
Build and Release

