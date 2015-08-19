Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D5ED9E007B1; Wed, 19 Aug 2015 08:28:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-ig0-f169.google.com (mail-ig0-f169.google.com
	[209.85.213.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A3B7E00758
	for <yocto@yoctoproject.org>; Wed, 19 Aug 2015 08:28:06 -0700 (PDT)
Received: by igfj19 with SMTP id j19so110930358igf.0
	for <yocto@yoctoproject.org>; Wed, 19 Aug 2015 08:28:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=Krgtpn/yuqWS5ALleKwg0eQzznugNqQPLDMvAZS+y2w=;
	b=WVAcgl+jviau5YLP6RUVZo7NL9JpmZEEE+vDoPlHf4KA3ebC1uLXSnQE6354o41Xhs
	aQXhbLm1scde7Jby0AqZlZ3L7B9zQJzcPvjn0nf53nJ/iqEqD8TX2whdAu0iwzqFqIjF
	Qzs7oWHqYSoEX4H83aiNnppT74ygeXNFiSnBoHTEzL5SBCHc7g4EM9lzz9NKyt37I6XZ
	MSVkahyg6P/j5IpB/c66xexGNEra+moN36GD77+xh6VXap4A2Ny5G9QeRfgqq7KtPqVN
	uOfUjpxbm0WGS/ACFcE/LvVB2gvW5a8Y1SOM1uBc2NFNnFXH7r778+Y95vkg8sDl+os3
	5mWA==
X-Gm-Message-State: ALoCoQnWvvBR9Lp4E3DoaKKHDQv+AnBozXipWHOAu152CG9gArt6HIpi04iQAdj3HE3f2Ud2xjaz
MIME-Version: 1.0
X-Received: by 10.50.70.34 with SMTP id j2mr31459585igu.54.1439998085723; Wed,
	19 Aug 2015 08:28:05 -0700 (PDT)
Received: by 10.107.39.84 with HTTP; Wed, 19 Aug 2015 08:28:05 -0700 (PDT)
Date: Wed, 19 Aug 2015 16:28:05 +0100
Message-ID: <CAPhnLPArh26ojxLsW6=b-82zk6N5br_gpPpAAeMu4FY+x3b0bQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [ANNOUNCEMENT] Milestone 2 for Yocto Project 1.9 now available.
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
X-List-Received-Date: Wed, 19 Aug 2015 15:28:09 -0000
Content-Type: text/plain; charset=UTF-8

The second milestone release for Yocto Project 1.9 is available for
download now.

http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.9_M2/

Thank you everyone for your contributions.

eclipse-poky/mars-master 05ba7b6791083a70c78366f9737e27d9dd25d08b.
eclipse-poky/kepler-master cf60ac293629fc8ecd6c4eb3709a6f334b499d0c
eclipse-poky/luna-master 45aa5c77523bdf051d548fff4305382942db2ebb
meta-qt3 3016129d90b7ac8517a5227d819f10ad417b5b45
poky c75cefe8a382a63f625123c156137782db118f64


Test report at:

https://wiki.yoctoproject.org/wiki/index.php?title=WW33_-_2015-08-10_-_Full_Pass_1.9_M2.rc2

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

