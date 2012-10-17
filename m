Return-Path: <ross.burton@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B46DCE0027E
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2012 08:22:30 -0700 (PDT)
Received: from mail-we0-f176.google.com ([74.125.82.176])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 17 Oct 2012 08:22:29 -0700
Received: by mail-we0-f176.google.com with SMTP id z53so5109666wey.35
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2012 08:22:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:x-gm-message-state;
	bh=FnX/cZOH5FWWV5k09uOppm0GC7LIcz4iiNIVNTYYp8s=;
	b=SbMr6svzgHgpxvZp+tdijJZwMWFijGhbAkNOGRmd5vnav2bxkjwTYHIEykyjQsZm03
	sXEjqi7kJ84hSuwy859x/SOzNMlN/9WAquhe3TLO3/R40IHAnfYIaGm2jSeVgD11s1OU
	pys86kjXEsSNftMyMgwp/TnUZDTB/QgkMugNi3LIWiAWwjX6e2seoTtcO5ESS+I9JVOO
	njvbwxzxnVnMeCcjicnwJq3y9PcgbSyGBSmqdX7+ehRMeV2XEvUJMCUBrMmfngBWCD3s
	X6VC3u5k8peK6aBqohx/6WW94nHZGYMTFG/u3q8kxwPSo/C9KjTCZwr8wLHA26/QxY4j
	dOSQ==
Received: by 10.216.193.227 with SMTP id k77mr10296950wen.178.1350487347837;
	Wed, 17 Oct 2012 08:22:27 -0700 (PDT)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id z14sm3987242wiv.5.2012.10.17.08.22.25
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 17 Oct 2012 08:22:26 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: kishore.k.bodke@intel.com, nitin.a.kamble@intel.com, dvhart@linux.intel.com
Date: Wed, 17 Oct 2012 16:21:16 +0100
Message-Id: <1350487279-1681-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10
X-Gm-Message-State: ALoCoQnnPEM++X4DTqsSsYZIz66qgh+9eBx5+MQ5HAN4kgS8efxWeY0lQDG4SxdFPUtgrUPbwxnM
Cc: yocto@yoctoproject.org
Subject: Cedar Trail and gst-vaapi fixes
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
X-List-Received-Date: Wed, 17 Oct 2012 15:22:30 -0000

Hi,

Make gst-vaapi work on Cedar Trail, upgrade the gst-vaapi to the latest version
which doesn't need ffmpeg anymore, and remove the commercial restriction on
gst-vaapi.

The new gst-vaapi was tested on Cedar Trail, and played the Sintel 720p trailer
smoothly.  ffmpeg was required for the audio (MPEG4 AAC), but without that
present the video still plays.

Ross

