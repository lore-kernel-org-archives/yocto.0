Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2737EC47258
	for <webhook@archiver.kernel.org>; Fri, 12 Jan 2024 14:05:54 +0000 (UTC)
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net [217.70.183.200])
 by mx.groups.io with SMTP id smtpd.web10.7611.1705068348054510246
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Jan 2024 06:05:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=OQIEPKnP;
 spf=pass (domain: bootlin.com, ip: 217.70.183.200, mailfrom: michael.opdenacker@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 2931420003;
	Fri, 12 Jan 2024 14:05:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1705068346;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=t3zgvr3TiUc82Fs0RIYd89ksRzhB4gSEL0HLaC+A8SQ=;
	b=OQIEPKnPVZnR56STTKmJNqTH1o+cWMA70/+isPyXp4S3UMNfJju8LVzugsZZUb8ckmIGCm
	b2fdkQbYS+z7308fKYW5vtk100dxfgXVScOgK89sTmWAGmwCvxHts7dyj0aEzhT6E4vO/a
	fpxOqZKYsTjheNegK62YcDVN0qizNBv6Tot1ZnaJfhOlziEacjANyZdJWxhQNUOJ5sUJoW
	pyPVhlPbbiTKJJc9e5/B9ZJFbEtYPdB1uUssL5BfF++a2W6ZDPoyo/HDYxGo0EdtIf4MnM
	k7XRYCbrOrXfwnKCefZ1vXEc+0RCvmUWJ0yBI4bm3yLbA5gypWcVdGKMRY+y3w==
Message-ID: <3da054ed-69d5-4d87-98f6-f7a8ae20994d@bootlin.com>
Date: Fri, 12 Jan 2024 15:05:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: Bruce Ashfield <bruce.ashfield@gmail.com>
Content-Language: en-US
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Subject: Binary feeds: how are we supposed to use "dnf upgrade"?
Organization: Bootlin
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-GND-Sasl: michael.opdenacker@bootlin.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 12 Jan 2024 14:05:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62136

Greetings,

I'm making binary package update tests on Nanbield.
No problem with an ipk package feed. If I remember correctly:

 > opkg update
 > opkg upgrade

I'm running this from a Nanbield 4.3.1 image, using feeds generated on 
another machine with the tip of the "nanbield" branch.

If I switch to
PACKAGE_CLASSES = "package_rpm"

If can't seem to be able to do the same thing:

 > dnf upgrade

OE Remote Repo:8000                                                                                                                                                                0.0  B/s |   0  B     00:00

Error: Failed to download metadata for repo 'oe-remote-repo8000': Cannot download repomd.xml: Empty mirrorlist and no basepath specified!

Ignoring repositories: oe-remote-repo8000

Dependencies resolved.

Nothing to do.

Complete!


My http server doesn't even receive any request!

Here are the contents of /etc/yum.repos.d/oe-remote-repo8000.repo:

[oe-remote-repo8000]
name=OE Remote Repo:8000
baseurl=192.168.1.34:8000
gpgcheck=0

However the following command works:
 > wget http://192.168.1.34:8000/repodata/repomd.xml

On Fedora 39, I can just run "dnf upgrade" and everything works. I'm 
starting to suspect that something is missing in the rpm related files 
we generate.

At least, this shows the usefulness of implementing such checks (working 
on these).

Cheers
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


