Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vc0-f173.google.com (mail-vc0-f173.google.com
	[209.85.220.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F57FE00B90
	for <yocto@yoctoproject.org>; Wed, 26 Mar 2014 14:14:55 -0700 (PDT)
Received: by mail-vc0-f173.google.com with SMTP id il7so3178678vcb.32
	for <yocto@yoctoproject.org>; Wed, 26 Mar 2014 14:14:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=irdtfFOvuw2a9icWEsyKec0dPOfNODjMosMeLN+Xm38=;
	b=dZFzFG9iAaYZX9Tgansh0+BH/mdgF5laSSGL+TSMtVWhLGdKp3+aEPwDl1WGEvBrzE
	+JkmCBHb2ClByAFcKSEKJBs/qXfhyc26bdl7vdw/gC1G9Kc62h/jcwxXg1OUXiMFiinB
	hXixt56yJWErWGj/1uqUrSFPTHIIXhkn0xOLiPncUrKFz7YL3dgKf9H3pZQ1Iq4WPYKC
	J4xiHIxRs7yDGpVmpiY5819kvOxImWMb6u6syqUCt3DMWm2rPc7Q84IC6uIX7cOAPWo4
	dVyvOzFqve22CKfYxC2dw5718hZTq/pcAjQrw2bVATlOH4IVveikk6ANkVitAePbNSaD
	7BHQ==
X-Gm-Message-State: ALoCoQkU/ngglnqYBKJHO9VwpzznwJzb0MjvFMAYs7V9CzNWUVCQlSo1mRkAVOeGSxQ93SpgoXM4
MIME-Version: 1.0
X-Received: by 10.58.111.163 with SMTP id ij3mr2573156veb.26.1395868494445;
	Wed, 26 Mar 2014 14:14:54 -0700 (PDT)
Received: by 10.52.173.69 with HTTP; Wed, 26 Mar 2014 14:14:54 -0700 (PDT)
Date: Wed, 26 Mar 2014 14:14:54 -0700
Message-ID: <CAPhnLPAJy5Lxbxfrh_RV-fOeoEyaXy8jZR6go2VdP=unHToFPw@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	Alexandru C Georgescu <alexandru.c.georgescu@intel.com>,
	Zhao Yi <yi.zhao@windriver.com>, Otavio Salvador <otavio@ossystems.com.br>
Subject: Reducing nightly/release build artifacts.
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
X-List-Received-Date: Wed, 26 Mar 2014 21:14:56 -0000
Content-Type: text/plain; charset=ISO-8859-1

Folks,

I'd like to start looking at reducing the number of artifacts we're
releasing both for our nightly builds (which is at 250,000 artifacts
and .25 TB!) and releases.

What I'm thinking is this:

Reduce nightly:
- Reduce ADT-REPO to just qemu* arches for all builds
- If every QA team could provide me a list of what files they actually
need I could reduce the published artifacts to *just* what is needed.

Reduce releases:
- Reduce ADT-REPO to just qemu
- Don't release ipk/rpm/debs. Continue to release ipks through ADT
- Don't release machines outside of BSP tarball /binary directory

If folks who do QA could get me a list of all the files they use, we
can start removing excess artifacts. I know this is a balance, but I'd
really like us to start targeting our release artifacts to just the
things we need.


-- 
Elizabeth Flanagan
Yocto Project
Build and Release

