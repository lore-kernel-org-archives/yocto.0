Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2294B4C800BA
	for <yocto@yoctoproject.org>; Wed,  8 Jun 2011 12:54:14 -0500 (CDT)
Received: from mail-ew0-f52.google.com ([209.85.215.52])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 08 Jun 2011 10:54:13 -0700
Received: by ewy28 with SMTP id 28so266657ewy.25
	for <yocto@yoctoproject.org>; Wed, 08 Jun 2011 10:54:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.4.209 with SMTP id 57mr3099949eej.87.1307555651898; Wed, 08
	Jun 2011 10:54:11 -0700 (PDT)
Received: by 10.14.47.9 with HTTP; Wed, 8 Jun 2011 10:54:11 -0700 (PDT)
Date: Wed, 8 Jun 2011 10:54:11 -0700
Message-ID: <BANLkTi=dyBekPX9e33AovNk36DDs1dTzLg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Subject: More autobuilder downtime and some new targets.
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
X-List-Received-Date: Wed, 08 Jun 2011 17:54:15 -0000
Content-Type: text/plain; charset=ISO-8859-1

Sorry for the delayed notice in this, it slipped my mind. The
autobuilders are being moved to a different rack today. They will be
unavailable for a few hours until DNS propagates. Once they come back
on line, you should notice two (and maybe three) new buildtargets.

The first two build targets will be "fuzzy-master" and "fuzzy-mut".
These targets are random builders, that randomly select a MACHINE,
SDKMACHINE and image type and attempt to build it from the latest of
either master or stage/master_under_test (aka mut). They save no build
output for the time being. They will be running continuously as long
as a builder is available, unless manually stopped.

These exist for a few reasons. I want to enable people to be able to
get a better idea of the state of these two branches without having to
wait the full 28 hours a full build cycle takes. These will help with
that to some extent. Please keep an eye on these. We'll be also
setting up an mail list so people can subscribe to build
failures/passes, specifically for these two buildsets.

The next target (which I'm working on right now) is "meta-image". This
will be pushed up to the poky-autobuilder.git repo once it's fully
hashed out and will enable us to have a way to build a small subset of
our nightly without having to rip apart buildbot configs. It will also
allow people running local instances of the autobuilder to have a
quick and dirty web based image generator. It may get implemented
today, but if not, look for it later this week.

-b

