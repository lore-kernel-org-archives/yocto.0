Return-Path: <elizabeth.flanagan@intel.com>
Received: from fmsmga101.fm.intel.com (mga05.intel.com [192.55.52.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13BE0E0045D
	for <yocto@yoctoproject.org>; Wed, 24 Oct 2012 16:44:04 -0700 (PDT)
Received: from mail-qc0-f200.google.com ([209.85.216.200])
	by mga01.intel.com with ESMTP/TLS/RC4-SHA; 24 Oct 2012 16:44:04 -0700
Received: by mail-qc0-f200.google.com with SMTP id l42so1192952qco.11
	for <yocto@yoctoproject.org>; Wed, 24 Oct 2012 16:44:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:x-gm-message-state;
	bh=uEs3XrytNLsTzzlIpI32PvJntSmbgRWspjPk2DiC52c=;
	b=M5QFvZUiZRRwRbUFBNUo9EP8zPFxcpuU+ggOEFGPBuLh3YAMEFWl8oVIDYMZKh/eYj
	r3TQeJp+j6L1g41iCLAnZaqCtSRkzFUWJQFqHkrGWWqgcaLh7TR2ZOBwbyYM2yWlbCuA
	AsXv5ZEzhjtYupqpsXjjKBz49C8l8YwpWA5W/fK9Nmqq9FQYI3rdJtojrGb8T5oc/RuG
	oS0iTc5zRLScjiCPikssi1ZCPjqxMiuU9XnrMRFkNj4bmiKAD16FOEATRo1vkOmYbg42
	xcXendpOWXFpFpskeEjuZnCSqQlkzcVTyWUWDTgWLC7tV9FtIau8rlCeJ0Y3PVQXDjG3
	PlLQ==
Received: by 10.49.95.73 with SMTP id di9mr9724465qeb.37.1351122243618;
	Wed, 24 Oct 2012 16:44:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.49.95.73 with SMTP id di9mr9724461qeb.37.1351122243557; Wed,
	24 Oct 2012 16:44:03 -0700 (PDT)
Received: by 10.229.94.206 with HTTP; Wed, 24 Oct 2012 16:44:03 -0700 (PDT)
Date: Wed, 24 Oct 2012 16:44:03 -0700
Message-ID: <CAPhnLPBavq7KMyeJVJ-p_i5brSea65PXg1OfAX5=QoTKj8nXjQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org, 
	SSD-OTC Romania Yocto QA <ssd-otc.romania.yocto.qa@intel.com>, 
	Robert Yang <liezhi.yang@windriver.com>, 
	McClintock Matthew-B29882 <B29882@freescale.com>, "Serban,
	Laurentiu" <laurentiu.serban@intel.com>, Zhao Yi <yi.zhao@windriver.com>
X-Gm-Message-State: ALoCoQlbExQyhgmEbboJi8qMmGN4CynBvPQlfqfxFcJ2e6oNx5ah8j3CCoRhn2j83XrgxLKm7e48AJnkqEjwcHdTZeuU8AZ1uMhm6s4CEg1L/5Cp8SK+JbFMu23piODpySlxFH6LkJYJ1hZGggz1CN0cMf24sO3HIA==
Subject: Weekly build available for QA testing.
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
X-List-Received-Date: Wed, 24 Oct 2012 23:44:05 -0000
Content-Type: text/plain; charset=ISO-8859-1

The weekly build out of the Yocto Project is almost complete and
should be available within the next hour or two. Some artifacts are
still generating and should be available within the next few hours.
Please begin QAing the available artifacts, keeping in mind that the
build is not quite finished yet.

Repository: git://git.yoctoproject.org/poky
Branch: master
Revision: 33440ee70623394d06a4b214c2be10788cba6d08
Location: http://autobuilder.yoctoproject.org/pub/nightly/20121024-1

Thanks

-b
-- 
Elizabeth Flanagan
Yocto Project
Build and Release

