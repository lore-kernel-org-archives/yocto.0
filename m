Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-ve0-f170.google.com (mail-ve0-f170.google.com
	[209.85.128.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 123A4E0154F
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2013 18:04:49 -0700 (PDT)
Received: by mail-ve0-f170.google.com with SMTP id 14so10895707vea.1
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2013 18:04:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:x-gm-message-state;
	bh=cawB450dd1z6RuV0QrjUQ3noM2on55wPJpHz/C6ijQI=;
	b=m7156FJi9QjGsy52a9YVo+/7w4olF8KYEtU2doHheodSHJPjF3DFZhhd/o1ohDwQI7
	5YAPrupx7+CIQcQGSeApw75tkaV1qMSqiCLCT+v9sAbnwyGKMRhhQoiv1gVQJ81oMhFP
	utanTc7rNYfT/rn4utR3ODOkmUwgHNg9kt1qePtpp8CWI9iemct+AAG/XWqumk024tn3
	ZEW9XRcxHv2DfmaKgpaQmmzPwZE865QBieJPCiJVOlbpaxH0tkTTH3Geu/X7MhyPYfcG
	3AcD/TuulWoimIWRBr2Fcz8+z1xuOtd7W+QxA1tJC52eGWHCsTC3eIesGdDI4dwbA7uJ
	gmAQ==
MIME-Version: 1.0
X-Received: by 10.220.169.146 with SMTP id z18mr809559vcy.80.1372208688916;
	Tue, 25 Jun 2013 18:04:48 -0700 (PDT)
Received: by 10.52.114.170 with HTTP; Tue, 25 Jun 2013 18:04:48 -0700 (PDT)
Date: Tue, 25 Jun 2013 18:04:48 -0700
Message-ID: <CAPhnLPD+ZNKrJ5i=mM-S8eD8iTbEqpKeOMG++Eb7=o_zbQ8NWg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org, 
	Alexandru C Georgescu <alexandru.c.georgescu@intel.com>, 
	SSD-OTC Romania Yocto QA <ssd-otc.romania.yocto.qa@intel.com>,
	Zhao Yi <yi.zhao@windriver.com>
X-Gm-Message-State: ALoCoQmuUgcrzk15XNJhZkhNwKfi4Ih1o5BWWD5YpqnrnrrmWc4fXXdlbfhmopuQ/2ScKD+YxHvQ
Subject: Weekly build now available
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
X-List-Received-Date: Wed, 26 Jun 2013 01:04:50 -0000
Content-Type: text/plain; charset=ISO-8859-1

The weekly build is now available:
http://autobuilder.yoctoproject.org/pub/nightly/20130625-2

eclipse-poky    60e99763dc9b77307d46eae4f43343948fa49757
meta-fsl-arm 	3b4c20c4f683b721994ea2e4e364c38601cd3c6b 	
meta-fsl-ppc 	d75b5c38492f5fa821b5b2cca89217bef6868420 	
meta-intel 	f6dbf42654aeec5f36dddedda6433a87e01ae726 	
meta-minnow 	286a72ba3f5e29432be1dd77127de5bdc2d988c3 	
meta-qt3 	4c27cce6688aa39852f3cba5e7b80ec279019605
poky 	8e9501ffa8726d69412d669580d787ffedb88d34

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

