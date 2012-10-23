Return-Path: <jfabernathy@gmail.com>
Received: from mail-yh0-f48.google.com (mail-yh0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C603BE0027E
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2012 10:47:12 -0700 (PDT)
Received: by mail-yh0-f48.google.com with SMTP id q46so830577yhf.35
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2012 10:47:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=kuQdnyQ7URCOacSyTQIP63u2m8kvzrqPjIVRcx/bTpI=;
	b=DYJkt7jzrVkzaqS6nVNocZt6MOtra+0pun93+lGd1kiOU6SvY9UZuxoQqpquZDbGcb
	fdRisCWYwOVkq5f8m4F6SjKkd3/PUROPx20Rd/PUcF1aPCWl1VC6XEBtcvaD43Pk5zI+
	BKZIlpP78sn5hPnfsechzY1RbTYGpHazdeXn/dwA9+gFx2NEUOnoWX8LGYr8pEAJltvq
	1KeZuxNRPOmFUqqkMElWkIrVP2Jd1b6A+9MKOMoK04G9XFD/0VrqgPgNScHbszBiPnWK
	QrjFHyp2QL56aoPKN/dQXq9JvCCzbuPcPltBtKxFusOeizWf2ePjn2SiJd0mIuHtnSfa
	ejlQ==
Received: by 10.236.89.107 with SMTP id b71mr3929226yhf.86.1351014431992;
	Tue, 23 Oct 2012 10:47:11 -0700 (PDT)
Received: from [192.168.0.54] (cpe-174-097-157-052.nc.res.rr.com.
	[174.97.157.52])
	by mx.google.com with ESMTPS id k20sm11212334anl.11.2012.10.23.10.47.10
	(version=SSLv3 cipher=OTHER); Tue, 23 Oct 2012 10:47:11 -0700 (PDT)
Message-ID: <5086D81E.4030401@gmail.com>
Date: Tue, 23 Oct 2012 13:47:10 -0400
From: Jim Abernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:16.0) Gecko/20121011 Thunderbird/16.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: build failures after pull
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
X-List-Received-Date: Tue, 23 Oct 2012 17:47:13 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I've reported this before, but it still happens.  Today, I did a git 
pull into my local while master was checked out, both on poky and 
meta-intel.  I then tried to rerun without cleaning or deleting anything 
for chiefriver. My last build had been successfully built, but didn't 
have audio.  So when I saw patches, I thought I'd test again.  I simply did

"source oe-init-build-env"
"bitbake core-image-sato"

I got a failure in diffutils for some reason.  I then did

"bitbake -c cleansstate diffutils"
"bitbake core-image-sato".

This time it worked.

Jim A


