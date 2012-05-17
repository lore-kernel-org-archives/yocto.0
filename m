Return-Path: <elizabeth.flanagan@intel.com>
Received: from azsmga102.ch.intel.com (mga12.intel.com [143.182.124.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E411E006DA
	for <yocto@yoctoproject.org>; Thu, 17 May 2012 10:37:24 -0700 (PDT)
Received: from mail-lb0-f180.google.com ([209.85.217.180])
	by mga14.intel.com with ESMTP/TLS/RC4-SHA; 17 May 2012 10:37:23 -0700
Received: by lbbgh12 with SMTP id gh12so1363593lbb.25
	for <yocto@yoctoproject.org>; Thu, 17 May 2012 10:37:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:cc:content-type
	:x-gm-message-state;
	bh=ry70wShJKa6fnB4tHZ+97pPo39eUulU4nwTc6Hxwy/8=;
	b=Xf5DUkKgaPSqRQvrhX48AhiFAzkngi2Z9vAWu4CAwWtc8czowLGGamPLes8iuGMtac
	O8N3U4BnLIgx78IAn0b7tQwb4LhvexK9HwSu9FIsr6RrnIDDdn8tQzX2PsRCf7snyGO+
	Xc5yEpju5s00A3nSgnkDSnVXUZ1msBjG/nrleEaO9Kava6zVHf9O8m9eX7vISir5puLO
	Za65IR1NCUlDK0WxkWg2fHiDBAYjQ0LcEvmV1whhObCmQ4UNGaTnxZOCjddyrxTlYGcE
	+pm7PH12KkhOVODNPJM7vsMTMppbYeDibFV9sY7jjRyYI+mv4Xp1GHu4OetTQ/W2Y4J4
	PQCw==
MIME-Version: 1.0
Received: by 10.152.108.178 with SMTP id hl18mr7965461lab.11.1337276241205;
	Thu, 17 May 2012 10:37:21 -0700 (PDT)
Received: by 10.112.107.137 with HTTP; Thu, 17 May 2012 10:37:21 -0700 (PDT)
Date: Thu, 17 May 2012 10:37:21 -0700
Message-ID: <CAPhnLPA-Jim7bHCOwcqzPfcxdD-zpsovb6YOqAvjLREYpit68w@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQkgPIXq7tTy+IuawA8SD+zgg8CI2EuhcMmHr36XPKmyKAaxQ5RA/PWcHAKKQzTfbS5PT5M4
Cc: florin.sarbu@windriver.com, andrei@gherzan.ro
Subject: Solution to fetching the linux-yocto-3.0 tarball
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
X-List-Received-Date: Thu, 17 May 2012 17:37:24 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Thu, May 17, 2012 at 7:59 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> Today i just gave another try.... same result.

Responding on the Yocto list as this is yocto specific:

A few people have been having this issue and after some discussion we
think we have a root cause. Let me first explain what happened.

The autobuilder infrastructure shares a common DL_DIR in order to
optimize the builds and provide the source mirror. This DL_DIR is
rsynced to the publicaly available source mirror on a regular basis.
During our infrastructure upgrade the autobuilder attempted to pull
the tar archive for linux-yocto-3.0
(http://downloads.yoctoproject.org/mirror/sources/git2_git.yoctoproject.org.linux-yocto-3.0.tar.gz)
but due to network issues related to our recent infrastructure upgrade
the file ended up as a 0 byte file. This file was rsynced the the
source mirror. A few days ago this was mentioned as an issue. Michael
Halstead corrected the network issue and I manually removed the file.
The autobuilder repulled the archive correctly and repopulated the
source mirror with it.

Things should have been ok at this point. However, we were still
getting reports of people sporadically running into a 0 byte file. Not
all the time, but some of the time. Michael Halstead and I just tailed
out the apache logs with Tom Zanussi wgetting the problematic file,
watching for failures. No failures were seen in the error logs however
Tom was still getting sporadic 0 byte files. Which means that his
request wasn't even hitting the server. I was not able to replicate
this. The only difference we could see is that I generally do not go
through a proxy whereas Tom was.

Our theory at this point is that all of the people who are hitting
this issue are going through a proxy and that their proxy setup has
cached that 0 byte file and refuses to regenerate it. There isn't a
lot we can do from our end about that other than suggest the following
work around. If you run into odd fetch issues with *just* the
linux-yocto-3.0 tar archive, clear out your DL_DIR of
git2_git.yoctoproject.org.linux-yocto-3.0.tar.gz and set the
following:

PREMIRRORS ?= "\
bzr://.*/.*   http://autobuilder.yoctoproject.org/sources/ \n \
cvs://.*/.*   http://autobuilder.yoctoproject.org/sources/ \n \
git://.*/.*   http://autobuilder.yoctoproject.org/sources/ \n \
hg://.*/.*    http://autobuilder.yoctoproject.org/sources/ \n \
osc://.*/.*   http://autobuilder.yoctoproject.org/sources/ \n \
p4://.*/.*    http://autobuilder.yoctoproject.org/sources/ \n \
svk://.*/.*   http://autobuilder.yoctoproject.org/sources/ \n \
svn://.*/.*   http://autobuilder.yoctoproject.org/sources/ \n"

MIRRORS =+ "\
ftp://.*/.*      http://autobuilder.yoctoproject.org/sources/ \n \
http://.*/.*     http://autobuilder.yoctoproject.org/sources/ \n \
https://.*/.*    http://autobuilder.yoctoproject.org/sources/ \n"

This will force the fetch to go to the autobuilder host of sources and
should work around any proxy caching issues. Then call your local IT
folks and ask them to clear out your proxy cache. If you run into any
fetch issues not related to this file, please let me know.

-b

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

