Return-Path: <ross.burton@intel.com>
Received: from mail-qa0-f42.google.com (mail-qa0-f42.google.com
	[209.85.216.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81BFFE009CE
	for <yocto@yoctoproject.org>; Tue, 11 Mar 2014 09:49:26 -0700 (PDT)
Received: by mail-qa0-f42.google.com with SMTP id k15so8656260qaq.15
	for <yocto@yoctoproject.org>; Tue, 11 Mar 2014 09:49:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=UX/wdvi1ynPgQK1J72NWKQ+A2XxWot2sq0LsHZwibkM=;
	b=SX1oPVFHVx1R65UuxmOSRSLERxao+wkPPNyko1Ws0xLJ3ZOvHzamWUficZ8bbyT/NA
	L6ZtvUbKO/tGeSPSd9bfWlfm6nKUevnk4t01/qNahZPJXaOnqmHklBwXBXt+crDTR0s/
	UxV9itDRhLVq9v9+uMyJ9aZvIAtpFos8uf/zEWI1vE3y3wSoZSc3zdzBHT0jNT3DKMEw
	WT3TIF83m8UN+gBSZG35+8ktsE0CsBYb70vsiCe7+YcgsDGgyIDYRR1HZ88uDaAp7eGl
	+grOrQrWxF19ruSLvsFWBh/tyn7KVijt9J58xu+k+ecE+6GlKh8/GEjxczq2F4eoDdjl
	Vq2A==
X-Gm-Message-State: ALoCoQlZmqWZ2/vbpMNT+1/mUEAlHHL2X7nZQ0HE1yGaMyBmpEtGFWOZ9Eitv9ZnWlVsV1lMIUzd
X-Received: by 10.224.45.197 with SMTP id g5mr49923890qaf.52.1394556565959;
	Tue, 11 Mar 2014 09:49:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.48.79 with HTTP; Tue, 11 Mar 2014 09:49:05 -0700 (PDT)
In-Reply-To: <cover.1394042358.git.elizabeth.flanagan@intel.com>
References: <cover.1394042358.git.elizabeth.flanagan@intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 11 Mar 2014 16:49:05 +0000
Message-ID: <CAJTo0La5YYHtzpn=HRppe4HrkcRwiMRzOidzm69=i5q2zcKsWg@mail.gmail.com>
To: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [AB PATCH 00/27] Autobuilder patches
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
X-List-Received-Date: Tue, 11 Mar 2014 16:49:29 -0000
Content-Type: text/plain; charset=UTF-8

On 5 March 2014 18:22, Elizabeth Flanagan <elizabeth.flanagan@intel.com> wrote:
> Beth Flanagan (8):
>   PrepPkgIndex.py: ln instead of cp

This leaves several alternative lines that are commented out, why not
just have the one working line?

>   Autobuilder.py/Buildset.py: More sane parser/UI

Erm, yeah, sure.  I'll take your word for that :)

>   nightly.conf: Add additional parameters

This removes RunBitbakeSelfTest and needlessly reindents a large block.

Isn't the change to PublishLayerTarballs unrelated and therefore
should be in a separate commit?

>   CheckOutLayers.py/ResolveLayerHead.py: support simplified git

Ack.

>   Autobuilder.py: remove DEBUG code
>   BuildSet.py: Remove more debug code.
>   yocto-start/stop-autobuilder: start buildslave-janitor

Ack x 3.

>   forms.html/layout.html: support simplified UI

Ack.

> Elizabeth Flanagan (12):
>   nightly-world-uclibc: uclibc target

Ack.

>   SyncPersistDB.py: First run failure correction

Pretty sure you didn't mean -b there (block device).

>   BuildSet.py: Set workdir based on layer not order

I'm not massively keen on special-casing poky/oe-core like this
because it breaks when you use something that is almost but not quite
poky (such as iot-devkit).  Can this be an option that the buildset
can set (and defaulting to something that mostly works)?

Also a better idiom is:

if layername in ('poky', 'oe-core', 'eclipse'):
   pass

>   yoctogit.py: fix callbacks and instance attrs

More hardcoding of repo names and behaviour.  Again, does this mean
that iot-devkit (a fork of poky) won't build in the autobuilder?

>   PublishArtifacts.py: Fix poky-tiny publish
>   PublishArtifacts.py: genericx86-64 publish
>   BuildEclipsePlugin.py: Change location of build.
>   PublishArtifacts.py: Change where we find eclipse artifacts

Ack x 4

>   yocto-autobuilder-setup: set the correct bb version

Might be useful to stop using bb (bitbake? buildbot?) and use the full name :)

Ack.

>   fs.py: Bump default timeout

Ack.

>   autobuilder: whitespace removal
>   BuildSet.py: remove trailing spaces

Should be squashed.

> Richard Purdie (5):
>   Add mirror functionality to git fetcher
Ack.

>   trigger.py: Allow wait and nowait triggers

Ack.

>   yoctogit: Don't use branch args for referenced clone

This also changes os.path.exists to self.pathExists which AFAICT have
different uses (local vs remote).  The commit should clarify this.

>   bin/buildslave-janitor: For fast-git checkouts

Truncated commit message.

>   yoctogit: Remove use of oe.path.exists()

This commit doesn't actually remove a use of os.path.exists, so either
the patch is incomplete or the message is misleading.

> Stefan Stanacar (2):
>   buildsets: add a new buildset to run builds on target

Ack.

>   Add buildstep and buildset for oe-selftest script

I'm a big fan of logically independent sequential patches as they make
things a lot easier to review, so I'd say the change to CreateAutoConf
should be split out as a separate commit.  It's unrelated to the
commit short message and only mentioned in passing in the long
message.

Ross

