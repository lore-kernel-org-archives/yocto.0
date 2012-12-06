Return-Path: <elizabeth.flanagan@intel.com>
Received: from fmsmga101.fm.intel.com (mga05.intel.com [192.55.52.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5169E006C3
	for <yocto@yoctoproject.org>; Wed,  5 Dec 2012 16:45:55 -0800 (PST)
Received: from mail-qc0-f200.google.com ([209.85.216.200])
	by mga01.intel.com with ESMTP/TLS/RC4-SHA; 05 Dec 2012 16:45:55 -0800
Received: by mail-qc0-f200.google.com with SMTP id l42so8902696qco.11
	for <yocto@yoctoproject.org>; Wed, 05 Dec 2012 16:45:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:cc:content-type
	:x-gm-message-state;
	bh=VS+Lmwlo0r0krFa0yR9awf2G1GltrXbQx0ykNNvFghQ=;
	b=ep3hPd1TRiMIwIaUkWYs+wUFxslanugppFj7FDxqLO7+wX2u+U0Hqf35KeTRNWnELY
	UMw6oZi8Mxp3fGMBm9sT3M6sZsqbgE35ueyid0Kx64xzyVms4H8VQL5QDXfPY4/M/sKl
	FxAfBaMk6QisQ79nhZ9Gjy9mW+GM39QFRKF+y9G4OQGRDgpaKmgKlOuMOQRHoASs7OYL
	cvNBMaWi/soUSPhurTeQwobcyDd7er7zoWhguMaPM7iYnPeIukkiXwUx4P3NVRU7ux4/
	TyfJcd2uZVC/ed+AqYueo47qWN6BVA7NU+FezTqURzxJreO+My8oghuz8yeFBz8fupb0
	qysw==
Received: by 10.49.127.15 with SMTP id nc15mr5114260qeb.61.1354754754261;
	Wed, 05 Dec 2012 16:45:54 -0800 (PST)
MIME-Version: 1.0
Received: by 10.49.127.15 with SMTP id nc15mr5114236qeb.61.1354754754064; Wed,
	05 Dec 2012 16:45:54 -0800 (PST)
Received: by 10.49.12.136 with HTTP; Wed, 5 Dec 2012 16:45:53 -0800 (PST)
Date: Wed, 5 Dec 2012 16:45:53 -0800
Message-ID: <CAPhnLPAfvFbmpoA+48uV0+5pnnnTcsTKTL8-CAGq2mMp+yDG4w@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQlXb/VAVvn+59I//IjBNawp+VffFKhYFEboI/1JSF8DqkKsYaSgzyWfYUO30aWAPA3S8HDU893yaByDfc+rwqsW2U9754968zBA8qL/zV7tI1vN9bran8/7tTEacgBMq2Kjdc+ILoZ8+8QFJPATNul/xsx+uQ==
Cc: McClintock Matthew-B29882 <B29882@freescale.com>
Subject: M1 status
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 06 Dec 2012 00:45:56 -0000
Content-Type: text/plain; charset=ISO-8859-1

All,

Considering the results from rc1, we've decided to forgo an rc2, begin
rolling up the 1.4 M1 release and utilize autobuilder time for a
master build:

http://autobuilder.yoctoproject.org/pub/nightly/20121205-3

Please begin QA on this build. Thanks!

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

