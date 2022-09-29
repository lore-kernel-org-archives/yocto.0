Return-Path: <jason.m.bills@linux.intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E5C87C433FE
	for <webhook@archiver.kernel.org>; Thu, 29 Sep 2022 21:26:38 +0000 (UTC)
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by mx.groups.io with SMTP id smtpd.web08.16290.1664486789002611653
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Sep 2022 14:26:29 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel
 header.b=H1ToZ6uB;
 spf=none, err=permanent DNS error (domain: linux.intel.com,
 ip: 192.55.52.151, mailfrom: jason.m.bills@linux.intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1664486789; x=1696022789;
  h=message-id:date:mime-version:to:from:subject:
   content-transfer-encoding;
  bh=g9TVdc8dr3d9Q4ZGYjQgAMCbn+ciw9/r/7iJ2kGC+1Y=;
  b=H1ToZ6uBnWQ8Su6nbhHXtBFnyDWyw0IuCXJ/3brwEgL6yVyM8RGgnSZG
   1WL330k793seRVUalu7OBdm1jzMqTXToD66x2s7Ls5Nd2X8EuqrmahCRT
   v8Wurv5BpaLYYnM9OdxVILZPC1lhQVpXe4dYuwUgnTPHrdNBx/28nQCWQ
   00st+VxnP3/xYrviXfJDaMrmggmu95ZNHGOhHNgXg9J3/imVpf0G84jrW
   Xx7wmauYKaLpoDxrL7SDF44rEC6ZE+fVvzsfAauNxY1dqSF8972ySm/sW
   u6oQ9PBvV3lvOvL2u2XrYUoNYDgjHfH55H0fVSDRo4HmcsrhrDULD99Vy
   Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10485"; a="282392552"
X-IronPort-AV: E=Sophos;i="5.93,356,1654585200";
   d="scan'208";a="282392552"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2022 14:26:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10485"; a="690998099"
X-IronPort-AV: E=Sophos;i="5.93,356,1654585200";
   d="scan'208";a="690998099"
Received: from linux.intel.com ([10.54.29.200])
  by fmsmga004.fm.intel.com with ESMTP; 29 Sep 2022 14:26:26 -0700
Received: from [10.209.170.62] (jmbills-mobl1.amr.corp.intel.com
 [10.209.170.62])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by linux.intel.com (Postfix) with ESMTPS id A93D8580B55
	for <yocto@lists.yoctoproject.org>; Thu, 29 Sep 2022 14:26:26 -0700 (PDT)
Message-ID: <ffeb477c-ba3a-8a81-d720-d73119fc91ce@linux.intel.com>
Date: Thu, 29 Sep 2022 15:26:25 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Content-Language: en-US
To: yocto@lists.yoctoproject.org
From: "Bills, Jason M" <jason.m.bills@linux.intel.com>
Subject: EXTRA_IMAGECMD:squashfs-xz support
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 29 Sep 2022 21:26:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58223

Hello,

I work on OpenBMC and am having an issue with EXTRA_IMAGECMD:squashfs-xz.

There was a recent change pulled into OpenBMC in image_types.bbclass. In 
the old file, IMAGE_CMD:squashfs-xz was defined directly:

IMAGE_CMD:squashfs-xz = "mksquashfs ${IMAGE_ROOTFS} 
${IMGDEPLOYDIR}/${IMAGE_NAME}${IMAGE_NAME_SUFFIX}.squashfs-xz 
${EXTRA_IMAGECMD} -noappend -comp xz"

In the new file, it is defined using a method:

oe_mksquashfs () {
     local comp=$1
     local suffix=$2

     # Use the bitbake reproducible timestamp instead of the hardcoded 
squashfs one
     export SOURCE_DATE_EPOCH=$(stat -c '%Y' ${IMAGE_ROOTFS})
     mksquashfs ${IMAGE_ROOTFS} 
${IMGDEPLOYDIR}/${IMAGE_NAME}${IMAGE_NAME_SUFFIX}.squashfs${comp:+-}${suffix:-$comp} 
${EXTRA_IMAGECMD} -noappend ${comp:+-comp }$comp
}
IMAGE_CMD:squashfs-xz = "oe_mksquashfs xz"

In my build we append to EXTRA_IMAGECMD:squashfs-xz to add parameters to 
the mksquashfs commmand like this:
EXTRA_IMAGECMD:squashfs-xz:append = "-processors ${BB_NUMBER_THREADS} -b 
262144 -Xdict-size 100% -Xbcj arm"

With the old file, the EXTRA_IMAGECMD:squashfs-xz parameters are added 
to the mksquashfs command. But with the new file, they don't get added 
anymore. I wonder if the method loses the squashfs-xz context so the 
empty EXTRA_IMAGECMD is used instead of EXTRA_IMAGECMD:squashfs-xz.

Should my EXTRA_IMAGECMD:squashfs-xz:append still work, or is there a 
different way to add parameters to the IMAGE_CMD:squashfs-xz command 
with the new approach?

Thanks!
-Jason

