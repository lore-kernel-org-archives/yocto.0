Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vb0-f44.google.com (mail-vb0-f44.google.com
	[209.85.212.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E5B5E014F1
	for <yocto@yoctoproject.org>; Tue, 11 Jun 2013 18:15:13 -0700 (PDT)
Received: by mail-vb0-f44.google.com with SMTP id e15so2101490vbg.3
	for <yocto@yoctoproject.org>; Tue, 11 Jun 2013 18:15:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:x-gm-message-state;
	bh=p0Qtn4E7jX+v+Z8Mh8Q/XT6GHUvcGfYCYePQ9zFcGhU=;
	b=EfxIgwAMAcFqPdeVtaX7dTjYzgaS62VZoLlS8QMQGQnweb2d/yjD8zTUY28QG1COTz
	fMeRIkCzKREEebvAzGgzUJtQAyMq6biiKZx1r80Cwlb9Gj0wvRdDpbI79fE/SeLg2/8t
	a7fVGVxvqpckk48x2UZjVGytbBu5xpS48wAhpCK8jx7JTzhsVBOh3Kco9WHkg0Sv9ikk
	fA32K/netHzafUiosV7sJ42MLX/r/oRhrz6+SNfHsFzDKKFm++awnsAaSWsP0BOky48p
	oaUezBa3USJrFTYd5SpqBFcok50phGV0VnP5tQr5IGT7RNWkSEIwXt2EKbs68/dxE72d
	7C8A==
MIME-Version: 1.0
X-Received: by 10.52.97.37 with SMTP id dx5mr7509019vdb.23.1370999712793; Tue,
	11 Jun 2013 18:15:12 -0700 (PDT)
Received: by 10.52.114.170 with HTTP; Tue, 11 Jun 2013 18:15:12 -0700 (PDT)
Date: Tue, 11 Jun 2013 18:15:12 -0700
Message-ID: <CAPhnLPBgTbb2m+L=DSr9p8ta7gm5OsR2-N4OeXkoo31_YHTx4A@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org, Zhao Yi <yi.zhao@windriver.com>, 
	Alexandru C Georgescu <alexandru.c.georgescu@intel.com>,
	Otavio Salvador <otavio@ossystems.com.br>
X-Gm-Message-State: ALoCoQm8CPrJunVu3mymF/pi0v/FGogcvOnC2MRFjplBGW8J+w7rtZgJ02TEWIYik80bTDJlekkB
Subject: 1.4.1 rc1 available for testing
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
X-List-Received-Date: Wed, 12 Jun 2013 01:15:16 -0000
Content-Type: text/plain; charset=ISO-8859-1

All, we've begun a spin of 1.4.1. This is the first release candidate.
Unfortunately, a minor issue has occurred with the eclipse-plugin, so
that will have to be rebuilt once the build run ends (as we may have
to bring the buildbot slave down to fix it)

The artifacts should be available in a few hours. Please begin testing
as they are available.

Location: http://autobuilder.yoctoproject.org/pub/nightly/20130611-2

meta-fsl-arm 	d31a4e85673874dbc6b42bb5d1e8496810c574cc
meta-fsl-ppc 	51252492cdda18eb3838b1c3108217a59243ba2a
meta-intel 	048def7bae8e3e1a11c91f5071f99bdcf8e6dd16
meta-minnow 	0d428f867ffdf83dd35803c7318180751ddb096f
meta-qt3 	4c27cce6688aa39852f3cba5e7b80ec279019605
poky 	73f103bf9b2cdf985464dc53bf4f1cfd71d4531f

I'll have the eclipse-plugin hash when we build it out.

-b

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

