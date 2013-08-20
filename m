Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vc0-f176.google.com (mail-vc0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0A01E00747
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 13:55:18 -0700 (PDT)
Received: by mail-vc0-f176.google.com with SMTP id ha11so697579vcb.21
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 13:55:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=axqcXBcS5Ugv7mhOjyYt6IH0Ukn1S74t3VHaJ6Ugb1M=;
	b=VB5QSnZpaHZmbUa4KHyWh7yD4tZWzg7CVNeam2G4nWlmxLJBCvsQdrliPfAoHQ80Ok
	05L2Hqj5cQ6wlwlV/l2n2h4nBVoN7QS4HFRio7P5075M/Wb6YSQs7k+9027D73WJzzwj
	9kHrw01F5RFEbz5shaUFp27KH2YYasttBIafL3t8IRn+yuOxfk4CJWR3MEqn1JldBnbM
	v49buLhViEfepbKQfjehENICtolcXpPu6kSDo68b7LzVw2gt99mQUn5qe87fK0Vw5VYR
	WxjF588HYP98PMiT0qNcXUiS7cSdD/4ZRirSYmEaVRJdFF0DHyMEDhngQFVWIj9lRLGe
	N1lQ==
X-Gm-Message-State: ALoCoQksZgddDQGBPEh8scKUackLD1IA07WL33lg/hiNw9vi7raVfayyH0hVfaaDA8jVkPPXcJKF
MIME-Version: 1.0
X-Received: by 10.52.117.208 with SMTP id kg16mr89490vdb.48.1377032118237;
	Tue, 20 Aug 2013 13:55:18 -0700 (PDT)
Received: by 10.52.28.109 with HTTP; Tue, 20 Aug 2013 13:55:18 -0700 (PDT)
Date: Tue, 20 Aug 2013 13:55:18 -0700
Message-ID: <CAPhnLPC25vhrG=OObycpyWaksEqAsT9E26Y0FWvYLpLeqYg2VA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Cleaning up poky-contrib
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
X-List-Received-Date: Tue, 20 Aug 2013 20:55:20 -0000
Content-Type: text/plain; charset=ISO-8859-1

Folks,

If you have left over branches hanging out in poky-contrib that are no
longer needed, could you take a few moments this week and delete them?
 Poky-contrib is taking a lot longer than necessary to pull down and
clean up is long overdue. Thanks!

-b

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

