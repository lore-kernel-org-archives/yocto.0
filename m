Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-la0-f43.google.com (mail-la0-f43.google.com
	[209.85.215.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E1C3E0084E
	for <yocto@yoctoproject.org>; Wed, 15 Jan 2014 03:46:00 -0800 (PST)
Received: by mail-la0-f43.google.com with SMTP id er20so1310043lab.16
	for <yocto@yoctoproject.org>; Wed, 15 Jan 2014 03:45:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=fHi/cCW5//7gwNRUk75fNxXS/O/L+S3zUdXtYIYC4dU=;
	b=PEVztDXzIy8rqZvy/oamNZNrB6WeDU/xOrDacUvnhBPqq38cxrJA1/f6hl58Umn8mG
	sWpmXxaw/zOjuYaSSz6zu3UFZbPaziGC1X4bW+NifN4CiDRH5CSFJiJqqiW1nzBP57q3
	HIeEa4IZ1SWgcB+xK0Xcl0xxVrGkrr8ba3TCxY3PvsfLTSy82JqEGT6c8kUsloI8ZWw9
	d7OidP2aadcNkv9or/bKseXlKMaVdHKTZk4qt0YyE3nIo4+VkgbTyzAtu+Ql08ybiuwP
	c8iLGYzzWNwgEO1yJa2A52gmm1DibNOzaB2teke6ZmVGkSYj6iRVQT9aaJrppot1+PZz
	ww7A==
X-Gm-Message-State: ALoCoQk0DlfDxAapWgGSPxnRxvir70WYpG1CyjM7lHOSw/jBfQ6Bwkk1Ptpmfzx52soItHqG8ZFe
MIME-Version: 1.0
X-Received: by 10.112.73.180 with SMTP id m20mr44396lbv.68.1389786359034; Wed,
	15 Jan 2014 03:45:59 -0800 (PST)
Received: by 10.152.4.70 with HTTP; Wed, 15 Jan 2014 03:45:58 -0800 (PST)
Date: Wed, 15 Jan 2014 11:45:58 +0000
Message-ID: <CAPhnLPALqxwRuca6uS0F4URofbE764UBFtqZ3m=VsGeFn9vvWQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	Alexandru C Georgescu <alexandru.c.georgescu@intel.com>,
	Otavio Salvador <otavio@ossystems.com.br>, Zhao Yi <yi.zhao@windriver.com>
Subject: 1.6_M2.rc1 now available
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
X-List-Received-Date: Wed, 15 Jan 2014 11:46:05 -0000
Content-Type: text/plain; charset=ISO-8859-1

The first release candidate for the upcoming 1.6 Milestone 2 release is now
available at:

http://autobuilder.yoctoproject.org/pub/releases/1.6_M2.rc1

bitbake     2ca15117e4bbda38cda07511d0ff317273f91528
eclipse-poky-juno     26bfc407781aa185f244a47ba63120343cee4a37
eclipse-poky-kepler     c73c6e4510c42601854f3c542ca6e14b4510380c
meta-fsl-arm     62c777db788a657efe3e9f01d5a72b8bf296ca25
meta-fsl-ppc     1536064e02f15761e90f784d88f2a930784f7f3d
meta-intel     11fc51c05f378b7fef2f5879e8e1f11d7046e85b
meta-minnow     6a4f0dd875a5ec0303ab4387944dc7eb98508769
meta-qt3     4772424ab69908d4e3b9d6d4717ca889468e6acd
oecore     c4c5ec52effc2ff97ac17270c1aa7884c808f5a9
poky     e4c23f7bcb79072ea6028fbdf8f3f0dc17a63371

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

