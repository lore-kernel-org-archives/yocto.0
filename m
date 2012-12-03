Return-Path: <jon.szymaniak@gmail.com>
Received: from mail-ie0-f176.google.com (mail-ie0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2EEF8E0033F
	for <yocto@yoctoproject.org>; Mon,  3 Dec 2012 06:56:56 -0800 (PST)
Received: by mail-ie0-f176.google.com with SMTP id 13so4591670iea.35
	for <yocto@yoctoproject.org>; Mon, 03 Dec 2012 06:56:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=ySTy/sxyA/GSTEkX3qKZ196bf7WTo5UJHzY3XArjvGg=;
	b=Tdf9hoEOCQrddVxWKzSK61u3bq19cRJxBdKhqxvVVHFRMaVNWZgXBlrzxBBRYzm8tE
	fMD0cuGukDitBqTgJAjgGOID0E6cWzvPIQDhuUee66Zo07JJ86GJ+cV7SjIi0ZZNJQ5l
	1BXuFLj94xIPWa0jWvcrNRWD1LHJ/+Hohm5VR1lZu3Ou0X9+ManI2E0zHod7xc1aG0y7
	2nueNOhFoNrEgXfsDlVlid6mAvebef6ELU6zG0zl6UNWPyM3ZlmcaQNIUwjFspj9QkHi
	mEvTcm0IkxgAXmRO8rCHn7hFoc50UoB4MQuVy0DgTFbx8yzOrx8LmXj37I+IRLXLpwIU
	EK9A==
Received: by 10.50.181.135 with SMTP id dw7mr6626719igc.40.1354546615569; Mon,
	03 Dec 2012 06:56:55 -0800 (PST)
MIME-Version: 1.0
Received: by 10.64.167.165 with HTTP; Mon, 3 Dec 2012 06:56:34 -0800 (PST)
From: Jon Szymaniak <jon.szymaniak@gmail.com>
Date: Mon, 3 Dec 2012 09:56:34 -0500
Message-ID: <CANge7vU-n_LHcyCLp+taArHSU8-BV2Gh6K3yP+4+6Di2k=Nsqg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Fetcher failure for mercurial repos: 'unknown revision' due to -r <SRCREV> in both clone and update?
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
X-List-Received-Date: Mon, 03 Dec 2012 14:56:56 -0000
Content-Type: text/plain; charset=ISO-8859-1

I've been running into "Fetcher failures" for my recipes using
mercurial recently. They only seem to crop up the first time a package
that comes from a hg repo is fetched.

I believe the issue stems from the combination of the arguments used
by the hg fetcher and the fact that I specified a tag rather than
revision number.

I've included a "trimmed" log at the end of this post, where I've
pruned out useless and personal information. Here are some of of my
comments and questions. I'm no mercurial expert, so please do correct
me if and where I'm wrong!

- Why is GIT_CONFIG being exported for mercurial invocations?
- I think the 'clone -r v1.1.0' followed by the 'update -C -r v1.1.0'
is possibly responsible for the failure.
  - In mercurial, the tag is a commit after the revision that's being tagged.
      tip                               41:58b8f368be68
      v1.1.0                          40:a925b596c163
      v1.0.4                          39:6bf84da2571e
  - In the above, rev 41 contains the action of tagging 40 as 'v1.1.0'
  - Therefore, if we clone the version associated with tag v1.1.0, we
get rev 40 and earlier. At this point, there's no "knowledge" of there
being a 'v1.1.0' tag!
    - As such, the 'hg update -C -r v1.1.0' that follows the 'hg clone
-r v1.1.0' fails.

- One possible fix might be to remove the "-r <rev>" usage from the hg
fetcher. (lines 101 and 102 in bitbake/lib/bb/fetch2/hg.py)
  - A fetch always follows an update to the revision anyway, doesn't
it. (Per comment @ lines 142-143).
  - Con: You have to fetch the whole darn repo. It makes sense that we
wouldn't want to do that when we don't have to. :)
  - Pro: You'll  have the revision you wanted.
  - Disclaimer: I'm not familiar enough with this code to know whether
this would cause undesired side effects or break things!

- Workaround: Don't use tags in SRCREV
  - This stinks, because I like to write my .bb's as follows, so that
updating a version is just a matter of copy/renaming the .bb
        require <my_package>.inc
        PR = "${INC_PR}.0"
        SRCREV = "v${PV}"

DEBUG: Fetch: checking for module directory
'/export/home/jon/projects/yocto/poky/build/test/downloads/hg/host/some_dir/my_package'
NOTE: Fetch hg://hg@host/some_dir;module=my_package;protocol=ssh
DEBUG: Running /usr/bin/env hg clone -r v1.1.0
ssh://hg@host/some_dir/my_package my_package
DEBUG: Fetcher accessed the network with the command /usr/bin/env hg
clone -r v1.1.0 ssh://hg@host/some_dir/my_package my_package
DEBUG: Running export HOME="/export/home/jon"; export
SSH_AGENT_PID="1234"; export SSH_AUTH_SOCK="<snipped>"; export
GIT_CONFIG="<snipped>/gitconfig"; export PATH="<snipped>";
/usr/bin/env hg clone -r v1.1.0 ssh://hg@host/some_dir/my_package
my_package
DEBUG: Running /usr/bin/env hg update -C -r v1.1.0
DEBUG: Running export HOME="/export/home/jon"; export
SSH_AGENT_PID="1234"; export SSH_AUTH_SOCK="<snipped>"; export
GIT_CONFIG="<snipped>/gitconfig"; export PATH="<snipped>";
/usr/bin/env hg update -C -r v1.1.0
WARNING: Failed to fetch URL
hg://hg@host/some_dir;module=my_package;protocol=ssh, attempting
MIRRORS if available
DEBUG: Fetcher failure: Fetch command failed with exit code 255, output:
abort: unknown revision 'v1.1.0'!

DEBUG: Python function base_do_fetch finished
DEBUG: Python function do_fetch finished
ERROR: Function failed: Fetcher failure for URL:
'hg://hg@host/some_dir;module=my_package;protocol=ssh'. Unable to
fetch URL from any source.


Thank you,
Jon

