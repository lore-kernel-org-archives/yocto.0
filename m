Return-Path: <peter@berginkonsult.se>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7324FCCD185
	for <webhook@archiver.kernel.org>; Fri, 10 Oct 2025 11:54:56 +0000 (UTC)
Received: from mailrelay-egress8.pub.mailoutpod2-cph3.one.com (mailrelay-egress8.pub.mailoutpod2-cph3.one.com [46.30.211.183])
 by mx.groups.io with SMTP id smtpd.web10.7100.1760097288359766090
 for <yocto@lists.yoctoproject.org>;
 Fri, 10 Oct 2025 04:54:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@berginkonsult.se header.s=rsa1 header.b=bv17zf9D;
 dkim=pass header.i=@berginkonsult.se header.s=ed1 header.b=5vdIrMQl;
 spf=none, err=SPF record not found (domain: berginkonsult.se, ip: 46.30.211.183, mailfrom: peter@berginkonsult.se)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1760097285; x=1760702085;
	d=berginkonsult.se; s=rsa1;
	h=content-transfer-encoding:content-type:subject:from:to:mime-version:date:
	 message-id:from;
	bh=coU2X5GycjX00db+LjU9sA5hKs79kev1tJZPzsfElyo=;
	b=bv17zf9DHDfgd0gMFWEJRitNgmjlmbMNTvh9t2xVAW90wE6o8zkUSvsrpPgtVeJGm7/x+ZrJezEwL
	 9h2sytsOCWsZ71SFNtlaybekDQG3a4qBHj7CAp285T4CYOJVfLOpoHrhjMKNUanoXbobJfRGOWhH/H
	 2Y4EDY3zihq8D3ISt6UYvHOPqXmzO6NUfsETBQyHdzLfte2PF1+qFK07SB8xzhrLah2y/W3DT9HBkL
	 jv2uhbH6QmLqiw17PAwknKfQk9h4odGa/BFXmUF8T+L5pe3tnVeEWnd7tVrx2a+M3QIqGrdyBJlO51
	 ytr0tjg/I5jIXLC9kKmMf6fPvanR85g==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1760097285; x=1760702085;
	d=berginkonsult.se; s=ed1;
	h=content-transfer-encoding:content-type:subject:from:to:mime-version:date:
	 message-id:from;
	bh=coU2X5GycjX00db+LjU9sA5hKs79kev1tJZPzsfElyo=;
	b=5vdIrMQl2ObsEPkOW52VVrRtpv/ksY+HKgVAh2L1QBqbYBQTjtdY7JJxppi4gFQNJZK7WwoJsWZHg
	 YRPBxWaBw==
X-HalOne-ID: e955ef9b-a5cf-11f0-9f88-494313b7f784
Received: from [192.168.100.34] (c83-191-168-223.bredband.tele2.se [83.191.168.223])
	by mailrelay6.pub.mailoutpod2-cph3.one.com (Halon) with ESMTPSA
	id e955ef9b-a5cf-11f0-9f88-494313b7f784;
	Fri, 10 Oct 2025 11:54:45 +0000 (UTC)
Message-ID: <174d063a-9e3e-4aab-9d1d-70cd7095a681@berginkonsult.se>
Date: Fri, 10 Oct 2025 13:54:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US, sv-SE
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
From: Peter Bergin <peter@berginkonsult.se>
Subject: image class got error from copyhardlinktree/tar during migration to
 whinlatter
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 10 Oct 2025 11:54:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65916

Hi,

I'm working on uprev for a layer from scarthgap to whinlatter. In the 
layer there is a custom image class that will take part om the rootfs 
and make a separate image of. First step is to copy out that part to a 
separate directory before creating an image file. The function is using 
copyhardlinktree from 'meta/lib/oe/path.py'. It has worked well in 
scarthgap but when building in whinlatter I get this error:

              0106:
              0107:    _from = 
os.path.realpath(os.path.join(d.getVar("IMAGE_ROOTFS"), "data"))
              0108:    _to = 
os.path.realpath(os.path.join(d.getVar("WORKDIR"), "data.copy.%s" % 
d.getVar('BB_CURRENTTASK')))
              0109:
          *** 0110:    copyhardlinktree(_from, _to)
              0111:
         ...
         Subprocess output:
         tar: ./mydir: Cannot change ownership to uid 0, gid 0: Invalid 
argument
         tar: .: Cannot change ownership to uid 0, gid 0: Invalid argument
         tar: Exiting with failure status due to previous errors

The directory 'mydir' is owned by root user in my target file system. I 
would like to check if someone have seen similar things when going to 
newer versions? Or if someone have an idea about the root cause? I did a 
workaround and used 'shutil.copytree' to avoid this error but is curios 
to find the root cause and understand why it fails.

Best regards,
/Peter


