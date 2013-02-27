Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-qe0-f49.google.com (mail-qe0-f49.google.com
	[209.85.128.49]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 37C5FE00550
	for <yocto@yoctoproject.org>; Tue, 26 Feb 2013 23:26:09 -0800 (PST)
Received: by mail-qe0-f49.google.com with SMTP id 1so192354qec.8
	for <yocto@yoctoproject.org>; Tue, 26 Feb 2013 23:26:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to:cc
	:content-type:x-gm-message-state;
	bh=JqmxG6uB2PH7iXYUITKk/jpxMcwaM+tSgdXPzQG3BxM=;
	b=NJmspAM9JEE9Zx5s9n4Xg4SAx8GEFrvL89tt24dUs2wsfEYLR1tNgOl8LnLLFSY9gb
	TWkpfgE67EnscgR6Xb3ra4foJSmkw9yuNq7AORQa6QUlNHay+2cCjqv83vEUFvQvftTC
	C5tCuTrfB5ERN6w10ibhBhH5XbYYdaV570PNQ8jHVPAQQ+meXC+0IYz14lhebASdZrf2
	EZh0ZQBDMafgItBIH3+vCPwLNiNB8wCBWrqWB9iwL7z34tyOYjTRV92zraakprEJpCJv
	haAs2SFTQlWdIF1CIShDl2HrfvCJIf8zuKVKd3D5JhrCEifdbUS241bOAvQTjbm44T0q
	F2cw==
MIME-Version: 1.0
X-Received: by 10.224.213.134 with SMTP id gw6mr6415504qab.72.1361949968176;
	Tue, 26 Feb 2013 23:26:08 -0800 (PST)
Received: by 10.49.71.163 with HTTP; Tue, 26 Feb 2013 23:26:08 -0800 (PST)
Date: Tue, 26 Feb 2013 23:26:08 -0800
Message-ID: <CAPhnLPAEFU97iT06eoDy=OkyXAtE_o2wp3EX7bY_Z_7z=zg9VQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQlWhdrsYjNGe8wxgmutdjN27t00NFfzQHyWebzCuYysSq6hF4Q9xxxHOEFWu8h4KY86BRKG
Cc: McClintock Matthew-B29882 <B29882@freescale.com>,
	Otavio Salvador <otavio@ossystems.com.br>
Subject: 1.3.1 rc1 available for testing
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
X-List-Received-Date: Wed, 27 Feb 2013 07:26:09 -0000
Content-Type: text/plain; charset=ISO-8859-1

A release candidate for 1.3.1 is available for testing at:

http://autobuilder.yoctoproject.org/pub/nightly/20130226-2

branch: danny

poky: 98292d1ef1cb44cf96f0a28fbca6439eda55ce1b
meta-qt3: c86fb1727ae09526c442ec29fffde3f010aa70eb
eclipse-plugin: cb8a0eff776d2cbd1b5f596a94dce825860574ab
meta-intel: d38b102cb9f3c269391d026d2022f10a6e1b1f11


Known Issues:
--------------------
- meta-fsl-arm targets initially failed due to a missing BBMASK. These
are currently regenerating. Once regeneration is complete we will
deploy as well as regenerate the adt pkg index.


-- 
Elizabeth Flanagan
Yocto Project
Build and Release

