Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vc0-f171.google.com (mail-vc0-f171.google.com
	[209.85.220.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D92A0E016A8
	for <yocto@yoctoproject.org>; Tue,  8 Oct 2013 15:36:00 -0700 (PDT)
Received: by mail-vc0-f171.google.com with SMTP id ks9so1442808vcb.16
	for <yocto@yoctoproject.org>; Tue, 08 Oct 2013 15:35:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=9+l8HYkjdyoessOMrLXcjX4Fd3bXqZtxK6LwD9Llxg4=;
	b=RiP/EGDM+qnYRAYQ4nofgoEDQJVBNX3FR9mEIXTinfiIk37cOKd+nSf8z9sEX1J5HJ
	STGSJ/ZADJ7vsvcEaQcyB4aGl2A/EkO/R5tBTGAhTEOTaTsaOOQFw4DWiYHsp7skwgRf
	InLH5K51+hbOqXl/P/PlViEuxFl3S5WCIOJG0Ii4958SM2GrppZMQh97NJLohvJhOzjJ
	ev6Z3SSaFqWV0W0hjBAJd5dxLfgN0t7dCqKdvnAMJ+Erm6KyKGDdM1FabTUicTcw6iQd
	jtpjS/Jgf8WxgGYX97CJZXAxt/NYAtPmAF8GIPgdP3Ar7tHnN6ZMBAtmtDoP4glupXfj
	mkSg==
X-Gm-Message-State: ALoCoQll2/dxNxHvTV8iIbM1EKyyx/Owe71yUjg1iO0mX00ZVllrgoCzNnxAHR24dLM+gHwMXe/Q
MIME-Version: 1.0
X-Received: by 10.52.157.232 with SMTP id wp8mr2420868vdb.4.1381271759425;
	Tue, 08 Oct 2013 15:35:59 -0700 (PDT)
Received: by 10.52.147.201 with HTTP; Tue, 8 Oct 2013 15:35:59 -0700 (PDT)
Date: Tue, 8 Oct 2013 15:35:59 -0700
Message-ID: <CAPhnLPBDr_LhzOpjs7-sOsf7ujKGDcchxirH45kfHcyqnUaxoA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Otavio Salvador <otavio@ossystems.com.br>, 
	Zhao Yi <yi.zhao@windriver.com>, 
	Alexandru C Georgescu <alexandru.c.georgescu@intel.com>
Subject: Yocto Project 1.5_M5.rc6
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
X-List-Received-Date: Tue, 08 Oct 2013 22:36:01 -0000
Content-Type: text/plain; charset=ISO-8859-1

All,

The final release candidate for the upcoming Yocto Project 1.5 (dora 10.0.0)
release is now available for testing at:

http://autobuilder.yoctoproject.org/pub/releases/1.5_M5.rc6

poky 102bf5e0f640fe85068452a42b85077f1c81e0c9
eclipse-poky-juno 2fa1c58940141a3c547c8790b8a6832167e8eb66
eclipse-poky-kepler ad74249895f882a8f00bdeef7a0f7c18998cc43e
meta-fsl-arm d334d3c7388e41d720dd0c8e0cb76fab51a6e46a
meta-fsl-ppc 25ee629b826a138ef407c113f776830e5d822c01
meta-intel a1138af21f6ba85e79d1422a3f0a3e0c4f658a90
meta-minnow ad469d78a1f56abd3b7d5103f1e0344cb10684b1
meta-qt3 b73552fb998fd30a01dbee5a172e432a16078222

Please begin the QA cycle. Thanks!

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

