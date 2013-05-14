Return-Path: <paul.betafive@gmail.com>
Received: from mail-ve0-f176.google.com (mail-ve0-f176.google.com
	[209.85.128.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6BAD6E014FA
	for <yocto@yoctoproject.org>; Tue, 14 May 2013 05:10:09 -0700 (PDT)
Received: by mail-ve0-f176.google.com with SMTP id c13so454487vea.35
	for <yocto@yoctoproject.org>; Tue, 14 May 2013 05:10:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:sender:from:date:x-google-sender-auth
	:message-id:subject:to:content-type;
	bh=WNjCcq3vvv1gKjVr1WKQR/Tr8gueZZsKOnX45O4p0Bw=;
	b=ZJQrnNF4y0IeEuAfW3CEzXmdSw6udRyqdwh3ndxzQ4eVFs54U1phd9+CYSXeXulV08
	CEmqxvfLygeBpK4XNBpKNFnS0rmlEwBRm8BEAkav4ktQ9DfX4tGS2kDapo6qdwjHhZ7x
	jXdTu9clPYrdfrMcu1TThH84depcfb6svkR21KPRN3tk/ezL/lNlOwDEZ/qTt3H3N4Uz
	CjRDQI+C6zDLSMeYD2p0t4Zy6bpqVm1+qEkoN62WvzqLayJkK6iQ2PeB3uBcVCjVgQJu
	Vl1UhWq+ybON6nuBoeQMQ15jJTiDEmeVUmvqVe9IUjAN6dBdoHaYF56eFWCEfjN+3Uie
	z9TQ==
X-Received: by 10.220.168.71 with SMTP id t7mr18242820vcy.39.1368533407554;
	Tue, 14 May 2013 05:10:07 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.48.5 with HTTP; Tue, 14 May 2013 05:09:47 -0700 (PDT)
From: Paul Barker <paul@paulbarker.me.uk>
Date: Tue, 14 May 2013 13:09:47 +0100
X-Google-Sender-Auth: Ag4VRZb8MhcmZ7P2C1m7ZTYTk6I
Message-ID: <CANyK_8fKmat+m09jAcxqKA89Z0Qxt3V5+hsBXAvqVstEbvKucQ@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: [meta-raspberrypi] Thoughts on Raspberry Pi firmware
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 14 May 2013 12:10:09 -0000
Content-Type: text/plain; charset=ISO-8859-1

I had a few issues with starting my builds for Raspberry Pi as the
bcm2835_bootfiles do_fetch would fail due to a github timeout. I
cloned the relevant repository outside of bitbake and edited the
SRC_URI to point to my local clone and everything went ok but that
clone too a long long time. The upstream repository
(https://github.com/raspberrypi/firmware) is huge, around 1.2 GB in
size. I decided to repack just the files we need in a .tar.xz archive
and I've ended up with around a 2-3 MB archive
(http://www.paulbarker.me.uk/dist/rpi-fw/). An alternative would be to
download a zip file of a given revision from github (eg
https://github.com/raspberrypi/firmware/archive/0ac68cce44d4550c251172e8524100090e8211fa.zip)
and this comes in at over 90 MB.

I know this is only an issue for a first build when nothing has been
downloaded but it seems rather daft to be downloading an entire 1.2 GB
git repo when we want only a handful of files at a given version. As
the files are binary, even doing a 'git pull' when only a couple of
new commits have happened takes time. It's not just download time,
it's the time taken for github to compress objects. With my internet
connection the time taken to do git clone was around 90 minutes. I
haven't seen a way to do a git shallow clone for a past commit, only
for the HEAD of the remote repository.

Does anyone else think that we'd be better using either our own
archive of just the files we need or a zip file of a given revision
from github? I know the firmware isn't GPL so we might not need to
redistribute the upstream sources but for my images I'd like to
provide a mirror of everything needed to build them incase upstream
sources disappear in the future. It does seem absurd to mirror 1.2 GB
of files when a 2 MB archive will do.

Secondly, is there any use case for building vc-graphics or
vc-graphics-hardfp to provide virtual/egl and virtual/libgles2 (which
rely on binary files from the raspberry pi firmware repo) instead of
compiling from source using the userland package?

I've built using my firmware archive packaged from the same commit we
were previously using
(http://www.paulbarker.me.uk/dist/rpi-fw/rpi-fw-yocto_20130107.tar.xz)
with both userland and vc-graphics and build logs and details are
available at:

http://www.paulbarker.me.uk/yocto/20130510_poky-raspberrypi_userland/

http://www.paulbarker.me.uk/yocto/20130510_poky-raspberrypi_vc-graphics/

Current versions of the patches are available at:

http://www.paulbarker.me.uk/yocto/20130510_poky-raspberrypi_userland/patches/meta-raspberrypi/0003-bootfiles-vc-graphics-consolidate-SRC_URI-and-S-vari.patch

http://www.paulbarker.me.uk/yocto/20130510_poky-raspberrypi_userland/patches/meta-raspberrypi/0004-bootfiles-vc-graphics-use-archive-rather-than-git.patch

Though I'm currently just looking for comments on the general idea,
not ready to submit the patches for merging just yet.

--
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

