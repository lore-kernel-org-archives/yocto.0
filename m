Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA432E0093B; Mon,  1 Dec 2014 17:16:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-vc0-f175.google.com (mail-vc0-f175.google.com
	[209.85.220.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F224E0084E
	for <yocto@yoctoproject.org>; Mon,  1 Dec 2014 17:16:29 -0800 (PST)
Received: by mail-vc0-f175.google.com with SMTP id hy10so5264039vcb.20
	for <yocto@yoctoproject.org>; Mon, 01 Dec 2014 17:16:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=VYID1NWKmTuC/atR8YUikUphJiT4F+SPP8zoxdjDmFg=;
	b=NLB/KxCNsmQx6ZGHHxCPpvm5352VPCbI5xOYMajBmgAX0yBD9EWZgaNYk/5Zsk806E
	Oqn1gQIIHjIma3xm25KkwNNP2f7VQdj6fjq4ZOS6J5HGViFsoqwIVRTxj3Lq66VF9rNm
	FCBvg3sM/CGpdP9pYznv1TuMQnimUNN9OKU722P6sU9GDs/2gAjJAKXM6TeOWzVv+zGQ
	BvhUpIBSrVl+rEFkTMB9irUVV2pDSDm7P8VlOv8oCOM2efjHomijhCWn9dzOZtY65qBR
	0Y5YIF0JWngG1JAV1cfBooH83uTMwvo3Cfp5isg5h0az8BJwQW7is6ynDqLcisSYV1w7
	/odQ==
X-Gm-Message-State: ALoCoQlUGhT8pTv5RXeacLXuf1MeoWfN4FJUa/bNRmsVz1SWqSGUyOuy9BqmPS4pkKY9gyjsNVOZ
MIME-Version: 1.0
X-Received: by 10.52.27.10 with SMTP id p10mr25388000vdg.89.1417482989164;
	Mon, 01 Dec 2014 17:16:29 -0800 (PST)
Received: by 10.52.244.44 with HTTP; Mon, 1 Dec 2014 17:16:29 -0800 (PST)
Date: Tue, 2 Dec 2014 01:16:29 +0000
Message-ID: <CAPhnLPB1OyaaCrGbV9n5c_0ZccWkfEetqA+z-PXa1GE01taD=Q@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	yocto-announce@yoctoproject.org
Subject: Intel Board Support for Yocto Project "dizzy" 1.7 now available.
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
X-List-Received-Date: Tue, 02 Dec 2014 01:16:35 -0000
Content-Type: text/plain; charset=UTF-8

I am pleased to announce the release of the meta-intel 2.0 BSPs for the Yocto
Project "dizzy" 1.7 release.

These BSPs are built against the Yocto 1.7 release (dizzy-12.0.0)

Layer Name: meta-intel
Download: http://downloads.yoctoproject.org/releases/yocto/yocto-1.7/meta-intel-2.0-dizzy-1.7.tar.bz2
URL: git://git.yoctoproject.org/meta-intel
Branch: dizzy
Hash: 0f6d30a95c84ec239f5a30bbfba17ed42e2cf284
Tag: 2.0-dizzy-1.7
md5sum: 4a0d2b058e71afe74ac2f30e190c46b4

BSP downloads
crownbay-noemgd :
http://downloads.yoctoproject.org/releases/yocto/yocto-1.7/machines/crownbay-noemgd/crownbay-noemgd-2.0-dizzy-1.7.tar.bz2
emenlow-noemgd :
http://downloads.yoctoproject.org/releases/yocto/yocto-1.7/machines/emenlow-noemgd/emenlow-noemgd-2.0-dizzy-1.7.tar.bz2
fri2-noemgd : http://downloads.yoctoproject.org/releases/yocto/yocto-1.7/machines/fri2-noemgd/fri2-noemgd-2.0-dizzy-1.7.tar.bz2
intel-core2-32 :
http://downloads.yoctoproject.org/releases/yocto/yocto-1.7/machines/intel-core2-32/intel-core2-32-2.0-dizzy-1.7.tar.bz2
intel-corei7-64 :
http://downloads.yoctoproject.org/releases/yocto/yocto-1.7/machines/intel-corei7-64/intel-corei7-64-2.0-dizzy-1.7.tar.bz2
jasperforest : http://downloads.yoctoproject.org/releases/yocto/yocto-1.7/machines/jasperforest/jasperforest-2.0-dizzy-1.7.tar.bz2
nuc : http://downloads.yoctoproject.org/releases/yocto/yocto-1.7/machines/nuc/nuc-2.0-dizzy-1.7.tar.bz2
sugarbay : http://downloads.yoctoproject.org/releases/yocto/yocto-1.7/machines/sugarbay/sugarbay-2.0-dizzy-1.7.tar.bz2

Features
--------
- A feature for updating Intel processor microcode at early boot stage
has been added
- BSP kernel has been updated to v3.17.1
- The LTSI kernel has been updated to v3.10.43

Bug Fixes
---------
Bug 6807 - crownbay-noemgd with 3.17 kernel doesn't boot into graphics
Bug 6342 - Enable wifi feature for Sugarbay BSP for the Huronriver laptop
Bug 6710 - linux-yocto-rt recipe failing to build
Bug 5114 - meta-intel: intel microcode update
Bug 6460 - Fix module_autoload_*


-- 
Elizabeth Flanagan
Intel Corp.

