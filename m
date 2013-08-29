Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-qc0-f176.google.com (mail-qc0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F814E01493
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2013 17:41:18 -0700 (PDT)
Received: by mail-qc0-f176.google.com with SMTP id u20so2740817qcx.7
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2013 17:41:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=/QKE7YNmYD/CXRFd5FS3//KnAHkxpepQydE6uWhtuZY=;
	b=AjFA4tdbhzqYFHsF/TkOy5A9GB/TIyGFoNezL4SXjb105QRwodra128+GKuM6dK1jf
	kSIldAEGbzSWEwztONFqF4O4upStht1sFac6iQR3u9JJN0mAcyoFny++lnoowVLjzpii
	Q6pYhAgHCa/wZG66oBILm7QITRuCuS3Ubc3qy3cOtS7G/vdeXzuMnx6ridm/7xpz8YuO
	/rIKdBWdTbKpUEDQojZMiixmClPbLSK7o/SuBgGKRLvD3oou+rWnlJZnGiaxViz3GWqb
	B0UdRA2grhhiULiH79J77CPGgAucwqf92BHpOG3eKF4NlTuEdXiPHabH267Az+BkHDya
	U96g==
X-Gm-Message-State: ALoCoQnqVstedYG+OXT+4RMOr442JEdjJeZFVMvyG/okVJRdCRvnEE1r6G72hcCAHcqjrQFmT5GK
MIME-Version: 1.0
X-Received: by 10.224.137.4 with SMTP id u4mr1492407qat.69.1377736877707; Wed,
	28 Aug 2013 17:41:17 -0700 (PDT)
Received: by 10.49.104.109 with HTTP; Wed, 28 Aug 2013 17:41:17 -0700 (PDT)
Date: Wed, 28 Aug 2013 17:41:17 -0700
Message-ID: <CAPhnLPDx0iC4Gp0dn4b5deQ7przwNOLtGZgVAMydVnQ_=8vx5g@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	Alexandru C Georgescu <alexandru.c.georgescu@intel.com>,
	Otavio Salvador <otavio@ossystems.com.br>, Zhao Yi <yi.zhao@windriver.com>
Subject: Status of 1.5_M4 release candidate.
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
X-List-Received-Date: Thu, 29 Aug 2013 00:41:20 -0000
Content-Type: text/plain; charset=ISO-8859-1

All,

Earlier today we attempted a spin of rc1. This attempt ended up having
multiple issues. Due to that, we decided to end the build, tag and
spin an rc2.

So far, things are looking ok. I did drop the number of buildslaves on
the autobuilder down from 3 to 2, so things might take a bit longer.
The build should be available in a few hours at:

http://autobuilder.yoctoproject.org/pub/releases/1.5_M4.rc2

meta-fsl-arm f2805add77f9e9d5f7a114ee99a632172d8f3ff6
meta-fsl-ppc 58a57096e4b7e2ceca3c33d3e7100c5434966cd9
meta-intel 164067980e18e8ba60b317677ced2d75c3725dbe
meta-minnow 7719e114bd0c2118c3d4c2a1a7c06e966103ab09
meta-qt3 b73552fb998fd30a01dbee5a172e432a16078222
poky 5745e45b18e5099e94b4d5a73bc97dc6d4cdc91f

-b

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

