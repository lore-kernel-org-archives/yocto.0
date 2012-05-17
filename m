Return-Path: <gizero@gmail.com>
Received: from mail-qa0-f41.google.com (mail-qa0-f41.google.com
	[209.85.216.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79A3AE0140C
	for <yocto@yoctoproject.org>; Thu, 17 May 2012 01:21:58 -0700 (PDT)
Received: by qabg27 with SMTP id g27so6450288qab.14
	for <yocto@yoctoproject.org>; Thu, 17 May 2012 01:21:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=JmUIk51OVdwvugKVB4QWC9orcOfQ5CRNq+vEOu8QwJk=;
	b=Ewa3xeOVJARRoQo41sQyn7ZAHiKDbYz9oo4dxYQNhbkiKzZfAJUw/ddBR5CGRsLsZg
	jWY6bfJshF9ICjNDOnhNrsl7gGt3wlWzCjH/F+I9p4itXJuaDP+W4hddllT0nM/4HBd0
	CyHq3ICnq9RC5VP2bC/WXSF9q5WjBUJyXCuTmwPNmx98iwv0JYGzq9YwAgfk8ZXroeX3
	gpmzar8VDdo249/Cjkl1Xjbcp1BkUlDsv3LjucB7BRa31kUuCd4fdOdgBYJvzJ+YQ2l+
	v5rNhlXZuidnKHogFAoGgyEoCjk8Oj8NBAYL/GnIWNeX2/mdu8SpJjrE826MDJcFB2q2
	g8AQ==
MIME-Version: 1.0
Received: by 10.224.205.129 with SMTP id fq1mr14963650qab.41.1337242917679;
	Thu, 17 May 2012 01:21:57 -0700 (PDT)
Received: by 10.229.217.200 with HTTP; Thu, 17 May 2012 01:21:57 -0700 (PDT)
Date: Thu, 17 May 2012 10:21:57 +0200
Message-ID: <CAC+thW11WFJcsJifYnzO3gQRivaCGjk_H+-kcMMQk+Weh4TcLg@mail.gmail.com>
From: Andrea Galbusera <gizero@gmail.com>
To: yocto@yoctoproject.org
Subject: meta-toolchain-sdk fails in edison with package_ipk
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
X-List-Received-Date: Thu, 17 May 2012 08:21:58 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hello,
Is there any known problem when building meta-toolchain-sdk target
with PACKAGE_CLASSES = "package_ipk" ?

I have deterministic failure in do_populate_sdk with latest edison
metadata and default local.conf (other than changing PACKAGE_CLASSES
to ipk).
Don't have a denzil tree at hand, but I'm going to check if this is
reproducible with 1.2 too.

To me it seem the failing task is trying to access host files on my
build system. Here is the first error I can see:

> Installing libtelepathy-dbg (0.3.3-r3) to root...
> Downloading file:/scratch/gizero/edison-build-raid.orig/tmp/deploy/ipk/i586/libtelepathy-dbg_0.3.3-r3_i586.ipk.
> touch: cannot touch `/etc/shells': Permission denied
> mkdir: cannot create directory `/var/lib/opkg/alternatives': Permission denied

Here you can see the full log (few lines stripped to satisfy pastebin
size limits...):

http://pastebin.com/Gim3DacX

Build works when I switch to rpm instead of ipk, but I want ipk for my
target and, at moment, I need to switch back and forth the two formats
when I need to update either my images or my sdk. Is there a smarter
way to stay with rpm for the sdk and with ipk for the target images?

Andrea

