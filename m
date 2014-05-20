Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66DD4E009E7; Tue, 20 May 2014 11:04:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.128.171 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-ve0-f171.google.com (unknown [209.85.128.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0FFFEE0070F
	for <yocto@yoctoproject.org>; Tue, 20 May 2014 11:04:15 -0700 (PDT)
Received: by mail-ve0-f171.google.com with SMTP id oz11so1076342veb.16
	for <yocto@yoctoproject.org>; Tue, 20 May 2014 11:04:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=BY1PqrZN4KTlUGxr8y4CqhZBtzY9kuIhoni8y53GtsI=;
	b=WCWauWg8lUJi4ksDtF8+Y5z+LeMHIylTfkBvcSfIPrsYEc+wuEoe4kAaNgLG7eA0Xb
	qG/KiwRguskS+kaO1arrMimCEwlflVr99u3h71nGQ2QQK7y8/Yek12h8S/KVX5Lk7ZiU
	FzrRZyD6aGgqh8fNzOa5AeDGKENBfPNpoK6H9Pyv9cwtT/0Y737hK+PwgNRiBSTC/bcO
	vanGNIZhWwJ/2940tbcFixF4T79RbaMIeT1wp6VlOsDDgVf3vuZCIdwczgNyPmZbp7vp
	AhRa31VVd5Cj8FGqRx51xjHzxXUoXarrRq4IlT2w0PLIvxd/fzg6JeRZGDtuENnXVznh
	LnNw==
X-Gm-Message-State: ALoCoQkLZlqe3lz+YT5sw/hvbiDZ9leoP15V74wKEnMfLvp6w24guyCZ5MxU0vYd3MLz+5rjbu6o
MIME-Version: 1.0
X-Received: by 10.52.175.69 with SMTP id by5mr4429144vdc.16.1400608701013;
	Tue, 20 May 2014 10:58:21 -0700 (PDT)
Received: by 10.52.243.73 with HTTP; Tue, 20 May 2014 10:58:20 -0700 (PDT)
In-Reply-To: <1400568337-19253-1-git-send-email-kangkai.yin@intel.com>
References: <1400568337-19253-1-git-send-email-kangkai.yin@intel.com>
Date: Tue, 20 May 2014 10:58:20 -0700
Message-ID: <CAPhnLPA+CVzn53B6p0+7_wOC-LmegrL2ponvjSbt6AL7i-LapA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Yin Kangkai <kangkai.yin@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] PublishArtifacts.py: check files before copy
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
X-List-Received-Date: Tue, 20 May 2014 18:04:22 -0000
Content-Type: text/plain; charset=UTF-8

I'm going to pull this, but I'm also going to open a bug as the "right
way" to do this is to pass md5sums in as an artifact.

-b

On Mon, May 19, 2014 at 11:45 PM, Yin Kangkai <kangkai.yin@intel.com> wrote:
> Check files existence before copy, otherwise might fail.  For example,
> if I do not enable "MakeImageMD5s" step, "PublishArtifacts" will fail.
>
> Signed-off-by: Yin Kangkai <kangkai.yin@intel.com>
> ---
>  .../autobuilder/buildsteps/PublishArtifacts.py           | 16 +++++++++++-----
>  1 file changed, 11 insertions(+), 5 deletions(-)
>
> diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py b/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
> index 2080030..95276a4 100644
> --- a/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
> +++ b/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
> @@ -12,7 +12,7 @@ __email__ = "elizabeth.flanagan@intel.com"
>
>  from buildbot.steps.shell import ShellCommand
>  from twisted.python import log
> -import os, datetime
> +import os, datetime, glob
>  from autobuilder.config import *
>
>  class PublishArtifacts(ShellCommand):
> @@ -152,7 +152,8 @@ class PublishArtifacts(ShellCommand):
>                      command=command+"cp -R --no-dereference --preserve=links " + \
>                                      deploy_image_dir + \
>                                      "/*" + artifact + "* " + DEST + "/" + QEMU_PUBLISH_DIR + "/" + artifact_name + ";"
> -                    command=command+"cp -R --no-dereference --preserve=links " + \
> +                    if glob.glob(os.path.join(self.basedir, "tmp/deploy/images/") + "*.md5sum"):
> +                        command=command+"cp -R --no-dereference --preserve=links " + \
>                                      os.path.join(self.basedir, "tmp/deploy/images/") + \
>                                      "/*.md5sum " + DEST + "/" + QEMU_PUBLISH_DIR + "/" + artifact_name + ";"
>                  elif "mpc8315e" in artifact:
> @@ -161,7 +162,8 @@ class PublishArtifacts(ShellCommand):
>                      command=command+"cp -R --no-dereference --preserve=links " + \
>                                      deploy_image_dir + \
>                                      "/*mpc8315* " + DEST + "/" + MACHINE_PUBLISH_DIR + "/" + artifact_name + ";"
> -                    command=command+"cp -R --no-dereference --preserve=links " + \
> +                    if glob.glob(os.path.join(self.basedir, "tmp/deploy/images/") + "*.md5sum"):
> +                        command=command+"cp -R --no-dereference --preserve=links " + \
>                                      os.path.join(self.basedir, "tmp/deploy/images/") + \
>                                      "/*.md5sum " + DEST + "/" + MACHINE_PUBLISH_DIR + "/" + artifact_name + ";"
>                  elif artifact == "tiny":
> @@ -174,7 +176,9 @@ class PublishArtifacts(ShellCommand):
>                          command=command+"cp -R --no-dereference --preserve=links " + \
>                                          os.path.join(self.basedir, "tmp/deploy/images/*") + \
>                                          DEST + "/" + QEMU_PUBLISH_DIR + "/qemu-tiny;"
> -                    command=command+"cp -R --no-dereference --preserve=links " + \
> +
> +                    if glob.glob(os.path.join(self.basedir, "tmp/deploy/images/") + "*.md5sum"):
> +                        command=command+"cp -R --no-dereference --preserve=links " + \
>                                      os.path.join(self.basedir, "tmp/deploy/images/") + \
>                                      "/*.md5sum " + DEST + "/" + QEMU_PUBLISH_DIR + "/qemu-tiny;"
>
> @@ -205,7 +209,9 @@ class PublishArtifacts(ShellCommand):
>                          command=command+"cp -R --no-dereference --preserve=links " + \
>                                           deploy_image_dir + \
>                                           "/*"+artifact+"* " + DEST + "/" + MACHINE_PUBLISH_DIR +"/" + artifact_name + ";"
> -                        command=command+"cp -R --no-dereference --preserve=links " + \
> +
> +                        if glob.glob(os.path.join(self.basedir, "tmp/deploy/images/") + "*.md5sum"):
> +                            command=command+"cp -R --no-dereference --preserve=links " + \
>                                          os.path.join(self.basedir, "tmp/deploy/images/") + \
>                                          "/*.md5sum " + DEST + "/" + MACHINE_PUBLISH_DIR + "/" + artifact_name + ";"
>
> --
> 1.8.2.1
>



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

