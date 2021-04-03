Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.33337.1617473450749398942
 for <yocto@lists.yoctoproject.org>;
 Sat, 03 Apr 2021 11:10:50 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 198.145.29.25, mailfrom: rpjday@crashcourse.ca)
Received: from cpanel8.indieserve.net (cpanel8.indieserve.net [199.212.143.3])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 9F9B438C07D7
	for <yocto@yoctoproject.org>; Sat,  3 Apr 2021 18:10:48 +0000 (UTC)
Received: from cpef81d0f814063-cmf81d0f814060.cpe.net.cable.rogers.com ([174.114.57.56]:39528 helo=fedora)
	by cpanel8.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1lSkjO-0000rd-LG
	for yocto@yoctoproject.org; Sat, 03 Apr 2021 14:10:47 -0400
Date: Sat, 3 Apr 2021 14:10:44 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: does meta-virtualization layer have superfluous dynamic layers stuff?
Message-ID: <ba377363-9dad-e8c9-c37f-2686db59e75@crashcourse.ca>
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel8.indieserve.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel8.indieserve.net: authenticated_id: rpjday+crashcourse.ca/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: cpanel8.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Content-Type: text/plain; charset=US-ASCII


  just noticed this is meta-virt layer, file layer.conf:

# The dynamic-layers directory hosts extensions and layer-specific
# modifications.
#
# The .bbappend and .bb files are included if the respective layer
# collection is available.
BBFILES += "${@' '.join('${LAYERDIR}/dynamic-layers/%s/recipes*/*/*.bbappend' % layer \
               for layer in BBFILE_COLLECTIONS.split())}"
BBFILES += "${@' '.join('${LAYERDIR}/dynamic-layers/%s/recipes*/*/*.bb' % layer \
               for layer in BBFILE_COLLECTIONS.split())}"

BBFILES_DYNAMIC += " \
    raspberrypi:${LAYERDIR}/dynamic-layers/raspberrypi/*/*/*.bb \
    raspberrypi:${LAYERDIR}/dynamic-layers/rasbperrypi/*/*/*.bbappend \
    xilinx:${LAYERDIR}/dynamic-layers/xilinx/*/*/*.bb \
    xilinx:${LAYERDIR}/dynamic-layers/xilinx/*/*/*.bbappend \
"

  i'm *assuming* that those first two assignments to BBFILES
represent the earlier technique for supporting dynamic layers,
otherwise i'm not sure what they're doing there. with the assignment
to BBFILES_DYNAMIC, is there any value to the earlier assignments?

rday
