Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40BF3E013D3
	for <yocto@yoctoproject.org>; Wed, 15 Aug 2012 03:54:21 -0700 (PDT)
Received: by eabd1 with SMTP id d1so489979eab.35
	for <yocto@yoctoproject.org>; Wed, 15 Aug 2012 03:54:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer
	:x-gm-message-state;
	bh=O1JGZx9zIWPme/PaaFLMLvwB8NHEQg0CgrZX3CA22sU=;
	b=hPu7RbGud+hvbiHFWzFvP/XTO/9LIYtucYnyiQr1WObM46y+C0t2NTq1flTseBHRtQ
	8oP+py7Xg6lvV/nnKdraYBKXZheIf+oYbfYr22oKq03w0G8g8kII5YyOvMAELANS9sMK
	EvblI3KUuf4Qsj3SpBNtDnWhizc4Kf1b8VGqlcdhed6wx1Yn3tVRAzXRnxZOIhwoWGb1
	k5e9P2XD1nnogm8+EybCiLqSBga6+6dJVIoq+NAGzaMOLvRtoJAckz3vLPyXl97bvr15
	sNk499Z8dTbMcHil2UbvilZyonGUEsD23rO8Jc+kIt+L6tYIBkHKirgXYiRUxyDrpcQr
	8/nQ==
Received: by 10.14.223.196 with SMTP id v44mr20186412eep.4.1345028060860;
	Wed, 15 Aug 2012 03:54:20 -0700 (PDT)
Received: from ?IPv6:2001:610:612::fdf3:e292:2da4:ca2e?
	([2001:610:612:0:fdf3:e292:2da4:ca2e])
	by mx.google.com with ESMTPS id 45sm3028535eed.17.2012.08.15.03.54.18
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 15 Aug 2012 03:54:19 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.0 \(1485\))
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <2404459.dJBf5OQotX@helios>
Date: Wed, 15 Aug 2012 12:54:17 +0200
Message-Id: <515C1337-A61A-49A6-837A-9305749FF1DA@dominion.thruhere.net>
References: <2404459.dJBf5OQotX@helios>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Mailer: Apple Mail (2.1485)
X-Gm-Message-State: ALoCoQnh55OVw5Dt4WGxEdmIsz3WEbBScNf1N0MUtkkffutHa//hCEgXnYMxdiRqmrlkpuokD7hK
Cc: openembedded-core@lists.linuxtogo.org, yocto@yoctoproject.org,
	openembedded-devel@lists.linuxtogo.org
Subject: Re: RFC: OE-Core task rework
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
X-List-Received-Date: Wed, 15 Aug 2012 10:54:22 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 15 aug. 2012, om 11:46 heeft Paul Eggleton =
<paul.eggleton@linux.intel.com> het volgende geschreven:
>=20
> 2) Look at the existing tasks and:
> * evaluate their usefulness
> * remove any that are obsolete
> * adjust existing contents if needed
> * look for useful groups of packages that might be added
>=20
> We need to pay particular attention to task-core-boot and task-base as =
these=20
> are pulled in by default in any image that inherits from =
core-image.bbclass -=20
> if these are not generally working for people that are creating their =
own=20
> images, we need to change them such that they are.

Have a look at task-boot and task-basic in meta-oe: =
https://github.com/openembedded/meta-oe/tree/master/meta-oe/recipes-core/t=
asks

My pet peeve is the bloat oe-core forces onto qemu* builds in the name =
of "our testing team needs it!!!". Why am I forced to build an nfs =
server and distcc when setting MACHINE=3Dqemusomething?

Keep things like that in mind when overhauling the tasks.

regards,

Koen=

