Return-Path: <elizabeth.flanagan@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7FF15E00717
	for <yocto@yoctoproject.org>; Wed,  3 Oct 2012 16:24:56 -0700 (PDT)
Received: from mail-qa0-f48.google.com ([209.85.216.48])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 03 Oct 2012 16:24:56 -0700
Received: by qadc11 with SMTP id c11so2389425qad.14
	for <yocto@yoctoproject.org>; Wed, 03 Oct 2012 16:24:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:cc:content-type
	:x-gm-message-state;
	bh=mZxbFqe0igZrzjVQYo+Opfs6za4HBUdISFpYodTClV0=;
	b=PnqF2qv1ndlMArNfXuJ31+H9sTKzOqZzamNQFao2ftlYPMsxiRfUzeUwfsQ+i94eUI
	chiyP4EHa99xZMbp8XEWXkMqoOEtvMTTSsP2DpOuxtBq570kKZ2iIKnkcdd5PQxfnhrK
	vI/XMDbo/ZSuX3bG5pxTIIf4yuILWsolq5WG7iakybiFHgaV/IrZkZWKRTRArM/F0CWl
	AibKgjbzFVJO2hgspEezVAQX9rTOaUMs7Qa0WYjI/+LJcrTgWd99ailSf5tmUavtu+hH
	B/OgkGMivrfapgs71XAGm9jVvA+7ygM8Qs9usztwIZaHGfs75SDQyJX/hZ9Kwhj+rpDt
	csoA==
MIME-Version: 1.0
Received: by 10.49.132.65 with SMTP id os1mr15329865qeb.7.1349306695010; Wed,
	03 Oct 2012 16:24:55 -0700 (PDT)
Received: by 10.229.63.1 with HTTP; Wed, 3 Oct 2012 16:24:54 -0700 (PDT)
Date: Wed, 3 Oct 2012 16:24:54 -0700
Message-ID: <CAPhnLPD1xDLOTDDesr4WDnVV=PRM1VMxEKTD2cYSbRBnJR9X0Q@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQn2+nGHDFcRDyLoChXDbWEFk2X9VAluG7WTGnQ5eLskRN0UEo3HDt7+osZtL/4huWRUvhUI
Cc: McClintock Matthew-B29882 <B29882@freescale.com>
Subject: 1.3_M5.rc3 images
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
X-List-Received-Date: Wed, 03 Oct 2012 23:24:56 -0000
Content-Type: text/plain; charset=ISO-8859-1

All,

The autobuilder is currently building 1.3_M5.rc3. It is being built
from what will be the 1.3 release branch "danny". We've seen a few
issues so far, specifically a failure on nightly-x86-64 sanity tests
with conman and shutdown, an odd failure in the non-gplv3 buildout
(which I am running again) and for the intel QA team, failures for
both fri2 emgd and non-emgd, crownbay with emgd and sys940x.

The next (and hopefully last) release candidate will be generated this
coming Wednesday. Please view any failures for rc3 and get patches in
if they're needed/work with me if the failures are due to changes
needed within the autobuilder.

The images are being generated from the HEAD of danny and have already
had the DISTRO_NAME, DISTRO_VERSION, SDK_VENDOR and build appliance
SRCREV flipped in preparation for release. All build artifacts should
be available by 8pm Pacific Daylight Time at:

Location: http://autobuilder.yoctoproject.org/pub/nightly/20121003-4
Branch: danny
Tag: 1.3_M5.rc3

Commits:
poky: 86c9aa8081f107420cd3763d0566d779daddc2b1
eclipse-poky: aa38f8b19c921cce2f73647d8aeb7e355c868b56
meta-qt3: c86fb1727ae09526c442ec29fffde3f010aa70eb
meta-intel: 2c1e927fa99abe47865a03cf661d4757ff3147c6


-- 
Elizabeth Flanagan
Yocto Project
Build and Release

