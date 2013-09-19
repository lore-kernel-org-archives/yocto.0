Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vc0-f170.google.com (mail-vc0-f170.google.com
	[209.85.220.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 037B8E015E7
	for <yocto@yoctoproject.org>; Wed, 18 Sep 2013 21:59:57 -0700 (PDT)
Received: by mail-vc0-f170.google.com with SMTP id kw10so6094367vcb.15
	for <yocto@yoctoproject.org>; Wed, 18 Sep 2013 21:59:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=MHIW7P6deq8QhiMZcFH3R2ENVnDve3SCB+83APAUekE=;
	b=hbJl+Pgxl7yLmClbpzNPOOOsnfdCEI/OLPm6wFAWhPBR0mFNR6LEkd50VmznD6CBr+
	HJQeY0/3koBUbekcm3/Bnxuhugo3yXl3QOxuJDpkNnwdPAd+hUeJIUR71Z5R6xvzGbLa
	APfRMJ2LljyVgU+Mrumue3ACK1wtt8HbfKyjb2gnOZq026mL3nyxt/s70jC2TWc0M9O7
	xpMBLD8k3QcRYnu4+oxuIRWl7IoG/MN0nEFOOD5KUJE+cdl68A1ekGIo+46HElCCNuhE
	cvvWvjn2IW+Ahrev3YUkJfAOugfSYms8CkdwnXVdlX17nXEP1Vzyua4q1JkbXcXIhATQ
	LgvA==
X-Gm-Message-State: ALoCoQnSNflps3Skkjsj/xt5i6agGMfmQE3obpND2sVni4mf6oDUEJUFHnSRPmPyWyzGdwukoFR3
MIME-Version: 1.0
X-Received: by 10.58.73.202 with SMTP id n10mr41621230vev.7.1379566796377;
	Wed, 18 Sep 2013 21:59:56 -0700 (PDT)
Received: by 10.52.147.201 with HTTP; Wed, 18 Sep 2013 21:59:56 -0700 (PDT)
Date: Wed, 18 Sep 2013 21:59:56 -0700
Message-ID: <CAPhnLPC2YssA9EugP7xKw-C59o=nS2rT_-GZ8McFcg0G4uR8=g@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	Alexandru C Georgescu <alexandru.c.georgescu@intel.com>,
	Zhao Yi <yi.zhao@windriver.com>, Otavio Salvador <otavio@ossystems.com.br>
Subject: 1.5_M5 status
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
X-List-Received-Date: Thu, 19 Sep 2013 04:59:58 -0000
Content-Type: text/plain; charset=ISO-8859-1

All,

Today we attempted a build of rc3. The build had obvious immediate
issues. We are now building out our rc4 build. It should be available
soon at:

http://autobuilder.yoctoproject.org/pub/releases/1.5_M5.rc4

Please begin QA testing on this as soon as possible.

poky 853bc53cd58a621918f0e5ce662dba263d1befb4
meta-fsl-arm 3743f36eb25e3215d79fb135d07a3d76760ff2ee
meta-fsl-ppc 1ddf5e66c635e086864ce15931628ce1a2d6ff0a
meta-intel 66def4d09cbdf1614622a7ab1d84bef312b5f55d
meta-minnow 7719e114bd0c2118c3d4c2a1a7c06e966103ab09
meta-qt3 b73552fb998fd30a01dbee5a172e432a16078222
eclipse-poky-juno 2fa1c58940141a3c547c8790b8a6832167e8eb66
eclipse-poky-kepler ad74249895f882a8f00bdeef7a0f7c18998cc43e


-- 
Elizabeth Flanagan
Yocto Project
Build and Release

