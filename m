Return-Path: <jfabernathy@gmail.com>
Received: from mail-vc0-f176.google.com (mail-vc0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75978E00288
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2012 12:18:58 -0700 (PDT)
Received: by vcbfl11 with SMTP id fl11so2887860vcb.35
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2012 12:18:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=BdecOgwDzi3IK4FGxzzkTD81tyAU2TUPm/dhC7E69FI=;
	b=Obimf+7IOXeZypronPeuPYXdWjMEXMlNk+CfOtu4WVbKnsmUhsh8XeVcjeS42i//5B
	QPH14Y5Ki7GbZO8w3i6s7QcgqIZP7Il4U327NwBh1ep3cZ/77lSTuVmpJWolk2jVZuNS
	82l2Y2i2OcYAlhXGDrFWOTl2amrQoE2zYWn5RdumQ9sTVS34eCczROGoOiqhgfLdzoLh
	vA1Bhr3VtIhVU4tMxsIG9fYtInicCaLS1EoVTu74noDC5LQzMsBdlUzd5oYeN5hTYBPN
	JLMxuSwqdyalKCf16GUsYpBEJC634WZuvL4xw98IPc8nzETmzyl6LB6tdR5mBvpEr9j4
	uk+w==
Received: by 10.52.99.227 with SMTP id et3mr1684461vdb.110.1342725537345;
	Thu, 19 Jul 2012 12:18:57 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-39-191.dhcp.embarqhsd.net. [184.4.39.191])
	by mx.google.com with ESMTPS id bn5sm1031981vdb.19.2012.07.19.12.18.55
	(version=SSLv3 cipher=OTHER); Thu, 19 Jul 2012 12:18:55 -0700 (PDT)
Message-ID: <50085D9F.8030200@gmail.com>
Date: Thu, 19 Jul 2012 15:18:55 -0400
From: Jim Abernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120615 Thunderbird/13.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: build failures after recent pull
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
X-List-Received-Date: Thu, 19 Jul 2012 19:18:58 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Something that got pushed recently has broken the tools. To keep the 
debug simple, I went back and tried to just build an old stable 
platform, the n450.  Below is the error:

NOTE: Unpacking home/jim/yocto-downloads/gnu-config-yocto-20111111.tgz 
to /build/baryon-denzil/tmp/work/x86_64-linux/gnu-config-native-20111111-r1/
tar (child): home/jim/yocto-downloads/gnu-config-yocto-20111111.tgz: 
Cannot open: No such file or directory
tar (child): Error is not recoverable: exiting now
tar: Child returned status 2
tar: Error is not recoverable: exiting now
ERROR: Function failed: Unpack failure for URL: 
'http://downloads.yoctoproject.org/releases/gnu-config/gnu-config-yocto-20111111.tgz'. 
Unpack command 
PATH="/build/baryon-denzil/tmp/sysroots/x86_64-linux/usr/bin/core2-linux:/build/baryon-denzil/tmp/sysroots/x86_64-linux/usr/bin:/build/baryon-denzil/tmp/sysroots/x86_64-linux/usr/sbin:/build/baryon-denzil/tmp/sysroots/x86_64-linux/usr/bin:/build/baryon-denzil/tmp/sysroots/x86_64-linux/sbin:/build/baryon-denzil/tmp/sysroots/x86_64-linux//bin:/home/jim/poky/scripts/native-intercept:/home/jim/poky/bitbake/bin/:/home/jim/poky/scripts:/home/jim/poky/bitbake/bin/:/home/jim/poky/scripts:/home/jim/poky/bitbake/bin/:/home/jim/poky/scripts:/home/jim/poky/bitbake/bin/:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/jim/poky/scripts" 
tar xz --no-same-owner -f 
home/jim/yocto-downloads/gnu-config-yocto-20111111.tgz failed with 
return value 2

