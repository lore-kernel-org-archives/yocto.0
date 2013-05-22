Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vc0-f175.google.com (mail-vc0-f175.google.com
	[209.85.220.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 482B4E006BF
	for <yocto@yoctoproject.org>; Tue, 21 May 2013 17:40:43 -0700 (PDT)
Received: by mail-vc0-f175.google.com with SMTP id hv10so914647vcb.34
	for <yocto@yoctoproject.org>; Tue, 21 May 2013 17:40:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:cc:content-type
	:x-gm-message-state;
	bh=1CavhFc41dpzye19ZxnADkUEg1//NTGKi1GmIekBY40=;
	b=No9MG3gpZZQh0RnyRo+WmCMUEZyl1UaOGYHwKIy1mwyxIvyC8NnQzaDgRKPXy00CAB
	/L+3rS5TaXzK5p84VEcphEaW6dfISilWmGgP4KRtVm8LyOJgAl3CVnlPoKAaFs/nq3K4
	B3FnxShXgGQEGCANRxzgeJOx4hd7j1+wUeuBmnirzMisavjcsRNY7Th8CUd7iNfY0gib
	BYH4aks5taCSK1qjD/HAsATX6PZEW8uOiDwY8+Lv4ua5PbrBAThXTluD+wOwEPPxVtTg
	0KRVchga+zfCnj0ctmKLVXyd3DtxgFdkmdTtaXGZnG/hptkAgnSBhNO7roub9rM3ochj
	rtnQ==
MIME-Version: 1.0
X-Received: by 10.58.187.164 with SMTP id ft4mr1904728vec.5.1369183242505;
	Tue, 21 May 2013 17:40:42 -0700 (PDT)
Received: by 10.52.163.79 with HTTP; Tue, 21 May 2013 17:40:42 -0700 (PDT)
Date: Tue, 21 May 2013 17:40:42 -0700
Message-ID: <CAPhnLPAwiJyXH2c8dRLVKw6rQTSzpRv1+bTp4GHxLZX1APDPaQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQmODGewGp4VNt+q/E5Dt+P98jLGCE3pHo7Y3UpFH2rhAIogJnUESQ51ybhuIrC08TWaI4hs
Cc: SSD-OTC Romania Yocto QA <ssd-otc.romania.yocto.qa@intel.com>
Subject: Weekly build availability.
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
X-List-Received-Date: Wed, 22 May 2013 00:40:43 -0000
Content-Type: text/plain; charset=ISO-8859-1

The weekly build has been kicked and should be available soon at:

http://autobuilder.yoctoproject.org/pub/nightly/20130521-1

meta-fsl-arm 	323b2de457377929223eedd3007b184a31087add
meta-fsl-ppc 	70afc09e8a5aac8c06d654c6477cc06c90d2d164 	
meta-intel 	2ba2e0ea55bab687134b452a5db81d189b820f59
meta-qt3 	4c27cce6688aa39852f3cba5e7b80ec279019605 	
poky 	176a46b088135f2891983bb8540bc45389341d90

Please begin scheduled testing. Thanks.

-b

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

